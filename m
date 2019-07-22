Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A1C70C2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vT3SVZlNvk7NOOa8Nx6Q0bsBQRPofFEwh2ejPXsS/I=; b=Mim0Q3pPxKsVIL
	f5AQl3ld+IMNz6o5eFSvWh3uEdjiwDZvB9s7YOuT+NtYm/XoOV1EhlRFXskBMi2ISRPWzhDoL7UJQ
	aUG5fPTygIrX/is0jHkO9HdrPfQgmsx4XswzzlZaOeGsNKF6oEw7whOmonhAdVxqTXfXtjPg1lIO4
	Y0wcerhNSTbKPIKTIavY0YtnfHiNItyleOSnD5O5Asi76TGUgGRKvdPPLWXI76WLurFV0OHP12Pr2
	Ch10m04e2ycOQtsM6qRc/2W8xScz1kfQ+EwhFACZXwhnuewj20TxJFb3ZIcJyONn9f2c4MbMiht4m
	8tBXVYtUyVaoD3WDro2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgIg-0007gS-Rg; Mon, 22 Jul 2019 21:56:54 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgI2-0007fk-8x; Mon, 22 Jul 2019 21:56:15 +0000
Received: by mail-io1-f66.google.com with SMTP id o9so77485358iom.3;
 Mon, 22 Jul 2019 14:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oUAUcHROFVykrQfoIqNUbHZZ4/oOTJrle0TfSFnaOy4=;
 b=tsLMi+H3nfp5D59wBDESC3k/Dh2rpudrrcRDSA7u6ZBiruqLHHsjTg7ghgo6BoRUKl
 OX5cGngTEIxNtx6wk1SIf0YRi6vNXCke02IuuDRjYGSJEcS2MTcjylQSwtq9+HW+c59r
 Ex+ISQ1hQn1SCGXHYZ1jkyNiZmlB14xIFHM7RNauZ2Sj7BP6vMTqOd+VcvBIJsy2iR63
 odvLlWzbGHAhjMlkNGgHVVRIjLV2NTSFeY70i0xlbpZy4ULbC3FKzsVbZFjfKL7FNf1W
 GnFR3KfVxF8ySk04p1TCxSe+YF0CVrlDVryAJJ5EIJJW/8l+MP7FgCgDREVIOOd+hnv7
 mvLQ==
X-Gm-Message-State: APjAAAUHaytMbDkKLUn0tCHheyH8Fl92aq6RYV3jWDIvOKw68gmHZkUZ
 SPKgv7bZDt6r3hjgCU7EPQ==
X-Google-Smtp-Source: APXvYqwEG3LbLYKC9307yBEM7CSfFu+SMect//sr3rtgOi3zgZ3iXYwZmp1iA6jx8W+hWbvB1UR7qw==
X-Received: by 2002:a6b:b7d5:: with SMTP id
 h204mr65978346iof.188.1563832573342; 
 Mon, 22 Jul 2019 14:56:13 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id j5sm31150050iom.69.2019.07.22.14.56.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 14:56:12 -0700 (PDT)
Date: Mon, 22 Jul 2019 15:56:12 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: mmc: arasan: Update Documentation
 for the input clock
Message-ID: <20190722215612.GA5437@bogus>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-6-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561958991-21935-6-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_145614_362888_A82F42B4 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, kernel@esmil.dk,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com,
 philipp.tomsich@theobroma-systems.com, heiko@sntech.de,
 michal.simek@xilinx.com, linux-rockchip@lists.infradead.org,
 jolly.shah@xilinx.com, devicetree@vger.kernel.org, scott.branden@broadcom.com,
 nava.manne@xilinx.com, ayaka@soulik.info, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, rajan.vaja@xilinx.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com, olof@lixom.net,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 10:59:45AM +0530, Manish Narani wrote:
> Add documentation for an optional input clock which is essentially used
> in sampling the input data coming from the card.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 15c6397..7c79496 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -23,10 +23,10 @@ Required Properties:
>    - reg: From mmc bindings: Register location and length.
>    - clocks: From clock bindings: Handles to clock inputs.
>    - clock-names: From clock bindings: Tuple including "clk_xin" and "clk_ahb"
> -		 Apart from these two there is one more optional clock which
> -		 is "clk_sdcard". This clock represents output clock from
> -		 controller and card. This must be specified when #clock-cells
> -		 is specified.
> +		 Apart from these two there are two more optional clocks which
> +		 are "clk_sdcard" and "clk_sample". These two clocks represent
> +		 output and input clocks between controller and card. These
> +		 must be specified when #clock-cells is specified.
>    - interrupts: Interrupt specifier
>  
>  Required Properties for "arasan,sdhci-5.1":
> @@ -40,9 +40,9 @@ Optional Properties:
>    - clock-output-names: If specified, this will be the name of the card clock
>      which will be exposed by this device.  Required if #clock-cells is
>      specified.
> -  - #clock-cells: If specified this should be the value <0>. With this
> -    property in place we will export one clock representing the Card
> -    Clock. This clock is expected to be consumed by our PHY. You must also
> +  - #clock-cells: If specified this should be the value <0> or <1>. With this
> +    property in place we will export one or two clocks representing the Card
> +    Clock. These clocks are expected to be consumed by our PHY. You must also

What are the 2 clocks?

>      specify
>    - xlnx,fails-without-test-cd: when present, the controller doesn't work when
>      the CD line is not connected properly, and the line is not connected
> -- 
> 2.1.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
