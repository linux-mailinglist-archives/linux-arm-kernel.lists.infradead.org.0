Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAA09223B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEqmpv+HGIieZbZvthAS9LdFzG72nXhzS45bHntRW2U=; b=Va4cgVDitbLrlB
	dHUPq2kf4l5dO5XZQA1edFuclwgtvciVTLu2VzoD5QvTDhphGgBQEba3COddMC4fc2hNl8xh9zmth
	2ZkqdP59jDVIy9peN2xrkuLDf79WdZcbZBPE3yYkmZ2WzJ6oXOUQ+yAxlf2RdSAflynnhhj2fuEJe
	nRlbETWMqpUwi3dhPKxkKasBl+XIXWXUtF2Bt8G76g0/7IMIifh2NsMkAj1Xzcvn5Bb8aRceWpIFJ
	cnQjZhwaBJW8PI/C1Wd2BptDI7dcWPcM/yePvhBQrY59DRAlc7FmAjNIaYsulv4uaiMqRtkhqMVD7
	tMh+4kSSmhny/KXYxh+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfnF-0006oD-8E; Mon, 19 Aug 2019 11:25:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfn7-0006nU-O9
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:25:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so1014890pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 04:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SRz2qLg3b+5ryCMRr2awnBnODV1H2CKHh3/qqtN+h2g=;
 b=lD+FTcFa1U9Of+5ZNZJ4YzlGWcZ8HOoCw+P7Jzn4XSaWCEbXSy/g2lO+F2ffBaBafe
 292sSYMHHbv0QCQB7XFFf8fwAaH0ALND8k/JZkSr/H3gLdiFUVqwRTFfvtVdHfQZc7Lm
 G/idNOcBUhb+WqQrmkWp2fwQ21qbAwXofZB1HOBJCIcuj1jYmCYHV/Qtt3Fdyypzblpc
 TX9ffHnGRwEMO7hL9oMp/6BMI2dHpkk5UcPBQIqfBAsD4re9WiGlQ8JNtCjoO4kdBUv/
 dLpWghx1aCOIscxqykPKATABc9EUpyLTFXlRqHB81XgqNGSWQIboH8b5OfXK7BElzCDh
 lbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SRz2qLg3b+5ryCMRr2awnBnODV1H2CKHh3/qqtN+h2g=;
 b=UK38xsRAPtEB8rr1F8QLNPid1p5P1Gg2INVF/AibWiIBmFCEqGhrB122Nsn4bP0cik
 v0PP3T+dCEyu0ZR7t2sUILf0jPuWRseQqOg9ohsxK1HoJptO3S67Co7vT8SL82hM5x/C
 vzVY1aNVNoiAdSYngNtBAXoLRDQNMavSK9pDeGmiCuP7gqAVyeFGIxwwSGj0eRX5EdMQ
 dvoxwh7Zi9Dy9Dy6n8obMmlelGmYKXQtK1gAFK4iR5YXsAB9M+MOSg0K+OZAJo4CBzdy
 wePmGmbt0p5PsaLrowV4Nhh06QG0xFEztnJd5ewzYD2BhJKJyzTZoFXrNWMEIMN75lzw
 GXsg==
X-Gm-Message-State: APjAAAUjhJpojQWQB/1xfoc9a+gVi3hSmYa9o3duiv5UtDlFVUcPgqK4
 +ai4Z1Hg0XorgxzyUj2gtD7I/Q==
X-Google-Smtp-Source: APXvYqyAkY+QkAa+fLhBUiqT2uTFDrLHRUyWTSqggEurMHSU6YVq9XlEShl2Oc8P09iG+AuUVAQXtw==
X-Received: by 2002:aa7:9dcd:: with SMTP id g13mr24046044pfq.204.1566213936145; 
 Mon, 19 Aug 2019 04:25:36 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id q8sm11992733pjq.20.2019.08.19.04.25.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 04:25:35 -0700 (PDT)
Date: Mon, 19 Aug 2019 16:55:33 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042537_794875_43413127 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On 19-08-19, 13:16, Sylwester Nawrocki wrote:
> On 8/19/19 11:09, Viresh Kumar wrote:
> > Will something like this help ?
> > 
> > https://lore.kernel.org/lkml/1442623929-4507-3-git-send-email-sboyd@codeaurora.org/
> > 
> > This never got merged but the idea was AVS only.
> 
> It's quite interesting work, it seems to be for a more advanced use case 
> where OPP voltage is being adjusted at runtime.
> 
> We could use it instead of removing an OPP and then adding with updated 
> voltage. On Exynos there is there is just a need to update OPPs once at boot 
> time, so it is more "static". However the requirements could presumably 
> change in future.

The API is about changing the values after they are parsed once from DT. You can
change it once or multiple times depending on the use case.

> If that's your preference I could switch to that notifier approach.

You shouldn't be required to use the notifier. Just add the OPP table and update
the values right after that. So no one would be using the values at that time.

> AFAICS the API would still need to be extended to support multiple voltages,
> when in future we add support for the Body Bias regulator. 

Right.

Will this patchset solve the problems for you and make your DT light weight ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
