Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A899397533
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqeyoXVQMRmvLBXsXPZX02H5q/Z94DO+PYkGnFL0fd0=; b=Q7UaiblB/pOPJn
	qgeySYYhysAGyit6Edb18Ujf8w4UF47bxgkIxZTwumvVWrUHhkkxTt09aFY0/ykSnfEEWvL5EOvF1
	sqlT+5RbQQKjPYc+Vs8fn5qRAfByI363HrORlusCuqO2plAxdwEV7WXA8EsX+6cy2vg8CbuM6ibeK
	H0EGQEx5noOCmDT/nkMDEiGuJXLhb0SyBjU0cWonIvOn9e+erTLQtK1qIKfRP+1g7PG6wb7hS7/BQ
	P4r7pYsw5/tHZ2dI5WPi2yDvd72TSPsNBBXggZylrj0CRA6/sMj2aokhWTczmaJiLSWaVEFlHmJ9+
	HN/pZiZjPFChpcUed5YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MCe-0003Az-1l; Wed, 21 Aug 2019 08:42:48 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MC8-00031S-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:42:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id q20so1351372otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 01:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcCL3wv+BmCUtlHUd1GtMt6GC6B3UYpLuYNiU+77akY=;
 b=m2IT/4dz8A4k9byNZwFPi8kf95hIaTfN9KG1TtibCKrKAV6mP4h2qxWZ60WskXl5bu
 hYb4iFJpgev8xy6XRe6j5KketeC2ID3EGpt9B8B9jXlm8TGH7U3lBVEJg5NHFIbhtNSY
 MmS+uNNDii7nl5chVewBWwffWvY9SbJw9tyAXjTGAyn2m+S74Li553HIpkSYWASIqHJB
 eFgesnzYJ4UkowI6LaXqraMHB6n4uZOL60pIwRABH1lLNmYVn6ZYRNxDJo6vSKM1cXJV
 nd5KBQB3WnitAvjcGIDzjfuFt5JgtNEvETdzisRAYq6cY5xh4SY7LfuhtxQEehQuV+0Y
 fEeg==
X-Gm-Message-State: APjAAAX/93u8pSpMoIOsCJUezbS17UaoGSJWbhxOUtbVern0q+Y2J/fS
 sImO/b/mLTqFWnFxWR2Ns9Utvf6bxaDD6wbEXvs=
X-Google-Smtp-Source: APXvYqzOW5uLoow/xp0Km1ynU7ck0Zznytx9ikVVBuDkhA2SpBQ9CLc5kowJrWjS8M4IfNu3CU+6q8VzzkSjpyCW7x4=
X-Received: by 2002:a9d:459d:: with SMTP id x29mr26759808ote.39.1566376934821; 
 Wed, 21 Aug 2019 01:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 10:42:03 +0200
Message-ID: <CAMuHMdV7Hm8gEOD=ehS8K1G3W6MjcTwZ_w3n5s5YR1uppyJVyA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774c0-cat874: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_014216_073975_70B4E35D 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Mon, Aug 19, 2019 at 2:55 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
