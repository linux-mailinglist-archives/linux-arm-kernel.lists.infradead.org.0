Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2834F18DB86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 00:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BbPtuS7L1EBxGZ/1NUHigTCu3hBTnUIhyoAQp0mDII=; b=d5mGve2sQlF5mN
	nfaJiHN+mOKwoJkikpLKeQQhJUe/NpkZNfsyshCL/4dS10wQWf33UAUQmf6/yDcbc7esk9fxGJ033
	HOlnmX/4a+k+2JCLUtTNAxKPyvqxilXld3BF35dG091aKb5Pu4vYNxeLc4EwCR+YRBEP5VNZGi+9U
	NIC8i+ZLLp12y0juwLjd4n/v3+ECPHCWk6OvdBtynrsT/oRsNoYQP5lzxCYRLKc8Nr/JErpJ2nPEK
	48Gh98N4Wkxxtfbqyx6KuVPwIVIzRlwtrWksx3FXF+GjrSH7223oKkoBV3Lb74VEviIEmmTx4Fakb
	X1laJ/IoOf4xlkeTSbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQlq-0002B4-Oq; Fri, 20 Mar 2020 23:09:42 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQli-0002A3-TP; Fri, 20 Mar 2020 23:09:36 +0000
Received: by mail-io1-f67.google.com with SMTP id m15so2644706iob.5;
 Fri, 20 Mar 2020 16:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zI/A5t6sz0HZZha9rW07DEcIwNV0BjOpWxSE/SxyAvE=;
 b=Xwg2z291QgR8GnPh0Y0f79HZ5YGR0sJMd8DtvY8e5ZoqnRGYy5gvW5fUU1Wu/JFhO+
 ohOzViDT6Ba6+O1VCaXLl00ZsMlR4tRsjKb0nWE1bD/igUuvr1NifM8Rz+D+ODW6EO41
 10NkjPspGfb6tOdrByqGOs+vGYj27ASZHsKFtO1ddlePW23JvwjXebwZ1kIJmo8940fc
 RdvOfw0S6efZsMdmVdszMb01sxARMy49sybhuMQ0aQ2uNzR1fmfNTvYvMGkxOmeros1x
 0+8rNjI7HXGflWvxFUA2zPerpfb603S7H6W1WsNhu9WkEJCxZGIv3WpKM3GyZSmSivJR
 08mA==
X-Gm-Message-State: ANhLgQ3raBI1mwcyAYM+CXStIzeTj0zHEmFI8o7MJ8/CMhxiNLj4W+ss
 LBXCMokmoIC9gNvl4UhLLQ==
X-Google-Smtp-Source: ADFU+vu8yuQGmtMjuXxAe3eJym4ITk7sMDRSQjp8IwrmCn4xXCWAQBhmn9VQa6+RdyyyGEdTKHltrg==
X-Received: by 2002:a5d:8cd3:: with SMTP id k19mr10026199iot.123.1584745772527; 
 Fri, 20 Mar 2020 16:09:32 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id g69sm1604552ile.3.2020.03.20.16.09.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 16:09:31 -0700 (PDT)
Received: (nullmailer pid 14611 invoked by uid 1000);
 Fri, 20 Mar 2020 23:09:30 -0000
Date: Fri, 20 Mar 2020 17:09:30 -0600
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [PATCH V4 08/13] dt-bindings: interconnect: add MT8183
 interconnect dt-bindings
Message-ID: <20200320230930.GA10504@bogus>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
 <1584092066-24425-9-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584092066-24425-9-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_160934_951306_BCFA946E 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Ryan Case <ryandcase@chromium.org>, Arvin Wang <arvin.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 05:34:21PM +0800, Henry Chen wrote:
> Add interconnect provider dt-bindings for MT8183.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/dvfsrc.txt        |  9 +++++++++
>  include/dt-bindings/interconnect/mtk,mt8183-emi.h      | 18 ++++++++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644 include/dt-bindings/interconnect/mtk,mt8183-emi.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> index 7f43499..da98ec9 100644
> --- a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> +++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> @@ -12,6 +12,11 @@ Required Properties:
>  - clock-names: Must include the following entries:
>  	"dvfsrc": DVFSRC module clock
>  - clocks: Must contain an entry for each entry in clock-names.
> +- #interconnect-cells : should contain 1
> +- interconnect : interconnect providers support dram bandwidth requirements.
> +	The provider is able to communicate with the DVFSRC and send the dram
> +	bandwidth to it. shall contain only one of the following:
> +	"mediatek,mt8183-emi"
>  
>  Example:
>  
> @@ -20,4 +25,8 @@ Example:
>  		reg = <0 0x10012000 0 0x1000>;
>  		clocks = <&infracfg CLK_INFRA_DVFSRC>;
>  		clock-names = "dvfsrc";
> +		ddr_emi: interconnect {
> +			compatible = "mediatek,mt8183-emi";
> +			#interconnect-cells = <1>;

Nodes with a compatible and no defined way to access the hardware always 
look suspicious. Can't you make the parent node an interconnect 
provider.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
