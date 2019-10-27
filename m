Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A696E64DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 19:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xxqVR/skAaKOu1IbRVhEVaOxzE8OA/aIX45bG8rmz0=; b=NThv1KaBRABbVY
	32GDmJOJ/Y/bCCDNe30sE2V+ktNnx8Xr/yhUeIv8KqbPe/XAbnIYxqCxlq2CP1y9O/6+XVfzHevws
	9I5M74CjSy5XtQZ16zBeymv3ehA3dNgWW36M3dY0aUJv8WS2gt+DTzn5hSpQakG5qxculqOYqA9d1
	RPgaKIjGLKTcTuyXlJtRDFCH14xh5fNRyFz8uUAljKUObkDThD9I+6JuIGO7wYdpkBlP67CyUgEbo
	bxhMvay0ZTTcVSL5zKlc7cgSCilxV5+QgxOUfwX14ipXpg6bClUODtttKcKwXV3ss9I6Iccnlifmc
	53B+Zpsh4fwiBQi5ga7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBl-0001b2-8s; Sun, 27 Oct 2019 18:22:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBG-0001JO-Jg; Sun, 27 Oct 2019 18:22:24 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBF-0008He-9y; Sun, 27 Oct 2019 19:22:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable gpu on rk3399-puma
Date: Sun, 27 Oct 2019 19:22:02 +0100
Message-ID: <7251662.sC0l0EPzFi@phil>
In-Reply-To: <20191023223954.3139-1-heiko@sntech.de>
References: <20191023223954.3139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112222_791237_1BC42008 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 24. Oktober 2019, 00:39:54 CET schrieb Heiko Stuebner:
> Set the supplying regulator and enable the gpu node on the rk3399-puma som.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
