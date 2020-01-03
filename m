Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A5812FED0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kor6XPV1sl6PcQvQwYd7wiJNR4D4NkUiq51VQT9k/8E=; b=R7yChNegqNhg6H
	LzMW6N+6wTK9pUJXqsx9/GvF+EPe8QJ1MMNb1IkjO192nyI+xR+6Bw1ka1pYTNM+1SWmz7Ts72MJY
	ssp5cvtUaEdfzJUNnagaP1nodtkti+j8vyRW1MdyKwP3iV8RGUu8W4RhHYWZ4WICfZV2rXxBz6tfZ
	BtXsWkwnsf6+ddlhZkAzh15wm8yR9kKnk9trsVWHnXCsJ+9MaWncNjFrrFXCSzp/DNaKjUPC63oF/
	HViJKewGiAfVdwJYU1bR8V3jv8ToeBR1kiYe3A8I/vLrRysy1/TbNvgaYR6K5Emx+PTgmJ1mK5eq7
	n3lNVDoSr2xfGbG6GLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inVUg-0003cO-Ul; Fri, 03 Jan 2020 22:32:34 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inVUa-0003bS-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:32:29 +0000
Received: by mail-io1-f68.google.com with SMTP id v3so42952274ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 14:32:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AwM+4lmsp4OwDXSOplbN0YrPFwHAVZ/Q655/TuvMXxw=;
 b=tQ8XuUJfwv9tFGeEwUgNK/Ypg+OUmRH6meCkKlBJ5bGQmq9+goeV8t3ByL/TEQlqum
 O8Vhk/IGk+uv93CV5Xbo1RMAF88MIUiYRVFdrf1uRRb3ulUMO542QaIz3OSED/92KteA
 I4mr6pYoIbHz/dTEOoY8EOuuY9XLvkBk15srCYDM+DnEgdQdeuRLal4wAuRrOZflzYAo
 HS/Ivc7dyO7Y+06lCtNkVRa9C4ghe9gbPB16fBxnhBRDuEHhiWaBwlgvcwvRwU/IkvDa
 8g675YvD5mUWk1oGvSFRSXPGEpQRzOG7+HRWTo70npfEme3ytUD8PrnjPvFsDoF0DNlM
 aY5Q==
X-Gm-Message-State: APjAAAUyShgL5c14jxOkreiv8LTfFHeXZ3tE6ylDNLJQIoJj9XV/51Le
 hlq4lfUj8s7BfMq6D7XvsWrB+UQ=
X-Google-Smtp-Source: APXvYqwj9QZfxrL3dTje7E8Whos6dBeVqk5R5unmv7lflEkiULmQmDbCp1bYNKVVSv+o8OcbuWRocw==
X-Received: by 2002:a5e:9e43:: with SMTP id j3mr57384196ioq.183.1578090747723; 
 Fri, 03 Jan 2020 14:32:27 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id y9sm15134095iob.86.2020.01.03.14.32.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 14:32:27 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 15:32:25 -0700
Date: Fri, 3 Jan 2020 15:32:25 -0700
From: Rob Herring <robh@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
Message-ID: <20200103223225.GB654@bogus>
References: <20191230231953.29646-1-rjones@gateworks.com>
 <20191230231953.29646-2-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230231953.29646-2-rjones@gateworks.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_143228_634639_EFF314F9 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 03:19:49PM -0800, Robert Jones wrote:
> Add the compatible enum entries for Gateworks Ventana boards.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 31 ++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index f79683a..8ed4c85 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -126,6 +126,22 @@ properties:
>                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
>                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
>                - variscite,dt6customboard
> +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> +              - gw,imx6q-gw51xx

This doesn't match what you have in dts files. Please check with:

make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/fsl.yaml

You'll need a separate entry with 3 compatibles and 'gw,ventana' or drop 
it.

> +              - gw,imx6q-gw52xx
> +              - gw,imx6q-gw53xx
> +              - gw,imx6q-gw5400-a
> +              - gw,imx6q-gw54xx
> +              - gw,imx6q-gw551x
> +              - gw,imx6q-gw552x
> +              - gw,imx6q-gw553x
> +              - gw,imx6q-gw560x
> +              - gw,imx6q-gw5903
> +              - gw,imx6q-gw5904
> +              - gw,imx6q-gw5907
> +              - gw,imx6q-gw5910
> +              - gw,imx6q-gw5912
> +              - gw,imx6q-gw5913
>            - const: fsl,imx6q
>  
>        - description: i.MX6QP based Boards
> @@ -152,6 +168,21 @@ properties:
>                - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
>                - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
>                - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
> +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
> +              - gw,imx6dl-gw51xx
> +              - gw,imx6dl-gw52xx
> +              - gw,imx6dl-gw53xx
> +              - gw,imx6dl-gw54xx
> +              - gw,imx6dl-gw551x
> +              - gw,imx6dl-gw552x
> +              - gw,imx6dl-gw553x
> +              - gw,imx6dl-gw560x
> +              - gw,imx6dl-gw5903
> +              - gw,imx6dl-gw5904
> +              - gw,imx6dl-gw5907
> +              - gw,imx6dl-gw5910
> +              - gw,imx6dl-gw5912
> +              - gw,imx6dl-gw5913
>            - const: fsl,imx6dl
>  
>        - description: i.MX6SL based Boards
> -- 
> 2.9.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
