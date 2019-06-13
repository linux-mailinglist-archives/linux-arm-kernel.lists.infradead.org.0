Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4594349F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x438AbKjN0AIqq6N41nVXybNXieOCD3FWAan6Fe/gYE=; b=jueeQVJ0uAhT54
	tYNL+vWgq0PYRBkn0oU1xvRWyQ7zqiyR/IcrTYMTBpdis/q4GeJkYGcGkCI1WlDgaKlRe4RSFA5fl
	qNtlPVXjqbz5zHK2T8RPDWzf9cCNgRYonCRpoM1hKMtwjXQEozLxD5LEM4u4qTrThqvzcP62C7Iq9
	8c4aB5OjYDwNRMRq7NDnRuqqE1umOr4Pry2yllCbrl9yr8M5bISy3oj5RNTxOFMeXMqTH+8XbiAI0
	kaoXk0QmeyBPlSQvd+MyCfyENQs2pR0jUftbITL+t+YrElrwGh896NFRAOuQNqGrWsDOmWPLm/5FZ
	QqkTfHPk42GDYI5cld8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLwm-00019E-Q9; Thu, 13 Jun 2019 09:23:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLwY-00013W-SH
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:22:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CDDE367;
 Thu, 13 Jun 2019 02:22:50 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 336CD3F694;
 Thu, 13 Jun 2019 02:22:49 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:22:47 +0100
From: Will Deacon <will.deacon@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
Message-ID: <20190613092247.GD17331@fuggles.cambridge.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
 <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_022250_956789_EFC8B51F 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 06:46:04PM +0100, Julien Grall wrote:
> On 12/06/2019 17:00, Dave Martin wrote:
> > The in-memory representation of SVE and FPSIMD registers is
> > different: the FPSIMD V-registers are stored as single 128-bit
> > host-endian values, whereas SVE registers are stored in an
> > endianness-invariant byte order.
> > 
> > This means that the two representations differ when running on a
> > big-endian host.  But we blindly copy data from one representation
> > to another when converting between the two, resulting in the
> > register contents being unintentionally byteswapped in certain
> > situations.  Currently this can be triggered by the first SVE
> > instruction after a syscall, for example (though the potential
> > trigger points may vary in future).
> > 
> > So, fix the conversion functions fpsimd_to_sve(), sve_to_fpsimd()
> > and sve_sync_from_fpsimd_zeropad() to swab where appropriate.
> > 
> > There is no common swahl128() or swab128() that we could use here.
> > Maybe it would be worth making this generic, but for now add a
> > simple local hack.
> > 
> > Since the byte order differences are exposed in ABI, also clarify
> > the docuentation.
> 
> NIT: s/docuentation/documentation/
> 
> Although, it is probably too late to fix this one as Will already took the patch.

I actually spotted (and fixed) that one when I committed the patch, but I
missed the others. Given that this is top of the fixes branch, I can
probably just fold these in.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
