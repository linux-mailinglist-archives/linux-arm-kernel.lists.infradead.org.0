Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBB9122B4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19Q7dGPhvm2WljF4tZ8xMf35vih8e+8d+soZ+ETLQO0=; b=NlN46G4NKIZ73v
	7PipGVmD/KwCKO+ngQuGg2mm4V7Kd8J5vW2DNQYflaw4Uz09cEOMzqH+THdFDweiqBzQcJZ/FQkod
	vtZFovc6UnG33hmnXbYJMPTyUcaxNDvPj+lwUDxLN2tIWQWAl3d9ygLkZTdQxL5p0HUYVEvVvQoJc
	/ghlP1X0wfuJmck2BZGna6jp895NG/t78QAQTETSX3UeeqXXcjLyc2zDVLtXbGfv82J8KEXnceHWY
	O/Ewdn9a+y1T9AdUEhtUutonUYYdAmBx0IfIWwhxcRyjqUHdQMKT/BiuYwjxahnSVh78hX261boUa
	lj15G0Ji0KadJBecpfyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBpl-0001je-Uf; Tue, 17 Dec 2019 12:20:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBpZ-0001QY-4e
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:20:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id 77so13546811oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 04:20:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0U15JxqTWohe4GLhfwPMbmA9156s0i20ALyMdM/t43M=;
 b=Qp/yrmOSOjxA/jRFzlGC9mVRk0+3QI9mzwT219s9pBkdtZsU1+ClMBxlF1MP781b8P
 IfYieTkabp+eNwk104t6xn5GihJhYGKv3b4/mZ4skqgUS5taY6dBadri3E6cri5faQFf
 2/nOAfP3GLW+VpCTL73817JOf79tOx8NH/hhgdLufn4KQGBqJDdfXNnM7MJ4fnZUo8/5
 O9UJzglIOBccebFuP8XdcTa4DuGPfOf1PgabLZKY3POrza/4E86ABc984RvwYDEABhQc
 8jqv8OOY1VbPkWjnMWU856oZrbniLywbFREDpApfHZ7l7tEFG2qstj8KD4vP/rKTl1xQ
 v+4g==
X-Gm-Message-State: APjAAAVfDiHtdhiWhRrbQj1fiTYMOXhT7f9pNAH42quY7p2o+syXDuNA
 Innff3d1n9GTExDR/hM7A3ShjfXXN2ZbJYhSWCs=
X-Google-Smtp-Source: APXvYqwkdCwHahSuzYZ+Y81qKjRN63MiahQdOtK75IEiAYkiWMv9UXYUX0fqo59WGI8tjtR25Z+A2O3DlS1vzMShzgI=
X-Received: by 2002:a9d:2073:: with SMTP id
 n106mr37395735ota.145.1576585199481; 
 Tue, 17 Dec 2019 04:19:59 -0800 (PST)
MIME-Version: 1.0
References: <20191216124740.16647-1-geert+renesas@glider.be>
 <20191217120116.GA11814@vmlxhi-102.adit-jv.com>
In-Reply-To: <20191217120116.GA11814@vmlxhi-102.adit-jv.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Dec 2019 13:19:48 +0100
Message-ID: <CAMuHMdXoKN0X+pukArrnfeSs9vaF20sW2zaf=v7UX2WD6w4G-w@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] arm64: dts: renesas: r8a77961: Add more device
 nodes
To: Eugeniu Rosca <erosca@de.adit-jv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_042001_182518_E0B3EAA1 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eugeniu,

On Tue, Dec 17, 2019 at 1:01 PM Eugeniu Rosca <erosca@de.adit-jv.com> wrote:
> On Mon, Dec 16, 2019 at 01:47:34PM +0100, Geert Uytterhoeven wrote:
> > This patch series broadens support for the R-Car M3-W+ (aka R-Car M3-W
> > ES3.0) Soc (R8A77961), by adding more device nodes to its DT source
> > file, up to what can be tested reasonably using remote access.
> > For your convenience, it is available in the topic/r8a77961-v2 branch of
> > my renesas-drivers git repository at
> > git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.
>
> I only see below r8a77961.dtsi commit on topic/r8a77961-v2:
> 8e4529f2ac8293 ("arm64: dts: renesas: Add Renesas R8A77961 SoC support")

Oops.

> It looks like the patches are from one of below branches?
>  - topic/r8a77961-extra-v2

Yes, that's the right branch.
Sorry for the confusion.

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
