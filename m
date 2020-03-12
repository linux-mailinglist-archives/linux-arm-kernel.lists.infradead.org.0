Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E1D1830E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWViLoAULwQVzQhvxDQbM8LROs71qF4+uqBTh1m5TFo=; b=ns9MrPSZnLs2aI
	rRkDWcLEwH8qgGs9KuGk9kKyd7FftEWyRkOb+8hcori9/5th/wtnDIXH1mJEPCCSf3K6nk4oYsgUY
	fQl7ICor7hMlmJkakW2TOmYYp+yi1v5QQW3YUT+sEGTCEImWC/gGdbP6aWDi5cJ82LxuqTAhhyRjA
	jhYPGMEqJRUn/bFRxjntD+jHC7Ex6CDRQ2sdSXvnXsx9YeXKRDCjv5SGMvnG8RC7oMODB+t3iQfdQ
	mHjtlS1nAikAcyknzkZwCmSz8ey8wkVnrj+kLodEFQPaUJUYNQhdlZ0BtlDtInlq30Xc6wUyPir9A
	3Ry1nASupuH//KciU74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNaI-0006oI-6Y; Thu, 12 Mar 2020 13:09:10 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNa7-0006mh-Ap
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:09:00 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x82so3588756vsc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
 b=piJo3Qvo8x1s8VTBvAp8jS5t4o5VQEuBs+lWQCHYrxpJbtweH35oefXEg9GnzRQtdz
 61TRYLXGKrksVOp7wxdDFIZl5QZ824OocSJHbPk7P8hZ70jpr88EaUGavwPNoL4Dn36K
 Nl5oXBejzLR1jLeDJKzYb6ixDcAWzPP7oWG8OeFjKk4/PM28R2Me2D0Tsq7x8rhewXrt
 r9U/8MqANn4Ec6qJ2Rhiv85PM01uXdt4/JzUZZopZGKv0JxfViBO1WHel4O7GIJWC1qc
 CC+Rw5K2v3jnnd/eFLnzoQo/ZNl/T0nWcHZQA9pE0ttsgYASG3J1iRFvKPj7l5rZ/lPs
 Rsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
 b=ix3pV/2VqmuyW6MyhZen2LIMOg4EV21CtDS43/brmMtv7D8A6WxOlsQTHkQ3FB1+ft
 D9KlMkNZZ6Y2QG7BgoYFj0ZGQV4X1r1pmak8uT9yqgnocXQ+J6sE5ojfCEMM+kjwBT6+
 GB3qLgtMktb67A7DfV0XsYa0CofvETeY817qDxW4smdMS/2NmdGkr1jgpeDOPPwqdU2o
 fJ6V3tYc1c5pIKFnoD+Nxj7uD4gnzkihs+6+r2ZnQgRd2r9oySjpRLslv4WhPuF086zo
 JzodiEnVtmIuuOdCXS5eO/HgG4gXh0qd0lGvdF6u6ggKlp2ZMFrG8RDMV4KR+agpPNnv
 ENqQ==
X-Gm-Message-State: ANhLgQ2AEOmRTcqpLC95Ss9wWYvI008DTTHFuEAUUjSRzQHwHmzdtmR4
 8kRNss01HG7gdJ7x1wdlHawktbjB460LfoRMsP0cNw==
X-Google-Smtp-Source: ADFU+vvkBY6+7KljoIBo06yuh++7mQGBlfwWaxlmBrxgvs2H6ahSYqDiyk/zugbPV+nCMOkSfEf3tQK6yQglm6UvXwc=
X-Received: by 2002:a05:6102:2051:: with SMTP id
 q17mr5487529vsr.165.1584018537836; 
 Thu, 12 Mar 2020 06:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200307160556.16226-1-jbx6244@gmail.com>
In-Reply-To: <20200307160556.16226-1-jbx6244@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Mar 2020 14:08:21 +0100
Message-ID: <CAPDyKFq22RTPQ2FD+yMYTstyEhqU=6piiiDkEFs4CB5f6uRG4Q@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix
 clock-freq-min-max in example
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_060859_368746_63288C57 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 7 Mar 2020 at 17:06, Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
>
> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
>
> First when we combine synopsys-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
>
> Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
> mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
> '^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'
>
> 'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.
>
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index 05f9f36dc..dd2c1b147 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -62,7 +62,7 @@ examples:
>        cap-mmc-highspeed;
>        cap-sd-highspeed;
>        card-detect-delay = <200>;
> -      clock-freq-min-max = <400000 200000000>;
> +      max-frequency = <200000000>;
>        clock-frequency = <400000000>;
>        data-addr = <0x200>;
>        fifo-depth = <0x80>;
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
