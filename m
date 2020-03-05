Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BBB17B0C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/VjTzRy7buxzgeO7L58ARONTZIIJb/ZK3YW8aHdIvQ=; b=XlGh3yBnNC8QMY
	06akMapPjn6AmFQyOKDeFKS2U2dyrdMhwywH63FBNunJ8oJyZddGuD21NA61TiWVsaidAEVR1UjXK
	vOa1GY7hZeTpbwqh+9o8x/dc52h29FE4KzhLOaHaI7O79SUpjjdXDhkr0pAI+vPhdVIgKZjyeuMZK
	UOv+rPGoX4PpK0fHz9fob9dt0p5Cg1Tk8RYuCvw3MiEdrxWWHi7DLRVCIHg48kY1ycq9DqLbpD6sW
	Fzkhve6RGEz4jTng9/xzI6C9xeux6diKn4fKrMpwEqXNxxFg/3Qr5xt50FbIeddzkRZ3pe8imtTse
	36WLuxfKZvtr0K61QMbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9y9y-00005H-Ik; Thu, 05 Mar 2020 21:36:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9y9p-00004s-TW; Thu, 05 Mar 2020 21:35:55 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j9y9o-00066C-8b; Thu, 05 Mar 2020 22:35:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: add missing model properties
Date: Thu, 05 Mar 2020 22:35:51 +0100
Message-ID: <5155217.YDJUN7Zz9T@phil>
In-Reply-To: <20200304074051.8742-1-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_133554_101809_179B9EEA 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 4. M=E4rz 2020, 08:40:49 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> =

> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: /: 'model'
> is a required property
> arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml: /: 'model'
> is a required property
> arch/arm/boot/dts/rk3288-r89.dt.yaml: /: 'model'
> is a required property
> =

> Fix this error by adding the missing model properties to
> the involved dts files.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3D~/.local/lib/python3.5/site-packages/dtschema/
> schemas/root-node.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
