Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C3D1DBAE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9V/RYs7Ge+LqbevwFxhaiN0wxmHpvEXnvqiv7VsTSo=; b=pSXJuOhB6IhU4A
	bY/vXnb/bwDopz7IEEoxUP2G1KocLfjJaDghnWQDFeKefYvDZgrgAr2kXdqTJYa6erRyzTn4hWzlR
	sIq9d4A+zlF5fWs+gsl31nlJtEloKxbEfCEpzB5xMATIoZ34Gbzgfh9xWUMr6t42FLD2NVoxZecPo
	qf/LVdvQI0DKHQ66Zm0Gy4kqo11iV6wreSksFCuLBwj6Iz1UfQ3bgp/DmddvCPP5pZkmrr4S8hE+i
	uLv5bAdqrTn5iMZgk5zAOLeCDlIvpUuPs+g5TZXH7TmeSx+TU47X3dIjDd9wEyLa5VdiUSaB8AIMS
	iw6H0dL6eWfX3s4tgzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSIf-0000ke-BN; Wed, 20 May 2020 17:14:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSHZ-00006x-2e; Wed, 20 May 2020 17:13:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id x13so1858600pfn.11;
 Wed, 20 May 2020 10:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=arFxXWIilJc8yilr6THATlL+mM94NJsqQ+xYHRPI28o=;
 b=eQ8ZueCAAmKF481dSsTzEfptXR3E56PhUUH9kEaE5lcwybZBOx13OC+Xi9wkqf8yJl
 eMd1L2e88OjzLZqUwjft5kT4q1ykz42UQV6MVOEia2NuXW7QNNZ7A34YWkJl2fTeKnXd
 x57lOvCSMymfWq5CIUCMSTFmCQ+QTFXWfQxGIl0MyJIAsxvIWaGoYNiaL9FYDbjjsASH
 yrczDke/1e9q5QAzunll1NsU34AZd3fkwQAvuZ8SyOMsHhrXwdE+C5ocxHRWMG94nAuo
 mFEYgVnx+pQB6bpLbpXdPCQm3xxHlbpl8IjeNyIIG5xyCXVHShY2DHAh3VorO1Fq2dCg
 0CDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=arFxXWIilJc8yilr6THATlL+mM94NJsqQ+xYHRPI28o=;
 b=d3/BYbTd8ailEsr9bN5Nh+daPpn8jix0LTpCOH5sIoPcI4RgLSL6q8miikICoVMLQM
 EAB5H6hfWjo1X2RPpZyrfFQCfAehMU2Kz41b578dLtlb0WfViQPfrHOzTMIXEbiMLW12
 eUrCThnmdcmmi9lO1gZtT2vRKHhr0sMIJM6pMlKH/Z20VTPMTR6CJDO48p3oRvwnyt+k
 BJZ+jgGq4D0Hk2H9KcR4IXoTVvjTr5FjlK2S3Zm8VhIczEhqZrNBEsbBAEJLrARneBdz
 52Fm48hOAVwICqf7OYZcNYKQ+eFA6nfHSKbv2/aM1cFKBXJiYF7MQIeKeIa0Bp389P4F
 LpfA==
X-Gm-Message-State: AOAM5331BHF10ev6mSGuubqB+laWd9DnUpYuThUz7xyPV5HsPDcHcDhy
 4k1L+pElVAAcNJ17vujgvDth31OA
X-Google-Smtp-Source: ABdhPJzPAJW/ATUYvu+6WYxM82y1cMxLnDMGV4gQ97nd84re0gsoxcS0Os/XSLxbUD3hZDiX3Ghrxw==
X-Received: by 2002:a05:6a00:150e:: with SMTP id
 q14mr5106146pfu.325.1589994807327; 
 Wed, 20 May 2020 10:13:27 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id e1sm2512647pjv.54.2020.05.20.10.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 10:13:26 -0700 (PDT)
Date: Wed, 20 May 2020 10:13:24 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Message-ID: <20200520171324.GS89269@dtor-ws>
References: <20200520073327.6016-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520073327.6016-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_101330_497829_7E7649CE 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> touchscreen@3e: reg:0:0: 56 was expected
> 
> The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> was shipped with different addresses then the binding currently allows.
> Change the reg property that any address will pass.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/input/touchscreen/
> edt-ft5x06.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> index 383d64a91..baa8e8f7e 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
> @@ -42,7 +42,7 @@ properties:
>        - focaltech,ft6236
>  
>    reg:
> -    const: 0x38
> +    maxItems: 1

Should we have a list of valid addresses instead of allowing any
address? Controllers usually have only a couple of addresses that they
support.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
