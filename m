Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE92C0239
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fwfkm/1mxfbA1dbWSk3CB0gNxhfncZXrLkxU8doG2Jo=; b=qy7kjSlDXdOLRn
	msqaAhjzfRNFK5/tACOX/XwgcVglgpbWmt1O/2q00Ic05k3rAJVmrIWTpHTIrA+xeXVdlUPAzNeZ4
	BR7Ibi62oTUnO9oqxJzIB1jRKsubdkDzkR1qWboKF/kiaaKnJi2wWqe6qiiTqjN+UXL/25Y1Y5zrY
	J6ZGFenwHDt1ETzuQ3pAS+Sg3WslHlnhRJ4De5wNIBujyJUdBLczC+9932SX3mQDmFMHjmTRUazRc
	dRi8x05HFdFgVNx6AnpENtdUXdoltduort/osVEQZBAp67KgY5brcoDpa+jqB0q6EWGNBinMqaQA5
	xZOLQBfQIIKAB6Tn+Nlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmUS-00066m-I1; Fri, 27 Sep 2019 09:24:40 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmUK-00065o-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:24:34 +0000
Received: by mail-oi1-f196.google.com with SMTP id x3so4654700oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PliSA9XuRMkzrOvLsXtt+pM6dMge6sikKc+gba1/4fE=;
 b=Fb+PpBXDFt+oPv/UkfwH7UUQxjVtMmUTfqDnurF2b3HwCGytovjoaQQcOXlMUsNEdC
 PqxRvqnCzxzsY7Z6KNdUTWgqCKsmP/561cPEHpCXGAbH8K/GE8SlPYQOxjhdC+6wlYFV
 W6DwJ9vfARjIajZB1EEaBXq77htU2AvV0nkb9KRHHMDBL/UuYydaRD5VXNZ17zsCd08W
 /MDs+Fk0kcWkjkjQSuoaOJwIsVcNJ3koKe18MwvYcCe7UU7trFluVOqY9bcHwUXjcaUl
 tsddBKoNE6WF7czN3PKgd/PAi9AJC9ZvSc8omo2GUe0wN3qy6rJxzBvdm7D82t63BAT9
 OiQQ==
X-Gm-Message-State: APjAAAV5SyYLB6j6EeQmZhL2BPhdcGoEaeATGf33wXyvU0f1NKfLIwua
 yJzM80Gk0ZJLS/Q8yripdL7QRCyhvxgS3SKowTE=
X-Google-Smtp-Source: APXvYqygMX80pvcFFJI5miUi9Z9iy/nlhZYIiWyd26NXPWeA2/LLNVg0ZajgnmkkOecL3MFc7O0DeaIY3bDnJetu3jM=
X-Received: by 2002:aca:cdc7:: with SMTP id d190mr6065798oig.148.1569576269452; 
 Fri, 27 Sep 2019 02:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-7-robh@kernel.org>
In-Reply-To: <20190927002455.13169-7-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2019 11:24:18 +0200
Message-ID: <CAMuHMdWHGR2odz4nvY_Bjg8H7SKf1eio=tw9yRRO1VYbGCXAbg@mail.gmail.com>
Subject: Re: [PATCH 06/11] of/address: Introduce of_get_next_dma_parent()
 helper
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_022432_609030_A3FFF421 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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
> From: Robin Murphy <robin.murphy@arm.com>
>
> Add of_get_next_dma_parent() helper which is similar to
> __of_get_dma_parent(), but can be used in iterators and decrements the
> ref count on the prior parent.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
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
