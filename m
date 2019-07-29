Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C7278D29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY1mFK25vudgb8dtzjfJV6pYJq0hVe/39VXBMH4eCSc=; b=iibrPPlEZppvcR
	7DKtbs2jDwwluE0B8airw5C0P+9m75EGKAGXlUwduYAkmyuDIa/84W0WALYmQLdS92FItpD5CoHWT
	Dhr9Kle5J5AI73x1y1dPmVZQZQskLWQuH85Cf0xw5GUGXPCyAMEOPsNKObqFNyZJ5H0UsW1ySVbyV
	bsMb4X6SH31RL94YHHJIbfGVa9FtzcGVA/YiV5F2FkuczljdAcwxyKz1lmR4X95Sr9RozQsZ3WPSX
	BYMWc1JU4Wrow0cWEtCxV6nyIY2jVpzxWJ5KzC4Y0W6rW/6whE+L8xT/9Lv4T0V1fzR1gxr2GCmmR
	7QoXwX2vUy8gBSdGy3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5zn-00074q-8A; Mon, 29 Jul 2019 13:47:23 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5zO-0006mq-T0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:47:00 +0000
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6TDkPRL027852
 for <linux-arm-kernel@lists.infradead.org>; Mon, 29 Jul 2019 22:46:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6TDkPRL027852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564407985;
 bh=qLoqc8SgJBDFKaergokyblK4+gJ/6TiiJ/m2LMCPOyE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2kvi5h8qkDiPgt5YNVslQK504zDo/DxRG+SiXeimizVvoxBST1QbwQ8cMqFT+jefY
 WueFqsQiEXn4LvOwqBgU1e8QjddnuBVC4kfvq5DIz6CpUub/5t/MPnjZLFEqH/MOqc
 ngDGdTF+CgW2XenNAU34nVe18hPNmGAvmGIWSJ0fgXrwuvK8+WGVVLvaia4eQts26G
 StMc7QpBfT0DaZvFu0Gr/ZcUUqWcloTLTiRJ8uPwUcQusxba2UqCqsw85fGeLcZ962
 7fRo6U/LWNnl5NZxia7PN/a31THBl82Nu6zKemDZ+p3iDaHhsG00UC7KK+G6es6bWk
 g5B2DoDnr54Gg==
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id y16so40734833vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:46:25 -0700 (PDT)
X-Gm-Message-State: APjAAAXK5gJ3ucdmyF/kDJAz8lX+6pklZ0LS4zrN38TkgSSmjTZLWFpy
 qhZE34+9zo93clWS0RpymuayFKwBMPDRx0e/Cns=
X-Google-Smtp-Source: APXvYqx0tQvho/eS+Vd4XAH38/PRJt4peo3nbQti7+g5DwIb7TijNjEmOVk9sZOM4iL75B9cLkHSgmLm5wJs1UX3RLk=
X-Received: by 2002:a67:d46:: with SMTP id 67mr68024863vsn.181.1564407984713; 
 Mon, 29 Jul 2019 06:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1562668156-12927-4-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-4-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 22:45:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNARNHPwS50mKj72+3OWNODYaRUGDQx_b88mf=Fv34nR5yw@mail.gmail.com>
Message-ID: <CAK7LNARNHPwS50mKj72+3OWNODYaRUGDQx_b88mf=Fv34nR5yw@mail.gmail.com>
Subject: Re: [PATCH 3/5] pinctrl: uniphier: Add 4th LD20 MPEG2-TS input
 pin-mux setting
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064659_177252_0AD0C616 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> The 4th serial TS interface uses the following pins:

This is the 5th pin-group
(hscin0, hscin1, hscin2, hscin3, and hscin4)
but I see what you mean.  So, I do not not mind.

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>



>   hscin4_s: PCA[11-14]
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---



--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
