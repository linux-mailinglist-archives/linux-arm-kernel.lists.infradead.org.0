Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5E8F5CD9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 02:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wM4GqHYP6OzUPOb/z/HGuLlHYU7UR0Wd+W2XfMspV/Q=; b=LuanzX5gSWqdgc
	KiOrrFW14luu4TMFJBkuYJRfK/KT6ROEMm7VNe83lcr8gZwaaQfe8SyqF8vhSB38uADMFsj+tI7Aw
	dljieFvUHXkLft/vU9rmTtji0brK1em1XGk01mssIvpxy8P8XDV8tDXfFULjvgf/Cgt+/hYXHlR5M
	yaEyR+k3ROCVS0U7VqSkyZmxKqU9mCSf2kkREIqU640kqgDf9ko/ErkJ1cWbM8pLTEPpsouW3jeRC
	9482X7kiZzTNTOehWv39BFzi7dCbB0OvEPDLBX75zLzfuQlOL6Iiq24Y69DtWZP+caL+lFg2lwPSR
	yOyrfRYkaB/B03gfvdsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTG0a-0008O2-Ls; Sat, 09 Nov 2019 01:57:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTG0T-0008NU-TA
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 01:57:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id g8so908916plt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 17:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wABmcIUMWqa+dvchqrcCmAVK5Fqcc0dVO4cUH6ycLOw=;
 b=vw1HQQNkKqAAL/e97In4V441WtCpDoo1dWsCAtylvAvld0m4gl3WvhUMz57VkU7MD6
 INXsxbXWV/nhZjUCMMHB6HDODS7AQiB8BVFwCXw78O6yHRsam7S3keYN36wSoXYMcBVx
 JWlkcx+NYX8U4fP22eBC8A8PcPrhkY0gREssaqwsfGqE1edZ+MZY5hxDeceYqZGUT7YC
 WZMxUjlNyH6YPlgAMGsn7d6dAdwueervyw/tH6go2EtHqaNsr/wr0F9M5EYjMng466ng
 5qzk89NywTn+L1AxJ36H4WrU6c3+dviIpEBv20Ni2JDuFx1hl5P2L4rvTX/jWmCBUnwe
 rHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wABmcIUMWqa+dvchqrcCmAVK5Fqcc0dVO4cUH6ycLOw=;
 b=UUND7PY4OT+fXIaaH3owEHmo7/tYcVUzi290zmAlQ6+ETRLdqwv46JonkQVIO7gwLi
 UI69VHp/fOr8wtnhXq1oHoEhgwkrLbDlaN7Ca2KX8FeL2CANDgGXjvf367c2xDlM/Pi0
 dYf+0tZ2DrGLzf4xHMq+by9cdQaLtVM+v4nrFTJFCP+mpmiBX8w6k+1kbkw81qA2SmWe
 sj/yLjvXqZ19X7gIHsdGIxQAQo6ipKHFeQCe/2ad7DVfKbgn9aJBlUFyoqO3DXhf2asN
 NXJ/MhnUs3Q9qgRaLPQQSDeFfzKfpKiDofxas47ezVmoP07WCQw02eAGMPWrw5ExFvAg
 W+bg==
X-Gm-Message-State: APjAAAVkCB7FrEsiBucp8CV39nK6r3at5R0Ql1jegSsUkkgwgk85wBsT
 huVx8ri9g631SzBNbmHJ1Rd7vQ==
X-Google-Smtp-Source: APXvYqxpl+7pNkv2HTiAT0aIk1CC1Hfq/h+HZM4z6Q14XJeWhCwfLOpTT/n1edlNqbWV9FMcx9ta8g==
X-Received: by 2002:a17:902:7793:: with SMTP id
 o19mr14249657pll.335.1573264660540; 
 Fri, 08 Nov 2019 17:57:40 -0800 (PST)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z62sm10131303pfz.135.2019.11.08.17.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 17:57:39 -0800 (PST)
Date: Fri, 8 Nov 2019 17:57:37 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Brian Masney <masneyb@onstation.org>
Subject: Re: [PATCH v2 1/4] ARM: qcom_defconfig: add msm8974 interconnect
 support
Message-ID: <20191109015737.GB5592@tuxbook-pro>
References: <20191024103140.10077-1-masneyb@onstation.org>
 <20191024103140.10077-2-masneyb@onstation.org>
 <20191109004310.GA4494@onstation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109004310.GA4494@onstation.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_175741_970051_50B75B66 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, agross@kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 08 Nov 16:43 PST 2019, Brian Masney wrote:

> On Thu, Oct 24, 2019 at 06:31:37AM -0400, Brian Masney wrote:
> > Add interconnect support for msm8974-based SoCs in order to support the
> > GPU on this platform.
> > 
> > Signed-off-by: Brian Masney <masneyb@onstation.org>
> > ---
> > Changes since v1:
> > - Set CONFIG_INTERCONNECT=y since its now a bool instead of a tristate
> > 
> >  arch/arm/configs/qcom_defconfig | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> > index 9792dd0aae0c..cbe4e1d86f9a 100644
> > --- a/arch/arm/configs/qcom_defconfig
> > +++ b/arch/arm/configs/qcom_defconfig
> > @@ -252,6 +252,9 @@ CONFIG_PHY_QCOM_IPQ806X_SATA=y
> >  CONFIG_PHY_QCOM_USB_HS=y
> >  CONFIG_PHY_QCOM_USB_HSIC=y
> >  CONFIG_QCOM_QFPROM=y
> > +CONFIG_INTERCONNECT=y
> > +CONFIG_INTERCONNECT_QCOM=y
> > +CONFIG_INTERCONNECT_QCOM_MSM8974=m
> >  CONFIG_EXT2_FS=y
> >  CONFIG_EXT2_FS_XATTR=y
> >  CONFIG_EXT3_FS=y
> 
> Georgi: Since Greg wants to allow compiling the interconnect support as
> a module [1], should I change CONFIG_INTERCONNECT to be a module? Or
> leave this as is? The GPU works fine with interconnect as a module on my
> phone. I know it's more for the cpufreq case.
> 

This is the qcom_defconfig file, so it's fine to leave it =y. For the
multi-platform ones we should do the specific drivers =m, where
possible.

> [1] https://lore.kernel.org/lkml/20191107142111.GB109902@kroah.com/
> 

Thanks for the pointer, I don't think this is a good idea and did reply.

> Andy/Bjorn: This series didn't get picked up for this upcoming merge
> window. If it's too late for this window (which is fine), then I'll
> hold off on resubmitting this until rc4 since I'll most likely have
> more device tree changes by then.
> 

Sorry for missing it in the final preparation for v5.5.

I don't see anything among these patches that would require you to
repost the series, either we pick them up for another PR (although it's
rather late now) or we'll apply them as -rc1 lands (for v5.6).

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
