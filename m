Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3010018771E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXxTuFK4lPgzx+e1NXhrTE46WE757nurJqqhmm7WWRY=; b=HZgfv0Tqqw5MyK
	ZYak47fXO+MlzGkAghwqOXb1d2gz0FS30HutpoKhoE4iaAldTjtc7fC5BddvLH/cju/z/Jie0OFjQ
	ns05W8roq0ls0i6LsK36R3FEWTj7MJ9J2kgKloWPFdDGikYGq+4W/ha4nzfBrnS5i3xP4GrxQs5vJ
	6hJCh896bBtBqCVCT6szQuaEizduofPJpIhLjv5iOfMhw3DAmlbQDVwtvs5vdFRfZM4tJIelQ9KsI
	RxN48vjKTbYBg1kuA2r/NbzFflu73UCtVo8C5PNTuohRkLv+pU0l9v30i4ZSOxRSl83RCwkmnhWdb
	6OvE+KLkC8YpMgJNP3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0Tb-0001se-Iv; Tue, 17 Mar 2020 00:52:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0TP-0001rq-DW; Tue, 17 Mar 2020 00:52:48 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0TN-0004Ve-LD; Tue, 17 Mar 2020 01:52:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: remove clock-names property
 from 'generic-ehci' nodes
Date: Tue, 17 Mar 2020 01:52:44 +0100
Message-ID: <2757914.d0uldur9AL@phil>
In-Reply-To: <20200312171441.21144-3-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
 <20200312171441.21144-3-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_175247_607820_1147714E 
X-CRM114-Status: UNSURE (   9.31  )
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

Am Donnerstag, 12. M=E4rz 2020, 18:14:40 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff5c0000:
> 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'clock-names' is not a valid property name for usb_host nodes with
> compatible string 'generic-ehci', so remove them.
> =

> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/usb/generic-ehci.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
