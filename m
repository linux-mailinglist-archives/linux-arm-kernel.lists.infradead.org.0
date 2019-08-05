Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53C78205D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+fCn2zQmcCL9f9cX7W5qnQWUGvL4DW8Nt+VmqYyfFk=; b=NC/aIsHpity6Xf
	OH9GBWef0Fzo1S32NqQot9XbU8P2fvo40Uas8YTZaoC9Yzr1YoePXeqsejZ4neGeCbh4iYoFFMPQs
	KbSeoS+PgIvc0MoOWuvBu0P0BKozAhb27RgmSa9e9DOoOg9Ajjb2NV1yd15ZVBii3YVYKlFgVzWJ4
	rLcvhdFr4MCrPQa0qheOcJUWtWCwytzuPEIsbThSjdxWO5/LBYypxCZDRBhaep6xyDfCWHzCIDoDD
	T0D6yTNIBTnK5WZbQlk9vzZC4SwihamQ4T7Sy5iAE5OM/Xv4s4hwkJdZ9w8z6BdSKo1a/LAItThQJ
	Z3jULLovUUB/rSIdF58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf1b-0003bM-0A; Mon, 05 Aug 2019 15:35:51 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf1P-0003au-AG
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:35:40 +0000
Received: by mail-wm1-f67.google.com with SMTP id 207so75217705wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:35:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmJRoQM3fGcHABINnJNylqfHq7bGP8+JiPogIEJFKZU=;
 b=YXcMFOdF/XlmGwCLxG5UU9I2qRcNyFq4PMypO6SZNkc23QKP4RkKshTiJBRag63lWC
 msM6BfhiZzDbeXjIV4/aXMiw2E7caEGd17/pbYI/YBFP2jf9eVPq4VhcGjHKQqcVD8fq
 StjXbj3k/jCAHEpc67TsIbAbZUCEIwil9kA91GQOCR2cFhhe3Z5KQf7YFd+bffp1n29o
 rouRb54gSA+wpvCU8bezF1ni8c9vSon0dmog2+7sqficzPWqHTXofqv1KMuh53O+tt39
 Y+s5t5GuTXoY369UZzEy68SQp/wCp6/M0mkaBqqOkXg71huJgEmLW2wRxTdyvORxEU4R
 gDrg==
X-Gm-Message-State: APjAAAXAEHd/GRy0YfHNZBAWR6/5Na7HumTiToMMlsloyHLSOTwWQfv/
 5Lm0ounX2QX60WfatkakDQsdb0jCFOPWPJPZ+UY=
X-Google-Smtp-Source: APXvYqy5YNy/D00IHVULrKRphAiPbmrQel/0DCxGC9eupan9UJa7ZKAOgcOvvqCjrIfVJ4I/kzVDMlalogjjbRVzBpI=
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr18630225wmm.72.1565019337169; 
 Mon, 05 Aug 2019 08:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <1564669476-22680-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669476-22680-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:35:25 +0200
Message-ID: <CAMuHMdWc5Rn7XHqzeiGVOiXxDJbdFr1ZN-=fcb=F=gBguY=g5g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77990: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_083539_358450_5A90D1A8 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:24 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
