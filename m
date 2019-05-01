Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41BF10D66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvNV7PCQdUDYpFE1FkpRuALABA0OzBZc4yQY/NkRd5k=; b=NTTM3BZtbzFoIZ
	jAuTwA6Uk5mp5d08HkDRhtXJ5slKCj3EnUWjeFTcRM+lrZQukGaHLsYMAvOz3EmyHJ1c/94gbp9vo
	SOX2lNq2O/ftQfZ7SsHA6kcRHow04ujiHYEz8aB97XAmI0cFXF/pYQFRQfgKFK/NySfgNkSjYeZTo
	01IAoPfamNVCLDE4A8NqtFvGn9IqwdfC5v1gQFxxEBfsEKPUPR2VuGblFwLCJhi/Tq2WjVZUJuxQQ
	EK677pMhZKUzFhyt/3zOIxMZelk8TuLcqtj015e2tJK4ZiiAe8I9OilOvzNQLu1Tpp8xQRHZvv9Kg
	+uGXiYIFf2i9PDGdJ1Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLv8j-0000p2-3L; Wed, 01 May 2019 19:43:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLv8b-0000o5-Ul; Wed, 01 May 2019 19:43:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id C5023263971
Date: Wed, 1 May 2019 15:43:41 -0400
From: =?utf-8?B?R2HDq2w=?= PORTAY <gael.portay@collabora.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: rockchip: Enable dmc and dfi nodes on
 gru.
Message-ID: <20190501194341.tdmv5cg2ajoebwyx@archlinux.localdomain>
References: <20190415212948.7736-1-gael.portay@collabora.com>
 <20190415212948.7736-6-gael.portay@collabora.com>
 <20190426184559.GA29242@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190426184559.GA29242@bogus>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_124330_136979_CB5ABA85 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-rockchip@lists.infradead.org, Randy Li <ayaka@soulik.info>,
 linux-arm-kernel@lists.infradead.org, Lin Huang <hl@rock-chips.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob,

On Fri, Apr 26, 2019 at 01:45:59PM -0500, Rob Herring wrote:
> On Mon, Apr 15, 2019 at 05:29:48PM -0400, Ga=EBl PORTAY wrote:
> > diff --git a/include/dt-bindings/power/rk3399-dram.h b/include/dt-bindi=
ngs/power/rk3399-dram.h
> > new file mode 100644
> > index 000000000000..4b3d4a79923b
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rk3399-dram.h
> > @@ -0,0 +1,73 @@
> > +/* SPDX-License-Identifier: (GPL-2.0+ OR X11) */
> > +/*
> > + * Copyright (c) 2016-2018, Fuzhou Rockchip Electronics Co., Ltd
> > + *
> > + * Author: Lin Huang <hl@rock-chips.com>
> > + */
> > +
> > +#ifndef _DTS_DRAM_ROCKCHIP_RK3399_H
> > +#define _DTS_DRAM_ROCKCHIP_RK3399_H
> > +
> > +#define DDR3_DS_34ohm		34
> > +#define DDR3_DS_40ohm		40
> > +
> > +#define DDR3_ODT_DIS		0
> > +#define DDR3_ODT_40ohm		40
> > +#define DDR3_ODT_60ohm		60
> > +#define DDR3_ODT_120ohm		120
> =

> I don't think these defines add much value given the value is in the =

> define itself.
> =

> Do these get used by the driver? If not, then the header can go with the =

> dts file. But I'd just get rid of the header.
> =

> Rob
>

Indeed, I will remove that header and update the documentation file.

Regards,
Ga=EBl

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
