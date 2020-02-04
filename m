Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA75151E65
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 17:37:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7PSmq7D7XFTJafnu7Hypl7T9eqA+S5iWkSTaMuQvZw=; b=ZqCO9X0bAKpvCA
	yaCYMjZ+m0nFCE1yD2Cf55XkNJzDd010fn4W9KRIek9LvJ/RuxgMTmnQRtxOOmUyBMi5rgy3iCopP
	Fkgz4+42ay6qiWfOlYfhEm+yUH8t3f19I5oG7w7PEFmeXKgwh1UmnpEyOjnaQ0GqJ7EsH9TsekeN/
	IU37p4Jb9NYYqRFFVAwUItmPCZEPx4mUlZqHD/5OUDOa54nbF0kFuisvhArT/5WaTuh5cUwCcWL0g
	otc16GCCNC2+8Larx1RDG8nuHKbDfS+ooy8cZCmOupzSfT24tZuyuGa54iOrX0EwClYtqOKBAXFOy
	wviLUf+js+Yv0k1EWqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz1CV-0004sE-G8; Tue, 04 Feb 2020 16:37:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz1CO-0004rY-07
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 16:37:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580834234; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=agoXjFrnTmxkOUbSigXOO4ODx6+TcOAJBzPUjhLzlBM=;
 b=d+oSMv8hHDjbHLuwjkBIKcjvQ3rrYid8JLBs6IVkyKUUnegBuNT9x9WS/CeWJZ4ZdNybl+3L
 2j8ADFfnHNaz/OKgeVDWgQes0HBNdtQMu2bRXhRBDDvheV2DObBuuqJ47n9ZVOBvk5d9fSCf
 WdJO2dCPvauVcMvWSydULkRe+TM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e399db5.7f42e5070030-smtp-out-n03;
 Tue, 04 Feb 2020 16:37:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E06C7C433CB; Tue,  4 Feb 2020 16:37:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_DBL_ABUSE_MALW autolearn=no autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.68.224])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 68156C43383;
 Tue,  4 Feb 2020 16:37:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 68156C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <1580281223-2759-1-git-send-email-pillair@codeaurora.org>
 <20200203173500.GB3948@builder>
In-Reply-To: <20200203173500.GB3948@builder>
Subject: RE: [PATCH v5] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Tue, 4 Feb 2020 22:07:02 +0530
Message-ID: <000001d5db79$5814edb0$083ec910$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHPh76zXXDoz9WIzFQCmi0NWmaUmALbmOLiqAEGNCA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_083716_104053_ECF241A6 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
I have addressed your comments and sent out the v6 for this patch.

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: Monday, February 3, 2020 11:05 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> Subject: Re: [PATCH v5] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Tue 28 Jan 23:00 PST 2020, Rakesh Pillai wrote:
> 
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
> > index 388f50a..167f68ac 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -287,6 +287,11 @@
> >  	vdda-pll-supply = <&vreg_l4a_0p8>;
> >  };
> >
> > +&wifi {
> > +	status = "okay";
> > +	qcom,msa-fixed-perm;
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qspi_clk {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 8011c5f..0a00c94 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -75,6 +75,12 @@
> >  			reg = <0x0 0x80900000 0x0 0x200000>;
> >  			no-map;
> >  		};
> > +
> > +		wlan_fw_mem: memory@93900000 {
> > +			compatible = "removed-dma-pool";
> 
> Sorry for not spotting this earlier, the "removed-dma-pool" compatible
> is a downstream thing and isn't defined upstream.
> 
> > +                     no-map;
> > +                     reg = <0 0x93900000 0 0x200000>;
> 
> If you swap the order of no-map and reg in this node it will look like
> all the others.
> 
> 
> Apart from that the patch looks good.
> 
> Regards,
> Bjorn
> 
> > +		};
> >  	};
> >
> >  	cpus {
> > @@ -1490,6 +1496,28 @@
> >
> >  			#freq-domain-cells = <1>;
> >  		};
> > +
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
> >  	};
> >
> >  	thermal-zones {
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
