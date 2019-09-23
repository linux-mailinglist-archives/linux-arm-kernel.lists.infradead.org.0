Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A4BB134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XimmTBlpEmmURLdFduBt7icAfpNOdwNYdZ5ApDD38oA=; b=LxJlmSj0mNv23F
	Mc9GMat/SGPoNYP6GWn0Zyu+kvuSvI32iKcicR1dISfVX0/dRwQm6IJhfUSD4txh2B8CF/xBZKJzB
	TNaN2HJp9ZkqSaM7RwwgDkW+XbvD0V3e6jRGFG+y2brZMl0lS2PRvULybYAXi55D96l63AKaadm8j
	TTesdVWkgaIkHdguNy86h6Bp8+3jrXCG/78KKbfQ741Mgikg6iDSmeuISo5WDJPLMlUVXyR8A6ER+
	Wr4sVwl7L4aLYXzoOewA9WE2z0wG7Jzm2EBVPRPiz9zaLn+Dns+cEQVfHjNeMd0HC778/1blJYq6Z
	WCZ2fsrPlUszWT3p818g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKSs-00024a-37; Mon, 23 Sep 2019 09:17:02 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKSe-00023v-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:16:50 +0000
Received: by mail-wr1-f65.google.com with SMTP id i1so13034221wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eUZTQEw4J0qVIA2fDKv3wKt2hX7/DxEBMom/U6HeJCA=;
 b=JkUM5RPn8PxIGrYUif+Y53MNpdEc+nTgreetfcbWFR+AGRE/UFiCkKWty8hrD5s5qm
 mwM+1X5YNQyEuC4V7mmz3hhVILE7TicIhw0ivcsxOaZcu5hvjp8uViWKolYZA1/ynfFO
 Tld11mimFBGvN7QXgT50CzVo560ORdS2GKUgBh4gYtNoyQiVsARmpwCykBHLhWwC8qZ4
 2pvvEqwV5BeEhxzySAK25dzOJWHFvtbIortaBGv51Kd5AHfpaMEbf8cFk7XFSdqZUSdC
 zGSOwzfTlq+Gzlr3BUM6fz4n4/sIUILtl3S1qwlaegPdfnPg5ShGECOY+zPyJSddscUs
 qpVw==
X-Gm-Message-State: APjAAAXZ/on7QWCw/2+kKz8P1p2LnY6BwHwLD43Y5rBcCtIzzG8tSm52
 TQM6hKBXlbQN0tFIfM6/WMw=
X-Google-Smtp-Source: APXvYqy/K8AUiDccc2Dhtcu7DPXS49zP6PhLDw4ZT1thoebNST6dXSKJcAdR933mVGIR+GOsw17Now==
X-Received: by 2002:adf:e9ce:: with SMTP id l14mr13891459wrn.264.1569230206656; 
 Mon, 23 Sep 2019 02:16:46 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id y19sm9238322wmi.13.2019.09.23.02.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:16:25 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:16:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 07/10] ASoC: samsung: arndale: Add support for WM1811
 CODEC
Message-ID: <20190923091622.GC4577@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873@eucas1p2.samsung.com>
 <20190920130218.32690-8-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-8-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021649_140531_E4011F5B 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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

On Fri, Sep 20, 2019 at 03:02:16PM +0200, Sylwester Nawrocki wrote:
> The Arndale boards come with different types of the audio daughter
> board.  In order to support the WM1811 one we add new definition of
> an ASoC card which will be registered when the driver matches on
> "samsung,arndale-wm1811" compatible.  There is no runtime detection of
> the audio daughter board type at the moment, compatible string of the
> audio card needs to be adjusted in DT, e.g. by the bootloader,
> depending on actual audio board (CODEC) used.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1:
>  - removed unneeded __maybe_used attribute
> ---
>  sound/soc/samsung/Kconfig          |  2 +
>  sound/soc/samsung/arndale_rt5631.c | 85 +++++++++++++++++++++++++-----
>  2 files changed, 74 insertions(+), 13 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
