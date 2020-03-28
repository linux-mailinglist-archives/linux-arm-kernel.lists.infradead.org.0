Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0121965F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 13:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsHwv7kVEe2D5SySEcPzt0mFgkCIm4LADY546d6c/ZI=; b=PBA9UKWy2ssOUI
	9hA5o+VZ6OpobXBqFCbJ7LbhpjjzR0PnaY8xwx/4xvFQl0UleQgQ5JOp+I5et90vLJHW0S6EjNHML
	/UJ1uG4FXFBW1F+CHRpmJf15mD2qAJPrrCQwsBvNCyUIdfl8wnE9pEu+MIkeqQQU5jl3cmzBhZoS9
	7/KslR4PuCGRpyMP8I15dAOo5NMx548mfLKw7LJeaf2NjuhYpmQNmRS+HhpB7W2FQlJYYRUhQKWYW
	ffSdqIPzSeeHpfMAi5hyXwLUS+k1YlvrTb0GM0IcSVzyqWgpPph48840cmmoIbH1kdmehx8vwiNT/
	v80tH4tbfmSEybs1PeAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIAAo-0000mV-Hd; Sat, 28 Mar 2020 12:02:46 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIAAg-0000m0-C4
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 12:02:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585396959; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=zzBLtQ+//D0bBXPqSlcrMZohpTUdmpgajv0NPqBclSs=;
 b=eijlXx60EXH6EaRqQHfeYEtDuGQicPHuuH0tjjuncFzBqW2XtQpGb7V4LGQt0HM/T3Uu+boS
 jSGcY/H1jkKe6nmA4XeleLcI/3PT0V7021P49dxDsrsOmVPt6YaVT25ajp8SY+DwLXC3Svvq
 Q5pYWTSzENPqvN/aTPQoaNYdRT4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7f3cba.7f9b3a196c38-smtp-out-n03;
 Sat, 28 Mar 2020 12:02:02 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CD5C0C433BA; Sat, 28 Mar 2020 12:02:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 86CE5C433D2;
 Sat, 28 Mar 2020 12:01:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 86CE5C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
 <20200327230025.GJ5063@builder>
In-Reply-To: <20200327230025.GJ5063@builder>
Subject: RE: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Sat, 28 Mar 2020 17:31:52 +0530
Message-ID: <000101d604f8$afc48220$0f4d8660$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFGsu5WNDBp+FP/TOeyoiVSrY11cwGGydAyqXBTCQA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_050240_140678_D3D267DF 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,
 Comments inline.


> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: Saturday, March 28, 2020 4:30 AM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Thu 26 Mar 03:48 PDT 2020, Rakesh Pillai wrote:
> 
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> >
> > Depends on https://patchwork.kernel.org/patch/11455345/
> > The above patch adds the dt-bindings for wifi-firmware
> > subnode
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  8 ++++++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> +++++++++++++++++++++++++++
> >  2 files changed, 35 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 043c9b9..a6168a4 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -327,6 +327,14 @@
> >  	};
> >  };
> >
> > +&wifi {
> > +	status = "okay";
> > +	qcom,msa-fixed-perm;
> > +	wifi-firmware {
> > +		iommus = <&apps_smmu 0xc2 0x1>;
> 
> How is sc7180 different from sdm845, where the iommus property goes
> directly in the &wifi node?

Sc7180 IDP is a target without TrustZone support and also with S2 IOMMU
enabled.
Since in Trustzone based targets, the iommu SID configuration was done by
TZ, there was nothing required to be done by driver.
But in non-TZ based targets, the IOMMU mappings need to be done by the
driver.
Since this is the mapping of the firmware memory and to keep it different
from the driver memory access, a different device has been created for
firmware and these SIDs are configured.

The below ath10k series brings-in this support.
https://patchwork.kernel.org/project/linux-wireless/list/?series=261367&stat
e=* 

Thanks,
Rakesh Pillai.

> 
> Regards,
> Bjorn
> 
> > +	};
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qspi_clk {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 998f101..2745128 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -83,6 +83,11 @@
> >  			reg = <0 0x8f600000 0 0x500000>;
> >  			no-map;
> >  		};
> > +
> > +		wlan_fw_mem: memory@94104000 {
> > +			reg = <0 0x94104000 0 0x200000>;
> > +			no-map;
> > +		};
> >  	};
> >
> >  	cpus {
> > @@ -835,6 +840,28 @@
> >  			};
> >  		};
> >
> > +		wifi: wifi@18800000 {
> > +			compatible = "qcom,wcn3990-wifi";
> > +			reg = <0 0x18800000 0 0x800000>;
> > +			reg-names = "membase";
> > +			iommus = <&apps_smmu 0xc0 0x1>;
> > +			interrupts =
> > +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0
> */ >,
> > +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1
> */ >,
> > +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2
> */ >,
> > +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3
> */ >,
> > +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4
> */ >,
> > +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5
> */ >,
> > +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6
> */ >,
> > +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7
> */ >,
> > +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8
> */ >,
> > +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9
> */ >,
> > +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10
> */>,
> > +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11
> */>;
> > +			memory-region = <&wlan_fw_mem>;
> > +			status = "disabled";
> > +		};
> > +
> >  		config_noc: interconnect@1500000 {
> >  			compatible = "qcom,sc7180-config-noc";
> >  			reg = <0 0x01500000 0 0x28000>;
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
