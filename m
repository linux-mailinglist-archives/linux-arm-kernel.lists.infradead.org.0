Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E9D11C9B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsZm8NBJcEhkJWRnLq9XJhmbyM+bzBUbm3HqEvAhbbs=; b=OdhUeRkzY0SmVO
	0JWLph1+FKhz0tYnHuUd+RMBBN+e3AhHgGe+KbOPzjbZVk44530T009O7/Qf/k8gxQm6d8dU3pI/b
	DlQYSs2yusDs/fXDA3YszJCmNWT/dEo7+CHbRFZ0EPoFIZQtAj3Ehkc+Qyu2BQcGdu3GW+ReJC7UA
	7VEaE003Ym0sEeuJvesSRqitl+hTXBUH7xk0oWvcwZ6pnDRCHy34U4Gin3FmwT2pv2w7HVaoALtOG
	hDVbN8V0cCVh/JfJnYKaVpRE1XlEX4V84T1AkxHlOt0NMDkgRjQmjBg4vONolLqF1yJdex711/tNi
	1UHVEKCrTSMIsmQybSCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKzX-0002aW-7O; Thu, 12 Dec 2019 09:42:39 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKzM-0002Z7-Vj; Thu, 12 Dec 2019 09:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576143746;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=i0FaJubDuJMbNyKma+XSBPHXvIJXRnamxfGjizAg5l4=;
 b=joBdw2U47skEzTWQsIBsuU18qjWbgQ3l4GW+wCBhj3pBO6hPKy4NETmO4/e24qV5
 Z3xYhCTcWhCgoaFyV91UhaWHBIvTwrB7csVhPbaPZjUIxBwaNlhmx+SMsdd/OqbcENx
 GWWqeTxaAOUyBG4aD/u4YKvYYkpZ2w/8KU0OusVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576143746;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=i0FaJubDuJMbNyKma+XSBPHXvIJXRnamxfGjizAg5l4=;
 b=O9a3ks7ehxWurNXvWOBcxj/zIsgvXsxuK8UptAX+yeQOCfA4JjjHYCbZYkFDMTAU
 YMVvBh7QeOCKhUbbqEX1puFMbS2llvG13J4gEwR9wUkq5EPJVVhtyzzYKKcU1JtfUJO
 BnpXXBKoVClmv1dN1Rv9nwSxkxlKKt6uqMiXBsAU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 06A7FC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
References: <20191211235253.2539-1-smoch@web.de>
Date: Thu, 12 Dec 2019 09:42:26 +0000
In-Reply-To: <20191211235253.2539-1-smoch@web.de> (Soeren Moch's message of
 "Thu, 12 Dec 2019 00:52:44 +0100")
Message-ID: <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.12-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_014229_044968_BAD54033 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Soeren Moch <smoch@web.de> writes:

> Add support for the BCM4359 chipset with SDIO interface and RSDB support
> to the brcmfmac wireless network driver in patches 1-7.
>
> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
>
>
> Chung-Hsien Hsu (1):
>   brcmfmac: set F2 blocksize and watermark for 4359
>
> Soeren Moch (5):
>   brcmfmac: fix rambase for 4359/9
>   brcmfmac: make errors when setting roaming parameters non-fatal
>   brcmfmac: add support for BCM4359 SDIO chipset
>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>
> Wright Feng (3):
>   brcmfmac: reset two D11 cores if chip has two D11 cores
>   brcmfmac: add RSDB condition when setting interface combinations
>   brcmfmac: not set mbss in vif if firmware does not support MBSS
>
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>  include/linux/mmc/sdio_ids.h                  |  2 +
>  8 files changed, 176 insertions(+), 26 deletions(-)

Just to make sure we are on the same page, I will apply patches 1-7 to
wireless-drivers-next and patches 8-9 go to some other tree? And there
are no dependencies between the brcmfmac patches and dts patches?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
