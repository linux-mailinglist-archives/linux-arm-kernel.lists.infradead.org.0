Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C42901D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qc90TxNFnexOT2/qx2PGtDxbWGeVO3O9G+VCdlAgxMo=; b=ZqEldD7ndhojwp
	XTXWgiTq3ylxNHVtUJIwYANbu3nfj3PBqX3SEuEK7W2HTbipOCMUearPbs1rhu5X8ssIX0lCCXPVW
	Se8TjUMpHGBqB53GiZdj0z2HFilV5GkkfEgnoJX73b0mVbdrx6EvLP3zKj+1l4NIlWuYjH9NQs7/V
	mrA1X82siRBp9uADSQZJs9jZupoc67MMPzf1G5qdx8chDz8xuuXWLvJjqa8BnKcYJj/9e/kMUSiJP
	TvjYgl3JVCWSxYdMszMgA184wengDb8UXNyh3UqhdMfms1qQAv+yy89EvKABvDh2WRav4spbgYQNb
	MpGwv2wCpmu7L9hE51Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybZ0-0008OZ-39; Fri, 16 Aug 2019 12:42:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybYh-0008Ni-RB; Fri, 16 Aug 2019 12:42:21 +0000
Received: from [88.128.80.55] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hybYc-0000bE-J7; Fri, 16 Aug 2019 14:42:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC
Date: Fri, 16 Aug 2019 14:42:01 +0200
Message-ID: <2387554.nTnFO2ePRC@phil>
In-Reply-To: <20190805124037.10597-1-andyshrk@gmail.com>
References: <20190805124037.10597-1-andyshrk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_054220_034861_401DAACB 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 5. August 2019, 14:40:37 CEST schrieb Andy Yan:
> P710 is a RK3399 based SBC, designed by Leez [0].
> 
> Specification
> - Rockchip RK3399
> - 4/2GB LPDDR4
> - TF sd scard slot
> - eMMC
> - M.2 B-Key for 4G LTE
> - AP6256 for WiFi + BT
> - Gigabit ethernet
> - HDMI out
> - 40 pin header
> - USB 2.0 x 2
> - USB 3.0 x 1
> - USB 3.0 Type-C x 1
> - TYPE-C Power supply
> 
> [0]https://leez.lenovo.com
> 
> Signed-off-by: Andy Yan <andyshrk@gmail.com>

applied for 5.4 - I did correct the alphabetical sorting a tiny bit though.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
