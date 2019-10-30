Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC974EA2A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN3Gj9D+cRLVaEV+/CFbm75bkFM9zYasIXJvTrTFdgk=; b=cgHjsnsESXY/Nc
	Z0+OTCLikQ52e49V4+mHkiqV1DaP4FRpwLCyviykMA+8x9NauKuKlbug1U8d4wS5ub3FShTyj5SKu
	muqql4cr1zzuQZ+k+AfUUjtKGS/IyWHOB5QjmR2uNHAmizgJfR/8FE6hc0S76ZFhE5L25+hL9FZq8
	MpQOcOzrEmnyT2xi1wdtPBjpibSdQEr1a98yvjcU6+6eZZ67lc8f8Db1OSj9gHDSi0mz4TTPYWqrG
	L6/r9lh+qJNmO7GbL5dPBzWsCcMbbegZ/a6fYsvKUPydyIhVCMadnlBFzAUL29ydgR8FeWuotkBT0
	Zu9uISPVk1nLzuGk+rkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrrN-0003i6-88; Wed, 30 Oct 2019 17:34:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrrC-0003hb-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:34:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9914D1FB;
 Wed, 30 Oct 2019 10:34:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 961583F6C4; Wed, 30 Oct 2019 10:34:02 -0700 (PDT)
Date: Wed, 30 Oct 2019 17:34:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [RFC] arm64: cpufeatures: Add support for tlbi range maintenance
Message-ID: <20191030173359.GF13309@arrakis.emea.arm.com>
References: <1572417685-32955-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572417685-32955-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_103406_398411_6C03EA90 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Tangnianyao <tangnianyao@huawei.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 02:41:25PM +0800, Shaokun Zhang wrote:
> ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
> range of input addresses. This patch adds support for this feature.
> And provide another implementation for flush_tlb_range with tlbi
> range instruction.

Do you have any performance numbers in favour of this patch? Last time
we looked, it didn't really matter for Linux since most user TLBI ranges
were 1 or 2 pages long. Of course you can write some mprotect() loop to
show that it matters but I'm rather interested in real world impact.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
