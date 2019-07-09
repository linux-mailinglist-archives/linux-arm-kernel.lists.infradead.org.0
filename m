Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CD363830
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBOKgzJ9pZUNLkRuOzUkTQOtB+WSwodkv3/LSNIwqKU=; b=D1RYv4V4aiGWqs
	3lT8Zzvxdi8URkd4R6SoF8mHYLDPQoaEyf6mCR3MrBntcCbad8ujGr20/HCYVld6BlmHacp3zARWc
	0hc547Y+tlU0CyzNUOVaIm4/KdsGbB1zbr1DQ9Q64/AsehpnjBktE2K6V2rmvlwlqCvgYIL/QuVWJ
	BqCRkRiyCMiCAkNvEuYJKV4LEcF8RTd6p7++FM7/JCrDnjpgn80qu+y1O4y/e15Kp5CxIgCL1xeSD
	PJhKYur4SZVzBGDHLZiQMvpf9M/wENAf46mzbca+Y+57YWMZ1dLrZ/IMsOgA2bddKN7kiQqiHpsRJ
	t7DMxOJK9cz3nyyqqLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrSF-0008Em-PS; Tue, 09 Jul 2019 14:50:51 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrS5-0008E5-EC
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:50:42 +0000
Received: by mail-io1-f67.google.com with SMTP id m24so34264263ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 07:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=46Epk3/36kPZgwCBdnESdwm9AsP3sDBy9DMR2D84jbQ=;
 b=QttAWI980IJ3NPv7egma457u/0V4gRgNNw9iuO5PWRR9ZWiEivUPxqsgfl5I9Iwv2b
 uSL3NdajK70VWE4xIXiX57B6HZXQv2aw5mw7BaXZVS/nHoQ9nluqzqpMjPdQr4mfZhUu
 7uGOJ8/6SWg95HOiEszkzgR4wV/xrp1ZGSV3pRvxbdUI0hBQ7Mbp1gazsI0w8D3F6nNT
 feyLbGLpliY2LJ4vV+fQ3Ml18iY40NzYlro6iOyXkOso+ZPKjyY7v42wANLAOJVIGgXZ
 1itMDmdoWFGqw4Vjysmjh9eTui3PRY5feIC+Mii7r6yZIe8i7jP74TNStpKnQ3keK6Tz
 tgHw==
X-Gm-Message-State: APjAAAVpayJQ57n8uzUGtjPD3OOKmh2P6TrkrC3fczw9KATbBi7rkdG4
 BHuGGJh258qOCzlP59cuWw==
X-Google-Smtp-Source: APXvYqzHI8qSCiXN6FftFD/8DWYZDs1KQ1ycSN/veVfBVhoubY3v9ODlSdRUq4IMRUPQR2RPAVWsOA==
X-Received: by 2002:a5e:9701:: with SMTP id w1mr161447ioj.294.1562683840732;
 Tue, 09 Jul 2019 07:50:40 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id k2sm16925748iom.50.2019.07.09.07.50.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:50:40 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:50:39 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 6/9] dt-bindings: sun6i-dsi: Add R40 MIPI-DSI
 compatible (w/ A64 fallback)
Message-ID: <20190709145039.GA313@bogus>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-7-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614164324.9427-7-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_075041_475511_9F9FA2B4 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 22:13:21 +0530, Jagan Teki wrote:
> The MIPI DSI controller on Allwinner R40 is similar on
> the one on A64 like doesn't associate any DSI_SCLK gating.
> 
> So, add R40 compatible and append A64 compatible as fallback.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
