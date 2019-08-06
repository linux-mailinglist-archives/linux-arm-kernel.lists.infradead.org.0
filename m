Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660FB83160
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWkkbLBhTjJBDYRIhJxNLRJDNfj0dds9S8mh3TLMplU=; b=e1n5xn9CcGdg9P
	N1fjTZi4nENDaJa1pA+Lc/nP6S+6gSXOrqLNXnRJcQiuT8B5lPtA4e+RvcsUE94xgUkcC0PTrxT9Q
	n02o4UG+8ZJAZL7+nEDLBP9MLvlrEG3SoOf5YXX0jEp2+5YI2jgZ/RpWJNZONMGao4h1/LNQ7qmmA
	z3GtKKR/RrMBrFxtCTm/8S3wHiVMrD/mcBHELc29Ktk3EZr2L2aT38iVKPtOPJAleKcAVgTDom7xX
	rRelFbeaIe7lMh0fxEml1YvUyNFbOSTQrRcr7p7xGL2kv9K8P7mRaijMA+mpOpItlDG9C4uhwaUW3
	gtj0coZf2GiU+lxma4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyen-0002Ae-O5; Tue, 06 Aug 2019 12:33:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyea-0002AF-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:33:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C383CB05E;
 Tue,  6 Aug 2019 12:33:22 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: 5.2: arm-smmu e0600000.smmu: Unexpected global fault,
 this could be serious
References: <mvmlfw6354j.fsf@suse.de>
 <5036fcb8-131e-9ffe-4bfe-dc8cbae71bc4@arm.com>
X-Yow: Then, it's off to RED CHINA!!
Date: Tue, 06 Aug 2019 14:33:22 +0200
In-Reply-To: <5036fcb8-131e-9ffe-4bfe-dc8cbae71bc4@arm.com> (Robin Murphy's
 message of "Tue, 6 Aug 2019 13:17:12 +0100")
Message-ID: <mvmh86u323x.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_053324_826899_C7E2852F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Aug 06 2019, Robin Murphy <robin.murphy@arm.com> wrote:

> I take it you have firmware still using the old "mmu-masters" DT binding
> on that machine?

Yes.

> The way the legacy binding is handled turns out to interact badly with the
> disable_bypass option, so CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is
> presumably now tripping you up. The immediate workaround would be to turn
> that off and/or boot with "arm-smmu.disable_bypass=0" to ensure it's
> overridden.

I will try the command line parameter.

> If you can update the firmware to something newer using either
> the generic "iommus" binding or ACPI (I believe Seattle is supported in
> EDK2 these days) that would remove the problem entirely.

AMD won't be releasing any new firmware for their seattle platform.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
