Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3A7C0216
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umSFy+B266l1BaGGO2Rt/2ICsTqJRN4y/aOZzZMQrTI=; b=X+nDyOV8oqeoNU
	PHXjjIGLqbpyk8mK4QcJnbGy4J8h7FxI7B6onPn8HPbJ/qAtnExB7rLp+TeGpLmes3RnrTHgrUYrO
	NjIttZyw+qrQsNXWB1iSpPoMgfq0/Sn2qV7gH1Gh3zo7bMG1kljUn6oyAuI+jKCrXZRc/kkwYk0hD
	lWpqlPKjtjeE9Z//yTweCpTxNik93+Pn9X8Px7zMOyPb9eFA3ekuW6+xuJU0WCuxTLDKsOMrAvmP+
	UbcpL/5jsoB4tGWTrgGBLmVte3bWpkvtKxhSKqI07A+D+Q/AOI/l55TfcyBuPw3TpCr7e301SkjHU
	w/SXfHlNJpo+Y0F7pFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmP6-0003FK-SA; Fri, 27 Sep 2019 09:19:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmOw-0003Et-So
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:19:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id z6so1670486otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:18:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1BH0Vz3nqYEk3uBlmLrPdAWKkQEPayw9EpZKQBCwWhc=;
 b=gWXFIO0Tt00pHBXJxFThBeezGBD4E8e10152bbRWVDVo/mI+Ykw6CuIZZvng9KY4Ek
 hSnzDOk2GcamR04zIlp6Raeo7NCDHvWibah82Bqd3RVyI1SnJD2dn9OSoNJ6mZYA03nQ
 bJtQtF9/R0gHM1fbpIh7i8eIcGteFDX25BL7AxZ7uBlHz1GMLfIpFI4g3VVzPihqnNes
 /K1Hzgty2YEkaU1HNSyE11tfGhI1FCCZr3t4L34MZwLWuZcAgaLUHI0CQ2cK00spsFCW
 Dtpars2QKnud8rsVJ1ByUSgrqepISlBi+kkwPd6KK9kf4K5jGAEezTWo9Wq2SPeCe0fv
 PKEg==
X-Gm-Message-State: APjAAAXQwMoCy9Xxkt9ZQjsnatuo5cRrGRWHhZ6bzfkneJY3vhyMhRMQ
 d/SxiUTXPiCNfZPbrUORb2BYZcc14yX5kASTm6M=
X-Google-Smtp-Source: APXvYqzbPjRiKTghIyriIKOe9Ucwh6OZNxL7ThafEIlwv9M07UyWLoDcrPJrT0NojwgaVgn5gQrCwXQhwitVJOPGwpw=
X-Received: by 2002:a9d:193:: with SMTP id e19mr2283511ote.107.1569575938022; 
 Fri, 27 Sep 2019 02:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-3-robh@kernel.org>
In-Reply-To: <20190927002455.13169-3-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 11:18:47 +0200
Message-ID: <CAMuHMdVmG9NJ3eDWTGbMtzH7+Q0HDOjDR_QoGoGFN4OcQUTbNQ@mail.gmail.com>
Subject: Re: [PATCH 02/11] of: Make of_dma_get_range() private
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_021858_930695_394503F0 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:25 AM Rob Herring <robh@kernel.org> wrote:
> of_dma_get_range() is only used within the DT core code, so remove the
> export and move the header declaration to the private header.
>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
