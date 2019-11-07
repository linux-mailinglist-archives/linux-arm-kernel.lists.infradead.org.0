Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B7DF2534
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iVUXlh0eqibvfCUXgc/mxc0o6H0hGT45Ly40FHILzc=; b=MHxaxFg55y6mfp
	o/bWlNYOt3VAzJTeHtgTuyoTAItdv97c+xQW5UIji0BIFcnOlo73crjbaingcdGWmTYGugh75yIgO
	EUFQ8AtubckNWzZEJUEqqgV3zbJUsy38lntW4EjK2NFDKGrBtU8bqQi9778xTy29dAHLf/lNPCfHd
	fnBZ0NUj2PoM3jaT3yRrsJt3VKNe4ebFiypl1q883yKdJiOlVkeF4STyH4fZqiRT9UYWlWWezBmiN
	3h6TZHFE4L8FmPgxzpceU2hjZoohjEHPMwQFbJY/rSe7dFTSry+nvD3hD38Igr6/mKDyYaHQjgBHR
	D8BTtVADMafSc+2+M9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXPP-0001ES-Da; Thu, 07 Nov 2019 02:20:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXPG-0001Cs-5s
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:20:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id w8so374362plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 18:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H+QqKLPEQoeG1GGGgw3cHviviQT0DnHW7MBvGPeHz6k=;
 b=ArKI6GjaGqnXyXXJugquFesbMPo4+FgiRDM8C38iV5D242vyprAXN+S3nkmPK/OMVm
 SuIClw+4vYZMtzpL46SY9Q1c3tqqHMt0C8odoR6ghGzVtvoR1QVVjHRYjpR2GFqSu03K
 RoNm7pOKyX1kbfrT+ftQrMhpwUX2OZgavt9vT/tSLAOtvJJo4zc/k6uuAEQ/gt5nH3zl
 WaLigY0cKkQ+WUTN3M6i0YtWSKn2GA8f51dMOZawULnuJZ2X6p3irFUE5iLeE5YX4Csr
 fMucxcs03GCVx4tnBl1cSjKFf0ttE/ivjDB3O9/CHD/VLXG3Mxd7nKFHuRS3J9nizG/X
 NL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H+QqKLPEQoeG1GGGgw3cHviviQT0DnHW7MBvGPeHz6k=;
 b=EilKJZXhPhhp+P84ba7q/qNacCkaGUf19vXBf1KIr9j2CNxLwwVe+YbkQ6hd4sT9jk
 vfYt3MqUkbAzo4WkN1hrXVV9SJtSVr8SBbC+7T6QljLjI4skHBsXVB0kDPYpSs9/9s9m
 KYSGiE1o/YiFRAOx7ajpF2Yp+nt+vOhDSBu4QedhY5Dml9oQWZ7wYrNMFmk6O+ybqmM7
 a82kQfPPLInV8DPQMQC8+OBPPxLU8ru7Sz67JnHqcOUSEFAL7n0M4M/ZoJoPmDkHoivf
 URPA3PXVaET1WiPvLkA9GtJ6+0tq/5UsUCD77c+Bfv9jsctUiQCjk2r95Ya2tUgsjLub
 B3PA==
X-Gm-Message-State: APjAAAVUI+M5wjsnP9L5lRwAQ6cuZIh8uvBYPJYJmW7PaqKKTJaFYOR/
 v6ATDXCZ00cqkgV4iDngAmX2Hw==
X-Google-Smtp-Source: APXvYqw5NEouYeHvrSFPg8kUw7qbtEhGDZ0vtBPCr/SO2elR5vBWUuBiUcos9vmJW6rYBJKddhrR3w==
X-Received: by 2002:a17:902:8208:: with SMTP id
 x8mr1033222pln.232.1573093217114; 
 Wed, 06 Nov 2019 18:20:17 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id j126sm354534pfg.4.2019.11.06.18.20.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 18:20:16 -0800 (PST)
Date: Thu, 7 Nov 2019 07:50:12 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 06/11] thermal: mediatek: Appease the kernel-doc deity
Message-ID: <20191107022012.o7wfyoerhomc3ztu@vireshk-i7>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
 <2961e4ac4b32ea7db8b5f6916751a5c02ee85960.1573046440.git.amit.kucheria@linaro.org>
 <20191107021929.hsuyzswcl27n7wqt@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107021929.hsuyzswcl27n7wqt@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_182018_216132_1D557617 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, edubezval@gmail.com,
 Kukjin Kim <kgene@kernel.org>, Guillaume La Roque <glaroque@baylibre.com>,
 linux-pm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-11-19, 07:49, Viresh Kumar wrote:
> On 06-11-19, 18:58, Amit Kucheria wrote:
> > Replace a comment starting with /** by simply /* to avoid having it
> > interpreted as a kernel-doc comment. Describe missing function
> > parameters where needed.
> > 
> > Fixes up the following warnings when compiled with make W=1:
> > 
> > linux.git/drivers/thermal/mtk_thermal.c:374: warning: cannot understand
> > function prototype: 'const struct mtk_thermal_data mt8173_thermal_data =
> > '
> > linux.git/drivers/thermal/mtk_thermal.c:413: warning: cannot understand
> > function prototype: 'const struct mtk_thermal_data mt2701_thermal_data =
> > '
> > linux.git/drivers/thermal/mtk_thermal.c:443: warning: cannot understand
> > function prototype: 'const struct mtk_thermal_data mt2712_thermal_data =
> > '
> > linux.git/drivers/thermal/mtk_thermal.c:499: warning: cannot understand
> > function prototype: 'const struct mtk_thermal_data mt8183_thermal_data =
> > '
> > linux.git/drivers/thermal/mtk_thermal.c:529: warning: Function parameter
> > or member 'sensno' not described in 'raw_to_mcelsius'
> > 
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > ---
> >  drivers/thermal/mtk_thermal.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> > index acf4854cbb8b8..76e30603d4d58 100644
> > --- a/drivers/thermal/mtk_thermal.c
> > +++ b/drivers/thermal/mtk_thermal.c
> > @@ -358,7 +358,7 @@ static const int mt7622_mux_values[MT7622_NUM_SENSORS] = { 0, };
> >  static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
> >  static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
> >  
> > -/**
> > +/*
> >   * The MT8173 thermal controller has four banks. Each bank can read up to
> >   * four temperature sensors simultaneously. The MT8173 has a total of 5
> >   * temperature sensors. We use each bank to measure a certain area of the
> > @@ -400,7 +400,7 @@ static const struct mtk_thermal_data mt8173_thermal_data = {
> >  	.sensor_mux_values = mt8173_mux_values,
> >  };
> >  
> > -/**
> > +/*
> >   * The MT2701 thermal controller has one bank, which can read up to
> >   * three temperature sensors simultaneously. The MT2701 has a total of 3
> >   * temperature sensors.
> > @@ -430,7 +430,7 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
> >  	.sensor_mux_values = mt2701_mux_values,
> >  };
> >  
> > -/**
> > +/*
> >   * The MT2712 thermal controller has one bank, which can read up to
> >   * four temperature sensors simultaneously. The MT2712 has a total of 4
> >   * temperature sensors.
> > @@ -484,7 +484,7 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
> >  	.sensor_mux_values = mt7622_mux_values,
> >  };
> >  
> > -/**
> > +/*
> >   * The MT8183 thermal controller has one bank for the current SW framework.
> >   * The MT8183 has a total of 6 temperature sensors.
> >   * There are two thermal controller to control the six sensor.
> > @@ -495,7 +495,6 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
> >   * data, and this indeed needs the temperatures of the individual banks
> >   * for making better decisions.
> >   */
> > -
> >  static const struct mtk_thermal_data mt8183_thermal_data = {
> >  	.auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
> >  	.num_banks = MT8183_NUM_SENSORS_PER_ZONE,
> > @@ -519,7 +518,8 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
> >  
> >  /**
> >   * raw_to_mcelsius - convert a raw ADC value to mcelsius
> > - * @mt:		The thermal controller
> > + * @mt:	The thermal controller
> > + * @sensno:	sensor number
> >   * @raw:	raw ADC value
> 
> This doesn't look related to $subject

I take this statement back :)

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
