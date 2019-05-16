Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DED72059A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKCxcO/WhHIwBY95yy5IubasWVFNGZsXChuGmoLUkRM=; b=sXbnUCslrisnRz
	f+OZdWk+P2p0jYwzqKFxCurZhdbsKLNOfJYs9vl+Joz3gtwB98eec1FGKca/duI3FMjogWrSEeGhR
	2f6nuylE9HNKAgISGwMTxbhTp35pQjqwKExHooatcXjJLNjplarFnouof/wG9tSjhoq3vdoY4lgK9
	2pcc7vrB0ipyU/gmDTuu9Z+sW2tTPG9ERhTyOpk2lYXRf95dCEngZm4TajzP56rFykL9UlcVxAa0O
	uJmVOAIocp0vDX4TQrV+y1cCS1ebH+8JhKLmaGjCAJs3NCjcEjQc82v+g1FhXTKnVuZL4D+8XnfCK
	Lwhlce7mfGfUuyUjrEnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREuN-0007nl-T7; Thu, 16 May 2019 11:50:47 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREuG-0007nN-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:50:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so2856730ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 04:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZfZWKHa7k32vSF2Rgion0TnHTAjuA1aCE2qsRonqXP0=;
 b=axwfrku8av26C74Qcnj8NMFl8LQW3ytVsyxJwHyHrABKFSul4eTIQRAgniBSpRNR2T
 SUCKllbRVUhjH9a5M8vQ2ZctPU2aRCPW2zzHfrExJfmGQGGJKj+UZ8gMQKIIKMCg8q+W
 d71EwYTR3Nq/rACyFL4CAxYsp4QgSeBRv2U7Q+fNBUsAFO7pdw4soy6W9pOYAyCeXSbD
 CqdAcuzevt6wp/8joMtEkxOTMm36jy27fYgJD0kUVC1x24NqeVW7JvAfFlnUf7AVqtb0
 wSTH5rhMPlygfwvgCPaK4TGfEgwd4+eSNjsCqRVenL0HNST+g99Optp097VsBxKhX9Dm
 4j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZfZWKHa7k32vSF2Rgion0TnHTAjuA1aCE2qsRonqXP0=;
 b=N6fovi5iasYEs2EqQT+vRVaxV91K8f2Y863ScxwDsefRGDeWjJOupds2xu1Ts3HzO0
 A6VjWLWWQJrCaufBPnypY3HtlnEH63n9x1SbIvYUjBE6/Vec8hz7ezKQPrguxYtdngmo
 xGnWh0/pjAmAfMqXeLHmrgdFf+wFeyYLsneq/ffBPF6QHLBgC1OV93gGEuSUAYXe2orV
 RiAR/VUREUtkxCIDgs8O6N8LxbSojiCJ2dml2SNVsQbIP8BLW6zPU+ka1QA234hck/y4
 jZUxtMGDhnD6yq1SsktkzAfBzsrEUKF73XsFQIewOyBJUEIJGeh33dfTvrXDbVgUfNV9
 j6Bw==
X-Gm-Message-State: APjAAAV33Unrx7CBtq3oeJO0sVlObe0Y9s71Evu/Mdmx0ZGsd9OLLVdU
 FpBqOCljheHvjrf2+nmhEuCxNfSVcx4chRNrE/rNLg==
X-Google-Smtp-Source: APXvYqwaxRjeq7pjR9npAXmwgyhZKdqhC73PwgIVTdnHjqNpDaNtDJResi7MGSU8C3U2sKn8oJY/87TKdcHLFfT0UHI=
X-Received: by 2002:a2e:60a:: with SMTP id 10mr3127929ljg.126.1558007438447;
 Thu, 16 May 2019 04:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553828158.git.vilhelm.gray@gmail.com>
 <1cc8b30bb3954ca2a0961ffb0a2eed8a005ed670.1553828158.git.vilhelm.gray@gmail.com>
In-Reply-To: <1cc8b30bb3954ca2a0961ffb0a2eed8a005ed670.1553828158.git.vilhelm.gray@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 13:50:26 +0200
Message-ID: <CACRpkdbCt1PAJ1rBvKvZ2ydLgJmKXuLN4mRtSU8CaW=U7EcFbQ@mail.gmail.com>
Subject: Re: [PATCH v14 01/11] bitops: Introduce the for_each_set_clump8 macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_045040_284881_FE9942E6 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Phil Reid <preid@electromag.com.au>,
 Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 4:03 AM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:

> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
>
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
