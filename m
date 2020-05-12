Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EC91CED47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 08:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIHa/BMq+y4X069pjGqwr9h7epQ/EkDBp63csnGJf+4=; b=GPDou91SA+7adv
	siG3lp9WxgVnR322x4RMHE3BKiYF/Z5bmI9me1Z7o7aU6RmiRqE9Id8pkbdGJXNxrBHYRuLa4UL67
	wAeMjGf+DDh6YrLTSkQrCCOupu1XK7/W6oUeAoyEMJSCzqO+1A1eQpCabmgmUjeP86EHJI7DhH1MG
	zvOdUitClOPdZjKS9Mgo+2ixu8r3uq+YCkbXEpawZ4ipZQP7aTAFR6C5rGmAgEtRug8ZIs5/QHaJk
	dsIHCORQDX+VD5TYTzt9vn0d1xDUs9DgkGSdLJChuBqHJJiSfqxiimznRZUA+iyde4pF5XPNVc3Pe
	H5nl9dVEi10Q4O85uL5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOkT-0000B6-7F; Tue, 12 May 2020 06:50:41 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOkF-00008t-Ne
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 06:50:29 +0000
Received: by mail-ed1-f66.google.com with SMTP id g9so5657387edw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 23:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NGCmQRwn70jwSoE1rVBW7nYUdi0rleIM1+a6lKcmx6Y=;
 b=NsCDgK9TXhnY/K01ixJQyiIITVwDSFIjhC6Q6YXiHYvwM4KNvWDbuK2Q+vMIMcZftZ
 LqoXs28USVNpg7JmtfWSLuLqllzgvbX7gnt2t6C8gRE1omHjl3oCs9E/SKmUrzAEKO+r
 NTetLvLaab9ijFzjY/4K3M5YNfWeCL9E6Y421FWMb1ifKFn79uz3rAT1QgZEFJhb9hcZ
 AUiAF7xzPbD9yLzy5TeVX88m6AVPFzIcX+KMUjujoXDYrxJAEqyXy8a0QWc4c5V3Nq5Q
 x7Ttc1oxNQu18nuHCXCZAaTgAEyPuFABFe/VYizGn4fF5eEptCdzQok3eK3CTRjw8H4E
 tC+w==
X-Gm-Message-State: AGi0PuYrRjJchQDz4jgeuHL4M1y5MUJlSZ83wcAv3wl1NRaqj7hI/w19
 fmxvrFOP6dxkaxgSZVIe2WM=
X-Google-Smtp-Source: APiQypJRBoTPk3w4SSl5+ddox+FzeAD0bP+sdgUJjGYIvF+5BKJVf2SdadvJzdj8oe1Rhj3tuk/VMw==
X-Received: by 2002:a50:eb0a:: with SMTP id y10mr16683538edp.312.1589266226225; 
 Mon, 11 May 2020 23:50:26 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id m5sm1601440edq.71.2020.05.11.23.50.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 23:50:25 -0700 (PDT)
Date: Tue, 12 May 2020 08:50:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bernard Zhao <bernard@vivo.com>, Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH] memory/samsung: reduce unnecessary mutex lock area
Message-ID: <20200512065023.GA10741@kozik-lap>
References: <20200508131338.32956-1-bernard@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508131338.32956-1-bernard@vivo.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_235027_764032_09198990 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 06:13:38AM -0700, Bernard Zhao wrote:
> Maybe dmc->df->lock is unnecessary to protect function
> exynos5_dmc_perf_events_check(dmc). If we have to protect,
> dmc->lock is more better and more effective.
> Also, it seems not needed to protect "if (ret) & dev_warn"
> branch.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

I checked the concurrent accesses and it looks correct.

Lukasz, any review from your side?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
