Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32A71D028D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyyTdKUaCrs1UZmfpuySHoURNbM04b16mthyohiEmXY=; b=gpHTSILUA89oql
	neHscEQOBGJIWT2TzSuK21+wlmIp4wrDQLVqjux8dOH40Z0FNrBqLWZ00afAzirMTiOTPgOu8XDAL
	aBfDV+wkG4tyLANCxiTMqS26EatBN7WCLC6Uj5inn9ipTpPIBPviNN9cIWv6vJKJ4ZzfYeE+8QJm0
	LQkbP3ZeMAdFBfx1lR0NWePKHIzeQUSY7taSH3QpNVmRNzLTOdHg8aZkl0K4+ZvSkO3cPv9PbwaDk
	09LbCyw+99EsCRBrnPJyvZZ9e6+DC9jJt6xurhS1WajHK+k3RFUMaBdDBWsUoCNQ+6UhwCJjHLJtH
	jnOnxl9ye37ieV9vQqIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdlA-00072C-IJ; Tue, 12 May 2020 22:52:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdl3-00071K-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 22:52:19 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t9so10272979pjw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 15:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L8tksuSDTqs67QtjinsHE4FheuuliIT8AjKoc4ucm54=;
 b=A+aCawbyEMDcOaXESvLqmbZABWw9O6EP2s1AngbXLV2jFIlhagWHaNG/zKjJM2RhFx
 zR4GIbUSqtZJSgejE1vf8+vegxIzPbGyVYxtbx7Sl6ZFU7jT0DgnrOAM/PpuOSJsUNex
 ociJ4yn2NMIxKt+ipD9wQM7WQ8Z8Ygwn/nKw56/uOd2ygIegOMO5lGFdn6ZFbNuhwQeq
 fqbZNZMncqohFrxIOZq7UENBmTJw+EzF/ChjImjT+PVEz6Zm2ogd4nnvSD5b3goCf5lm
 bu6L9fnzBNIH9phxEleqG+Q4AJiTnHttCCBooCe3hgtQy5Dm9JgzUAi44UmBHKWlzh3N
 qcwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L8tksuSDTqs67QtjinsHE4FheuuliIT8AjKoc4ucm54=;
 b=Kwbts9ju1T1r4aQ+0xI74QhaJbDf5u69Qugxy0jpKUGx4O9qg8H7//cSY3RLu9E31u
 7/UONpP7CJpiX0qfDnuwxmHuQQZGotzvQ87WzNejL1bvS38Ym0Yj9nbqX0v7ai1TQ8/3
 HWD9ZyK0cu2EHWFYAVpAaL7yeef+OuJru1Y5H5xdwAFiGb13OKfN5LHOjbuPqSiIIe18
 g6qrNl3s8V/I5WCB4ZD5kMmOVxhAPz5sDnxw5YLH5i4zUpo86896xT4H02RwHSuBHVLR
 P1CylAXpCodxpJsYquKhtLTKJJsB7sKsC5XzeDnTsxgliZBHHFhcsOJNDddMqybcsztu
 JmZQ==
X-Gm-Message-State: AOAM531S7wX/K/I0YRjhCAYS5BU5mB/t7boiYoZJTQlnRt7Qd+WMcytK
 FCYvZWWia+ovqt+9iE8/A8wsw9ea
X-Google-Smtp-Source: ABdhPJwDUrxJZKSLp+Xr6kWbTqL3Ofq02Ayex445wtfRyI6/RGyZxIFRJC7Rb3atq+Syq8sFipfKUw==
X-Received: by 2002:a17:90a:344c:: with SMTP id
 o70mr5619516pjb.23.1589323935225; 
 Tue, 12 May 2020 15:52:15 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id z1sm13623932pjn.43.2020.05.12.15.52.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:52:14 -0700 (PDT)
Date: Tue, 12 May 2020 15:52:12 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: input: gpio-vibrator: Don't require
 enable-gpios
Message-ID: <20200512225212.GE89269@dtor-ws>
References: <20200512222205.1456300-1-megous@megous.com>
 <20200512222205.1456300-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512222205.1456300-2-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_155217_720219_9D4EEC83 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
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
 Rob Herring <robh@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 12:22:02AM +0200, Ondrej Jirman wrote:
> It is possible to turn the motor on/off just by enabling/disabling
> the vcc-supply.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/input/gpio-vibrator.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> index 2384465eaa19..c700b640bd53 100644
> --- a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> +++ b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
> @@ -24,7 +24,6 @@ properties:
>  
>  required:
>    - compatible
> -  - enable-gpios

Hmm we need at least one of the 2 (gpio and supply). Should we encode it
in the binding?

Also, in the dirver code, I guess we need to switch to have regulator
optional (so we are not given the dummy one) and bail if neither
regulator nor GPIO is found.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
