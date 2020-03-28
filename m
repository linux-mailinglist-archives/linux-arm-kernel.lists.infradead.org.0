Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4835F196875
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 19:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCsolNxj4KutXfv8Pu70HWjJAL6N/0eQzFGXKfCK694=; b=O8iMmrLCGUeSPs
	UdJnYhGJBtQftKhRVyGE78svOa6Y+lKzuyx19ixqvdhUPEwFP/Hxi7O0Dk5iP8aY/P2nz6ztgbRj3
	KKoO0YveIYxYvLy4kS7jrcI/kAc4qDA58g8SXU6/pNRcj7VYvaYYTEMr6AEamVE69xQTtaQiFrlwN
	Wi2XFexlCcqEFHkW76ao96g11O+Eq+EgG+DQTtpPPWMQ5ECIXAPSalbqoV/cU8I0rWdIWd9I2TuzH
	tq+/W44IHdsvG0f4E8RD6rH/1tEmVDBGfpkSMcpm4oX7nSL0wFxzsUT48fIo+twLIbSsISYHq16BS
	tbDKOXAw7MPxI0xyoS7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGEg-00045N-PL; Sat, 28 Mar 2020 18:31:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGEX-00044R-Aw
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 18:31:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id c21so5645868pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 11:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+mVck/pOJv55KYF3ZzMyTGWgs0RFVKHx1LKbGb8RbSs=;
 b=bj4M59RKtnKKUaVQsWvI4u4nhhvyXqBegUEMmfvGKXIBT/mika1RpNwaWwGdABjLzu
 PeSQC2Yl7lqu+IJJl8x6vzppsEG8QEMztXC0LIAjp1v9FU2NPx+XdMCJw+jmd61ds2Nl
 iqzOUHjLA2yTibgvFUBRLUYtzTKkbmCHs/u57EqL332uswGIi+iTTmNCOAotm68VVlbd
 VfRuNm949tV4tyVoq+ouNy1HbzLKzDE4rM6qHY5mS7PKnK64W3GrNA8geQzMiOk/BupI
 aUBhsFQsxGhS7vjn9/PCWhe1j2VzrBOCgHUk1bGK9XJgJGBK9TyvwyNN31JojGWzluUB
 YKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+mVck/pOJv55KYF3ZzMyTGWgs0RFVKHx1LKbGb8RbSs=;
 b=LZNCJ8zk5kztWdeFiklcJoU3nxzlHz6I5tnUxAJknn2fmjIlRBR3YMo9REn++1x7b4
 qHMg+9JGsXpzEmsEq7qUvv1nXEZyQiQvJxZh4G2vsDdIfDnCEtTNS3pyEGLS4KFhPx2r
 9z5oZ0UiQpBw5c52S1fRehxBXUC4ct876Ci0u3YLMrMY4c1JYhWIye5ocql62Q9vn1Wh
 gANDZPZyTJl5FLEJwKXLVoHMpKnjdR3e55WKkdzjJpg9v5sLwqxlVOJcdXhWs2Df45IH
 Qe94/32JPhhkt7F2rBzBIQNuTiv6xe4kwI484L4uuYz41UqOagaHBSA3QFbkqB2hLfyR
 z5OA==
X-Gm-Message-State: ANhLgQ2x4L2bA+XsaD3Wqup2nHMXTeSn5dOtFGj+/aAgZUD9w+Sp2t4R
 ojUrDKy72RLCdnqzrqTylclQAA==
X-Google-Smtp-Source: ADFU+vvaKrpy0yv4Pq6rQuQ4KMnEp88icJyuuxyYhbQEtG7ooH+mR8DMcc8VezWIPH5TZPc9M4fJiA==
X-Received: by 2002:a63:7f05:: with SMTP id a5mr5336763pgd.327.1585420258811; 
 Sat, 28 Mar 2020 11:30:58 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 79sm6691688pfz.23.2020.03.28.11.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 11:30:58 -0700 (PDT)
Date: Sat, 28 Mar 2020 11:30:55 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: pillair@codeaurora.org
Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20200328183055.GA663905@yoga>
References: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
 <20200327230025.GJ5063@builder>
 <000101d604f8$afc48220$0f4d8660$@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000101d604f8$afc48220$0f4d8660$@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_113101_900257_BE7C890C 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Sat 28 Mar 05:01 PDT 2020, pillair@codeaurora.org wrote:

> Hi Bjorn,
>  Comments inline.
> 
> 
> > -----Original Message-----
> > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Sent: Saturday, March 28, 2020 4:30 AM
> > To: Rakesh Pillai <pillair@codeaurora.org>
> > Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-
> > kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> > Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> > module device node
> > 
> > On Thu 26 Mar 03:48 PDT 2020, Rakesh Pillai wrote:
> > 
> > > Add device node for the ath10k SNOC platform driver probe
> > > and add resources required for WCN3990 on sc7180 soc.
> > >
> > > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > > ---
> > >
> > > Depends on https://patchwork.kernel.org/patch/11455345/
> > > The above patch adds the dt-bindings for wifi-firmware
> > > subnode
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  8 ++++++++
> > >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> > +++++++++++++++++++++++++++
> > >  2 files changed, 35 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > index 043c9b9..a6168a4 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > @@ -327,6 +327,14 @@
> > >  	};
> > >  };
> > >
> > > +&wifi {
> > > +	status = "okay";
> > > +	qcom,msa-fixed-perm;
> > > +	wifi-firmware {
> > > +		iommus = <&apps_smmu 0xc2 0x1>;
> > 
> > How is sc7180 different from sdm845, where the iommus property goes
> > directly in the &wifi node?
> 
> Sc7180 IDP is a target without TrustZone support and also with S2 IOMMU
> enabled.
> Since in Trustzone based targets, the iommu SID configuration was done by
> TZ, there was nothing required to be done by driver.
> But in non-TZ based targets, the IOMMU mappings need to be done by the
> driver.
> Since this is the mapping of the firmware memory and to keep it different
> from the driver memory access, a different device has been created for
> firmware and these SIDs are configured.
> 

I see, I missed the fact that 0xc0:1 is used in the &wifi node itself.

So to confirm, we have streams 0xc0 and 0xc1 for data pipes and 0xc2 and
0xc3 for some form of firmware access? And in the normal Qualcomm design
implementation the 0c2/0xc3 stream mapping is setup by TZ, and hidden
from Linux using the SMMU virtualisation?


Would have been nice to have some better mechanism for describing
multi-connected hardware block, than to sprinkle dummy nodes all over
the DT...

Regards,
Bjorn

> The below ath10k series brings-in this support.
> https://patchwork.kernel.org/project/linux-wireless/list/?series=261367&stat
> e=* 
> 
> Thanks,
> Rakesh Pillai.
> 
> > 
> > Regards,
> > Bjorn
> > 
> > > +	};
> > > +};
> > > +
> > >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> > >
> > >  &qspi_clk {
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > index 998f101..2745128 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > @@ -83,6 +83,11 @@
> > >  			reg = <0 0x8f600000 0 0x500000>;
> > >  			no-map;
> > >  		};
> > > +
> > > +		wlan_fw_mem: memory@94104000 {
> > > +			reg = <0 0x94104000 0 0x200000>;
> > > +			no-map;
> > > +		};
> > >  	};
> > >
> > >  	cpus {
> > > @@ -835,6 +840,28 @@
> > >  			};
> > >  		};
> > >
> > > +		wifi: wifi@18800000 {
> > > +			compatible = "qcom,wcn3990-wifi";
> > > +			reg = <0 0x18800000 0 0x800000>;
> > > +			reg-names = "membase";
> > > +			iommus = <&apps_smmu 0xc0 0x1>;
> > > +			interrupts =
> > > +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0
> > */ >,
> > > +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1
> > */ >,
> > > +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2
> > */ >,
> > > +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3
> > */ >,
> > > +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4
> > */ >,
> > > +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5
> > */ >,
> > > +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6
> > */ >,
> > > +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7
> > */ >,
> > > +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8
> > */ >,
> > > +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9
> > */ >,
> > > +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10
> > */>,
> > > +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11
> > */>;
> > > +			memory-region = <&wlan_fw_mem>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > >  		config_noc: interconnect@1500000 {
> > >  			compatible = "qcom,sc7180-config-noc";
> > >  			reg = <0 0x01500000 0 0x28000>;
> > > --
> > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
