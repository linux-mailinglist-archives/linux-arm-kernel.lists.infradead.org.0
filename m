Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B03C18B94B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS/OPmJKIBU9Sli8Qhv2XtIdZSCVfp81GcASvcHx0AA=; b=SpwStv4aSIw3KQ
	YISE3p+/DMm4RVJNURnB/HE0TSVu4AKxpaQ//KOZQ5XRCN9heoa1yaUMqEWDVNL3lSvEfjtzisn/l
	mbmd5KrAXQdXA+Nl/Y0D8zz/pOhNweMKonriNE40p1uKxndN8uuBN8UtDVR6O7ja+pSS3TCl0K6NA
	utlTPO/TTHWR0bBggIgUYErfI0fDcR/al87uoMgMSp+KbtD+di5yyWtGuVs/BNzcUxVS+2hcgCNz4
	9pykWb/qczThOh7L/poaEtYYSWCP0ISq5U9Iv/wePP1RzJSogroHnCm6A0ZXxoolIZsgdZMemlGC7
	zMIBEFfPZRvymXgiCgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEw4c-0005dQ-06; Thu, 19 Mar 2020 14:23:02 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEw4T-0005d5-K3; Thu, 19 Mar 2020 14:22:54 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]:43774
 helo=diego.localnet) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1jEw4P-0004O5-2t; Thu, 19 Mar 2020 15:22:49 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: Christoph Muellner <christoph.muellner@theobroma-systems.com>
Subject: Re: [PATCH] phy: rk-inno-usb2: Decrease verbosity of repeating log.
Date: Thu, 19 Mar 2020 15:22:48 +0100
Message-ID: <2002640.57rdNQtM3Z@diego>
Organization: Theobroma Systems
In-Reply-To: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
References: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_072253_810076_A613EF20 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 19. M=E4rz 2020, 15:08:52 CET schrieb Christoph Muellner:
> phy-rockchip-inno-usb2 logs the message
> =

>   "phy-ff2c0000.syscon:usb2-phy@100.2: charger =3D INVALID_CHARGER"
> =

> constantly with a frequency of about 1 Hz and a verbosity level
> of INFO. As this is clearly annoying, this patch decreases
> the log level to DEBUG.
> =

> Signed-off-by: Christoph Muellner <christoph.muellner@theobroma-systems.c=
om>

I've noticed these messages in the past as well, but I guess in my short
test-cycles never got annoyed enough to do something about it, but it's
nice to see them go away, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
