Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0112365A53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gh//maHGCfy1/uniwljtdjBSC46s6FAQb02ovhJ6U/I=; b=gLQePFusjyMR+f
	fhB0Ewk+PhzD1eCLZGRtxMkDUgAE6M7niAbCl4qWP7skzAl8nVmYGydr9GgzaLu+/x44iyDvgEoQP
	lbBsV5Wwhl8i2ET8dmG8iDViENyG3Ihu8WZYMf5tTiVxLSmjpaZeRjh7Ai1TDnKqUA9sJ9bMe3RJv
	XAULHMxiUZ6Uj0Blk06hwxRoX1OJm/W95Pppy2BxglZwbv4w4uVr82YLHHhFn2O/O2vanLKALR059
	nxlmKMIb/L4AIx6Ea5HuYfdnfyi0qDZqhOPFQMvOfrI5x9Wgq/F+6HgRdKoHpF+4KcPMTO6U5Ds7X
	cOnch+xJTJLWCMKuUdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlavX-0004hy-BV; Thu, 11 Jul 2019 15:24:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlavB-0004hO-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:23:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so3204673plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CSfzn244zMxZzCnzEJ3aLKTkuzXbWd6fbHt5WU7kz70=;
 b=bfgFzyXO2fBQCSypPnFTn+swixOumjnXHhHumedREAjORqwINppI7oBdn7JVXBZRP1
 SBG3MN9K7Y8oMszK9cPs22p1SwNWQzZKY0UhQjtBkgIvPSR3jNjwslOPLCc+t1ZnaIz6
 vRLNVftkxpDQTfwUYShAk/WmPxOFd5L+dXDn7qNKXZ/02M3d2iyEZJHdsOIgELYSc+Pb
 /eOwGYeNsg+jtpRIMohfcX57KX2iyWjg758Xf6uVtIu88pKaAEuFS69GVhzM5l7wDi8Z
 G8QHOxO6E7g5kstUcj2BpC7mKw+2NgKFqhu6V077ipaZRPsxVHrpV+uQiKhDKauLWSh7
 Lw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CSfzn244zMxZzCnzEJ3aLKTkuzXbWd6fbHt5WU7kz70=;
 b=qynJHUiCl1ipC+InrqVHPLQRfRB0PIqTVhZF510WhRD3sIiDr7NzEvcN/W4SfkU+xK
 A4tKYc82IRt3rPSREfvbUz7xRkV2inNLtb/g1eOBBe8jCdGkftdx2N2XYjkLbW2DCbHt
 q7O6OLYlscTOvtEjIQiFex2nZ49zAoc1OxtyzE8k1Kslfv2Gq30th9qa9Osrfw+RtLEt
 FxjNXc4K85jkmQ0o3mifn8p/UEfER5KXJk/3WKi56uHr6uRahKk8BWFe8asq+K2Voftb
 rW01cFqsFDUf7XrVS1nNo2N4UzsFY2RK6Eq7Jb4HprK25o7Fp6kLjuCfrTysozv04aDp
 BTaQ==
X-Gm-Message-State: APjAAAWBk5wqVz4TBiXCLTI3axnwfnYOhmHuPAMfwFmWVPS3zvwScxma
 Z3KURrnsJyS3IGhs9k+mM0aObA==
X-Google-Smtp-Source: APXvYqzC8zW9AaWRDb9ZlRE16EvYVQBSACMCbbatUXf1UeDd0+O1VMv1PBXTJBbV67HowoIWiWdnlQ==
X-Received: by 2002:a17:902:20ec:: with SMTP id
 v41mr5011846plg.142.1562858623622; 
 Thu, 11 Jul 2019 08:23:43 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r1sm5002102pgv.70.2019.07.11.08.23.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:23:42 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:24:52 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 09/14] arm64: dts: qcom: msm8916: Add the clocks for
 the APCS mux/divider
Message-ID: <20190711152452.GJ7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-10-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-10-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082345_157951_58045937 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Specify the clocks that feed the APCS mux/divider instead of using
> default hardcoded values in the source code.
> 
> The driver still supports the previous bindings; however with this
> update it we allow the msm8916 to access the parent clock names
> required by the driver operation using the device tree node.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 5ea9fb8f2f87..96dc7a12aa94 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -429,7 +429,8 @@
>  			compatible = "qcom,msm8916-apcs-kpss-global", "syscon";
>  			reg = <0xb011000 0x1000>;
>  			#mbox-cells = <1>;
> -			clocks = <&a53pll>;
> +			clocks = <&gcc GPLL0_VOTE>, <&a53pll>;
> +			clock-names = "aux", "pll";
>  			#clock-cells = <0>;
>  		};
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
