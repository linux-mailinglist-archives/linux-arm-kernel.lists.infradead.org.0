Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830397577
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAtooUwovEeKSXxr46ks9SYxUiWkVjL3lXVUt5sAdIM=; b=r7ky2bvQ1PFge8
	Vp/bRMO3ZOkZr1WVKoLje8kde4yBdJScLouQ/qd0eo5D1C3MGQRzOnDz+ss/dzcfJ0aN5AmIv410+
	rpYXnRRayIiogLpj2iwmoBdrrBD7ordz+sw1uQCMbl01XHy/8JbnEJiV+j72P+FFNTJs3MoMOuPTD
	mQDHUC/y4Y1vLQJbA88vR/DtajZLdmoP/09A8rJHUDrTlSI+/UsEwcSes/1tFK5qUOOGN3BBDRt4J
	zJFM+JzsoiINoV+OCSaV2UcXw/zb3MdWutGDRfYFpmIbjrbvw1tQZQjU/rSxa8zJhUmbzch8ahxFQ
	syJSV++dPF6QV18ctiOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MSE-0002Oc-8t; Wed, 21 Aug 2019 08:58:54 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MRJ-0002G1-BT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:57:59 +0000
Received: by mail-oi1-f194.google.com with SMTP id l2so1053023oil.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 01:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcgOugiEfu/sl/GJ2HeNJnHlOVsMexHqTjarEG68Ugc=;
 b=jzcIOIBChulCJjKYaUyDoGgH0uRto9XyNKl5aWCuKg1W0uVjTYk3xNxpLHhKZ5A9fQ
 J9apoCSVHzjFV/VpaB8g/sFcAOyGOixlH5GyYS95Fgc/r/vw4tKRAKVrmPSwXQ0yYIQO
 /KV8RThLiFLemJ5xp385YmRIGJ2WM7o/qkCEeYsNAQRUZu9QqQv0PyDwYxO6QrnCMHgD
 3UPu6L2+JEFjBYzsLaWktyxb6RlR6qsh0OfprKZfu7YvPVhmQTp9tvGgnbJFZcQIL38M
 ggRP8Gb2kCSiEre7BLfLpRRB+JQjVxamgawOICT8G6aqmHKOHxWQAlnvRDi63AAy6l38
 PaVA==
X-Gm-Message-State: APjAAAXL/FcvSmFXd2JPCZhh34L5w+ZQyY57llwSRSslnl4bs1mqSkRp
 tbNHHr3l9UHAr18vtsa8+L6KXF+pL6iVAHHF5tU=
X-Google-Smtp-Source: APXvYqxy6y8+5J1tomQwt6QbAg4WUtYsCs6uH22hUxo1eXXdcOai/ieQ9TtFJITM+FVtdUmrWNQN8vajebdRIle+en4=
X-Received: by 2002:aca:f4ca:: with SMTP id s193mr2823128oih.131.1566377875587; 
 Wed, 21 Aug 2019 01:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <1566219361-23088-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1566219361-23088-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 10:57:44 +0200
Message-ID: <CAMuHMdX_v4d_H6K6acr0C-BR8tecHj7egT2jHh97nxu0aPiFKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774c0: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_015758_485528_01B4EF58 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 2:56 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
