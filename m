Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C049315681
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 01:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JugVlPKlwmaCan34XJcvRBEhP0NhfDCxBmwXg6ANvDg=; b=uVqzGhFzIdY2lf
	4m6IfCnfjJzwxX14JjKZeDjwehd+Ce/T63Vs/4raLRxrxly2RI/5IMnlVOqXbB39o7URT/qFGXa/k
	PgazqwOcC7gciJkEJ+7XQ2+tV9rnrkrVpkGMsluG9lgROgBU4+VFB51qXxsYvtyloZSf+p9Eqs5zf
	Iss892Yj/ZxGADXn/KaDR6yihfbpiBKEJxkK4IDxbkXB71Fguur67c8ybdqtwfagdFE9bgDP5/L1z
	9E40S6pxrE0mfDTy6Zdl5YUIdKONPz77vdQ310ZuguaoSNkCDbEzkAZd4LSmjRPWE5vVKrWt5fXnU
	nmZuKWfZTPWqRDZHcHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNnHH-0003Nt-2w; Mon, 06 May 2019 23:44:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNnHA-0003MS-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 23:44:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id bi2so7138361plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 16:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=lf5H4shj95cMGbwI5GeOOvJ41LL247SrQDRLfwxX94k=;
 b=z/yx1XwWFksdPj8nGuPJRGqifxeYvbRRuHNzzITSEsyMPKaCPf2neKw46ja9IqbVhJ
 NQ3XmgAp3P68euubnKEOgGd7P0LokFRIf79dma2U5NJ5NXHNmQifsX1i2yzZ9RE8HHPY
 H0vBzUTa7wtX+Pa3aph0WMfsN8QkQbeBU05s1BcH99yT5R5T1c1P928FwFuiELh8FPHl
 cvYNBVtrjH6mGMVqJm1qC1sA9EYw6E9S7BHlH2jmrdaxUaRCVOKpeNHdzeaxCsg5K9y7
 URVA88/ttt7i2Ejb+nQaO/It5FtZDTinOzHtoRJ6lmpahs5QAQ44h2jxC0WuU2Kn1nbY
 kbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lf5H4shj95cMGbwI5GeOOvJ41LL247SrQDRLfwxX94k=;
 b=H8zA3lSaEtvEt3OVADHHIwNb6bmFi8Uc8R4CRH6kkuihjV7kIj3FkoB4vUgQtjlBCo
 yuGxW4MYOlLrcxdPBmg7oL0zMk9ed88bm5aVwNk4UZ/VOFlnYbTz80n8J/JPY28ZL01l
 fyMJ42H56KHIzT5/AyYds9Qe1yUlYItVnHTuILutB1m8pE2f69WMgD44rLUXZTNis1mT
 Erch+QIBWWjzszUS2b38wo6J8F1vgdusSQf1g0oBA6aoyFTY0w2p2wfvDYWjJ8ONaRMh
 mJZAU7vrf0r/bCXkYhx524SmHYNB5S1oCm4sYZoexdVWZVig8D1MDVVwUxCi/AKbzaOz
 aGyQ==
X-Gm-Message-State: APjAAAVfXRjwZCJOgfWw6FvqMqLDLB7CELPrhdhBaIJQB69Xz9eQFQOU
 IEkqpCQtz1Ua2ibKChMoGDQtqw==
X-Google-Smtp-Source: APXvYqyzqVtSCvpVcNGboItbSbGRFBLEFuZnBKsL/llWeGZMPyX01mLCmCdAamq9cDUznsqt/wEbKQ==
X-Received: by 2002:a17:902:e512:: with SMTP id
 ck18mr35142629plb.251.1557186239423; 
 Mon, 06 May 2019 16:43:59 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a864:57af:5348:a6ea])
 by smtp.googlemail.com with ESMTPSA id 132sm15433855pfw.87.2019.05.06.16.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 16:43:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/2] ARM: dts: meson: two GPU fixes
In-Reply-To: <20190420093258.2012-1-martin.blumenstingl@googlemail.com>
References: <20190420093258.2012-1-martin.blumenstingl@googlemail.com>
Date: Mon, 06 May 2019 16:43:57 -0700
Message-ID: <7h7eb3kv2a.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_164404_097757_226E06B0 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> While switching over to the main mesa git repository I was testing
> kmscube again. On my Meson8m2 board I noticed that two interrupts were
> correctly set up. This didn't cause any errors so far because on my
> setup the lima driver is using the "pp_bcast" interrupt instead of
> ppX and ppmmuX.
>
> While fixing the interrupt lines I also noticed that I accidentally
> left the switch-delay property in there. That was needed at some
> point to run the out-of-tree lima kernel driver. It's not required
> anymore and it's not documented so drop it.
>
> Target release: v5.2 (if possible because this is where the lima kernel
> driver will land). No need to send it for v5.1-rcX because there lima
> driver won't be part of v5.1.

Queued as fixes for v5.2.  I'll submit when v5.2-rc1 comes out.

For now, they're in my tree (branch: v5.2/fixes) and included in my
for-next branch for some broader testing.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
