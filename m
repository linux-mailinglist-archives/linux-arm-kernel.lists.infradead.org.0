Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022CF1280E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b85dLH5V498wVeMR1sBc3TV1PA5CQvUeM44rHEsnq34=; b=KMNYXMtb4ij9y+
	f01eFf3yK3WJwv6jE+KzKxR+kcsqtuCfgoh3mc3kiwjpqDtmUrDiMVniAiq2CjxyYV8lR1i0hiVjN
	vxpcnps27XB/GCjn2Fr68EssDPxtJ0pNX/qyZYqtBGzax9r4kuxuQJzZ+snJsJSd6WHx1SVkePxtE
	80RtPlAX/sLLnEDWj358UxX5qdoumlcTfo/qHUan8HJsLKR0acSZbtG0jMp5UGQUBaeNh1zU6ghrE
	rlpCitCaYPks/V8x8pSwGDoe1lje90Ua+lf1ppfJBGI9vI6GgCAQssfWflZ2bGNu0wreWEZaNy+I8
	sF1ssWzVLGltcYoRFVow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiLTO-0003DD-KY; Fri, 20 Dec 2019 16:49:54 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiLTF-0003BL-7P
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:49:46 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 51A222000B;
 Fri, 20 Dec 2019 16:49:31 +0000 (UTC)
Date: Fri, 20 Dec 2019 17:49:31 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v6 2/2] ARM: dts: at91: add smartkiz support and a common
 kizboxmini dtsi file
Message-ID: <20191220164931.GE895367@piout.net>
References: <20191220103835.160154-1-kamel.bouhara@bootlin.com>
 <20191220103835.160154-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220103835.160154-2-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_084945_398076_8D3CC274 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
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
Cc: devicetree@vger.kernel.org, Mickael GARDET <m.gardet@overkiz.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/12/2019 11:38:35+0100, Kamel Bouhara wrote:
> Split the existing Kizbox Mini boards into three board configuration,
> the base board, the mother board and the RailDIN board.
> Add a new dts file for the SmartKiz board support.
> =

> Signed-off-by: K=E9vin RAYMOND <k.raymond@overkiz.com>
> Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  arch/arm/boot/dts/Makefile                    |   5 +-
>  arch/arm/boot/dts/at91-kizboxmini-base.dts    |  24 +++
>  ...oxmini.dts =3D> at91-kizboxmini-common.dtsi} | 163 +++++++++---------
>  arch/arm/boot/dts/at91-kizboxmini-mb.dts      |  26 +++
>  arch/arm/boot/dts/at91-kizboxmini-rd.dts      |  49 ++++++
>  arch/arm/boot/dts/at91-smartkiz.dts           | 109 ++++++++++++
>  6 files changed, 293 insertions(+), 83 deletions(-)
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-base.dts
>  rename arch/arm/boot/dts/{at91-kizboxmini.dts =3D> at91-kizboxmini-commo=
n.dtsi} (51%)
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
>  create mode 100644 arch/arm/boot/dts/at91-smartkiz.dts
> =

Applied, thanks.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
