Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE52B744C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyQaw8v+RhijmE8Igw1wjwakcOKwEr18/pNy2ErBJEw=; b=YutwATPH23++7j
	JAalzZJElGghd2R3D8ONeRZUFZqWYELHiqy0aMwtVXu7adyFA2YF4VlRNfI7NMwt18x32i+cMkL5w
	Z3gSbZw0a8fKhmJEOH01q03W2yh3ZIe0xYR66nBVDrZmY4WtBljZT6anaaEYOpcgUdfD4a+pi8DtN
	CyIzM3zjfZHVIEVoXWkmUzKzJ1/3UW9Sp76JIfoELx0m8xdOOfA2KG2/9GrDHWQYjZAXfx6uVUnLO
	40mId4biPif4IeOiK2OktqxEQS5cXqGoOtY2/OnslnZqLNMYI7J2hKrbIwkkQjRG1Pk6eF+zAxmQQ
	FyBxuVe4S6o6SmxMCGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAr1m-0004du-EH; Thu, 19 Sep 2019 07:38:58 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAr1R-0004dU-Dn
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:38:38 +0000
Received: by mail-wm1-f65.google.com with SMTP id f16so2711648wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 00:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y6zSWuxS8jgyDbyMqezvXVURezmzAxVKdd2OMOE7VDY=;
 b=bLAXub9KaLkBFZGHhXTKpJ/eg1j0FYNJrsRwldyjQ9TFKC9FrRiGPIY6nKn9pJRK4W
 FXgmDFwBbuel5i1YkEUaE34Efy4Y7OA2QGssVyQtecNgEvWYkX2695l4Qp9WeTBYokTs
 643s/zIfP1iHLj8c+iV5sTv4LnrUHMBy6/Bar1BjbYpKVZ5Ic6/XXiGd/2j7VlwrlJ/p
 jycCQRzGh6GgZV2ILLIUE0coo5YoqKyJTTFf7tRXEIv6tAnUgc4/ppGqmQe8As1UM0pO
 iOMHCZAKQBjNkTwE0QVH2kyIjlyXL4NNuNezmiM4+Q4t7npRYmyed5g8tTmLoNUfh1iN
 grww==
X-Gm-Message-State: APjAAAXLLczHOwj0Y7bZ0D2aC+vaX56OPE8GIQq01ooJepELczkvRwvD
 xZ4qfu1mEvJF47hfIW1SNwM=
X-Google-Smtp-Source: APXvYqzeq1U2LjJ1HD4/VWXclkN5qptlSoaU/lte93RCCam6t7j6L/Q8uKt9u97GzYcvPFW7th/KiA==
X-Received: by 2002:a7b:c5ce:: with SMTP id n14mr1515680wmk.17.1568878715640; 
 Thu, 19 Sep 2019 00:38:35 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id t203sm6892411wmf.42.2019.09.19.00.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 00:38:34 -0700 (PDT)
Date: Thu, 19 Sep 2019 09:38:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 1/9] ASoC: wm8994: Do not register inapplicable
 controls for WM1811
Message-ID: <20190919073832.GA13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104653eucas1p2e23ccbd05b3b780300adc9f4cb7a4c49@eucas1p2.samsung.com>
 <20190918104634.15216-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_003837_469564_A0D73236 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Sep 18, 2019 at 12:46:26PM +0200, Sylwester Nawrocki wrote:
> In case of WM1811 device there are currently being registered controls
> referring to registers not existing on that device.
> It has been noticed when getting values of "AIF1ADC2 Volume", "AIF1DAC2
> Volume" controls was failing during ALSA state restoring at boot time:
>  "amixer: Mixer hw:0 load error: Device or resource busy"
> 
> Reading some registers through I2C was failing with EBUSY error and indeed
> those registers were not available according to the datasheet.
> 
> To fix this controls not available on WM1811 are moved to a separate array
> and registered only for WM8994 and WM8958.
> 
> There are some further differences between WM8994 and WM1811, e.g. registers
> 603h, 604h, 605h, which are not covered in this patch.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  sound/soc/codecs/wm8994.c | 43 +++++++++++++++++++++++----------------
>  1 file changed, 26 insertions(+), 17 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
