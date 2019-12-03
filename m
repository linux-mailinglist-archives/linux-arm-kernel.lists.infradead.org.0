Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA97112024
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 00:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7od0a7RNDC000pnKWdUKR2Ex1bE1rYjzttlYQp4bBE=; b=svK3YwbGoKszc8
	1vcR/54PguEVDLyNIGK4jd2Ula+80H2sS0bW2M1SJ1oIZ52XeP3WConklmm2Jl9ZhIhzLrhaFeFsL
	nXKp1vqzXx83vQmrcTdOUCu5d4rFbtkidG5PGtqVlhQT6nQEDN4e50xEw75jvXWM2zGV5vwYKXIzo
	uqXeoqOoJbmVILZI3hJrqPUAurZEXCMEW/qb0cg8+yG4E1mlGq3RQKW8pm+GLptNEmkKSkalEMKLw
	ahyMpULiLg1+j4C/e1ayLhM8wwJeOKHtfo/GoTjmEZHCYhVdV4T8WjKxSWXimIloE+DDNJPoLPiF8
	oIwwzwTqNGV7WsKkV04A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icHRq-0003pE-3x; Tue, 03 Dec 2019 23:19:14 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icHRj-0003oK-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 23:19:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so2292775plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 15:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9aXu3KlzmsFJZ6e1TagDw+H66vR2neNxwDhx8plTDXE=;
 b=P2ym4D4fL1+2jZqsid93tZ5apni+LjMsWc92QordN593FLqJA+W4QsDirE/huNl5P1
 knTb5ViKDuyT37oe2VN6u4X65E0qoBXrLkTPFAuJUi/5puCIe1qhO5AoFzYvaAhJhDJ/
 ZGHsuAM2+IsfbemFqexEjQZ4n4aB/Wh5ZwyttSwHl/fUGPvWV8l/4obp0kKZH4Bn7wN8
 NCNmGeMIhEC8bdCNINKJ3DfitAYpZweN1bWtt3twrfio7lymvab4N1QAZRZDbCoA8ly6
 E8ZrLQ9Zp/SCypjcbsQgMv1HiPrzTDj5AEqazdjiq8h5eXDuVNBII9xFODUIIb0IxZ2V
 PfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9aXu3KlzmsFJZ6e1TagDw+H66vR2neNxwDhx8plTDXE=;
 b=gVQ3uhGJPaluW3WV/m9oG10c0f237/XKp6eM5xKiWztz/OK1tWILGWw60EAzXPeHRE
 /phtdIGAApfweT4vp4Rh02/akj20PlDTB8qeXz1V8NLMjhTwDUrazyhDiR3hvPGHm45s
 iTzVRac6B/lYYxff+4esPO/IKHSAKzj5t0kHOOcwr/aerPktiEZnAsbqLhvyrMEGawRF
 sEuAgH2lctvki+QhZkfRmpbnOo9bwuTk7wJUIlLhaFx1pLQNZYne9IO0u/7BeUskUdS7
 FyrJDwfozIzyOALyRICGxxeSUa+tIZ7UGD/zCqJamurWjomqQKaQCrEFRu73eJV8khOj
 JPDw==
X-Gm-Message-State: APjAAAU/NfDRhO7BMDieqd1qxGO2FcTLxhaDRH7LQasR4wAWGXFVewWH
 dX7pCOOiHcFtlcqBT9RZSnxM4GD32g14axRfdxoiqFQ2ZjiuHA==
X-Google-Smtp-Source: APXvYqwaPUhrCsgUEC6zT/MsYaJdSktVjMyOaLL/ZwQxaZzTYw2kYgyCxNVMDYa3yDWpwXTVusT3MTlJbF4W8DELTSA=
X-Received: by 2002:a17:902:7c84:: with SMTP id
 y4mr417290pll.297.1575415143951; 
 Tue, 03 Dec 2019 15:19:03 -0800 (PST)
MIME-Version: 1.0
References: <20191125202937.23133-1-roy.van.doormaal@prodrive-technologies.com>
 <20191126074025.5112-1-roy.van.doormaal@prodrive-technologies.com>
In-Reply-To: <20191126074025.5112-1-roy.van.doormaal@prodrive-technologies.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 3 Dec 2019 15:18:52 -0800
Message-ID: <CAFd5g450nWm47mFi10W+J=oiaO_sV0fXh3SwH0zxX6ZF1qZ-Xw@mail.gmail.com>
Subject: Re: [PATCH v2] irqchip/aspeed-i2c-ic: Fix irq domain name memory leak
To: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_151907_825133_DEF26BE1 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 11:41 PM Roy van Doormaal
<roy.van.doormaal@prodrive-technologies.com> wrote:
>
> The aspeed irqchip driver overwrites the default irq domain name,
> but doesn't free the existing domain name.
> This patch frees the irq domain name before overwriting it.
>
> kmemleak trace:
>
> unreferenced object 0xb8004c40 (size 64):
> comm "swapper", pid 0, jiffies 4294937303 (age 747.660s)
> hex dump (first 32 bytes):
> 3a 61 68 62 3a 61 70 62 3a 62 75 73 40 31 65 37 :ahb:apb:bus@1e7
> 38 61 30 30 30 3a 69 6e 74 65 72 72 75 70 74 2d 8a000:interrupt-
> backtrace:
> [<086b59b8>] kmemleak_alloc+0xa8/0xc0
> [<b5a3490c>] __kmalloc_track_caller+0x118/0x1a0
> [<f59c7ced>] kvasprintf+0x5c/0xc0
> [<49275eec>] kasprintf+0x30/0x50
> [<5713064b>] __irq_domain_add+0x184/0x25c
> [<53c594d0>] aspeed_i2c_ic_of_init+0x9c/0x128
> [<d8d7017e>] of_irq_init+0x1ec/0x314
> [<f8405bf1>] irqchip_init+0x1c/0x24
> [<7ef974b3>] init_IRQ+0x30/0x90
> [<87a1438f>] start_kernel+0x28c/0x458
> [< (null)>] (null)
> [<f0763fdf>] 0xffffffff
>
> Signed-off-by: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>

Acked-by: Brendan Higgins <brendanhiggins@google.com>

Sorry for the delayed response.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
