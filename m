Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E835125B1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 06:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vANqBpGcRdm6eGmx8dDyPAkiYmVmeH19HUxSvNosW3o=; b=fWBSHJmhknBdL/
	aVeWqM5ILl532S0yIpagab86xJfNiuUGQYG1ZgY7wW1+zWZf1Ae0dLsUDBFhfO1Z+yYZ8KZrUmpn/
	f5dSyhVO+aFj29KloROXlfgow5nLNvmRgSye0gCeKFWQlFcW7XMkV/QkmyJpwmlkZ03IiYA1jrCbN
	ndlWEY2kNNYSFmjGOBOcJLn4FgcYC+PXwwYUbtibfiOenDRBVNwTo4xyLjJyQfoB+n9nqJkOuH0OB
	k0fZwynXbjmIuY1fGL9IBFeWvoe5j/zMd1rV2CCrl4bhlYMgWig+YAcBjvgeNPqIm48qtObJxDvJT
	gJHltsb5WMVsjuKbXiuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihooe-0001Dl-AQ; Thu, 19 Dec 2019 05:57:40 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihooV-0001DN-40
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 05:57:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576735051; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=gij6s46FDaVHWH1PKbNbofgZ7vDlisgHp23/Qe0e81A=;
 b=ikUZafKibndi5Li+EJ9CkoI5rc9pSxxIJog/Cav6616wYQcNvX9o5JewPSqar+rcCdxbyFbq
 7e2gFazxc2JB58BcYeLZICjm17q0InL4pveo83I7zOtRu1oGzR6rSjIEjfAMp7ecd/cX3gBE
 zqWPxgrrq1qslfNU55ze8GG4LK8=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb1148.7fb244bdd960-smtp-out-n03;
 Thu, 19 Dec 2019 05:57:28 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2438CC48B03; Thu, 19 Dec 2019 05:57:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.68.224])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B9B8BC3863A;
 Thu, 19 Dec 2019 05:57:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B9B8BC3863A
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <0101016ed018cde9-da3dc3e0-de6e-4b18-9add-bc6f88511ab2-000000@us-west-2.amazonses.com>
 <20191211072053.GH3143381@builder>
In-Reply-To: <20191211072053.GH3143381@builder>
Subject: RE: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device
 node
Date: Thu, 19 Dec 2019 11:27:20 +0530
Message-ID: <000b01d5b631$30ae26f0$920a74d0$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQMb6H2dXQ8o6wUj3EGWt532+Zf66wHvDMacpSUYhgA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_215731_763065_CBDE7355 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I will raise the next patchset with the comments addressed.

> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: Wednesday, December 11, 2019 12:51 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-msm@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
> device node
> 
> On Wed 04 Dec 00:48 PST 2019, Rakesh Pillai wrote:
> 
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> > This change is dependent on the below set of changes
> > arm64: dts: sc7180: Add qupv3_0 and qupv3_1
> (https://lore.kernel.org/patchwork/patch/1150367/)
> 
> Why?

The mentioned series of patchset brings the DTSI for sc7180.
Hence the addition of wifi node is dependent on this series
https://lore.kernel.org/patchwork/patch/1150367/


> 
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  4 ++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> +++++++++++++++++++++++++++
> >  2 files changed, 31 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 189254f..8a6a760 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -248,6 +248,10 @@
> >  	status = "okay";
> >  };
> >
> > +&wifi {
> > +	status = "okay";
> 
> Please conclude on the representation of the "skip-hyp-mem-assign" and
> add it here, rather than in a subsequent patch - which implies that this
> patch doesn't work on its own.


Sure, I will update the next patchset.


> 
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qup_i2c2_default {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 666e9b9..40c9971 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -42,6 +42,12 @@
> >  			compatible = "qcom,cmd-db";
> >  			no-map;
> >  		};
> > +
> > +		wlan_fw_mem: wlan_fw_region@93900000 {
> 
> wlan_fw_mem: memory@93900000 {
> 
> > +			compatible = "removed-dma-pool";
> > +			no-map;
> > +			reg = <0 0x93900000 0 0x200000>;
> > +		};
> >  	};
> >
> >  	cpus {
> > @@ -1119,6 +1125,27 @@
> >  				#clock-cells = <1>;
> >  			};
> >  		};
> > +
> > +		wifi: wifi@18800000 {
> > +			status = "disabled";
> > +			compatible = "qcom,wcn3990-wifi";
> > +			reg = <0 0x18800000 0 0x800000>;
> > +			reg-names = "membase";
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
> 
> No iommus in sc7180?
> 
> Regards,
> Bjorn
> 
> > +		};
> >  	};
> >
> >  	timer {
> > --
> > 2.7.4
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
