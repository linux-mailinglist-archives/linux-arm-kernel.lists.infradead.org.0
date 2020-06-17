Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5A51FC8ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sb0t5beYYQMxEkovYYA3rFAw7MaW+jg2fUGCw5gH+T4=; b=C/U8qZNjqUbQ34
	cH0A+42bKOI7WspS3xv7HDaSC08OjAbEGIf2Vy2dTtBZYnaJZ3gyvJcQFxKCtWS88WjtG7x0ZKL53
	JUCKdn3rJopNz/U/Fpg/LGuBXn7rMcTkpGG0DzK8tfhyz/RXgGAoqV7oL4DDelBVvbmfbKxGm3XS/
	kCc8ZG1wo8vcbHhnJL9hBU/np1aCvyxhmT6h1lom0zyYi1zgZAuuSN8EUjIOaXTmLmk2YocQytbKZ
	lN3ywyCEEoK+cSbf8KTp+kQQncb8XqXiJ3wz48T43mfh0Ds87/fespoYv2DdNIpayOhSDrfs0GYlL
	nV1Yz7hvsdDyxvjSmjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTZU-00013F-Km; Wed, 17 Jun 2020 08:37:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTZJ-00010u-HU; Wed, 17 Jun 2020 08:37:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTZH-0005rL-Ua; Wed, 17 Jun 2020 10:37:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3368-lion gmac reset gpio
Date: Wed, 17 Jun 2020 10:37:05 +0200
Message-Id: <159238301927.1406601.9956183510876870851.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200607212909.920575-1-heiko@sntech.de>
References: <20200607212909.920575-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_013713_579177_BAF32CAC 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 klaus.goger@theobroma-systems.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 7 Jun 2020 23:29:09 +0200, Heiko Stuebner wrote:
> The lion gmac node currently uses opposite active-values for the
> gmac phy reset pin. The gpio-declaration uses active-high while the
> separate snps,reset-active-low property marks the pin as active low.
> 
> While on the kernel side this works ok, other DT users may get
> confused - as seen with uboot right now.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk3368-lion gmac reset gpio
      commit: 2300e6dab473e93181cf76e4fe6671aa3d24c57b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
