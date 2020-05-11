Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9731CD317
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 09:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy0sa8axlxWxENRwZ6tOW6uGq3A3nELPSbrRIJTGJTI=; b=dmKrF7QMBP+HCV
	QxSLya7P3dbC2LDBsXInflpEhT4n70SW4n/YdzpO6RjohHpxSYkwUbpRwX3bnd2RGBFW37hXnGtgc
	9utla5tRCVzdxp63QqywplR/4/IsRLHxcepmJQ0iKwhjDAzoJQ8gSKurTNMTconYzaFhJD6a04kPy
	vEfu8we1Yvw2bY0yKPvgJQPws/ZQ8WljmlhrXQh/5UwjT2C4r7RYAdkwW3LUGlNVchoMWiUS78sXA
	+N4vzvmfPaObQtFKTadQM8LV1kNVbWYtTkXnUcjt6bESMo2w/Mc8hgFSTvSn0ciHiBrbVWgT18un1
	LGhW/6PVQb2KqXLvps8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY35V-0007EX-Bb; Mon, 11 May 2020 07:42:57 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY35C-0007AF-Om
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 07:42:40 +0000
Received: by mail-ed1-f68.google.com with SMTP id e10so375418edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 00:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/gXH+5V1OhGf0lDZmtXQexZA4f2X1Oj6FaM9kDcTW/I=;
 b=nIis/z1U0G/Vrke0zMaJbtUJFbBgjE8e2teqZrgQZ8eBbHOGeG6vT5M05AgcCFRZHF
 yiNmzz4nlSTuh/0BQO5RYt+/EG66UxmqIsHn+W0Hyke9IjMoDHdcK1jfkBXrv0upfXI7
 tElHuFJb2+ehqiABsrsH11LBrx9UsT6AnGvVmglN3gq5bB7pIYFeaM5QBa4O1LGuj70z
 37qn28J++hmIW1MDVHwq7IvoAyt7fbyt6+VvNg9s8aZngQKGMz6mNu0Q7I46xa950p3+
 yF+Faml2qFuTeMBRktzT20Ue4jQqUu1yB+YIq/oJjokLSzukwGCHzPbwsscP0NoBoNkD
 FGYw==
X-Gm-Message-State: AGi0PubgkXSnv3lWQBpf3NjJJrsZG995qovTMJKeLC1H1B97nE7dhC99
 32QQywqiuGiUnUXkCCQnUNI=
X-Google-Smtp-Source: APiQypKNXJxBqeWKUcQZCLy5hhnnh16d804wT763ceEEJlpi/zqQEfidD1ZPGObtTh2DAv0fOSjHSw==
X-Received: by 2002:a05:6402:1d23:: with SMTP id
 dh3mr12214214edb.349.1589182956149; 
 Mon, 11 May 2020 00:42:36 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id g20sm1194769ejb.41.2020.05.11.00.42.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 00:42:35 -0700 (PDT)
Date: Mon, 11 May 2020 09:42:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] iio: adc: Add scaling support to exynos adc driver
Message-ID: <20200511074232.GA7134@kozik-lap>
References: <BN6PR04MB066058A68D6471E7F6AFCFF7A3A20@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200510112417.1e54d66e@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510112417.1e54d66e@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_004238_822814_DC767475 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: kstewart@linuxfoundation.org, linux-samsung-soc@vger.kernel.org,
 lars@metafoo.de, linux-iio@vger.kernel.org, mpe@ellerman.id.au,
 Jonathan Bakker <xc-racer2@live.ca>, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, cw00.choi@samsung.com, kgene@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 11:24:17AM +0100, Jonathan Cameron wrote:
> On Fri,  8 May 2020 14:14:00 -0700
> Jonathan Bakker <xc-racer2@live.ca> wrote:
> 
> > Currently the driver only exposes the raw counts.  As we
> > have the regulator voltage and the maximum value (stored in
> > the data mask), we can trivially produce a scaling fraction
> > of voltage / max value.
> > 
> > This assumes that the regulator voltage is in fact the max
> > voltage, which appears to be the case for all mainline dts
> > and cross referenced with the public Exynos4412 and S5PV210
> > datasheets.
> > 
> > Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> 
> Seems reasonable to me. I'd like an exynos Ack though before applying.


It's correct, at least with ARMv7 Exynos datasheets

The few ARMv8 Exynos chips are silent about the voltage levels. The
Exynos 7 DTS board in mainline kernel does not have regulator but it
looks clearly like mistake.

I think they behave the same, so for Exynos:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

> thanks,
> 
> Jonathan
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
