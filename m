Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6046F18429E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 09:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wV5QWOldKDcLmdwdMX6Bj5Sjenl3HMeovj2MZMiCTBY=; b=b5WpPe28wvrwGV
	XKKVkxtX9X3DO3/EcAgNKSn5qR4U750OzxKrVUv9AKDDIPuSIM8QZJOKMqQuh6MYugcJbJYvChf3L
	/rgo6rWvmQnEBUi/NxNVoJ4IyLKKKZP/YDjhKxGfFvI2F6v4u6yygnWkSS3l2GJ5Fuc4cl0aFnxJW
	UcRwo98fugz+JSgQ88DVMjeECBEsdU4Qv0w0uEDKf0oO8s+LARTEcM8UsFL9w2pmf1pO/COHRRFB3
	6ZgWU/9OJ6RvF0/i1evZ0FEAHUvnwzn74UPXOThO3JyA2SS2CPSQZqvXMWTy5sY06PahZxtSSggSS
	eAaXZcsHp0Ptu6nSg5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfhW-0007eH-C9; Fri, 13 Mar 2020 08:29:50 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfhO-0007Tz-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 08:29:44 +0000
Received: by mail-ed1-f66.google.com with SMTP id h62so10820261edd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 01:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rn0gcyx6GxxQcRaqlCHT4v4uNwnWkXjytoiFfyP58zE=;
 b=gTzkieU3QdjXoxZTdwyxqkkDQiXwqGi+kauhKqLQlx57mxHDDBirkgTyO7uvafFHfR
 vedDFZI34SBt48vs0Zt5XyBJtb386RQrj2y0P1BIJExRy+da8t8HfOBnFOZi3R59yrPG
 4p25TUJtwRlgzXk2m+5T9Yh9o7H2d1FHHEsUbOK1bp4kDV91hjL9F20IzkUYg3Jx8vwD
 NqNVFUh/A56gI9ZHkqW9v88jTk8aWcSKv9+dtw/o3YYg8MhmG13Lb70MeOEBvJqCZDOa
 l0LHXYfUScxBK63Ziqy4G/oauBccZjP0K+44wPy2Z/+l+D7DQYxH5SzrqPeK3XwbdT5B
 MWLw==
X-Gm-Message-State: ANhLgQ1O5vi/wINMnk4PibnEhTweSAw0zY+xZK+JvtGzVTesgGc3FIAO
 U7HKuXAEX99WKb6wf6neVFE=
X-Google-Smtp-Source: ADFU+vv4w/B2tIP4ZNexQetJ7DqtBBVkc+MfyuEZQrVPiWjDli5bZ4ZKT55RJiuDDBmhlGBoX8nTxA==
X-Received: by 2002:a17:906:b80f:: with SMTP id
 dv15mr10653207ejb.28.1584088180143; 
 Fri, 13 Mar 2020 01:29:40 -0700 (PDT)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id n10sm442215edf.3.2020.03.13.01.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 01:29:39 -0700 (PDT)
Date: Fri, 13 Mar 2020 09:29:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 1/2] dt-bindings: arm/samsung: Add compatible string for
 the Galaxy S2
Message-ID: <20200313082937.GA7416@pi3>
References: <20200312153411.13535-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312153411.13535-1-paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_012942_928060_C55A0CF8 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 04:34:10PM +0100, Paul Cercueil wrote:
> Add compatible string for the Samsung Galaxy S2 (i9100 version), which
> is an Exynos 4210 based device.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../devicetree/bindings/arm/samsung/samsung-boards.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> index 63acd57c4799..e2b19caac795 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> @@ -55,6 +55,7 @@ properties:
>                - samsung,smdkv310                # Samsung SMDKV310 eval
>                - samsung,trats                   # Samsung Tizen Reference
>                - samsung,universal_c210          # Samsung C210
> +              - samsung,i9100                   # Samsung Galaxy S2

Put it in alphabetical order please so with this change:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

(Optionally I can take it through samsung-soc tree)

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
