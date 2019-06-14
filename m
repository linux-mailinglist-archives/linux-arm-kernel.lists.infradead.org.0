Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F343F45875
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5VRVdeddJj1oOQz2cbcPXlUuTViqcK5TaMKPaS67Gs=; b=B4feuXVFDF6/MZ
	oBsR6K6bHmwq0OTLWvzRLlWVi093W3X/h9dOsQH/EMq/JugqybbV2X9i7r5vrVukLLVmGpLqM7TPw
	IylRuqXMkrsrcB1/UfoFo9k2iAeSkAx55pTCHXExViDBzpNdGew59eISHlsDbf86Cj/FlZyvvNcD3
	1ToyVeX6MNv8quWtCAcUxNeT0Z/JAQ8nOuBGXwgBze6QmH0PdMIkjH8OyjIh0TE4Gxr3JaYa/0cDs
	jN6Sc9EPrwYjBsJDqvMSUDTxL/p/fiM7Cmnsb1oHgs9eYKGj+4LYEst2QyJW5QSWbKl4NVipDB8Fk
	UmruNWGuPK6zWFwswfSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiO3-0007Ha-Q6; Fri, 14 Jun 2019 09:20:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiNk-0007GN-HM; Fri, 14 Jun 2019 09:20:25 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiNi-00042a-Uo; Fri, 14 Jun 2019 11:20:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI audio on Rock Pi
Date: Fri, 14 Jun 2019 11:20:22 +0200
Message-ID: <2770514.s8ZUFaWtDL@phil>
In-Reply-To: <20190608003501.32454-1-ezequiel@collabora.com>
References: <20190608003501.32454-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_022024_729383_CC8657EF 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 8. Juni 2019, 02:35:01 CEST schrieb Ezequiel Garcia:
> This commit enables the hdmi-sound device needed to have
> audio over HDMI on the Rock Pi board.
> 
> Fixes: 1b5715c602fda ("arm64: dts: rockchip: add ROCK Pi 4 DTS support")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
