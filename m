Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EABA72A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAB3IX/BKvKg1iiu9qy7bBvch6jrOw5gCbkalXUTRZA=; b=owh6bFTtVGtygn
	eVR1Z/9qeHGt/KDwjqjBe3bdMqpyZ9EUyrQ8p4yw3Sh45aPrXPITen7jHlUpGShu9PGFiNCRj3N1b
	3AI8JuluUDUjVGvdUnuN18ThuLGrQdMzPmD/3nB5fx0CgMRhA/nhPXauXlz4A5ub+i9FQRAO+GSBX
	TMM0WBjPByxMj/k6/fshUJcYHHvK6q86yfzu0EzGCDfY5RR+gb19EfRhZmeiyJxR+xzLppwv3kNSU
	q4oNjc3GQmCEskqW49n4nfNjPTm9SLA298U9K1NkelooCbbPBZNPG8jjFOCBZQMJZdDCSS7kySeID
	uTS967u8KwcV+KPEbdKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DjD-0001pI-E6; Tue, 03 Sep 2019 18:40:31 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Dj1-0001oz-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 18:40:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id h4so10192883oih.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 11:40:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hwW/ZaCzW4JXze/ZSCYCQTqum4OOdWq6wZhwD4U7IbU=;
 b=JZjRWCuRtN59XFbQ5yDrExhXig95ABtddMiPOhu+j89WWmuHR/E/1v9IthkT46x7SA
 lr2ZontjaHXW0Jkqxx3Ql9h7ZgifseHjsRs7Qbo2FdWwA6AJ7r7NdMfNmgouO44XOaXh
 ebB/QasrAnIuSOhca9T8bbQZxTdqQzwXRU0klWS0cl4ei6a5OsBZU1wgKrb77JE97UT+
 aDIfXC0wr23RKKMXklJ2NjyEHMa6PAOYHdsPxeZ2YwEt3U5QTYuuxC6a4sqlU2je5Uo9
 6Po6ghpmwOXDSih2Unz5forVS1xuIBMB9j3xfmQYVI0lapAnV4AII5/OpKv2I+GZzf26
 Yxkg==
X-Gm-Message-State: APjAAAXFrSuOWT2ygAbOImHMXUhrAGsb19JU8jPTQZh2ATA3sbbCLFZr
 5Ljz6CAtHgISXDbVkjWyCRGjEuexzebb3gR044E=
X-Google-Smtp-Source: APXvYqyGvUJQaiykPAO6kJHLzsK+/i0wzkg8waebEBs5LoAq4nq8eBgl/rwnf8jyCYHqE83yAYLHkkaiXusXBEsgjDk=
X-Received: by 2002:aca:f305:: with SMTP id r5mr495480oih.131.1567536018191;
 Tue, 03 Sep 2019 11:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190802120355.1430-1-geert+renesas@glider.be>
 <20190802120355.1430-3-geert+renesas@glider.be>
 <CAK8P3a0S3axohc7iq_vx_5i+KGiC0fX=rctvY8uXdhwz6Z9YCQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0S3axohc7iq_vx_5i+KGiC0fX=rctvY8uXdhwz6Z9YCQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Sep 2019 20:40:07 +0200
Message-ID: <CAMuHMdWifJ9V=Zzs5wk2wnhEXdJ3LXJGO7bcinC45g6a-tpK-g@mail.gmail.com>
Subject: Re: [PULL 2/3] Renesas driver updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_114019_538062_F4E19C6A 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: arm-soc <arm@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 Simon Horman <horms@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Tue, Sep 3, 2019 at 8:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Fri, Aug 2, 2019 at 2:04 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Renesas driver updates for v5.4
> >
> >   - Fix a flexible array member definition in the R-Car SYSC driver.
> >
> I see I merged this earlier but forgot to reply.

No worries, my git notices.

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
