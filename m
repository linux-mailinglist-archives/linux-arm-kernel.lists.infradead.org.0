Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF1E137472
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGfVeSobEAR+HU38xXgvD2o9uH4roU+Q2nzxS0RzHiE=; b=ASVTIg2vV3wPzL
	oJYdqLKdvGMbB/2IBqtn6hZHNVDK4yskqz9o15ZDoKZjQGV66dyIsou1MQTr/5HCKnuRqWqmvyuWd
	3Ylt2UmJhRnDz3I2/HC5A6RIA9NPZuoB5BX0VGnM6AOO0kKKvVnwrYx2XADkuXcGOvWXHg+2e8Jic
	riBqBg2sgn0QfhPYkE5haEnb/5z+M8OmE/QTt+nLXFTIxf7WyM1SKdi7yvzqJhaP28UYyH6B7XgJZ
	WlsIbVNRFjcFKrGRBjeyzR4fk7nLeKH7ctwXoPj3xDOc0+i+9ub9kSqJTHH2F4JqnpTiw4wgGAOPl
	e0+j018Yh6t1CbgOzEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxnL-0002h0-Sm; Fri, 10 Jan 2020 17:09:59 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxnB-0001y6-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:09:53 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C2B4420053;
 Fri, 10 Jan 2020 18:07:34 +0100 (CET)
Date: Fri, 10 Jan 2020 18:07:33 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefix: add Shenzhen Feixin
 Photoelectics Co., Ltd
Message-ID: <20200110170733.GA25099@ravnborg.org>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155225.1051749-2-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=Ms75YHVibuC86ioFB_8A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
 a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_090952_068847_82291750 
X-CRM114-Status: GOOD (  13.57  )
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy.

On Fri, Jan 10, 2020 at 11:52:21PM +0800, Icenowy Zheng wrote:
> Shenzhen Feixin Photoelectics Co., Ltd is a company to provide LCD
> modules.
> 
> Add its vendor prefix.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 3dab8150dae7..a6d53bbbe33d 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -335,6 +335,8 @@ patternProperties:
>      description: Fastrax Oy
>    "^fcs,.*":
>      description: Fairchild Semiconductor
> +  "^feixin,.*":
> +    description: Shenzhen Feixin Photoelectic Co., Ltd
>    "^feiyang,.*":
>      description: Shenzhen Fly Young Technology Co.,LTD.
>    "^firefly,.*":
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
