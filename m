Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E140E82092
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQatvDjkCm4Vfhhwd9RD4LTbutxvrcrBpvsarVfAh3E=; b=g4dPva7PkcCFiR
	H+FV6H5Hu/UqZenVW8obBChwy1wAtjvbfn7hoA7uaGTLUsA0UTaQAF2mQlcds0/STb/PaPr/aYDs0
	zmH27p6Aexcu9awFWbfvfUn0YLWMLqiqomlowo0Xxh7XZgbGvNK6PKFNEskO8cLINIz+KKyUAVqew
	E07xlq9vYzdX3xpsfz8r6iX2H6cz9KcpVWTmNyDAT2wrQWPQHQtQGkuP0krT2gptkkgaGwmtfxfSX
	9K5th1o5bhPE5rqDH+w9G7IvddR4uvb7a6UW06xucIpK7SzK9tuup0DkNSDt2Bb/aFEMYI3LfY9ss
	ayXSP9mSIBHPMT1morAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf8N-0008Eb-KX; Mon, 05 Aug 2019 15:42:51 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7q-0007oc-H7
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:19 +0000
Received: by mail-wm1-f66.google.com with SMTP id p74so75191026wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JHB3YRpbA21rEsaEiwqW6v/ZPe4iBbBAdrfJyabclTk=;
 b=V3MPKv+UXUWeNao8uJBq0W+U1BJXWEPwONGPK/RgHYr6U8LIIs0sfyIvHgN6HHV4Ty
 2xcQX8R8DYQHP6/REU2fucz/d+iuagj1giW1biWXWizNM9M+av8QmZJSm2NEUILCD68e
 4I10LoKaK+XIDaAzD3EC1BCANkbVYW5s5kkLEVstp9DbCzp0CwcNMN8edMjRVecdwa/C
 y/Eqy9mZeeXKas9PFcLkiFQsYfcat0Uzt+GwEiIhE1VcHNJKN64OlcQW2ygzXvw7d4jY
 XzkE4NL0EOp00S7xB16TWtqO1A3OVFta79cR6cJlw+T0GFSVpsy3SO9787qjodhdUe2C
 ipKA==
X-Gm-Message-State: APjAAAWaF1SWdd+2m8HqIEqS9kd9szGX9pgPl62N9dRirKdG8khyrK6j
 DyNezMP9HR3mVoZO/ilHPabfDeJymUxUM/3gfxQ=
X-Google-Smtp-Source: APXvYqwGH0WxwiEM4rEv8gjyJAJpqpLcNgB8hwXg5oELB5DdDMcoSoZElVYpCdaot1+js1CzioCzjU28Ess+5w/dpqk=
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr18649465wmm.72.1565019736805; 
 Mon, 05 Aug 2019 08:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <1564669414-22553-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669414-22553-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:42:04 +0200
Message-ID: <CAMuHMdXodj0-FL9hBP-wO77H1JnVH7hV_9ayZwm0_N3+7=w-sA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77980-condor: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084218_625819_A27F4F2F 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Aug 1, 2019 at 4:23 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
