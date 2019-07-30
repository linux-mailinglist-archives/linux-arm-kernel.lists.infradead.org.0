Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F7C7A3B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lGHOKSXF0fjcUT8Zd21YR635ffIQC3IxIwMZQrce7E=; b=FDcClz17NUc5CW
	ImJcdOO6/R3orrTSWq7N22V4QJfBjWTZk58oSE0QI/LuK0SmeMZX1VJGRkN4SMO9VKRJyCcKWT1aq
	Us+wCZs9nBIgiZ9mwC6uIGKELdPMFQmbohsxIXA8YPQcQc1dyQN2sV+hpCRkZ3TLhu1mZrS434dOW
	9Ti7ms2jqqZSkXe4FwaXORryJUhNtC92STyI2EaL7m/nl1Tsh0YIKyugLZN6sd7nB5kX+TqM8QVjF
	4BJfX7U3/Ajp6AtEQjdQqX3Ijy4UhlZNl/U5fRIez2Jy+DawGZpPZvvsR6DjLnGeqe4UxSyHmnZc6
	ES/Gb0KWij6fcs9TGdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsO9Q-0003Ki-7z; Tue, 30 Jul 2019 09:10:32 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsO94-0002lB-Nl
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:10:12 +0000
Received: by mail-wm1-f66.google.com with SMTP id v15so56402200wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j24m8YwIkgZoAdisYhIZZGOM4mMaO5nu7o1IplZhp0U=;
 b=XlKdMROhdhl7m8JgLPsBd29kWmfWNcjwR42IyZx9py3gf7d06zCgJ1/FUThvWenYie
 8x+MgVAUKX0TgdhkTyRJZAKGgZRTIouH7eg/gKyYPWNrhWjEvJpW/OTLoKpifEjDWb0J
 K0mJ7Vazn/gkR3In1crzGz5rhF0v4aol5ffueGrUJZrbaWO4br0mFEXEsLSAnQdjQs/b
 ja4yaQxYCpTy80fspUC0uIK3/q5sU/pwQ94hSZ7mKFFtND+pIhma8d7GYWJ+1J//aOUt
 ONvNBhDAV9oyXqnIH++6nHhkD1YLkGVl3pQLxvyX3jrUCjLTkEE2FJFZPBJm2a4sDesR
 PmkQ==
X-Gm-Message-State: APjAAAUOCyRmyOQydh1FjPvUL5NpjNLP7FLFARByD0nvCa7ieq2QGYo/
 nx2d7rJf9sJBdAtNEHZEMg0Iiee0j6LEgsh8pH0=
X-Google-Smtp-Source: APXvYqzPge52lU5A1/B7zTsY7olW5A2fkd5hOJKiLXpfIhEQv1v0kKof9M+mDPAErSronytfCxbIDsXyDNjrO38xVls=
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr71381212wmm.72.1564477808749; 
 Tue, 30 Jul 2019 02:10:08 -0700 (PDT)
MIME-Version: 1.0
References: <1563904961-2835-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563904961-2835-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:09:57 +0200
Message-ID: <CAMuHMdXbKrEKP4A33nP-N+x4cOeHPVxAJ=Cu+sQc9o4jDb7mMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7796-salvator-xs: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021010_874865_A0A0F2B4 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, Jul 23, 2019 at 8:02 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
