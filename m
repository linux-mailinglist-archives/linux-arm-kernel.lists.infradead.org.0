Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B74CA438
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZBdhUUHB5zjkDCRTRx0Veuwwef2H3NoFC4j6K9pQ+Y=; b=tJphYYiX7LYY8L
	OwAC32/Y6F8qUaTZOFxmGLcjtleSU1LVJSZtd8JSx0kMBJHvGqYjYUBnpx6n4hM7BaLVZN38eq1K8
	qigrC/EILhTgKipfjXEZl6LCjQw3FzRVTcxKWnBdXVWJJkZOhQ9IL1RkfH+j0tgsX2GL8wmxdfRH/
	fJ20ZBbqsDqNIWL5vkQErRVOywyii5op6oLwRgWaUGqEiGtK60T/duVXRPjTLf1rRuoDVI2o1zY+e
	/ziP9Df8nvjzDh2ol/BtoMrCpjwBaD1YkHL3PfhyV7WnWJ8D2ZTWAku50u540m+xSJpfLHoaVsuGh
	/c9f4qnoU5DO6hH/w2eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3tI-0004xD-Ox; Thu, 03 Oct 2019 16:23:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3t9-0004vi-Km
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:23:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so2057010pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 09:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GsCH2sCVXvn0x/whcUT1R2ddQgsbWOEJIx5FENdlgs8=;
 b=ubImWPxNfzTpJvMNer0GdchXdH7z9Lw0p4Tx0wu4FFKe3xqHkOwYMTeoydhpiB8v6A
 w65tOpD+OCFR5V41lBncGE6qC4wbB8gXtzIOB+Ed0LYBDDLcCI0fplsBgGraYf0Ln6Tv
 6F9Qf6XvxLIkXTTbJ8W2ZHpy3ZnhTCuTEwlmzL6I5Ob43K1sShTwNRmTjZmdQHc4Ve4h
 LmI5zRxvc8xZBNKPg5a8bDBo+r87ePirh2h3OtYFlkTHX4OZrzfElUjHOLxy+4ZQ8m+N
 c9RpEmaR2cqklxTCm23Fb/PR3i/hNephqpbBjPAIxUEwDgAlBDNVpsFoUiYc+C9NDqvh
 zgjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GsCH2sCVXvn0x/whcUT1R2ddQgsbWOEJIx5FENdlgs8=;
 b=SKAprBfBoBhdUcr3sRCj5Fg4gaGaszDrrun+GjZ/rd3N9DNefGMh2WHg9FzfZJRxXU
 PVuoMqWuZUj8qYzunihtViqEtESoMHDd0Z59xi5AcDbn97jJDZU1gtB/X1tF5OJtEYl0
 wgOKQW05zbBAtVvf0CWr8MVbFb9r9AdgE2CxIUHmNwQNq7iUvb2BU8LtMeqqXX7OAMF5
 E3Nbx8HxgonHKiVPIRGOMQhhEwJRpp0HL8ffh1F6EziNBmhktFrsj5XPIXWgCIQYtOxw
 iADhEJpeNgp+/7USdNBu5Gc9RNoO2Ma/cGYEgXOVXb4zFkd7koxggCAkep3hisD5ZU7J
 JBbA==
X-Gm-Message-State: APjAAAVjLVgKfjqREa5xbvkeL+pW3+bbObtQt1SmDG+zCRDIvPODbqoL
 ogel92vpz6HVLqkPatrVlOjBEw==
X-Google-Smtp-Source: APXvYqzaNjnfD8qrCDkgVRCdAgJVcauzxVqkIePimbpwLCi2AZNfjkMQ7MzECzdQeNaKcXQsjUAS7Q==
X-Received: by 2002:a62:5c82:: with SMTP id
 q124mr11923740pfb.177.1570119813926; 
 Thu, 03 Oct 2019 09:23:33 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t14sm2785832pgb.33.2019.10.03.09.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 09:23:33 -0700 (PDT)
Date: Thu, 3 Oct 2019 09:23:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: dts: qcom: msm8998: Disable coresight by default
Message-ID: <20191003162330.GD63675@minitux>
References: <20191003064449.2201-1-saiprakash.ranjan@codeaurora.org>
 <aecbc7a2-05fd-f30f-81c7-81947dc31c9f@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aecbc7a2-05fd-f30f-81c7-81947dc31c9f@free.fr>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092335_693914_F33D6173 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DT <devicetree@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 03 Oct 05:53 PDT 2019, Marc Gonzalez wrote:

> On 03/10/2019 08:44, Sai Prakash Ranjan wrote:
> 
> > Boot failure has been reported on MSM8998 based laptop when
> > coresight is enabled. This is most likely due to lack of
> > firmware support for coresight on production device when
> > compared to debug device like MTP where this issue is not
> > observed. So disable coresight by default for MSM8998 and
> > enable it only for MSM8998 MTP.
> > 
> > Reported-and-tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > Fixes: 783abfa2249a ("arm64: dts: qcom: msm8998: Add Coresight support")
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi | 68 +++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/msm8998.dtsi     | 51 +++++++++++------
> >  2 files changed, 102 insertions(+), 17 deletions(-)
> 
> Just wanted to toss an alternative, based on Suzuki's suggestion
> (i.e. move the coresight nodes to a separate file)
> 

For the particular case this seems quite reasonable; the conditional
inclusion of this file would indeed allow us to enable all the nodes at
once.

But I find it hard to navigate the dts files when the information they
are spread out over multiple files and the current split has rather
clear rules of what goes where.

Further more this probably not going to be the only thing that differs
between engineering devices and production devices, but I don't think
this split would scale to the various other cases.

Regards,
Bjorn

> 
>  arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi | 439 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi       |   1 +
>  arch/arm64/boot/dts/qcom/msm8998.dtsi           | 435 -----------------------
>  3 files changed, 440 insertions(+), 435 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi b/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi
> new file mode 100644
> index 000000000000..eabf4e4194fd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8998-coresight.dtsi
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2019, The Linux Foundation. All rights reserved. */
> +
> +&soc {
> +	stm@6002000 {
> +		compatible = "arm,coresight-stm", "arm,primecell";
> +		reg = <0x06002000 0x1000>,
> +		      <0x16280000 0x180000>;
> +		reg-names = "stm-base", "stm-data-base";
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				stm_out: endpoint {
> +					remote-endpoint = <&funnel0_in7>;
> +				};
> +			};
> +		};
> +	};
> +
> +	funnel@6041000 {
> +		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +		reg = <0x06041000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				funnel0_out: endpoint {
> +					remote-endpoint =
> +					  <&merge_funnel_in0>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@7 {
> +				reg = <7>;
> +				funnel0_in7: endpoint {
> +					remote-endpoint = <&stm_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	funnel@6042000 {
> +		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +		reg = <0x06042000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				funnel1_out: endpoint {
> +					remote-endpoint =
> +					  <&merge_funnel_in1>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@6 {
> +				reg = <6>;
> +				funnel1_in6: endpoint {
> +					remote-endpoint =
> +					  <&apss_merge_funnel_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	funnel@6045000 {
> +		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +		reg = <0x06045000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				merge_funnel_out: endpoint {
> +					remote-endpoint =
> +					  <&etf_in>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				merge_funnel_in0: endpoint {
> +					remote-endpoint =
> +					  <&funnel0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				merge_funnel_in1: endpoint {
> +					remote-endpoint =
> +					  <&funnel1_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	replicator@6046000 {
> +		compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +		reg = <0x06046000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				replicator_out: endpoint {
> +					remote-endpoint = <&etr_in>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			port {
> +				replicator_in: endpoint {
> +					remote-endpoint = <&etf_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etf@6047000 {
> +		compatible = "arm,coresight-tmc", "arm,primecell";
> +		reg = <0x06047000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				etf_out: endpoint {
> +					remote-endpoint =
> +					  <&replicator_in>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			port {
> +				etf_in: endpoint {
> +					remote-endpoint =
> +					  <&merge_funnel_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etr@6048000 {
> +		compatible = "arm,coresight-tmc", "arm,primecell";
> +		reg = <0x06048000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +		arm,scatter-gather;
> +
> +		in-ports {
> +			port {
> +				etr_in: endpoint {
> +					remote-endpoint =
> +					  <&replicator_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etm@7840000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07840000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU0>;
> +
> +		out-ports {
> +			port {
> +				etm0_out: endpoint {
> +					remote-endpoint =
> +					  <&apss_funnel_in0>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etm@7940000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07940000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU1>;
> +
> +		out-ports {
> +			port {
> +				etm1_out: endpoint {
> +					remote-endpoint =
> +					  <&apss_funnel_in1>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etm@7a40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07a40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU2>;
> +
> +		out-ports {
> +			port {
> +				etm2_out: endpoint {
> +					remote-endpoint =
> +					  <&apss_funnel_in2>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etm@7b40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07b40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU3>;
> +
> +		out-ports {
> +			port {
> +				etm3_out: endpoint {
> +					remote-endpoint =
> +					  <&apss_funnel_in3>;
> +				};
> +			};
> +		};
> +	};
> +
> +	funnel@7b60000 { /* APSS Funnel */
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07b60000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				apss_funnel_out: endpoint {
> +					remote-endpoint =
> +					  <&apss_merge_funnel_in>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				apss_funnel_in0: endpoint {
> +					remote-endpoint =
> +					  <&etm0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				apss_funnel_in1: endpoint {
> +					remote-endpoint =
> +					  <&etm1_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				apss_funnel_in2: endpoint {
> +					remote-endpoint =
> +					  <&etm2_out>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				apss_funnel_in3: endpoint {
> +					remote-endpoint =
> +					  <&etm3_out>;
> +				};
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +				apss_funnel_in4: endpoint {
> +					remote-endpoint =
> +					  <&etm4_out>;
> +				};
> +			};
> +
> +			port@5 {
> +				reg = <5>;
> +				apss_funnel_in5: endpoint {
> +					remote-endpoint =
> +					  <&etm5_out>;
> +				};
> +			};
> +
> +			port@6 {
> +				reg = <6>;
> +				apss_funnel_in6: endpoint {
> +					remote-endpoint =
> +					  <&etm6_out>;
> +				};
> +			};
> +
> +			port@7 {
> +				reg = <7>;
> +				apss_funnel_in7: endpoint {
> +					remote-endpoint =
> +					  <&etm7_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	funnel@7b70000 {
> +		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +		reg = <0x07b70000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		out-ports {
> +			port {
> +				apss_merge_funnel_out: endpoint {
> +					remote-endpoint =
> +					  <&funnel1_in6>;
> +				};
> +			};
> +		};
> +
> +		in-ports {
> +			port {
> +				apss_merge_funnel_in: endpoint {
> +					remote-endpoint =
> +					  <&apss_funnel_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	etm@7c40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07c40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU4>;
> +
> +		port{
> +			etm4_out: endpoint {
> +				remote-endpoint = <&apss_funnel_in4>;
> +			};
> +		};
> +	};
> +
> +	etm@7d40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07d40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU5>;
> +
> +		port{
> +			etm5_out: endpoint {
> +				remote-endpoint = <&apss_funnel_in5>;
> +			};
> +		};
> +	};
> +
> +	etm@7e40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07e40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU6>;
> +
> +		port{
> +			etm6_out: endpoint {
> +				remote-endpoint = <&apss_funnel_in6>;
> +			};
> +		};
> +	};
> +
> +	etm@7f40000 {
> +		compatible = "arm,coresight-etm4x", "arm,primecell";
> +		reg = <0x07f40000 0x1000>;
> +
> +		clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +		clock-names = "apb_pclk", "atclk";
> +
> +		cpu = <&CPU7>;
> +
> +		port{
> +			etm7_out: endpoint {
> +				remote-endpoint = <&apss_funnel_in7>;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
> index 108667ce4f31..9b586b3206fc 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi
> @@ -5,6 +5,7 @@
>  #include "pm8998.dtsi"
>  #include "pmi8998.dtsi"
>  #include "pm8005.dtsi"
> +#include "msm8998-coresight.dtsi"
>  
>  / {
>  	aliases {
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index c6f81431983e..4b66a1c588f8 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -998,441 +998,6 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		stm@6002000 {
> -			compatible = "arm,coresight-stm", "arm,primecell";
> -			reg = <0x06002000 0x1000>,
> -			      <0x16280000 0x180000>;
> -			reg-names = "stm-base", "stm-data-base";
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					stm_out: endpoint {
> -						remote-endpoint = <&funnel0_in7>;
> -					};
> -				};
> -			};
> -		};
> -
> -		funnel@6041000 {
> -			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> -			reg = <0x06041000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					funnel0_out: endpoint {
> -						remote-endpoint =
> -						  <&merge_funnel_in0>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				port@7 {
> -					reg = <7>;
> -					funnel0_in7: endpoint {
> -						remote-endpoint = <&stm_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		funnel@6042000 {
> -			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> -			reg = <0x06042000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					funnel1_out: endpoint {
> -						remote-endpoint =
> -						  <&merge_funnel_in1>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				port@6 {
> -					reg = <6>;
> -					funnel1_in6: endpoint {
> -						remote-endpoint =
> -						  <&apss_merge_funnel_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		funnel@6045000 {
> -			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> -			reg = <0x06045000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					merge_funnel_out: endpoint {
> -						remote-endpoint =
> -						  <&etf_in>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				port@0 {
> -					reg = <0>;
> -					merge_funnel_in0: endpoint {
> -						remote-endpoint =
> -						  <&funnel0_out>;
> -					};
> -				};
> -
> -				port@1 {
> -					reg = <1>;
> -					merge_funnel_in1: endpoint {
> -						remote-endpoint =
> -						  <&funnel1_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		replicator@6046000 {
> -			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> -			reg = <0x06046000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					replicator_out: endpoint {
> -						remote-endpoint = <&etr_in>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				port {
> -					replicator_in: endpoint {
> -						remote-endpoint = <&etf_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etf@6047000 {
> -			compatible = "arm,coresight-tmc", "arm,primecell";
> -			reg = <0x06047000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					etf_out: endpoint {
> -						remote-endpoint =
> -						  <&replicator_in>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				port {
> -					etf_in: endpoint {
> -						remote-endpoint =
> -						  <&merge_funnel_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etr@6048000 {
> -			compatible = "arm,coresight-tmc", "arm,primecell";
> -			reg = <0x06048000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -			arm,scatter-gather;
> -
> -			in-ports {
> -				port {
> -					etr_in: endpoint {
> -						remote-endpoint =
> -						  <&replicator_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etm@7840000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07840000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU0>;
> -
> -			out-ports {
> -				port {
> -					etm0_out: endpoint {
> -						remote-endpoint =
> -						  <&apss_funnel_in0>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etm@7940000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07940000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU1>;
> -
> -			out-ports {
> -				port {
> -					etm1_out: endpoint {
> -						remote-endpoint =
> -						  <&apss_funnel_in1>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etm@7a40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07a40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU2>;
> -
> -			out-ports {
> -				port {
> -					etm2_out: endpoint {
> -						remote-endpoint =
> -						  <&apss_funnel_in2>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etm@7b40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07b40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU3>;
> -
> -			out-ports {
> -				port {
> -					etm3_out: endpoint {
> -						remote-endpoint =
> -						  <&apss_funnel_in3>;
> -					};
> -				};
> -			};
> -		};
> -
> -		funnel@7b60000 { /* APSS Funnel */
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07b60000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					apss_funnel_out: endpoint {
> -						remote-endpoint =
> -						  <&apss_merge_funnel_in>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				port@0 {
> -					reg = <0>;
> -					apss_funnel_in0: endpoint {
> -						remote-endpoint =
> -						  <&etm0_out>;
> -					};
> -				};
> -
> -				port@1 {
> -					reg = <1>;
> -					apss_funnel_in1: endpoint {
> -						remote-endpoint =
> -						  <&etm1_out>;
> -					};
> -				};
> -
> -				port@2 {
> -					reg = <2>;
> -					apss_funnel_in2: endpoint {
> -						remote-endpoint =
> -						  <&etm2_out>;
> -					};
> -				};
> -
> -				port@3 {
> -					reg = <3>;
> -					apss_funnel_in3: endpoint {
> -						remote-endpoint =
> -						  <&etm3_out>;
> -					};
> -				};
> -
> -				port@4 {
> -					reg = <4>;
> -					apss_funnel_in4: endpoint {
> -						remote-endpoint =
> -						  <&etm4_out>;
> -					};
> -				};
> -
> -				port@5 {
> -					reg = <5>;
> -					apss_funnel_in5: endpoint {
> -						remote-endpoint =
> -						  <&etm5_out>;
> -					};
> -				};
> -
> -				port@6 {
> -					reg = <6>;
> -					apss_funnel_in6: endpoint {
> -						remote-endpoint =
> -						  <&etm6_out>;
> -					};
> -				};
> -
> -				port@7 {
> -					reg = <7>;
> -					apss_funnel_in7: endpoint {
> -						remote-endpoint =
> -						  <&etm7_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		funnel@7b70000 {
> -			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> -			reg = <0x07b70000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			out-ports {
> -				port {
> -					apss_merge_funnel_out: endpoint {
> -						remote-endpoint =
> -						  <&funnel1_in6>;
> -					};
> -				};
> -			};
> -
> -			in-ports {
> -				port {
> -					apss_merge_funnel_in: endpoint {
> -						remote-endpoint =
> -						  <&apss_funnel_out>;
> -					};
> -				};
> -			};
> -		};
> -
> -		etm@7c40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07c40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU4>;
> -
> -			port{
> -				etm4_out: endpoint {
> -					remote-endpoint = <&apss_funnel_in4>;
> -				};
> -			};
> -		};
> -
> -		etm@7d40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07d40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU5>;
> -
> -			port{
> -				etm5_out: endpoint {
> -					remote-endpoint = <&apss_funnel_in5>;
> -				};
> -			};
> -		};
> -
> -		etm@7e40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07e40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU6>;
> -
> -			port{
> -				etm6_out: endpoint {
> -					remote-endpoint = <&apss_funnel_in6>;
> -				};
> -			};
> -		};
> -
> -		etm@7f40000 {
> -			compatible = "arm,coresight-etm4x", "arm,primecell";
> -			reg = <0x07f40000 0x1000>;
> -
> -			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> -			clock-names = "apb_pclk", "atclk";
> -
> -			cpu = <&CPU7>;
> -
> -			port{
> -				etm7_out: endpoint {
> -					remote-endpoint = <&apss_funnel_in7>;
> -				};
> -			};
> -		};
> -
>  		spmi_bus: spmi@800f000 {
>  			compatible = "qcom,spmi-pmic-arb";
>  			reg =	<0x0800f000 0x1000>,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
