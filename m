Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A08F174A3E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWPR1DOFiIWUtmLg/VRInmFbdPiqe0J4gf0RoinQOBE=; b=fTvl7s9hXPQf5X
	I5VFJwIxXKN2tCPhhoNH3ZhhcDUtJ8FCZPAEGgXb3Dky/VX7tEbtb5nKRiZTzNYckBlWBkeyak6Uv
	wNlM3sCM8CtNqtSOwe5RbzxsAQafurJnn3skO8IoCzXjOrc6wcQcVzm4/XLXXMyXd4KbISYvkztdK
	W7D9WQbqU0y9FhNyT3Dti8RvVS7W4IKLFyfFUGil5AgBanxTVFiKPfJEZH5XtxomhymRKAXnJFGcj
	PxaZ04qdgUq+r/Km3lbB5K0TxoaZXMoK8kclwwI/EUDlVeBnyGQ7vSf1860I6pzqOznNc/k6JUn4T
	75oGW7Xrk9fbu6d3BFpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BpI-0007Mc-0J; Sat, 29 Feb 2020 23:47:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Bp7-0007Lq-Tj; Sat, 29 Feb 2020 23:47:11 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8Bp6-0004qM-8P; Sun, 01 Mar 2020 00:47:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: remove g-use-dma from rockchip usb nodes
Date: Sun, 01 Mar 2020 00:47:07 +0100
Message-ID: <8908074.NjHMO83URx@phil>
In-Reply-To: <20200228113922.20266-1-jbx6244@gmail.com>
References: <20200228113922.20266-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_154710_110480_F3899175 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 12:39:21 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3228-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'g-use-dma' is not a valid option in dwc2.yaml, so remove it
> from all Rockchip dtsi files.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both patches for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
