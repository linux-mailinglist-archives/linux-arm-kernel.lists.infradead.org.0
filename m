Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708FF1FD8F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2q39WCUpcp2cjj9O+jAba5yTambKZL0UhvwsIxMQrME=; b=RlvAn5SV8WB+0T
	mSCPGioVltqzYSzFS0H/MixYWYXCqQvi64IF1paEBhZJ4sWCUwlHSYPrdoknY0YY0DFA3CynuDGgU
	VzmJwiyHU5f3fxR7MlPcwv6lmz3OUl1OG1vPimh6VslJyqJX8crrusHZjcjV3MsrDWcRP074j/daM
	sA0S6zg8FflpCKVCJOcww2YOHxRL0LvHKTEqv6ySDweaFp/c3JoTGgKZOZM0iyFxeXAwu6vcFiK3R
	nzEe03g2VJbWlc+Cnfu1encaRvuM4BtqfGPnXpUbLa/uo0qd+j7iaD8BpBN7I9Od9bdlR77v/MEzQ
	73WwRA+2R9srWUUgk5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgeO-0006EW-Q6; Wed, 17 Jun 2020 22:35:20 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlge2-0006Dz-Ks
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:34:59 +0000
Received: by mail-il1-f193.google.com with SMTP id p5so3937788ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:34:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=c5Y+K27z/UnQHPf7dVA+plkp+xMtkTE7h8L8DPS7DYI=;
 b=fsaFsYXS3jyDAgMhby3kBWn3aV06UAsdtWzth2uwnVy9RQmNI/BVfdSTYWFVjbJmF/
 0ww5u12bqwGCRi31jgkl41i7axqJgVAWxH3zjQae05K9VgMaGfWuxKQO3l3+4Hc+OUCd
 HwkmYGD/GD+Ay+Lv8PUvGvFF0X0Uj+QxjPagca+78bXV/Ix3DazRIvX52sadlLLSE4bS
 /R/4Mo7OpiHdARxDOgSUmAQoIYJkqBGW/Q5m+TxngnjoHmoxTbXCDX/uwoUm7d4QpUhk
 kS8DrhkR7IAq1Mj110C2hlc7MxNUX7CHzr4CbhEqMkzPXo+qsIaEjpuTDtgF2z5OErEN
 wY0Q==
X-Gm-Message-State: AOAM531W5fcXpaKYUa/joNdjhKfaiues68iSe3oVrSnjCW7f2FY37Kkf
 msSAKOgKE+knXtVbThqXEik7tvOqDw==
X-Google-Smtp-Source: ABdhPJxHuv4++9idd4cGJ1YVbZSUibTvT/Vt5YQAo6Eno5pqsY6fnO3joxmM0yNFJzrCC67k4I+ZSg==
X-Received: by 2002:a92:899b:: with SMTP id w27mr1285269ilk.16.1592433297077; 
 Wed, 17 Jun 2020 15:34:57 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id l3sm710771iow.55.2020.06.17.15.34.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:34:56 -0700 (PDT)
Received: (nullmailer pid 2961072 invoked by uid 1000);
 Wed, 17 Jun 2020 22:34:55 -0000
Date: Wed, 17 Jun 2020 16:34:55 -0600
From: Rob Herring <robh@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
Message-ID: <20200617223455.GA2953201@bogus>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611102356.31563-6-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_153458_684028_F9BE6FC0 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com,
 Laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 12:23:56PM +0200, Ricardo Ca=F1uelo wrote:
> Make the ports node optional, since there are some DTs that don't define
> any ports for ti,tfp410.

Only arch/arm/boot/dts/dove-sbc-a510.dts AFAICT... It should be updated =

IMO.

> =

> Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>
> ---
>  Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.y=
aml b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> index 605831c1e836..1c9421eb80fa 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
> @@ -83,7 +83,6 @@ properties:
>  =

>  required:
>    - compatible
> -  - ports
>  =

>  if:
>    required:
> -- =

> 2.18.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
