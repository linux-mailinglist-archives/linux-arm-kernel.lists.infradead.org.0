Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7944911791A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKulsWfONYkqFdkmddFUTzJLiV2J4MoQLlte+nqPiZw=; b=uTdGW1ZOqk/uWG
	WyG0oYLghZ5Ap3NkRHafM2u575uY+TWKTRnq7lN2A5kSKEmS8jqvnLlnrGNKQ3mMYEWuVp5k6X+UC
	7U8fv5z5WRIVcFyVknBF24cfp/BXiz2d9WdrjwTMyfqdh5tODdHmBFL33k+/tX5VM818iNEdujbdS
	GJsvM2oy+4KPvpPrXu6Qz+EvWqZK1Ajd5xtq+7oSyRaU8i0SoJJI/ksKkPq7S4T9OxywWiz/OV21T
	8xjerkJJEJDQFze5EETiXRlel/t2wNgJRBfMxkf4toREW8UfZrFx31rJ7BL46skhO62WlFj7KEmqS
	LVJGCBto+0CyZPeIozxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRGt-0006xu-V8; Mon, 09 Dec 2019 22:12:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRGg-0006va-RB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:12:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id x13so6368324plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ItZ6nMPESHqLIASUC8LoX6fE4/wm+TwTGtRQ1RnKUZ0=;
 b=PLTuiULkvl88lhZJ7eXEZyEeyBFYh9ogHEt4KRJu32M2cSkg+0HS26NQbqT2+JfAs8
 dFf9qlMcSwGgR4627eFALudbNGexXTuCa6SEd7v3Hx7SK9dSKEmEDuk0v3Y9NsZMgpq/
 mxKlvx6opX6J7hpzmDQ29YK/mcz6eYhMYpvY7riVO3pCebZFVxPLkDvLO1gjPrP4dbl0
 qw0SWvQc7uOLp3QQ6G2B5Umx3KsUyg6T/YMGTRGxF0aoJzaXX7Q/e5NoJnusYIyu4tta
 Y4nffcrao80vVYOpikWwtkLJbMFNjwwLDRDUfSTT/wF3gKdXO1iPaFge9FbUtvSWhNtK
 rqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ItZ6nMPESHqLIASUC8LoX6fE4/wm+TwTGtRQ1RnKUZ0=;
 b=aah1oIrwkzX2/qr2jJdMnMD54lTTb430xExG3w9+LA0nm8W2BUUat4wyvousIvWURu
 KgH8l6sTazmXyv5FfqwGj39jl8LAuNAqc1uElsd9/OSH4ailxLBUjuRzURBfp2bPFOeo
 baVE3n40Vw1YKLi2G2HuALI5gU6ukbBfJw0HppGNLb89hNszknS5RLX/9nZiY0oaZ5e1
 2rP++/teldl3v4FjIDCLf/tDWs1Pcfctb6bGi9qHT2YVou4ndBXnBTKm38kPJEw+bl1U
 S/PGVrAuoxxGji1qQikuBfrJY9x13C9FZb9fPqsL44JzqGjMVmnc1vn3+mNUXIVs8X4l
 rFsw==
X-Gm-Message-State: APjAAAXe1o65r5juRT7601dmcYqTV7SsMF3GvVHrNnYnsh0h63sAlaRq
 8AVEfG9dybxDChQ6HTHq5V+I+w==
X-Google-Smtp-Source: APXvYqx22xb5jLxK6hTsSuOBQ53SZCEaDbusHD9ujqDQUXDe6tywX359eNJglK+iOHzOxi2uui8Ynw==
X-Received: by 2002:a17:902:a614:: with SMTP id
 u20mr31864485plq.107.1575929557672; 
 Mon, 09 Dec 2019 14:12:37 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id q13sm345574pjc.4.2019.12.09.14.12.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:12:37 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
In-Reply-To: <20191101143126.2549-1-linux.amoon@gmail.com>
References: <20191101143126.2549-1-linux.amoon@gmail.com>
Date: Mon, 09 Dec 2019 14:12:36 -0800
Message-ID: <7hfthtrvvv.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_141238_912301_A1E1B4B1 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anand Moon <linux.amoon@gmail.com> writes:

> Some how this patch got lost, so resend this again.
>
> [0] https://patchwork.kernel.org/patch/11136545/
>
> This patch enable DVFS on GXBB Odroid C2.
>
> DVFS has been tested by running the arm64 cpuburn
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> PM-QA testing
> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
>
> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM

Have you tested with the Harkernel u-boot?

Last I remember, enabling CPUfreq will cause system hangs with the
Hardkernel u-boot because of improperly enabled frequencies, so I'm not
terribly inclined to merge this patch.

> Patch based on my next-20191031 for 5.5.x kernel.
> Hope this is not late entry.

Re: "too late".  FYI... when you post things as RFC, it means you're
looking for comments (Request For Comment) but that it's not intended
for merging.

I didn't see any comments on this, but I also didn't see a non-RFC
follow-up, so I didn't queue it for v5.5.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
