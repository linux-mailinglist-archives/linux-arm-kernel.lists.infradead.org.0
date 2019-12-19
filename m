Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EC4125BF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 08:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxcJ5aGEu5ESdFrfRJ9HTFKmHUN0h9/UKGfDUWIOUPo=; b=NDLOD4kzb6/4+w
	+414MJ4O1HrU3gVWR0gYWsLk8fOYQmPlKNwTxpkJNMq2qBPZ9OYQvdNpCn93Nhws9HnfE2B15vV4q
	w3Iw1gCWUAMumbzOzF7FHPCU+Nv5ssZc5sO3a3PqgQlDLOsX+egoqduc6HAvTVXXBAFGpgG9H2Rey
	aW915ikJMvPf4NS5FVLu/Teo07Ww/aJOow13P0wqhd63Uzj/yFxvQ51E9YV9lXh2rigxQgcOnEaB9
	vn8PycWmPlHW0hqUkcLnKdH3SQCIhYkD6swz/VGfFSu2VbSx2uSbk+mDp4qL3Yrx850xpTlFtDte0
	0oxkVIHK1z48s+Lc0CbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihq74-0005zO-TW; Thu, 19 Dec 2019 07:20:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihq6u-0005yo-2i
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 07:20:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id z3so2140137plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 23:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kscgx3K8f9rm17CyfQ9LRYgvhZGZDTucQRqu6s3cXY8=;
 b=wUlqPM9OwvDSBUIguTphIAJetJoP7jzTbb4OIqI84eMHS3lsLy9/5tzHTOqCO7QIBw
 pJrS4iyWynSx5Lp6ccLVem+BqrD+MswvsMg3CoCWPsAo3Yu1MYcq4AOiYJmSYjzndq27
 EG+ib26O/X9xpIikIHi8G8mpEGH4B/tgc8M5+/u+wlWdqZZDwPgd/fVxwmw5G/1Rz5lh
 G4rXxgcmbAF4OVt44n+PpRTdze8k8ywufIRjdT5XJwifVPC1Zsp4Z2ZmBQsbaf0kIFj/
 nCJDLd5WCeDxqpRrB0ZlG/AJsmk+VA2atptI2W8+sXubVQiLg7pK2rQHCDq/P/TR6TMK
 nP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kscgx3K8f9rm17CyfQ9LRYgvhZGZDTucQRqu6s3cXY8=;
 b=O2/ACTJcBm9K1JuTsIvu6RB8btUbGeKEOGYBk85BCFTNGZiZXye5rds+w0tQntO9eC
 kKFuMm90ydHIOO+otDQlsT4MxZTiFKZWsedx/h50FhcXo1j8KqYpbAQmsSd7GzaNAKqS
 AuZAGqkmrxxzN9GzPAQWDhK70j8VqQUQOfg1/Wi1wWmbK92GE2h6+RkxK+B+fFR4+IyC
 kuWnLOHxkcqdHEeFg0m3Sn+z7FELeyZXWBRo2Y86a1ZzTTNTVQs57Kv41kTxXs/xQ+zZ
 2VvWJXkP5CE7Kcr/x2f3tVMdQ3u8WCT9Vw7ujZJ4JQsLmemZ5TogNEjgcN+Z02ArOv+w
 3mYQ==
X-Gm-Message-State: APjAAAVRh9gsWhkKFQo3E2nfvRC6UCp7P29iAMp6W6XOeT0AaDTcGfhU
 vG1WD6X3s10DMcOLAs1pvcaRBA==
X-Google-Smtp-Source: APXvYqwZDaVVbLJc92e8Bk8x6mCLD0JaErRln4COlsW6/zlSXZ0qymPWOOzXN9QDcgGQYfvmGi86Nw==
X-Received: by 2002:a17:902:7d84:: with SMTP id
 a4mr7303034plm.97.1576740034787; 
 Wed, 18 Dec 2019 23:20:34 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q6sm6515119pfh.127.2019.12.18.23.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 23:20:34 -0800 (PST)
Date: Wed, 18 Dec 2019 23:20:31 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: pillair@codeaurora.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device
 node
Message-ID: <20191219072031.GH448416@yoga>
References: <0101016ed018cde9-da3dc3e0-de6e-4b18-9add-bc6f88511ab2-000000@us-west-2.amazonses.com>
 <20191211072053.GH3143381@builder>
 <000b01d5b631$30ae26f0$920a74d0$@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000b01d5b631$30ae26f0$920a74d0$@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_232036_128697_103A751C 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed 18 Dec 21:57 PST 2019, pillair@codeaurora.org wrote:

> I will raise the next patchset with the comments addressed.
> 
> > -----Original Message-----
> > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Sent: Wednesday, December 11, 2019 12:51 PM
> > To: Rakesh Pillai <pillair@codeaurora.org>
> > Cc: devicetree@vger.kernel.org; linux-arm-msm@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
> > device node
> > 
> > On Wed 04 Dec 00:48 PST 2019, Rakesh Pillai wrote:
> > 
> > > Add device node for the ath10k SNOC platform driver probe
> > > and add resources required for WCN3990 on sc7180 soc.
> > >
> > > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > > ---
> > > This change is dependent on the below set of changes
> > > arm64: dts: sc7180: Add qupv3_0 and qupv3_1
> > (https://lore.kernel.org/patchwork/patch/1150367/)
> > 
> > Why?
> 
> The mentioned series of patchset brings the DTSI for sc7180.
> Hence the addition of wifi node is dependent on this series
> https://lore.kernel.org/patchwork/patch/1150367/
> 

I see, this should all be settled now. Looking forward to v2.

Thanks,
Bjorn

> 
> > 
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  4 ++++
> > >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> > +++++++++++++++++++++++++++
> > >  2 files changed, 31 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > index 189254f..8a6a760 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > > @@ -248,6 +248,10 @@
> > >  	status = "okay";
> > >  };
> > >
> > > +&wifi {
> > > +	status = "okay";
> > 
> > Please conclude on the representation of the "skip-hyp-mem-assign" and
> > add it here, rather than in a subsequent patch - which implies that this
> > patch doesn't work on its own.
> 
> 
> Sure, I will update the next patchset.
> 
> 
> > 
> > > +};
> > > +
> > >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> > >
> > >  &qup_i2c2_default {
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > index 666e9b9..40c9971 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > > @@ -42,6 +42,12 @@
> > >  			compatible = "qcom,cmd-db";
> > >  			no-map;
> > >  		};
> > > +
> > > +		wlan_fw_mem: wlan_fw_region@93900000 {
> > 
> > wlan_fw_mem: memory@93900000 {
> > 
> > > +			compatible = "removed-dma-pool";
> > > +			no-map;
> > > +			reg = <0 0x93900000 0 0x200000>;
> > > +		};
> > >  	};
> > >
> > >  	cpus {
> > > @@ -1119,6 +1125,27 @@
> > >  				#clock-cells = <1>;
> > >  			};
> > >  		};
> > > +
> > > +		wifi: wifi@18800000 {
> > > +			status = "disabled";
> > > +			compatible = "qcom,wcn3990-wifi";
> > > +			reg = <0 0x18800000 0 0x800000>;
> > > +			reg-names = "membase";
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
> > 
> > No iommus in sc7180?
> > 
> > Regards,
> > Bjorn
> > 
> > > +		};
> > >  	};
> > >
> > >  	timer {
> > > --
> > > 2.7.4
> > >
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
