Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854420261C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 21:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWApJPtlQPaj7/pDM2TSjRLpxABb2LkedNlhdWCIyA0=; b=UWSCRBKDUdPODe
	kCrcNmhoQ/SFr/BmTU6Dkc7Pd5ieJ1qKXmje3Kpl9ixJ14gqk48IniNXC51+8gC5vv4MhwNjcCLZ9
	2wLlR67gRCETnZVuoV3gG2RJGrdfD6ceKpd6oELdwoYYYNGGL+X7uV7I410gXrOHM9VTjzqFy7pKc
	Xhu3nAXeO69bhhZXbtBPg2vtit7qM29GoDhY/3DmQBbJgNr3B9UJGl41ht4+D5EQX/f/JiDSTxpJ1
	dszLiVbg3H263Gzw5bk8lLyyL4q3rxVgW6t1uZzFD1/fUeqwBY9oMqivTmpEhj9Zlkkw0UXEu06N2
	ukqWnRKaRp90vNCZrgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmivC-0002Bs-4k; Sat, 20 Jun 2020 19:12:58 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmiv3-00024L-0G
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 19:12:50 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 0D5A520021;
 Sat, 20 Jun 2020 21:10:31 +0200 (CEST)
Date: Sat, 20 Jun 2020 21:10:30 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v4 0/4] dt-bindings: display: ti,tfp410.txt: convert to
 yaml
Message-ID: <20200620191030.GB27870@ravnborg.org>
References: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=edQTgYMH c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=8nJEP1OIZ-IA:10 a=e5mUnYsNAAAA:8 a=g4gMLcP0b6Kv2YKJtkEA:9
 a=wPNLvfGTeEIA:10 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_121249_220839_9B9A7AAD 
X-CRM114-Status: GOOD (  17.60  )
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 tomi.valkeinen@ti.com, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ricardo.

On Wed, Jun 17, 2020 at 11:46:29AM +0200, Ricardo Ca=F1uelo wrote:
> This series converts the DT binding for the TI TFP410 DPI-to-DVI encoder
> to json-schema.
> =

> It also fixes a minor bug in the ti-tfp410 driver that causes a
> wrong calculation of the setup and hold times when the de-skew feature
> is enabled. The retrieval of the de-skew value from the DT has also been
> updated to reflect the binding changes.
> =

> Changes in v4:
> =

>   - ti,tfp410.yaml:
>     - "ports" node set back as required (Laurent Pinchart). This means
>       that dove-sbc-a510.dts will not comply with the binding and will
>       have to be fixed at some point.
> =

> The bindings have been tested with:
> =

>   make dt_binding_check ARCH=3D<arch> DT_SCHEMA_FILES=3D<...ti,tfp410.yam=
l>
>   make dtbs_check ARCH=3D<arch> DT_SCHEMA_FILES=3D<...ti,tfp410.yaml>
> =

> for <arch> =3D arm and arm64.
> This uncovered a number of dts files that use the TFP410 but not through
> I2C and don't define the ti,deskew property. These should also be fixed.
> =

> Ricardo Ca=F1uelo (4):
>   dt-bindings: display: ti,tfp410.txt: convert to yaml
>   dt-bindings: display: ti,tfp410.yaml: Redefine ti,deskew property
>   drm/bridge: tfp410: fix de-skew value retrieval from DT
>   drm/bridge: tfp410: Fix setup and hold time calculation

Thanks for following up and this.
Applied to drm-misc-next.

	Sam

> =

>  .../bindings/display/bridge/ti,tfp410.txt     |  66 ---------
>  .../bindings/display/bridge/ti,tfp410.yaml    | 131 ++++++++++++++++++
>  drivers/gpu/drm/bridge/ti-tfp410.c            |  10 +-
>  3 files changed, 136 insertions(+), 71 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/ti,t=
fp410.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,t=
fp410.yaml
> =

> -- =

> 2.18.0
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
