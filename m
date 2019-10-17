Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA080DA5BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Vs85t4EfQDEOK7LDODlRuPpjuSvxATeL66TrPyvRuo=; b=AkA1Fhar6wD1vg
	MpdS2NFzSxwPhdoVcefQICbWJp8SF4fhTYEPNsfsfeEOn1uvNZB+uqS5VzBVGP4PKbkquP18VPUcJ
	PB8dIfRQMyqG4H9TBY6qdyqjYJDKlFU3N2619oRUDT0XPKvrsZfcUDmbhBIOhGlMTExq1NHSlSlbM
	XAMHUpw2ak48JuKiUk1R8j9XvEjUdSbwJtIMZ0PZNe1Mjt3YHfaqlxdCLSbdJtdrxbgNf+0SXJC2G
	Z61RuG6ryc10kPF3bD3cRFgmosV38e1I+NaAyq4V9EZnAXJ8c3inHHr9rkI08t0NVxm6DvPlz8iMi
	iAfm8De2IlzGAjto4YUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzV9-0006Vg-IL; Thu, 17 Oct 2019 06:43:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzV0-0006V6-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:43:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id y5so978328pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 23:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v1tsE/i22fykGeq4lfZ46USRZ236n/tqtjmeKNn1XGw=;
 b=B8sekKbZBmry7+sPAy9q+xCmQ6T0Z7VUGC5wIGJnLggtOWKj7ZZDni9IeYm2gtextx
 ukuKpDtv3M1hCZMSWYPXTz2Et8wjkOq2y2Tk06Uazd3src3zT51nBeNYFHwoot6QNaeE
 Pn9JzFI31+vZzBBGZJZmeBTNH+Auu/4Vq8rzLb7URIZnH0wnyp5BkKlTtlNTP5wLMwvC
 fObndpRt2n20mfUGLtSIdMoNCzzmhN7kzUo0O6S9cbXxNosRajdtjzlHUEECP0OACP3G
 0IqVWEg5pE8Cl81gMff6IzlQXycwa5Vwx/iJ0R8LeHp2SCij4zgNqjWHHZ4fsV2YtiKT
 TKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v1tsE/i22fykGeq4lfZ46USRZ236n/tqtjmeKNn1XGw=;
 b=iDi6J6khmtPg735mANCie3EhP2dy9PU0t3bNyV11h3EBooiET+zaVIETiUZldW25yU
 o2kDVeVr69qLSbVhl8FuMkdD0yj+drKlkMsn7X+ng/mdWtxwMwYyZtJca1s517C62mWs
 n/HvLIWSJ9NgAh96NXw3jtjFi14QRHA5AVTC529dttzrx50SGHqnI4qW2seMEXPDVKcZ
 3s11AAwbJydFU/lRWScRN57cfvSEpKE7AgupE8FQvKfNJDoO3ovrqs9MtQePBxHT5de1
 KY1KrSrsgtB/umZG3o8G/eiSkx5aZesXibuMAJOSLrqHDjrkFMAUQkX0ArIq49Sa29GV
 N+zw==
X-Gm-Message-State: APjAAAUTn2aW0lZoAXRGD1C45YeqniBkVGX5hvnbGGsPovlGifk1tn2r
 DOA2kNcEk+xHNPE3akT1UwBh6g==
X-Google-Smtp-Source: APXvYqyRtngW2yMCZZkoEQXLA1L6wPdZIAWGztmKH1IGUnDAdstQ8/PHr2ntupuE+fzATQ+j5fa0zA==
X-Received: by 2002:a63:e802:: with SMTP id s2mr2362627pgh.188.1571294581697; 
 Wed, 16 Oct 2019 23:43:01 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id v4sm1426983pff.181.2019.10.16.23.43.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 23:43:00 -0700 (PDT)
Date: Thu, 17 Oct 2019 12:12:58 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v5 1/4] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20191017064258.yfbh7iz3pbzfhdvr@vireshk-i7>
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145810eucas1p1b31400c9b2e7f30cdf6deeb4ccee2788@eucas1p1.samsung.com>
 <20191016145756.16004-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016145756.16004-2-s.nawrocki@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_234303_056437_F00E205B 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-pm@vger.kernel.org, sboyd@kernel.org, vireshk@kernel.org,
 b.zolnierkie@samsung.com, roger.lu@mediatek.com, krzk@kernel.org,
 robh+dt@kernel.org, Stephen Boyd <sboyd@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-10-19, 16:57, Sylwester Nawrocki wrote:
> From: Stephen Boyd <sboyd@codeaurora.org>
> 
> On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> employed to optimize the operating voltage of a device. At a
> given frequency, the hardware monitors dynamic factors and either
> makes a suggestion for how much to adjust a voltage for the
> current frequency, or it automatically adjusts the voltage
> without software intervention. Add an API to the OPP library for
> the former case, so that AVS type devices can update the voltages
> for an OPP when the hardware determines the voltage should
> change. The assumption is that drivers like CPUfreq or devfreq
> will register for the OPP notifiers and adjust the voltage
> according to suggestions that AVS makes.
> 
> This patch is derived from [1] submitted by Stephen.
> [1] https://lore.kernel.org/patchwork/patch/599279/
> 
> Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> [s.nawrocki@samsung.com: added handling of OPP min/max voltage]
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  drivers/opp/core.c     | 69 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pm_opp.h | 13 ++++++++
>  2 files changed, 82 insertions(+)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
