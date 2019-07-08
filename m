Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61961E53
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 14:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lV8TnmXu7xNoqKFBmBQxQVfLwEXfHVZZJPjrVCe6t1Y=; b=U5TC55syTF+eVp
	MwcCx8vVTMVA4CfRWthF6HMs2bBacjjKl2S4WDBKzRYnpi9NPaWTC2tz9jQsdo3vkmsFxFfDN5XHI
	QLNz+FlKyIczsMupLxe/OamrwqmJ0mb+lPfSe9HMd/24Q5x2v0A2R4zmQR0bxcsypf0gQn7oVYzrN
	dfdgpabeDi0d58YQMopc92j4OYvYkWtIt2bQdj783vnuGUrcTXEgpqMaa9LRIBI/HHaeNuYNRAyEB
	giy4kSg8lLGnK+Fu16CqvDyZci58zqq7K1QDPq7CwViROEL9AiXTkkPVSpUn8ydLWqlsr3GvDcbyz
	+pA88FP40BxnXomTM4Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSfi-0008A7-U0; Mon, 08 Jul 2019 12:23:07 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSfU-00089b-8B
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 12:22:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id d17so15971729oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 05:22:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fymmc7VXjVwYrdafzjIwbAvmkqxBJnXVHB/h8KpLj/I=;
 b=Yz2QG3Ultdm79ybhVR3oGb9FZ+KURueDjP6cp4mAZH6+xWCDXp/qTIBLUKc6v4RAFz
 ZXAk1f+zyWAVbbK5FSXMQz183iKjpy8YzEgJgREHPr7jJci+OHjW0wwfSE82fgD5eTRn
 WKO1nYCUBg1T/jSM1zVawn3zvvMZKnWUG1kAhTcAF8e6O3BRA/FrQkbcZAInT5y/67b3
 FI4v6x6368YLaVfje5q6TtwPSIy4XbbjSciy/+Br+kVaPHu07TSHvjHy9LNYbQpk0Ex0
 kQ9yffO4ttsiDTKkCbs3Uh7Zp305LPcrq2KFUrzZd7UOxWXik28a0Da7ZXT/mpRJansy
 StZQ==
X-Gm-Message-State: APjAAAV2/s6KT1WMSO8kgXwiZCIn6hC+1VIj3r0PrMEDHgM2LpEgNvo3
 3nfjhsQ3neZ2QxjMVAeUkiQuYKvIMfTEv0H9eDk=
X-Google-Smtp-Source: APXvYqyWr278IrSO4CnX6pFZ9Wl58MUYedOnyvk8pxM6SrePBmi5hi7cVoqmaPrJeZcTErFTwf2ZX5IvS9UtcYaQ0xM=
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr13554485otk.107.1562588570194; 
 Mon, 08 Jul 2019 05:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <1560802696-19042-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1560802696-19042-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Jul 2019 14:22:39 +0200
Message-ID: <CAMuHMdWsixXYoyL-LR8TLhBJJWmO+KCxPG7fSarer7=sCpzOSQ@mail.gmail.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Fix register range of
 display node
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_052252_295338_0D5F6678 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:18 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Since the R8A77995 SoC uses DU{0,1}, the range from the base address to
> the 0x4000 address is used.
> This patch fixed it.
>
> Fixes: 18f1a773e3f9 ("arm64: dts: renesas: r8a77995: add DU support")
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
I.e., applied and queued for v5.4.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
