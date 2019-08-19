Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8707920EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 12:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXTAlKG372n6ujOvJgjNrye5AYoDVInnUUQ7BDgBhVw=; b=eeZ+qFjZdea6xW
	dFvVI6SEctZkwa2kAJvI2SRyG014O1Or5zB/+MSC9uh4FfIST0QC0EvAr0nOHvZV8e8FLRNHgnFEc
	cScGF6h0H7klA9EzCVKN1quDqGNGq90bAE0Q774v7OReMUJoi8zPwGrRxadHYC/pJd1Hqxn2DptAd
	HZp3apnygU3HEBPJ3QQkAKj/laXQT/zwFsvgJOMws4cIJ8Pxl6TRbDB1wXbefRgRzktUfZfABjuL2
	a2MhgVQ4HvK5ViiKmxrvJ5CzZuDJOPNhr6JmFWaN/VunhgmBw+WDQ1HdQu2YBxlrBcaq4v4npmfzZ
	DNFG0cSllP90c4GqAf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeZD-0001A3-Ae; Mon, 19 Aug 2019 10:07:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeYs-000198-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 10:06:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id 196so892932pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 03:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6YMARnBm7B+MKOmk57BApjS/es/AZIVLPWfQBAL1uiI=;
 b=Ltly77eya2ZHkenw1lFaLukEhxN4gMQEVwOD4aajtliH0GlevR+LzfnfINIbGZldt+
 mHPxjruDnwwIvRd6gq3XnLiTHK2LImnTWnSIb+B+aFkBTnq8MHl0pNBcZ+Ce4FM09cp8
 ihEUSX6luQqwhsFviNrt8LTKObfhBe1Fqpm7Q0yewHvewovh+4DdcK4oiobEUB0hMsML
 outXNkNvFunIK0jD+hq47Kz/r9r5meCFBIVov84gs4XdwKhVA2VAaMJ1K+TI4nmQ5eeR
 cJY3Y7yo4U5sR4IZh3Ke1gn/JiYPrlO3KVT3L2UYghXy89dV2GnwoLwzYP3VtM1O9ltK
 1eNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6YMARnBm7B+MKOmk57BApjS/es/AZIVLPWfQBAL1uiI=;
 b=CT4pj8hlAWrNGI7BKcfOWtBClN/r+AnXRCxmbtZlCwsFrj0EhIdWJh9ZVxA0rSdn3D
 ffohQg4ZQLn94DNcrFVBvtC6H2JBCb0xFkNr1gLJnKCZwj9kkyiggWoVN6C5CLdhYFw2
 VpypBMR8LWbeukasEueBW7/71KaC7yeapq+cQsZKikSebda3CVb0hmhCVTGWQdiWYpqG
 zPwNMk/52iGNs6m26wwQGBgMQGHMQGW96vTQRWw7R+HSpl3441q3n+zdfFTYdUPoU8DU
 caTeGigzx1tU9vHpbsqyLdonhFPs1tIIZTEMN4STipoP/MIMDvAvozw6pZBgIBtrmoEQ
 VwCA==
X-Gm-Message-State: APjAAAXHHMGKTlCpeLz61ZiYPgLLOYHAAvecTmbo5opjSMIoiw5ZORiR
 eub3dAQaHL10CnHpstAW3hn1ww==
X-Google-Smtp-Source: APXvYqzreJijvk3uX+BNwXXnkkyRrE/6662mwuSEGeb1CmdC9G2lWBgGtyuYEOtScyn90y57Rn3mlQ==
X-Received: by 2002:a62:26c4:: with SMTP id m187mr23960820pfm.49.1566209205119; 
 Mon, 19 Aug 2019 03:06:45 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id 11sm21266551pgo.43.2019.08.19.03.06.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 03:06:44 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:36:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190819100642.tvnzt6d5rikugycr@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819090928.pke6cov52n4exlbp@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_030650_288182_C550747C 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-19, 14:39, Viresh Kumar wrote:
> On 09-08-19, 17:58, Sylwester Nawrocki wrote:
> > Thank you for your suggestions.
> > 
> > For some Exynos SoC variants the algorithm of selecting CPU voltage supply
> > is a bit more complex than just selecting a column in the frequency/voltage 
> > matrix, i.e. selecting a set of voltage values for whole frequency range.
> > 
> > Frequency range could be divided into sub-ranges and to each such a sub-range 
> > part of different column could be assigned, depending on data fused in 
> > the CHIPID block registers.
> > 
> > We could create OPP node for each frequency and specify all needed voltages 
> > as a list of "opp-microvolt-<name>" properties but apart from the fact that 
> > it would have been quite many properties, e.g. 42 (3 tables * 14 columns), 
> > only for some SoC types the dev_pm_opp_set_prop_name() approach could be 
> > used. We would need to be able to set opp-microvolt-* property name 
> > separately for each frequency (OPP).
> > 
> > Probably most future proof would be a DT binding where we could still 
> > re-create those Exynos-specific ASV tables from DT. For example add named 
> > opp-microvolt-* properties or something similar to hold rows of each ASV 
> > table. But that conflicts with "operating-points-v2" binding, where 
> > multiple OPP voltage values are described by just named properties and 
> > multiple entries correspond to min/target/max.
> > 
> > opp_table0 {
> > 	compatible = "...", "operating-points-v2";
> > 	opp-shared;
> > 	opp-2100000000 {
> > 		opp-hz = /bits/ 64 <1800000000>;
> > 		opp-microvolt = <...>;
> > 		opp-microvolt-t1 = <1362500>, <1350000>, ....;
> > 		opp-microvolt-t2 = <1362500>, <1360000>, ....;
> > 		opp-microvolt-t3 = <1362500>, <1340000>, ....;
> > 	};
> > 	...
> > 	opp-200000000 {
> > 		opp-hz = /bits/ 64 <200000000>;
> > 		opp-microvolt = <...>;
> > 		opp-microvolt-t1 = <900000>, <900000>, ....;
> > 		opp-microvolt-t2 = <900000>, <900000>, ....;
> > 		opp-microvolt-t3 = <900000>, <900000>, ....;
> > 	};
> > };
> > 
> > I might be missing some information now on how those Exynos ASV tables 
> > are used on other SoCs that would need to be supported.
> > 
> > There will be even more data to include when adding support for the Body
> > Bias voltage, for each CPU supply voltage we could possibly have 
> > corresponding Body Bias voltage.
> 
> Will something like this help ?
> 
> https://lore.kernel.org/lkml/1442623929-4507-3-git-send-email-sboyd@codeaurora.org/
> 
> This never got merged but the idea was AVS only.

Here is a recent version under review.

https://lore.kernel.org/lkml/1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
