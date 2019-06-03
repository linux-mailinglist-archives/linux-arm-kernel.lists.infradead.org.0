Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C62D33468
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmdklJrp13qzk2ERxMyyH89Jt3bZEgSQLlv84spe8eQ=; b=rAehdPSCDSLQmW
	vFdMxtO8uLTu3jxRxzNOKVBFes0NyUKGoDBFmR6SLf+CZZdxNtnQS7+yE7E/2jbLYIal/r5lgShrx
	deIflClGBVPtCB4czhfQhHNGeTWl8D/b/Qzo9HnA7FX78gg4SOORnXX0T4Ves1CQco+SsV6pxNajp
	7hqLvEMUZpvlDdseMZdVF/muck+YzBwht38Op0O2NSyZ5ajYAHcHrTyahiTlegWiGvUi9XDQHyWVi
	4AzeVF1yK0W2xVFpTwowEXI9NW/SqfGqWMqRJZZzA7/fshSCMDr5dCRDngCyhuX/3U0VRBRqLu80r
	SeCtlke8GwKP0WHgXkzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpNq-0004KD-MN; Mon, 03 Jun 2019 16:00:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpNj-0004Jd-Ja
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:00:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2120780D;
 Mon,  3 Jun 2019 09:00:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BF4C83F246; Mon,  3 Jun 2019 09:00:17 -0700 (PDT)
Date: Mon, 3 Jun 2019 17:00:15 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Move PTE_VALID from SW defined to HW page
 table entry definitions
Message-ID: <20190603160015.GE63283@arrakis.emea.arm.com>
References: <1558411587-19042-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558411587-19042-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_090019_650872_289D2D50 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>,
 Steve Capper <steve.capper@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 09:36:27AM +0530, Anshuman Khandual wrote:
> PTE_VALID signifies that the last level page table entry is valid and it is
> MMU recognized while walking the page table. This is not a software defined
> PTE bit and should not be listed like one. Just move it to appropriate
> header file.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: James Morse <james.morse@arm.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
