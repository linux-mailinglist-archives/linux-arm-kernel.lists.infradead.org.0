Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375682D402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 04:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+vjF7i7C8LoGriSJJoRXZFeQAbhhTsSU3qRo8VO/WM=; b=i4X4D2deewiy0g
	SvJlFGN+6QBy9w1fIL8mrnsqdwaW59c7tf1cSAUh10Es3Zmw9cH0XqaL5ZUkB5JI1xRIcOPAHFh+y
	gUvwU8BvF/w4aLiV6TNvGN9s18vuuX8iRR9nbReJ42i7ZUpf6rsNIlsm4gXSeogjhNAWD/WTc/RnM
	wiuMJuC0WwOR07tv7IT9xgr96+kx9hXU7CN5qcXjQCnXPMBuB5eRkKByMoIezs1fwDkqu89ssJ6GW
	yU4w+WXeAj9ydRGfaLkqFNZyjuAHAMwkRQZ7+3hpOFTo6+uVvARzD7awEt6dccLp5FxxZu7483Ter
	oXwru6zJwWmspEmOlZWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoin-00070b-B6; Wed, 29 May 2019 02:53:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoie-0006zl-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 02:53:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id u22so612320pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 19:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IRbOxDloc34+bVD1clrnHE8qeNgQWI5zIDtydL1C1Nk=;
 b=SVXxzt3Szs/n4Egthe5l0wstUwHu0GteoKDAV1UOOTMEs4O42+JUV93q+YzJyiNbHS
 y/Hrj+22ObeUhL9Llc6jnyxaaAhGn/yaYUNnI1J4TB05rzceiu9GQCVnIP08Mppaj1QT
 Xkt0T9CIf4OWKlsTUUMkviEwe4Bn2+CGNhx0M5IY2sN31sDsU5GYOtR6Ep/Oh9/kON/O
 9FPEErzHqo47d/ZlI+2KFsDWa+Fs4N1GptqE/yqqkQ9n+1AparOin8QDEiCvDTss6o1h
 bFqeI9VJOVud2nwvWzMv227PCqhKFrVyoSb3eCQ8WvTbCWGtvbUKIzfoEwqQPH7x8gwe
 Y9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IRbOxDloc34+bVD1clrnHE8qeNgQWI5zIDtydL1C1Nk=;
 b=L7K9CpdsyrJsZT5/DfqtZJMWEa12NowyOEldxQEFupNZSi7KQn9vNCP3bGskWhQ+i1
 aH0NpENhPmhh5iO0QL8N6LGeHcMjypHcR4F2XpsuWYaUtd/FX+LbSmWK6qJIxrztSfm1
 OQkJzxNDjdlI9CfQj2brQSoFNog9ypnj00j1H2NQ+y7ZIZ4b9bCCsjFtj8K6At5QhDNr
 r37tCIWmZSRRoC9399jVa/e35f/LuwUWb3uDiJ14Rpd0W45KfnMm2zJy00AbCKMThDqP
 tLQqzFCYWWa9siWC+dWFNFv8DyP4vFS3oEsWCThocHtFJF0xb5C90Rmc1X+8cwRVniPo
 Y3nw==
X-Gm-Message-State: APjAAAUmLVAvnK2kS9GXNhpXDHHnrv4vB44prhmdMoeCltY9UuH8vbGd
 cWLN+atIIccA2hgM3WlbpN4=
X-Google-Smtp-Source: APXvYqwSGGDaSrL60LvaJmFCEVVVRHqpXuqZZDAXAzAI/Eqcp7AQAAnqTtBorkEQgcScBJHiEeOuLQ==
X-Received: by 2002:a63:4826:: with SMTP id v38mr10318770pga.417.1559098415428; 
 Tue, 28 May 2019 19:53:35 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id x24sm3893935pjq.27.2019.05.28.19.53.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 19:53:34 -0700 (PDT)
Date: Tue, 28 May 2019 19:53:32 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: Add Thermal Monitor Unit node
Message-ID: <20190529025331.GB2419@localhost.localdomain>
References: <20190425082640.37982-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425082640.37982-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_195337_036757_65B6C1DC 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 robh+dt@kernel.org, rui.zhang@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 04:26:40PM +0800, Yuantian Tang wrote:
> The Thermal Monitoring Unit (TMU) monitors and reports the
> temperature from 2 remote temperature measurement sites
> located on ls1028a chip.
> Add TMU dts node to enable this feature.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

I dont see anything wrong from a thermal standpoint.

Acked-by: Eduardo Valentin <edubezval@gmail.com>

Please get this via your arch tree maintainer to avoid merge conflicts.

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  114 ++++++++++++++++++++++++
>  1 files changed, 114 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b045812..a25f5fc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -29,6 +29,7 @@
>  			clocks = <&clockgen 1 0>;
>  			next-level-cache = <&l2>;
>  			cpu-idle-states = <&CPU_PH20>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -39,6 +40,7 @@
>  			clocks = <&clockgen 1 0>;
>  			next-level-cache = <&l2>;
>  			cpu-idle-states = <&CPU_PH20>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		l2: l2-cache {
> @@ -398,6 +400,118 @@
>  			status = "disabled";
>  		};
>  
> +		tmu: tmu@1f00000 {
> +			compatible = "fsl,qoriq-tmu";
> +			reg = <0x0 0x1f80000 0x0 0x10000>;
> +			interrupts = <0 23 0x4>;
> +			fsl,tmu-range = <0xb0000 0xa0026 0x80048 0x70061>;
> +			fsl,tmu-calibration = <0x00000000 0x00000024
> +					       0x00000001 0x0000002b
> +					       0x00000002 0x00000031
> +					       0x00000003 0x00000038
> +					       0x00000004 0x0000003f
> +					       0x00000005 0x00000045
> +					       0x00000006 0x0000004c
> +					       0x00000007 0x00000053
> +					       0x00000008 0x00000059
> +					       0x00000009 0x00000060
> +					       0x0000000a 0x00000066
> +					       0x0000000b 0x0000006d
> +
> +					       0x00010000 0x0000001c
> +					       0x00010001 0x00000024
> +					       0x00010002 0x0000002c
> +					       0x00010003 0x00000035
> +					       0x00010004 0x0000003d
> +					       0x00010005 0x00000045
> +					       0x00010006 0x0000004d
> +					       0x00010007 0x00000045
> +					       0x00010008 0x0000005e
> +					       0x00010009 0x00000066
> +					       0x0001000a 0x0000006e
> +
> +					       0x00020000 0x00000018
> +					       0x00020001 0x00000022
> +					       0x00020002 0x0000002d
> +					       0x00020003 0x00000038
> +					       0x00020004 0x00000043
> +					       0x00020005 0x0000004d
> +					       0x00020006 0x00000058
> +					       0x00020007 0x00000063
> +					       0x00020008 0x0000006e
> +
> +					       0x00030000 0x00000010
> +					       0x00030001 0x0000001c
> +					       0x00030002 0x00000029
> +					       0x00030003 0x00000036
> +					       0x00030004 0x00000042
> +					       0x00030005 0x0000004f
> +					       0x00030006 0x0000005b
> +					       0x00030007 0x00000068>;
> +			little-endian;
> +			#thermal-sensor-cells = <1>;
> +		};
> +
> +		thermal-zones {
> +			core-cluster {
> +				polling-delay-passive = <1000>;
> +				polling-delay = <5000>;
> +				thermal-sensors = <&tmu 0>;
> +
> +				trips {
> +					core_cluster_alert: core-cluster-alert {
> +						temperature = <85000>;
> +						hysteresis = <2000>;
> +						type = "passive";
> +					};
> +
> +					core_cluster_crit: core-cluster-crit {
> +						temperature = <95000>;
> +						hysteresis = <2000>;
> +						type = "critical";
> +					};
> +				};
> +
> +				cooling-maps {
> +					map0 {
> +						trip = <&core_cluster_alert>;
> +						cooling-device =
> +							<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					};
> +				};
> +			};
> +
> +			ddr-controller {
> +				polling-delay-passive = <1000>;
> +				polling-delay = <5000>;
> +				thermal-sensors = <&tmu 1>;
> +
> +				trips {
> +					ddr_controller_alert: ddr-controller-alert {
> +						temperature = <85000>;
> +						hysteresis = <2000>;
> +						type = "passive";
> +					};
> +
> +					ddr_controller_crit: ddr-controller-crit {
> +						temperature = <95000>;
> +						hysteresis = <2000>;
> +						type = "critical";
> +					};
> +				};
> +
> +				cooling-maps {
> +					map0 {
> +						trip = <&ddr_controller_alert>;
> +						cooling-device =
> +							<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					};
> +				};
> +			};
> +		};
> +
>  		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
>  			compatible = "pci-host-ecam-generic";
>  			reg = <0x01 0xf0000000 0x0 0x100000>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
