Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25873B749A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiSLbZ8oCnq+PJuDpvv/pYWnGnlXQsggObu7n9Lx5NA=; b=a6Swb7Mfq9gj2F
	umSfUUYtq3EF4EY32cvfd2PpZJ7b99LM9VPHDjvjnLyV429Oxf/pEbqhTtHBSXOSCiLBmDCKbQbaC
	U7v8qfw6tSuKd3IC5ly5hgxWQ2d71WGuE0A3PknXYxIyMbinESA9yDN3HN7HPrURPnIpL1H0Qume4
	Ot0G6RVQsKGYJ9c0rtgP/ZQNkQVVAjClPRBhnUznzDT8yRqgwCd9Q846jiigH8OT+8vwCdyz5m8iU
	XHMliT1uLL/cmr2jM4iRlMEvL7Sk+xGhVGyy60NyggcZdi6f8WiVWRtJKB67YqoMsGZ5SvwFAAkrq
	cqGFil8QArcBVytG6AnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArN8-00057b-45; Thu, 19 Sep 2019 08:01:02 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArMZ-000556-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:00:29 +0000
Received: by mail-wr1-f68.google.com with SMTP id r3so1999214wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:00:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XYLP8EKg1aWYrdXosmUlGT0i0haeJe1I34kspHyVEH0=;
 b=sFxc50e4MU3ZhbS01j3a3jBZe4yMHiJbdOXov9s3807mRTnpCDaW4LSxulmqgMzpHW
 lTP7PKEf7uGdBtrFg3MMI6Z2QwpRgkttwpq/xQWv8uyig+M0IYkSx2bp/7QuB8PDVdGQ
 /ZYVF1pjPUYKaBlbRndv847czavYx2OFwBndprW4Oi2pmATwBOpHnJfFzLrY0UhXa6Ww
 Jl8QTlTlsgzBld4vaNfqvV7Nq7Kd2BkUOsBGaZ/cPGq6IlLEZMUkKEPnwUKicdo+d8ZY
 Y36qBOY287rTcTUVkrbblgUxDNSmqdGTlcQprVXCHMuuSRaGjbUxgRAOvLkwvdBWVDU5
 FmzA==
X-Gm-Message-State: APjAAAVzKtxBBFs+2fZLjAsQCq0367xiidcy6XJTswjnUViPp2Tr0u8A
 zU7DJVGYmlstsUaT4dSn43g=
X-Google-Smtp-Source: APXvYqxkZJuMnz/5Yv5b+cZRtdqNk41lsPPfWQ5dJ873pZVxw48691hLCmWcac5LtqPWpbV9fXoJ9Q==
X-Received: by 2002:adf:f50d:: with SMTP id q13mr6370586wro.187.1568880025167; 
 Thu, 19 Sep 2019 01:00:25 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id u10sm15346109wrg.55.2019.09.19.01.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:00:24 -0700 (PDT)
Date: Thu, 19 Sep 2019 10:00:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 3/9] ASoC: wm8994: Add support for setting MCLKn clock
 rate
Message-ID: <20190919080021.GC13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0@eucas1p2.samsung.com>
 <20190918104634.15216-4-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-4-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_010027_688939_955C57A7 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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

On Wed, Sep 18, 2019 at 12:46:28PM +0200, Sylwester Nawrocki wrote:
> Extend the set_sysclk() handler so we also set frequency of the MCLK1,
> MCLK2 clocks through clk API when those clocks are specified in DT for
> the device.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  sound/soc/codecs/wm8994.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
