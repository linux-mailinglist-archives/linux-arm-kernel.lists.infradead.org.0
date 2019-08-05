Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8328A82090
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+d1SQfCQ5wh6DXlsTvWZ1Qhkq/H2YwMVyweNc04R9Q=; b=g7E4KOPF8Dzizp
	1V9xBEq/lcDDtoTV3j0q+FhAlnuSVpsPJnLtqYfD+eRq3wYLlxZQ7x719a//KPKCdS213uv9KbQzP
	U3MZyjzIaa4OrUNAnLgieyaU9mNc0532cNaYYjHRg9khAOCl2D7SMyRkGn0tzJyIAQp1+cL0nH1eu
	Q4NM7Fypx/9l29z+1DFMzok7PGRlFSD5bmXfCS0PYmsWr0prVow9LvdHNRwcVmnASWCu9SuGFErpT
	1Hj7RoP2xvK+G5mmgXK6d3wLel6QhCd6QHZd4KRAOafZdY+1NUFwkeepS8DgWeOnoiZ+Qm1RYfGea
	Y2UzLgKPcJZHDJmP2L5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf7y-0007jX-2F; Mon, 05 Aug 2019 15:42:26 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7f-0007ZV-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:08 +0000
Received: by mail-wr1-f68.google.com with SMTP id n9so85016032wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=99EgQi0zZaOBFAUbUdmUq5t25cjQ6kTbM9mxbRj6mCo=;
 b=mD8XD5Vg3FKjaD/4vjqK/R41VPM79VC5EBA6PYXi0aY/s4ozvdWBPZEd5nUCNPfu/x
 fnkeEnUHvxZ52RaCcDyzdjnlzUXUBgHy4QOokFn2Tf7N6LbKV46RFKrQtGDuRzlQ2fKH
 SNNrOWdZNWGpRB+b/Z3SMaVYpPB9c3pSH1jOIABZDMoxCAAxHZYW/K+fhcE/BmxwCubt
 Iww6kEJ0alZTrxVNB4OZdG9uB7Bam1JHjebiqMQZ0VM0/mNS8ETVuKQ7LARS4iqPydv0
 N6h1et/IlvZY6cH1grG9NC51h69TOS3qcnIqmWCGz9LES79tQq1e2UOFuI7eMeYo5+7R
 P5Xw==
X-Gm-Message-State: APjAAAXqab/jcWO1LctOUHIgAbl8hgajK2qI4wQ0bk8CoH3JRjjMgiwV
 Iia6SxDh8ip6RdifbIWizTXvnt306r1OM4f2+Gs=
X-Google-Smtp-Source: APXvYqy7XWh90fknvunI1t1TvAKGXPAagsRrJPDK9HkOrjusVdFZePVVSekfmXhozR2e9ErhG8cYabW5wXO/V8H2xGg=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr7935087wro.213.1565019725153; 
 Mon, 05 Aug 2019 08:42:05 -0700 (PDT)
MIME-Version: 1.0
References: <1564669313-22427-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669313-22427-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:41:53 +0200
Message-ID: <CAMuHMdWTAk13Heq_0OQkkxnoPFEoWUpzXbyTDawGbXDixg5brA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77970-eagle: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084207_708533_3EE3D2EF 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On Thu, Aug 1, 2019 at 4:22 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
