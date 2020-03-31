Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9D4199E3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJiPYOH7ZO2+1tTUY3SBbOe2/UBtkXQUyDMffe71Fug=; b=cNTIgi1lY27auf
	xKE9gdatBHAFhja86bN3krKYqF09YoA5O1flQcnIS08JXBiXuIJZynlX38ayAjnVY2Pz5fuogQS8w
	M+Y7zb7oEG3gOoJOcDP9D0qcUM1ZBIXsZun0LiqfbmrSECRSKYA0dnqZAQk4VTWqUBuodaRz5aDn0
	cI1zxfJcZBDRkkpnkKvYNfFQ8Kg5tjCXuN/3FBuODc+UHh9MAHSlMdECd2e3FOp59sUXkMNj3Sf8u
	z440c1UTpi0EfETwtJGnGF62rYFh3g9dcKQPjmNt0uFs4yEVgkIIpBVyPNADLKsbJWPXTi/i12FUs
	LEO+hNZHaCTUocFkkpCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLoW-0002SL-T3; Tue, 31 Mar 2020 18:40:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLoJ-0002Rm-H6
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:40:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id u65so515380pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BiFlrx2jci6UF/44wjMJRVvmGi3zYDtbTuZw76ofS9M=;
 b=vTD9J09LOf7YaKpipJJDrND2YBBqrJCrokT+YirTJiDmBCrXSEte4ecos/ucAha3yU
 Gg8STR6sCIRMljfMemjURNJ7wDHYDK6srFfQMLyVAoe7cH2R5XV25criDj6PpGB+DQDP
 gTFjnucSamy6DZk8q/6MJ/WNjs5N1oSqTdng6KM9E+GKLjrcb27i0CddZhEDygJVLS6H
 5LuChaiCe53Ho9X/DZtDglzHhPdz0aFauosokOuLsa941Xk659PoHyaMmNLUk7NRpzvy
 ZQ23pmTUl9qKF5NprxcAYwfyhaxDpAVjba1eucGXDIxg1HVnVXqa3uZ4moml+KHZ91iC
 ta8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BiFlrx2jci6UF/44wjMJRVvmGi3zYDtbTuZw76ofS9M=;
 b=Z6JGA9ZmvCsUO9/FQHfVuDkYMztQ8hARazFdKNKRY4QJMnBomeYv/j3fhtJ/0A0w6i
 Z/CV4jDH8QB42c9lcIaTHJ1P1q9KoY4jcWfbGUpgdUr6ZoW4mDkqNvjKeebgoAihqU/G
 fobK8wVh60qkGPUH+S+d8w3pfIIWf/PKew5+MENhysb6h+FuIateUnUaoo2QX37YrE8x
 Y0k3xCdvK0hrCbTGyHGJY5isqIWvmWTJs6qOml0k+cAHfBo+C4xk3CwtbMIPqES+wtb1
 MF5eL7RVZ6uyX6j6h3pNjIW/3yEzn37urElbMiPP/f85CNu7xvK8edXpWJGmj8qlQqQl
 V6uA==
X-Gm-Message-State: AGi0PuZFt36Xavt7SYt+CEnTPjAHS56nIvCFKg3yUomlGstrRK/LFXxd
 SHG7inCaBHNW/ftZZosAFexfOCQYhQI=
X-Google-Smtp-Source: APiQypKUNpAzOq4pKgWQBvZIXbKQl122MMmvgDMFQ7moe2HCfS52TO3xMq7di1tLyj/TuRnpFvvq6A==
X-Received: by 2002:a62:ee15:: with SMTP id e21mr6219077pfi.90.1585680026497; 
 Tue, 31 Mar 2020 11:40:26 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g7sm5951509pfo.85.2020.03.31.11.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:40:25 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:40:23 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: pillair@codeaurora.org
Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20200331184023.GB267644@minitux>
References: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
 <20200327230025.GJ5063@builder>
 <000101d604f8$afc48220$0f4d8660$@codeaurora.org>
 <20200328183055.GA663905@yoga>
 <000301d605ba$3d034a10$b709de30$@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000301d605ba$3d034a10$b709de30$@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_114027_578297_363B6AC7 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sun 29 Mar 04:07 PDT 2020, pillair@codeaurora.org wrote:

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
> > > > Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
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
> > > Sc7180 IDP is a target without TrustZone support and also with S2 IOMMU
> > > enabled.
> > > Since in Trustzone based targets, the iommu SID configuration was done
> by
> > > TZ, there was nothing required to be done by driver.
> > > But in non-TZ based targets, the IOMMU mappings need to be done by the
> > > driver.
> > > Since this is the mapping of the firmware memory and to keep it
> different
> > > from the driver memory access, a different device has been created for
> > > firmware and these SIDs are configured.
> > >
> > 
> > I see, I missed the fact that 0xc0:1 is used in the &wifi node itself.
> > 
> > So to confirm, we have streams 0xc0 and 0xc1 for data pipes and 0xc2 and
> > 0xc3 for some form of firmware access? And in the normal Qualcomm design
> > implementation the 0c2/0xc3 stream mapping is setup by TZ, and hidden
> > from Linux using the SMMU virtualisation?
> > 
> > 
> > Would have been nice to have some better mechanism for describing
> > multi-connected hardware block, than to sprinkle dummy nodes all over
> > the DT...
> 
> Yes, this is the firmware memory. This method is followed in the venus video
> driver
> https://patchwork.kernel.org/patch/11315765/
> 
> Do you suggest following some other mechanism ?
> 

After considering this some more, and having a quick chat with Arnd
yesterday, I don't have any other suggestions.

So I will pick up your v8.

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
