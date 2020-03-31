Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3541198BF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 07:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEfrdD7yCpkbDcwOOp4OOf4HiDX1XVmFxjkBbeXNu4Q=; b=fv9MdePpZ3CWHm
	C1eYiDTHTK8HRJsTt5N1m7RmcXyxeUDDE76OmG9RTNtRvv1FbP3vltRapXzUSSIXtIp0ZfJye8cIV
	gxZgLFxY3wKyBrVTtGxVvOpZKgS+6UH0aBCPYaN/08V6HZxlb+RsOUKx4KQMIajhg7fcenwVl2xm7
	Ugt541lZcGaraqLPGkDrj5YhslKTRLutS07BKDKpzak7eZozr1gMtqaPIkvXKLbux1IAIwdT4Qqss
	nKq79i2u3S1W8K/eWgDlPvGWhbm5tVgtZyo3obhNmTtFkDsJNc3zBVNiclIamHkw0cZ2qeN9wWzc0
	4JQO5p2ksOdvHxpOhpkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ9rt-0003cF-Q1; Tue, 31 Mar 2020 05:55:21 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9ri-0003bZ-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 05:55:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585634111; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=xrGCirxexrEbwt/Vl23R0ajSuqwZSYvaASr8r49sQ9k=;
 b=hiXV2FdY6RRZRfnaepG3ltpXM8XR5xHH0Ild5RoN4W1JKz1U0/zNXnwspWhqhG5XDZrN2YYa
 qu/hNiFFuoeYTy9m72WCI5ZFMYJIgI2Xe0EzvPy3UAmk5aF6N/I+OwAspl3lWDoDlSFkTSBV
 ng/MigV2wLnwri/gKo0mBLKjRPw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e82db2a.7f064351cb20-smtp-out-n01;
 Tue, 31 Mar 2020 05:54:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7FF52C433BA; Tue, 31 Mar 2020 05:54:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94670C433F2;
 Tue, 31 Mar 2020 05:54:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 94670C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
 <20200327230025.GJ5063@builder>
 <000101d604f8$afc48220$0f4d8660$@codeaurora.org>
 <20200328183055.GA663905@yoga> 
In-Reply-To: 
Subject: RE: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Tue, 31 Mar 2020 11:24:43 +0530
Message-ID: <000d01d60720$e30cc0a0$a92641e0$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFGsu5WNDBp+FP/TOeyoiVSrY11cwGGydAyAh9ckM8BjsJxYgESLQK5qU6jFvA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_225511_907911_C049D131 
X-CRM114-Status: GOOD (  28.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi All,

I have posted v8 for this patch after correcting the wlan_fw_mem start
address.

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: pillair@codeaurora.org <pillair@codeaurora.org>
> Sent: Sunday, March 29, 2020 4:37 PM
> To: 'Bjorn Andersson' <bjorn.andersson@linaro.org>
> Cc: 'devicetree@vger.kernel.org' <devicetree@vger.kernel.org>; 'linux-arm-
> kernel@lists.infradead.org' <linux-arm-kernel@lists.infradead.org>;
'linux-
> kernel@vger.kernel.org' <linux-kernel@vger.kernel.org>; 'linux-arm-
> msm@vger.kernel.org' <linux-arm-msm@vger.kernel.org>
> Subject: RE: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> Hi Bjorn,
> 
> > -----Original Message-----
> > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Sent: Sunday, March 29, 2020 12:01 AM
> > To: pillair@codeaurora.org
> > Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-
> > kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> > Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> > module device node
> >
> > On Sat 28 Mar 05:01 PDT 2020, pillair@codeaurora.org wrote:
> >
> > > Hi Bjorn,
> > >  Comments inline.
> > >
> > >
> > > > -----Original Message-----
> > > > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > Sent: Saturday, March 28, 2020 4:30 AM
> > > > To: Rakesh Pillai <pillair@codeaurora.org>
> > > > Cc: devicetree@vger.kernel.org;
linux-arm-kernel@lists.infradead.org;
> > > linux-
> > > > kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> > > > Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> > > > module device node
> > > >
> > > > On Thu 26 Mar 03:48 PDT 2020, Rakesh Pillai wrote:
> > > >
> > > > > Add device node for the ath10k SNOC platform driver probe
> > > > > and add resources required for WCN3990 on sc7180 soc.
> > > > >
> > > > > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > > > > ---
> > > > >
> > > > > Depends on https://patchwork.kernel.org/patch/11455345/
> > > > > The above patch adds the dt-bindings for wifi-firmware
> > > > > subnode
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  8 ++++++++
> > > > >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> > > > +++++++++++++++++++++++++++
> > > > >  2 files changed, 35 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > > b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > > > index 043c9b9..a6168a4 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > > > @@ -327,6 +327,14 @@
> > > > >  	};
> > > > >  };
> > > > >
> > > > > +&wifi {
> > > > > +	status = "okay";
> > > > > +	qcom,msa-fixed-perm;
> > > > > +	wifi-firmware {
> > > > > +		iommus = <&apps_smmu 0xc2 0x1>;
> > > >
> > > > How is sc7180 different from sdm845, where the iommus property goes
> > > > directly in the &wifi node?
> > >
> > > Sc7180 IDP is a target without TrustZone support and also with S2
IOMMU
> > > enabled.
> > > Since in Trustzone based targets, the iommu SID configuration was done
> by
> > > TZ, there was nothing required to be done by driver.
> > > But in non-TZ based targets, the IOMMU mappings need to be done by
> the
> > > driver.
> > > Since this is the mapping of the firmware memory and to keep it
different
> > > from the driver memory access, a different device has been created for
> > > firmware and these SIDs are configured.
> > >
> >
> > I see, I missed the fact that 0xc0:1 is used in the &wifi node itself.
> >
> > So to confirm, we have streams 0xc0 and 0xc1 for data pipes and 0xc2 and
> > 0xc3 for some form of firmware access? And in the normal Qualcomm
> design
> > implementation the 0c2/0xc3 stream mapping is setup by TZ, and hidden
> > from Linux using the SMMU virtualisation?
> >
> >
> > Would have been nice to have some better mechanism for describing
> > multi-connected hardware block, than to sprinkle dummy nodes all over
> > the DT...
> 
> Yes, this is the firmware memory. This method is followed in the venus
video
> driver
> https://patchwork.kernel.org/patch/11315765/
> 
> Do you suggest following some other mechanism ?
> 
> Thanks,
> Rakesh Pillai.
> 
> >
> > Regards,
> > Bjorn
> >
> > > The below ath10k series brings-in this support.
> > > https://patchwork.kernel.org/project/linux-
> > wireless/list/?series=261367&stat
> > > e=*
> > >
> > > Thanks,
> > > Rakesh Pillai.
> > >
> > > >
> > > > Regards,
> > > > Bjorn
> > > >
> > > > > +	};
> > > > > +};
> > > > > +
> > > > >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> > > > >
> > > > >  &qspi_clk {
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > > b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > > > index 998f101..2745128 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > > > @@ -83,6 +83,11 @@
> > > > >  			reg = <0 0x8f600000 0 0x500000>;
> > > > >  			no-map;
> > > > >  		};
> > > > > +
> > > > > +		wlan_fw_mem: memory@94104000 {
> > > > > +			reg = <0 0x94104000 0 0x200000>;
> > > > > +			no-map;
> > > > > +		};
> > > > >  	};
> > > > >
> > > > >  	cpus {
> > > > > @@ -835,6 +840,28 @@
> > > > >  			};
> > > > >  		};
> > > > >
> > > > > +		wifi: wifi@18800000 {
> > > > > +			compatible = "qcom,wcn3990-wifi";
> > > > > +			reg = <0 0x18800000 0 0x800000>;
> > > > > +			reg-names = "membase";
> > > > > +			iommus = <&apps_smmu 0xc0 0x1>;
> > > > > +			interrupts =
> > > > > +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH
> /* CE0
> > > > */ >,
> > > > > +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH
> /* CE1
> > > > */ >,
> > > > > +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH
> /* CE2
> > > > */ >,
> > > > > +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH
> /* CE3
> > > > */ >,
> > > > > +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH
> /* CE4
> > > > */ >,
> > > > > +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH
> /* CE5
> > > > */ >,
> > > > > +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH
> /* CE6
> > > > */ >,
> > > > > +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH
> /* CE7
> > > > */ >,
> > > > > +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH
> /* CE8
> > > > */ >,
> > > > > +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH
> /* CE9
> > > > */ >,
> > > > > +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH
> /* CE10
> > > > */>,
> > > > > +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH
> /* CE11
> > > > */>;
> > > > > +			memory-region = <&wlan_fw_mem>;
> > > > > +			status = "disabled";
> > > > > +		};
> > > > > +
> > > > >  		config_noc: interconnect@1500000 {
> > > > >  			compatible = "qcom,sc7180-config-noc";
> > > > >  			reg = <0 0x01500000 0 0x28000>;
> > > > > --
> > > > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
