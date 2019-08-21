Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B16A97590
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0th+9j+9/NNVxzApKgjlK08eAXmYdBZZ/C8O0uGaZ/s=; b=Owk6/V/bFQo14G
	27ghHW88k8sL6MGASo4/era8+hq5JYU3KxgjCp4YbxWs9bdzzKl5kOyEMOL+CfTszu5VOJdbZdiUr
	kn1k2ZX53e+hfSf0k6I0YSDzeKPoxc1GVz8XuSaOY7vvqy0+yrTJPDmntFNz1srK+wbjduFesqI8H
	wn/NRRoR0pq43zX9FNRFBiwZDWvDAgcMFDuMK8K8WqdQo10zohUUa/sx1H8zQ/i5fnuIyugYriDWB
	Y4qRdnf2zxbiujk7OdA5vvXbgue3b9RBfPAeeQ2ta3WBboF1IJHIGdZ8iZMIQlOlKyOUyBWjcMeLv
	hgyzpGyFKusXxmR5w73Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MWm-0007po-V9; Wed, 21 Aug 2019 09:03:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MW1-0007F0-55
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:02:50 +0000
Received: by mail-ot1-f67.google.com with SMTP id j7so1350723ota.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7cg/if8xMyv2xZ/fkTmB1UcQjPFUbR3bWkGPbx5QE3w=;
 b=GndYcRA9l0D6I5BejUKZT0WexpYFiGuj+RiKXSjDt7SO0ZkmLwbYZXfUEq3waUlfJG
 y8CqzuaVAuaMEukVXXzZ6z3Qtjjl+8btfhYJycCxWuzHSIJS6zUGBni0zGlI1McV+J6s
 nJUkGOWxj/tuC9pQGCQS60FW4SNDGHSLeqUEg3hZ9PQWJPh7w3qfEh7vwDROI95XC4r0
 BTPUNCgFeTW6PwpDvgNaHlRphQaw1UAj7YygltstyNoZDLcFLISalFTyhF0f/Pfw5GZB
 ngTrs3TKdbiyAYdYKvhS8/dh9S/YUUEhYMhCQNROA48GglLQM2Zwd9WdqhRvaItfhX/I
 nywQ==
X-Gm-Message-State: APjAAAW2/71AJS+Ygz95krai5EqiGC48mIMgBK+ctMlNvJ9XKAR8dwfD
 m0RqZNW2vPgJR5BD8x0ubWL2zdYcUi+Dfmi9gsY=
X-Google-Smtp-Source: APXvYqxm7h3BGhb2nTaO0TRFEmMhI1Dr7vA+vtEpKooPjV0IP6kH3MN7VOfdj68FwNDdHJXUPZbjhB746bm+q5wcQWg=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr2615380oto.250.1566378168114; 
 Wed, 21 Aug 2019 02:02:48 -0700 (PDT)
MIME-Version: 1.0
References: <1566219378-23126-1-git-send-email-ykaneko0929@gmail.com>
 <20190821085710.ywva3oz733hxagnc@verge.net.au>
In-Reply-To: <20190821085710.ywva3oz733hxagnc@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 11:02:37 +0200
Message-ID: <CAMuHMdW-K9s55TaRMKyNThMfUP7j90sjCK5vEeL8hZd6SCPsTQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7796: sort nodes
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_020249_234826_6928F4B9 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Magnus Damm <magnus.damm@gmail.com>, Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:57 AM Simon Horman <horms@verge.net.au> wrote:
> On Mon, Aug 19, 2019 at 09:56:18PM +0900, Yoshihiro Kaneko wrote:
> > Sort nodes.
> >
> > If node address is present
> >    * Sort by node address, grouping all nodes with the same compat string
> >      and sorting the group alphabetically.
> > Else
> >    * Sort alphabetically
> >
> > This should not have any run-time effect.
> >
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

> Sorry, I feel that I have missed this in other review's too,
> but, isn't canfd out of order. Its bus address seems to place it
> before dmac0. Or do we prefer to keep it grouped with the can nodes?

We always group it with the can nodes.

BTW, i2c_dvfs is similar, but it seems we deviated from that in at least one
case.

Once the nodes are sorted, we can run my soc-dts-diff script and fix the
last small deviations, crickets, and typos.

> The above notwithstanding,
>
> Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

Thanks!

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
