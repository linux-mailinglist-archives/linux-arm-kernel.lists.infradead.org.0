Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF94D7D1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2t7d/KuydbRzn0LQ0U6lDOs531pcm7GzOgbf6w368M=; b=e+5mz1lkc5KMWd
	z9398yB6VuGRl1NCGoNxGTakDExTDZIbVOU9PlsA5IbDNU2tcvNxNyApGGmeakQa3osbge7jvtiIP
	uOXIXINbIZhYH9slLlT5fSW1qTGM+cV3U3l0uf1F8qrNJufC2RziH9Oaa4R47JBZEpmkmW6v3JlcK
	sWvEy9zp0eGPYPa2Qe8vL4/A155w4qPBhqz9G4ydYgZEu2loaKdFWEfA44xkvww5JA8ePNKeKtPvl
	W7wapTNY4vHRCr7694QMRZhqqcbTutRv+dQE4q5KFjiNziCk0V2FXWF4ZaMIvxS1WPOct+Sg29uN4
	Cw8u/mEQhhoFOPz/8W/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQMw-0002ry-Ck; Tue, 15 Oct 2019 17:12:22 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQM2-0002M6-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:11:28 +0000
Received: by mail-ot1-f66.google.com with SMTP id 41so17596778oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:11:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VxDGjraqfzXc9uftKDsuNClpdLGxHQLLKEDl6Bl0yGY=;
 b=irJRKfAnrTcis8cuGjkq+3gYkUde8p28XbLS3oCAoLfHpsuaqgbBOqxO0ay1JD73mF
 wTeEK7wsrNVayUDJ5/BKoZuzn/sf2ciuc0sWYwe1V6/yZQYs0NQkBbuD+jeXhvglBDLO
 bW3/PuyzmncGn0m99aG/IGwcEVm8JNCgWy/crO0oyISS1op7PMGaRznw+eBdTqfqX3mr
 u5xPbBmB3xoMciY09opOE8iy0ifIuGm3pAsxzicYGgYvnEdbUo96ptYv8h06rAamwtYc
 5o6CPLXIpsbafgUOQxvokaiS6jplh4wE1xV8wfvLPZY0ppimBujIAbFgqwGjcnTgKbNw
 KPFg==
X-Gm-Message-State: APjAAAUqvuWkjpXsuwcLdu19UNq7fuiLaF4jpTQXnwXvT9SG0ZtAREAH
 YK9u1okQdcbqAlOB24J2fg==
X-Google-Smtp-Source: APXvYqy4sZEG/+W6xEOtw6Rd/8zS/h+KMn+CPYcc4g5SttNj/xXlDflbSBhC8AEgrAAvxTNzzBDmEw==
X-Received: by 2002:a9d:2a88:: with SMTP id e8mr30901276otb.188.1571159484997; 
 Tue, 15 Oct 2019 10:11:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x6sm6874566ote.69.2019.10.15.10.11.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:11:24 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:11:23 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 4/4] dt-bindings: iio: adc: exynos: Use defines instead
 of clock numbers
Message-ID: <20191015171123.GA11947@bogus>
References: <20191002160744.11307-1-krzk@kernel.org>
 <20191002160744.11307-4-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-4-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101126_890591_98FD3EC0 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:44 +0200, Krzysztof Kozlowski wrote:
> Make the examples in Exynos ADC bindings more readable and bring them
> closer to real DTS by using defines for clocks.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/iio/adc/samsung,exynos-adc.yaml     | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
