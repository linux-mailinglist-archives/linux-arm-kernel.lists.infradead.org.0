Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA2CBB1F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 12:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0uunnMB8qZPLKSxim2QlXIoDn5UHuKM/rDLOnNFMsc=; b=NmPnEs/ydCIfLc
	VwdusogkfqXMeJY91++Qf42/e8GEE0yGj5QSJzQV/yiPUSCTBgtLCcCoyr2DvwaBP/ZPRNg9COImY
	36EY09NtNgpR7d1FtwBQErzIbKK3Tq67lxipg0Sypla8dWAtzMmm7SLlWwGwZ14wl/vBCBdVldGut
	RbkByYQsFivPFZ8MNNWiIEbkfA2AmEHvkbF/iR0ycxTIg4McAszVlUFwBbpPkDFVFVemHZerNiL4i
	thwwUrSVYzx1OMPhg3lCh6aLnkvse90oYCFyB8YhqXlYei0MFR/0XBsEi6FP2F7z3ENACIA66E1VG
	xtBhParhIc0wNPE5JV7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCLIO-0005Sa-IW; Mon, 23 Sep 2019 10:10:16 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLIB-0004PR-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 10:10:05 +0000
Received: by mail-wm1-f65.google.com with SMTP id f22so1466974wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 03:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h9qXlBn1SwboKu5LtxJjQDTNKEcy+/lavbTXOBsjGHM=;
 b=Xuo7HEuShsxfeeih9MPRLXUtuc3Tll8mGUh6fsOXqctNc1yf+CwAMJxBc29G3sYBJB
 wv/CIyFoonJxkH8/nPdK0q5GMnHH+Y+Fcw7F/Oq7CzUGG4ZU/JjUCsy4G6ttdRS/V7hb
 gA+VgJB5a+Yjfu0NVC6G/cIHU5JChtyOmH0uQSKMPnZ8zpzX5MKflD4PeTfJpQ6Iaj5X
 LPZM68mnffZQ3piL0+OaWkyOgb32+pbQG+XZ7l97/mVq7+Za+zEjWXdSNpCteKa6QIQP
 YmmovtRsLwUIYVC/8+akv+Oai/VLIeiwOSIwc3QA2xb5QhMt2UInfTiLPfLu6c+8GWki
 7GVg==
X-Gm-Message-State: APjAAAVULIc1+bDIt4SCtGgtM34ipTmllnbfIdQLDg5R5rr9LJgbG2Ze
 MHEV2o3x1QipzSi5w9rpZ+4=
X-Google-Smtp-Source: APXvYqwZ70GVq/wsIIytWY8nE0tIFLrgynh5FI/RtkKc0x6HwJVU1rez82f8Fjm1XocHptXshd8PFg==
X-Received: by 2002:a1c:150:: with SMTP id 77mr2056857wmb.116.1569233401030;
 Mon, 23 Sep 2019 03:10:01 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id l9sm9539317wme.45.2019.09.23.03.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 03:10:00 -0700 (PDT)
Date: Mon, 23 Sep 2019 12:09:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 03/10] ASoC: wm8994: Add support for setting MCLK
 clock rate
Message-ID: <20190923100957.GA4723@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7@eucas1p2.samsung.com>
 <20190920130218.32690-4-s.nawrocki@samsung.com>
 <7334ce45-f192-4421-aa3d-d142582153ef@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7334ce45-f192-4421-aa3d-d142582153ef@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_031003_998344_B66F09F5 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:10:48AM +0200, Sylwester Nawrocki wrote:
> On 9/20/19 15:02, Sylwester Nawrocki wrote:
> > Extend the set_sysclk() handler so we also set frequency of the MCLK1,
> > MCLK2 clocks through clk API when those clocks are specified in DT.
> > 
> > Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> > Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Sorry, I squashed other patch to this one but forgot to remove above tags, 
> not sure if those still stand as there was rather significant change in 
> the patch. 

It's good. For the record:

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
