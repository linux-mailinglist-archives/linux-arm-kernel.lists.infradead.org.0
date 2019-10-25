Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5215E55C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzih2+WBi9PCpS1SkvJNPfTIQABo+3T99vmjh3ECu3A=; b=atC5nA4knK/3kD
	i92EzTn5G1HLi0y0HmLYsHiAKCPprY8wnNcVp4TNEEMFGc5WEutLTOJ9deVZ8FgEBH78EI/sexnz9
	C9xvDT6E61X468aybsPBR+2biCZOmHMswgExXYdSj3HJXG0tYpttVBTDYkmoMcssB7ABCiZ9EyPnB
	1TN+GyNK8cp8Odf72PrzBzTSd/GcKr6zF6ifDcjhXO6CcPFahn31/QJvv07EiJiCfHrCXssqxNFXq
	i/xnsGuXY0UseUj7omQnsnOI9D+1Fkk4mW2miS7p1momf7jOXPkFNwPabakN7CYUcI9tZ998avKW8
	i9SJWgO7BFERsoYaRonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO70V-00054e-4D; Fri, 25 Oct 2019 21:20:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO70L-000548-UZ; Fri, 25 Oct 2019 21:20:19 +0000
Received: by mail-oi1-f195.google.com with SMTP id c2so2502222oic.13;
 Fri, 25 Oct 2019 14:20:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=JUXQFIqn/d86Rnbor0L71lToepY+28ApeXSzEW1WrrY=;
 b=ZBVHstZitqOFDC8VVbWbLA/QLAYJfGCwar3HJPXuPObthkVbrtMvnoH1npBTklPffI
 qi209JX28fbhi8TxpaQhf5mUqkOV+CZuEJ7hxpqpwS/ooGxDV1i9HjecObaQYuKJSxJM
 lN++j+k54kqhQpgE4otPAICvrrY5wzr8CvkAz2wFplSjQcqlwP2daQnAZMgTdbVqJFDP
 ZyvvMx9fmV7AtXourbxTz68Yv3BkIfOSvKeREH9gI9PCoiaZgu12ohU5dkdK/oz+B4hG
 p88YZPfN5Mes4f8eTaJl6bEQeLkZlD9xK/KuFm2xasIMqDumJPULBifgWNTv4k03nLYl
 m+YA==
X-Gm-Message-State: APjAAAVCWGbXEj2wwMfYECsEOrRevMZzKdGxt0lE4jA9D1yk3JU/fDve
 Qn3OKMM5QZU6xOjBi1xdiw==
X-Google-Smtp-Source: APXvYqz+woZytbel6lM3PcEJFze0yi42BfFRIteIU1+6GGt93bF3v+SwJ+tZUfL0epSsIXoR2YEYnA==
X-Received: by 2002:a05:6808:10:: with SMTP id
 u16mr4879719oic.16.1572038416910; 
 Fri, 25 Oct 2019 14:20:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x80sm908528oia.37.2019.10.25.14.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:20:15 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:20:15 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 2/8] dt-bindings: rtc: realtek: Convert RTD119x to
 schema
Message-ID: <20191025212015.GA29978@bogus>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-3-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020040817.16882-3-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_142017_983739_19FD98BE 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 06:08:11AM +0200, Andreas F=E4rber wrote:
> Convert the RTD119x binding to a YAML schema.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v2: New
>  =

>  .../devicetree/bindings/rtc/realtek,rtd119x.txt    | 16 ---------
>  .../devicetree/bindings/rtc/realtek,rtd119x.yaml   | 38 ++++++++++++++++=
++++++
>  2 files changed, 38 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/realtek,rtd119x=
.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/realtek,rtd119x=
.yaml


> diff --git a/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yaml b=
/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yaml
> new file mode 100644
> index 000000000000..71b7396bd469
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/realtek,rtd119x.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause

Missing ()

Though I'm not sure it matters other than consistency.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/realtek,rtd119x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek RTD129x Real-Time Clock
> +
> +allOf:
> +  - $ref: "rtc.yaml#"
> +
> +maintainers:
> +  - Andreas F=E4rber <afaerber@suse.de>
> +
> +properties:
> +  compatible:
> +    const: realtek,rtd1295-rtc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: Specifies the clock gate
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +	rtc@9801b600 {
> +		compatible =3D "realtek,rtd1295-clk";
> +		reg =3D <0x9801b600 0x100>;
> +		clocks =3D <&clkc RTD1295_CLK_EN_MISC_RTC>;

You need the include file here or the example won't build (run 'make =

dt_binding_check').

> +	};
> +...
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
