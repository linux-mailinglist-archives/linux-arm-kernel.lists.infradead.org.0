Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C012CC74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 06:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0VvpgVpX/zKmVSKDPil8tnXiOccuWXDWuLDMxmr2ws=; b=AvusOstjg4KRmK
	33ZSjLcYBrH/NJ53sXgoInVYLTG/NqnfM3z2wpSrdVDLpqOhwiqrjzVHAnzJoY5bmYXlbTEGqfkWB
	IzMczvr2Dogl6n0rlMJDCOnmY8RwpIS/DZ/dNQzVbwFb9pN2WdV9Szk+HOnmHK+oZv1f/v1XhRD5x
	Rj6W4pJICQaT8wK8UHjrx1mAYXIq+sc5fIbhTqewUiIebic3mLOBHSnozx2TWuj9pqQbofqZXwlEd
	LpmkumLouStMuskMKWP2nVrpWYoWUIkmy7jgoC/rpvjtrSx0Mmcqnuxdy3F7/FEP7OMSNOpQx4j4N
	otx7JHvxFTmsr1Slw6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnAc-0004XH-RP; Mon, 30 Dec 2019 05:00:46 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnAT-0004We-SS
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 05:00:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577682037; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=bq9GBo1exy5H5niGUOPp3ceZeVp8DhBy57oRJt6GY54=;
 b=Xz9lkBybgs+0cFTCr8Vtd+lzgl9kCQO62ZMxn7Fr0nefK+lJSqHA9GwvPYZRWJJdlnMvOhUI
 wn1EBTca+Oh3B5kxg6OElDmnc0umHe0MVocun9bmUQoLdDPVORogfXwjiw2jK+Gk09vqGK0Q
 WwMcqC2nri7Qiq0AVdtQBwUd3Wc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e09845d.7faefb24c8f0-smtp-out-n02;
 Mon, 30 Dec 2019 05:00:13 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C9D67C43383; Mon, 30 Dec 2019 05:00:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.68.224])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 53172C433CB;
 Mon, 30 Dec 2019 05:00:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 53172C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <1577181575-25788-1-git-send-email-pillair@codeaurora.org>
 <20191229031416.GK3755841@builder>
In-Reply-To: <20191229031416.GK3755841@builder>
Subject: RE: [PATCH v3] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Mon, 30 Dec 2019 10:29:56 +0530
Message-ID: <061701d5bece$044b6cd0$0ce24670$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRwFJlApFoTZl1gTtUmtjwT7YanQH7LU55p0pBkhA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210037_986773_22FFEED5 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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

Hi Bjorn,

Thanks for the comments.
I will post an updated patchset v4 after the patch bringing-in
"qcom,msa-fixed-perm" is merged/approved.
I will address all the comments together.

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: Sunday, December 29, 2019 8:44 AM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-msm@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH v3] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Tue 24 Dec 01:59 PST 2019, Rakesh Pillai wrote:
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
> It would be clearer if you linked to the series instead, but it doesn't
> matter at this point, this is merged already.
> 
> What doesn't seem to be merged is the addition of the
> qcom,msa_fixed_perm property, so I presume I need to hold off on merging
> this?
> 
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 28
> ++++++++++++++++++++++++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 189254f..b2ca143f 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -248,6 +248,11 @@
> >  	status = "okay";
> >  };
> >
> > +&wifi {
> > +	status = "okay";
> > +	qcom,msa_fixed_perm;
> 
> As remarked by Rob, properties should be using - instead of _.
> 
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qup_i2c2_default {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 666e9b9..7efb97f 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -42,6 +42,12 @@
> >  			compatible = "qcom,cmd-db";
> >  			no-map;
> >  		};
> > +
> > +		wlan_fw_mem: memory@93900000 {
> > +			compatible = "removed-dma-pool";
> > +			no-map;
> > +			reg = <0 0x93900000 0 0x200000>;
> > +		};
> >  	};
> >
> >  	cpus {
> > @@ -1119,6 +1125,28 @@
> >  				#clock-cells = <1>;
> >  			};
> >  		};
> > +
> > +		wifi: wifi@18800000 {
> > +			compatible = "qcom,wcn3990-wifi";
> > +			reg = <0 0x18800000 0 0x800000>;
> > +			reg-names = "membase";
> > +			iommus = <&apps_smmu 0xC0 0x1>;
> 
> Lowercase 'c' please.
> 
> Regards,
> Bjorn
> 
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
