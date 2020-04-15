Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CCD1AA00F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7CmRzOEfpX1hRPxuAFG8y4ta6Ff4I2tHl6PpOL/CvE=; b=bV8yafvvnR5NnQ
	nsUbE1vn2YVLNrq3+457i2hwjrQ4t2UeaHzFmtcZFumTWowskHDf+KBj8Tcid6aQorrAAe+ShtIiD
	Twh0gshE2ffUqEjiDtq9c+90Dj2DxU+2odq+7iyXDrrknpsjaSN+mGO5xMCawvuaos1cJ26uSsRf9
	3XJwevTRJlJSUwiu/VUZZfXD97tleSODp+jYvdO21+1BWD4S8AABk57csqixwVqdgYuu8Hrb+8Ixp
	sx1WHX2RdbdO+jgsgB8DMrZGB3pVZczymEhMTymbTSgBm+PWOHlmDQYugcgTJuWbgn9SKP/mK7gSu
	pL7nb+ftLjTxwJ5ZKONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOh9E-0004XE-Sr; Wed, 15 Apr 2020 12:28:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOh98-0004WU-Hp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:28:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1FAA1063;
 Wed, 15 Apr 2020 05:28:00 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10F593F68F;
 Wed, 15 Apr 2020 05:27:58 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:27:31 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 3/6] arm64/vdso: Add time napespace page
Message-ID: <20200415122731.GA27539@C02TD0UTHF1T.local>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-4-avagin@gmail.com>
 <20200414172014.GA6705@C02TD0UTHF1T.local>
 <CANaxB-yBeSmYdZL6gbe-agDAaEVcYHrxUCojQ4xaWpsWinQsyA@mail.gmail.com>
 <20200415100539.GA27339@C02TD0UTHF1T.local>
 <a0179a69-fc1b-9e81-f3f2-72f6c639f40e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0179a69-fc1b-9e81-f3f2-72f6c639f40e@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_052803_143246_2DAB62C3 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:16:00AM +0100, Vincenzo Frascino wrote:
> Hi Mark,
> 
> On 4/15/20 11:05 AM, Mark Rutland wrote:
> > It's a shame we're not using OPTIMIZER_HIDE_VAR() for that, as it can
> > generate slightly better code and is easier to read than bare asm.
> 
> We are not because I was not aware when I wrote this code that such a macro
> existed :)
> 
> But you are right it clearly makes the code more readable. To make up for it, I
> am happy to make the effort to introduce it for both the cases and replace the
> assembler once this patch series gets merged.

Sounds good to me!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
