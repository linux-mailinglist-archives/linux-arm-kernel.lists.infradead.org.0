Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35CC1288ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 12:59:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhF4Quj355nxYw9VDb0Wyu+Ax4lU2efweqzqk8/YiD4=; b=mUXleCSw+6FMYf
	SNmrhaSIbv1oiB9vidAqLv9pcnuVf49a6Y9kgyF48olZjzhJxNW3nhpX8FP/8/UQTJA2A1uvPG5pW
	s9eVEwor4bz/gSfwdYCCcHeowZXaFXlB4HnRsljWWsNJAxRNt41AeliwcnnbGBt9eqMWC/JPcbF1A
	NfU0fGegGIv6d5Nn50qzbQD/X9/8jYB+LUrh6YTn0lwb7SaYYCh++lxoVcU11BFZ7eH3b+2suVcw3
	uPOggZ0qnrBs7iNukM+jwrHVqsiu1q1Y/7bNfJRQJjFD42pKW6ZdmymDxmNdBhqjVMqXS35oBrvLC
	NOFH5nw4+/YjD/Xdtkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iidPi-0006oO-MG; Sat, 21 Dec 2019 11:59:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iidPX-0006np-Ci; Sat, 21 Dec 2019 11:59:08 +0000
Received: from [195.37.15.138] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iidPR-0004n3-CJ; Sat, 21 Dec 2019 12:59:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: RockPro64: enable wifi/bt
Date: Sat, 21 Dec 2019 12:58:54 +0100
Message-ID: <12929824.v0dLTkq57a@phil>
In-Reply-To: <20191218223523.30154-1-smoch@web.de>
References: <20191218223523.30154-1-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_035907_582030_20CE9298 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 18. Dezember 2019, 23:35:21 CET schrieb Soeren Moch:
> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
> AP6359SA based wifi/bt combo module.
> 
> Patches 1-7 of version 2 of this patch series (to add support for the
> BCM4359 chipset with SDIO interface to the brcmfmac wireless network
> driver) are already picked up for wireless-drivers-next. So this
> version 3 only contains the patches 8-9 from v2.
> 

applied both for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
