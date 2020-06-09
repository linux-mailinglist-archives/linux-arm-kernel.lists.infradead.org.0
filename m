Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10381F4974
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ+NPWehcVQd4YgDnmQ85gtndXbMIcNa9zC364buS7U=; b=p340MBDkNKXJKS
	COb0jGaYgUbrej0mZ7uIYLx3NHDAAbh8GCZSENWxedLBbC0d3uIbH5iXxSPY/6sSPEmgEq+8e7ghE
	AfZ2moCGT3L/UWhMk708TPAu3w4nAWN9IzMwqdup0DQtw2fXxvKT5zWlpHQugnK4oYEyr7AJEcQwx
	7ADnPwWjFmHZOyo7kfCLJ6r3N/FDXeHIl3aKzSnl9Zl44UKJcIlu4dxEu7JyKTEjxEWUieKeVTol2
	9MfLWhZIc/Dr/t/QWWYJiUv7ifENTen9DOD6eSVLgBu/XKzivoxCP9trXnK38oS7uis/l1pFcY+Ho
	bFahxWA8Q6USITkWcAFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jimt4-0000av-He; Tue, 09 Jun 2020 22:38:30 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jimsv-0000aW-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:38:23 +0000
Received: by mail-il1-f195.google.com with SMTP id h3so30310ilh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 15:38:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=we/QVLPljh+VvvW0TyDCBs0GVOvUPbhlxjdGb+22AwU=;
 b=kSkP/EC9wvrvFdmtA123/9vWrYy1F1mg3UCPgTQ3+D5y8KW0ZwrlvLaUOKy7oiw+Od
 z3uLXUten6y6fVmj7tsVf7FP7tWG/ZZ3Wa1rWju07DxhuFvd+3PHqgvLihEk/4adZk+E
 Tt9sUBVPU9cmOq8Il8tAAXJOIgTMZRVSrFf6nnV5fcCqO1iJFNG1PsFJXAc9VzJH/aW8
 DRBhinCdjKJQ596G0Me6qXUcPWWpgX2srpnEx4kQ1MLQoaEl3FdPA2mjQp20QYiPa48r
 rvxRV4EB1SLl0fLWVggAxo6nfPe0G2ZC0S1Bi/emjr13kRiFHxiQ0/kESLzYsfgRKEiv
 CFTQ==
X-Gm-Message-State: AOAM532w+4OKvpDcjS9MQStDgYbkydlyur2Q0OyYVFJASv06dFrKylrC
 4SUXtoGrdGU5wL70Ww1L87t7B4s=
X-Google-Smtp-Source: ABdhPJz4GX4BnpQD1QFEzALE9UZw4o3rV4NJACs3ZOZEhF5IUEXncgLcDuIDjhxVyYTfB+mgSFz/LA==
X-Received: by 2002:a92:c5c5:: with SMTP id s5mr242862ilt.85.1591742300408;
 Tue, 09 Jun 2020 15:38:20 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t9sm9864098ilg.74.2020.06.09.15.38.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 15:38:19 -0700 (PDT)
Received: (nullmailer pid 1629822 invoked by uid 1000);
 Tue, 09 Jun 2020 22:38:18 -0000
Date: Tue, 9 Jun 2020 16:38:18 -0600
From: Rob Herring <robh@kernel.org>
To: Parthiban Nallathambi <parthiban@linumiz.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add MYiR Tech boards
Message-ID: <20200609223818.GA1626212@bogus>
References: <20200601145857.5658-1-parthiban@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601145857.5658-1-parthiban@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_153821_535961_5E972146 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 04:58:56PM +0200, Parthiban Nallathambi wrote:
> Add entries for MYiR Tech imx6ULL eval boards.
> 
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index cd3fbe7e3948..592d73187da4 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -264,6 +264,8 @@ properties:
>                - armadeus,imx6ull-opos6uldev # OPOS6UL (i.MX6ULL) SoM on OPOS6ULDev board
>                - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
>                - kontron,imx6ull-n6411-som # Kontron N6411 SOM
> +              - myir,imx6ull-mys-6ulx # MYiR Tech iMX6ULL Evaluation Board
> +              - myir,imx6ull-mys-6ulx-nand # MYiR Tech iMX6ULL Evaluation Board with NAND

Can't you tell there is nand by the presence of a nand nodes?

>                - toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on Colibri Evaluation Board
>                - toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi / Bluetooth Module on Colibri Evaluation Board
>            - const: fsl,imx6ull
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
