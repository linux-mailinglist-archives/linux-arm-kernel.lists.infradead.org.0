Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5819A1876E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+M53Eh3ALUixoxfuUDUYp4sW2Hx8TFxq76UsaKgANs=; b=pnJldHDfQsKpCd
	BzbpDrbPYHBtc59tiTmet40f6WFVKGgX1A5qJv4PjyOlrvzLoP/EsRKzne5OIw3UWobV49txTYrNx
	4K2Ml9DOl/Jgz9SfkW7rKxDvI6J3HwUrhKDJzeJfGxm/mVK1U38/MrHIby0Cy1MnbeXjHz3tn3Mws
	oj1FBozdn6hnG3xhCMEN5QHAQSXMmLiSiAengWIHGmyHoJUveDoeFuL5Snl+u8wjIrq3kiaqrNDD5
	4Gl9GfHbS+tL3DGYAki1f6hLe4qz8UDmt5Ph2BA5UFTaWzTU9EnHjD25bQ384CzIEEa/GRh4PLHx3
	T+gsweabqmi3dhObIH4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE05z-0008GH-FZ; Tue, 17 Mar 2020 00:28:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE05k-0008BX-U6; Tue, 17 Mar 2020 00:28:24 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE05j-0004PC-3C; Tue, 17 Mar 2020 01:28:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/4] ARM: dts: rockchip: remove clock-names property from
 'generic-ohci' nodes
Date: Tue, 17 Mar 2020 01:28:18 +0100
Message-ID: <3829489.fZJU2aXfik@phil>
In-Reply-To: <20200312171441.21144-2-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
 <20200312171441.21144-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172821_145706_25C97EFF 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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

Am Donnerstag, 12. M=E4rz 2020, 18:14:39 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30160000:
> 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'clock-names' is not a valid property name for usb_host nodes with
> compatible string 'generic-ohci', so remove them.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/usb/generic-ohci.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
