Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE86916B03B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeheIAGDSI0gLzqMC9iBPFFmP0Yai21CSihBllWj/Pk=; b=qgwDBJzGsIs7Lu
	PBM2tKTDvxbQGZeKTPU+Gm+rSUTX2nJdjhaYBnQztGlOWP49NdKCCje3vHeTLj6Z69lJv+KfYBaSt
	wq52jNV88d5sz+XFJ1BOaGzcKJE7e/0Ddd397DNGE8YgsIsH3HO5USgf2U5jKc4J/3885xQ6gVF5B
	oOsryRwgCA0AdFwHjHjwIn0kpwp+ncT2UFlYkJhgcVGuJnLRg6RUOy21WqEhvrpEXZVio0LLRF+ey
	cF4uyS0zwIm7F8/CevIzwf4/GcmvSKN19UsDEBsHlkEvHpXhl7ujqTEsL02Wh1/waob8Y9ZAWmRT/
	Dyj2AYTlIxL4GG5s3rww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JMs-0007XG-RW; Mon, 24 Feb 2020 19:26:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JMj-0007WO-Lr; Mon, 24 Feb 2020 19:26:07 +0000
Received: from [192.168.1.183] ([37.4.249.121]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MtwlO-1jPEJt2n8e-00uMPE; Mon, 24 Feb 2020 20:25:49 +0100
Subject: Re: [PATCH 16/89] clk: bcm: rpi: Add clock id to data
To: Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <3028e04887c7b8a6ffc150c016aa63281461b434.1582533919.git-series.maxime@cerno.tech>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <67855a10-f7cb-b6b3-7b9f-d9c9baa5f105@i2se.com>
Date: Mon, 24 Feb 2020 20:25:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3028e04887c7b8a6ffc150c016aa63281461b434.1582533919.git-series.maxime@cerno.tech>
Content-Language: en-US
X-Provags-ID: V03:K1:VyhJqVob3VPakCj8Qddgqy69jJ7bigJ2KWHq95khrpoutJh2CXf
 Gs4yA0dcF2YUSCQANMZjrZk1jGzJjrWXSL7DOplNN61MHOJ6QPgzVTzMBeaEf44HpHFKzIj
 u6wr9+J46+NgOs7NuI/vOmGM4TojTNlYv55ne10dlXq1Bm8anDDp6ppXKuW7WjuXfhl59LK
 oAM3uvuntavUCgHUaZE5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CCQz7HXM9XM=:teXIYLI0UZIxj1oO5h2WKz
 qU38WhydB6qio3uDLTnC/E3QPjBFeyPEQInXZwkMkDEVz/PLezpOXP4JW/nl7rRQjWFwARhCi
 2A2fcaFIMem9ytlgRYp2ysKI1aMDVvpnIIOhx+dBg2UVqwXIjCdpAMeq6d2esHTR/gcSawbMp
 Py8fGJXjabTTjDf/5QB//jb+tp/bFAaxs8LTHpUPdh2wmRcB8bOpc3f2f/ho7hqYtrZncjqai
 25Zp0QPZbg4qcIoTlvlS2C16aZ/9wFIJQudaC2WTxe0pFNI0Yns+Lq4tvp7rBzjxoW5A2VZHb
 /dwqh7XowMxRs7XUIBKs0YEgHm3xTN7iRrInk8rEJymjyAiybxatmJybuJ+/tz50blyp06i2n
 YMjei0q+nY2mfrkIdjN+xfInsHGsU12KlJibidJVQxSjKIAZq2Eak/veS9GqK0fH7Cd37zKsI
 YGUZ7VWaM2KFR8dnHN66dFSPEG/Y2SZOPAnbSd6uwOQMcvYxn7lufxOJC1nGNGotKuWiGNXJD
 7H5CroMVum/tVAG8Fu2FoeJxgUIT8EjhofIlL0Cd2JJNkZwOx0WgqNaL51iINjiGMOjKQ/V2n
 OYN197m0TcHCT5QfyYupj+Vbh8N1u+Uz9jMwDrKojrsJ5WP3esdEheg4m1B6X0Ld+aw1z9gfD
 sSZuh8wIbUSjWN2H9lgwPISTA3DtltcO1dIxKp+65HbSmaEchq0U7jRLf2ZuJaYNV5bXMkDvo
 rz5aPidFUoC/Xact0b4VLYIhz9a1ssi6KZwXuwtZ21AgXcBJXUOst8M9amOzYBhfU2kCpQrf4
 0LqwS9lIHytXFkzfoiDOLQQxTM2o6ga1672ByQ9RGu5pV8idnT9Y8ZMDZVwhvsxXnbkEPWC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_112606_010255_B852D597 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Am 24.02.20 um 10:06 schrieb Maxime Ripard:
> The driver has really only supported one clock so far and has hardcoded the
> ID used in communications with the firmware in all the functions
> implementing the clock framework hooks. Let's store that in the clock data
> structure so that we can support more clocks later on.

thank you for this series. I looked through it but i couldn't find an
explanation why we need to expose firmware clocks via DT instead of
extending clk-bcm2835. The whole pllb / clk-raspberrypi stuff was an
exception to get cpufreq working. I prefer to keep it an exception.

Regards
Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
