Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBF0A1248
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bu02RTx5iDoRrp7q0GME653ZIJ/K7w39QC2RMKkvrQ=; b=rqjzBxIAP2AgRX
	gIWveYJu/CTDkzgMUuXPespXhI1uPvP/25UynmnbX1t8MiIsqxXRitmyxjTPT0Co3WA0h3Amc7lv8
	O/zkIg05HYynEfXGcGMalzxcnHLS7sLBe1nLfCCKkom9PIGAvNMzJCLV4N3+LgW9eNjUkNkS+7s2G
	R7hpV7a24JSBR3eKSY4DLzmhoE967/kmihMuMZQzoXAyRpr8wNZVjahHJL0bPqmOp0pqCrBjlY0E8
	GMxIXIwglJ7CYirTL69VtDz2pMLo5sWQmsQE+m2BFPmnMMttqPNpEC4Ek774IOGGoaKWtCPxq+LbD
	zms9B+qsPvjoTeGCbbyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3EVP-0008Db-Nz; Thu, 29 Aug 2019 07:06:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ETL-0006iz-10
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:04:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so3425246wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 00:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=syJN1AElda7xhPvOw/vcy1dd6HyoWfY83SuIugcFyfE=;
 b=ApuYI+m8YDXZXFm3JiiYl7767qTRfvwsIUrqU1BtJ2d3ovZVEMt+HLDjKOOIG8qu1y
 H1FIhI5XqpMsPJWwcN+FJL3SMafk+HnnOisnkhs5CTX06OlcP+lctgbMQMQQYPjf1kx/
 m70NRulYPkKyxLP8brmSIv3W7/6N6Npa5ffSDDSuHslYCMPxVrwrHpAj+hoRisd4261N
 sB/bzFTQm+B4HQkAOUQUfWZFcJkFLStqshAbLDIVaNiR32aBlPSG0x9Rl2K87crpsTpj
 bexhAjHtp/q0EQLl/PHc8wg2+Zpw+bIXy3QmloUGO50Kzh0ZWLkQ6PsZw8NWcPyTf/yE
 3L+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=syJN1AElda7xhPvOw/vcy1dd6HyoWfY83SuIugcFyfE=;
 b=jFLDEEnWJuviJiR9xCzlPLTKV4YS8rbPBG74Hsfr6lc3nrhFcaCljJiPGsdfM6ybMF
 2RdwHLyF2w+43nnt6kwyETFsRWmFxvNobwIlBvJ85w6eqbqGRFbPKrfW7dgaXSVG8QoD
 Tq2U8X65b+Da9qn61+jRFUKKKcfN/4fD8IAFLIQDQu5EC4YiJaAmsz7qrcFhBAXnK9QM
 WoXBrspo/PqQEA2NwRWIkoYrNZCWfSyyXXkBrXDgMkLeGGF4z3dcwR5KwbbKSPT59GeQ
 2+JbxQaFGQT0Vwe7HukZcF0P6rEBpKYT0Uva+vnSE1uCbXzU2TWkf0yaTKJpDOPn5vi5
 p8rA==
X-Gm-Message-State: APjAAAXktUUPjzo5Ej/MT/tXVlMdpZNcF5W46AXtwvj6nGsp6xct+ftN
 QxDE2khldvCr/hheyFDNayQITg==
X-Google-Smtp-Source: APXvYqya0CiL9G1moyvmqQVNqGgkib/s77qe7jypGG/sh++aoSP0FKfRPFNRmI03bw4m+Sn596Ij4g==
X-Received: by 2002:a7b:ce8f:: with SMTP id q15mr2906912wmj.154.1567062231241; 
 Thu, 29 Aug 2019 00:03:51 -0700 (PDT)
Received: from [192.168.1.6] (124.red-83-36-179.dynamicip.rima-tde.net.
 [83.36.179.124])
 by smtp.gmail.com with ESMTPSA id n14sm4299285wra.75.2019.08.29.00.03.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 00:03:50 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
Date: Thu, 29 Aug 2019 09:03:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190223165218.GB572@tuxbook-pro>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_000358_200090_84AE8582 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, jackp@codeaurora.org, kishon@ti.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org, swboyd@chromium.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/23/19 17:52, Bjorn Andersson wrote:
> On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> 
>> Binding description for Qualcomm's Synopsys 1.0.0 SuperSpeed phy
>> controller embedded in QCS404.
>>
>> Based on Sriharsha Allenki's <sallenki@codeaurora.org> original
>> definitions.
>>
>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
>> ---
>>  .../bindings/phy/qcom,snps-usb-ssphy.txt      | 79 +++++++++++++++++++
>>  1 file changed, 79 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-usb-ssphy.txt
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-usb-ssphy.txt b/Documentation/devicetree/bindings/phy/qcom,snps-usb-ssphy.txt
>> new file mode 100644
>> index 000000000000..354e6f9cef62
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-usb-ssphy.txt
>> @@ -0,0 +1,79 @@
>> +Qualcomm Synopsys 1.0.0 SS phy controller
>> +===========================================
>> +
>> +Qualcomm 1.0.0 SS phy controller supports SuperSpeed USB connectivity on
>> +some Qualcomm platforms.
>> +
>> +Required properties:
>> +
>> +- compatible:
>> +    Value type: <string>
>> +    Definition: Should contain "qcom,snps-usb-ssphy".
> 
> Per Rob's request make this:
> 
> Should contain "qcom,qcs404-snps-usb-ssphy" and "qcom,snps-usb-ssphy"

ok

> 
> You can then leave the driver matching on qcom,snps-usb-ssphy for now
> and if we ever find this to be incompatible with other platforms we can
> make the driver match on the platform-specific compatible.

ok

> 
>> +
>> +- reg:
>> +    Value type: <prop-encoded-array>
>> +    Definition: USB PHY base address and length of the register map.
>> +
>> +- #phy-cells:
>> +    Value type: <u32>
>> +    Definition: Should be 0. See phy/phy-bindings.txt for details.
>> +
>> +- clocks:
>> +    Value type: <prop-encoded-array>
>> +    Definition: See clock-bindings.txt section "consumers". List of
>> +		 three clock specifiers for reference, phy core and
>> +		 pipe clocks.
>> +
>> +- clock-names:
>> +    Value type: <string>
>> +    Definition: Names of the clocks in 1-1 correspondence with the "clocks"
>> +		 property. Must contain "ref", "phy" and "pipe".
>> +
>> +- vdd-supply:
>> +    Value type: <phandle>
>> +    Definition: phandle to the regulator VDD supply node.
>> +
>> +- vdda1p8-supply:
>> +    Value type: <phandle>
>> +    Definition: phandle to the regulator 1.8V supply node.
>> +
>> +Optional properties:
>> +
>> +- resets:
>> +    Value type: <prop-encoded-array>
>> +    Definition: See reset.txt section "consumers". Specifiers for COM and
>> +		 PHY resets.
>> +
>> +- reset-names:
>> +    Value type: <string>
>> +    Definition: Names of the resets in 1-1 correspondence with the "resets"
>> +		 property. Must contain "com" and "phy" if the property is
>> +		 specified.
>> +
>> +Required child nodes:
>> +
>> +- usb connector node as defined in bindings/connector/usb-connector.txt
>> +  containing the property vbus-supply.
>> +
>> +Example:
>> +
>> +usb3_phy: usb3-phy@78000 {
>> +	compatible = "qcom,snps-usb-ssphy";
>> +	reg = <0x78000 0x400>;
>> +	#phy-cells = <0>;
>> +	clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
>> +		 <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
>> +		 <&gcc GCC_USB3_PHY_PIPE_CLK>;
>> +	clock-names = "ref", "phy", "pipe";
>> +	resets = <&gcc GCC_USB3_PHY_BCR>,
>> +		 <&gcc GCC_USB3PHY_PHY_BCR>;
>> +	reset-names = "com", "phy";
>> +	vdd-supply = <&vreg_l3_1p05>;
>> +	vdda1p8-supply = <&vreg_l5_1p8>;
>> +	usb3_c_connector: usb3-c-connector {
> 
> The USB-C connector is attached both to the HS and SS PHYs, so I think
> you should represent this external to this node and use of_graph to
> query it.

but AFAICS we wont be able to retrieve the vbux-supply from an external
node (that interface does not exist).

rob, do you have a suggestion?

> 
> So the connector should look similar to example 2 in
> connector/usb-connector.txt.
> 
> Regards,
> Bjorn
> 
>> +		compatible = "usb-c-connector";
>> +		label = "USB-C";
>> +		type = "micro";
>> +		vbus-supply = <&usb3_vbus_reg>;
>> +	};
>> +};
>> -- 
>> 2.20.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
