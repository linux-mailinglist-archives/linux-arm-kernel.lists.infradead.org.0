Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAFD14C60D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 06:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7yce6a2n2FrTjaVnnCCRXoNVvIaekW6P4wD9U+849g=; b=s6VkH+NrMMvZ4L
	25e04Jvs18lVLiVpCIe3KTHhtdXLTUetndCeVMd3DdOxy51mREGVVkKFw13hRlVIKa0idNvOecoh0
	D7VpYfo15qKffl/lqbpjzeJ+jHN4kWv8PH2zPmjktPp+RBiNYSMjX6AXkK0tXjic5+Mj9K2BjHymV
	p/OROams9bP4ci/LvxeaQcp/uQZd7yhXAcpurLwZ4BrAFWDaNAzLDSFYR8Q8oMjpynTOPYrJn3ftm
	qsc1z5/rTAumMriophrvID9+J0/1AQHSkdbgmUaHg8ii4SaRv3Ggetceogtb6QHJum/K+Lzd0D6t2
	4PSqMTUU7TLSkVfiIFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgBp-00065g-Od; Wed, 29 Jan 2020 05:47:01 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgBf-00065A-5t
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 05:46:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580276811; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=Uia7eHgmOQeOEXkeVdlnBpq8/eBlSOChehhm3LLPNcE=;
 b=hUUwpQgKKKZRZlxYnY58P6se4/Vw6xVx+Ud4iu9IjMs0Di1bJNbsVbmefHSdHXoJb7PRT11D
 FH3JbCrguRutuKHzso9P1+lijCFx7b223+kDEk58he6wn6qNudmJsVJeDL8tHNkp1mrEIN+Q
 t86SCQDk4gfvPm4UY/HQ9qxnj/k=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e311c3f.7f4ebf586650-smtp-out-n02;
 Wed, 29 Jan 2020 05:46:39 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DF25CC433A2; Wed, 29 Jan 2020 05:46:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_DBL_ABUSE_MALW autolearn=no autolearn_force=no version=3.4.0
Received: from Pillair
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A407AC43383;
 Wed, 29 Jan 2020 05:46:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A407AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Matthias Kaehlcke'" <mka@chromium.org>
References: <1580207617-818-1-git-send-email-pillair@codeaurora.org>
 <20200128192027.GB46072@google.com>
In-Reply-To: <20200128192027.GB46072@google.com>
Subject: RE: [PATCH v4] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Wed, 29 Jan 2020 11:16:32 +0530
Message-ID: <000601d5d667$78f056d0$6ad10470$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJpUoH9UNBKfyz7+S0TRz+kcMMVewHZ23B3pstalZA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_214651_619398_CE715906 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Matthias,

Please find my replies inline.


> -----Original Message-----
> From: Matthias Kaehlcke <mka@chromium.org>
> Sent: Wednesday, January 29, 2020 12:50 AM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> Subject: Re: [PATCH v4] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> Hi Rakesh,
> 
> On Tue, Jan 28, 2020 at 04:03:37PM +0530, Rakesh Pillai wrote:
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 28
> ++++++++++++++++++++++++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 189254f..151b489 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -248,6 +248,11 @@
> >  	status = "okay";
> >  };
> >
> > +&wifi {
> > +	status = "okay";
> > +	qcom,msa-fixed-perm;
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
> 
> This part doesn't apply cleanly on qcom/for-next, looks like you have to
> rebase.

[Rakesh]: let me rebase it and send out the next version.

> 
> >  	cpus {
> > @@ -1119,6 +1125,28 @@
> >  				#clock-cells = <1>;
> >  			};
> >  		};
> > +
> > +		wifi: wifi@18800000 {
> 
> You added this node at the end of the file, outside of the 'soc' node.
> It should be inside the 'soc' node, the sub-nodes are ordered by address,
> so (currently) this node should be inserted after 'cpufreq@18323000'.

[Rakesh] Will update this in the next patchset. (Possibly this was caused due to rebase conflicts)


> 
> > +			compatible = "qcom,wcn3990-wifi";
> > +			reg = <0 0x18800000 0 0x800000>;
> > +			reg-names = "membase";
> > +			iommus = <&apps_smmu 0xC0 0x1>;
> 
> nit: the convention is to use lowercase characters for hex adresses.

[Rakesh]: Will change it.

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
> 
> not sure these 'CEx' comments after each interrupt add much value. What
> does
> 'CE' stand for in the first place?

[Rakesh]:   CE stands for Copy engine. These are the copy engine interrupts, hence the comments.

> 
> Thanks
> 
> Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
