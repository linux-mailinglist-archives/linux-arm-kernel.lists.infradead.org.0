Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF18CDC76
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46ie6i0JF6lZYYhYnBmHQ4JcEl38+wsQGlbnRufWt6Y=; b=c8HeZTIYQJm9cY
	5h4nBPgk8qejIJ4OsQjbNn+3E50mb7KIomwYATeVhG/7Ojyj9SrzbelEUpI+OPyGGa7VSlncx2ye6
	iPfCdJxu/r9648ASVoR+uFSts6IpaVM8Lnxe7dWDt6fNUlrnSrMAE50gXIVXG7FYyXchsdiXQ56sO
	VH80ziWQsfzeeJ/Px7QLT1ATGWSGW8xbRmi2JWH1j2EkSI8Jo7Ly7ZA6lMjz9RLhapmXPgO3iVcAH
	7akS6stsGhLnQ/w0N4Pu3jmYEym1ZnS5TOJyvVDXptgMbCUzdNLL/vSwpeIM0L/cmG41oCEwGNIPW
	inZXF5FjOVTfdSZnny2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNYW-0004i4-DN; Mon, 07 Oct 2019 07:35:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNYO-0004hO-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:35:38 +0000
Received: by mail-oi1-f194.google.com with SMTP id k25so10772266oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 00:35:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vC7dAYfXwJKhiTI/wvNma7+9JHZprD9j7d4aco906Rg=;
 b=n1DlGl4RGUrWvVY3KyXJ9JEvMjrhnoTGsCxgpvApEgsGPfpMwaTG7sXpdEFaXj2eB5
 1trJnwm2Z95S4+/PL810z6Qo+zuz2q82XX7lVh2FZi/vstFlRCbp4XVHc7ybqF2h6AHb
 iozmzHUeQa9XSZ66P1PYUMnWUxPKBpbWNty1Ig1Zb+Wm/tgJfZ+SFmK+u0Ipvdzip64O
 hCpRjxPKbb4Ej60remBzSBgzC7zid0oZSKZC6RjGP5Xgyi3q7mNiNz90zd/ujz9lz1CY
 qf0eIF5zStd/+g1CEi3pgKdNO+cJSqkxw0V5bYJjilsz871cZusaBUYJjTs6MpWGkB1q
 LZ/Q==
X-Gm-Message-State: APjAAAV+lY8qI8v844k8qFqlyfO7Zeqa+wHeRwBpMQzi99ibUvztMf7Q
 gE29Tp/U88xEKBbkzSxqNFx9jmgNxC3e2dXh454=
X-Google-Smtp-Source: APXvYqz2xsowCyv7BriFiCE5eWCSUyFySeTWPsmMojbahQ43q5zsM0Wz1Yn++ZwgA8+zcnB3RXHRWT0R0cHyrvakUFU=
X-Received: by 2002:aca:b654:: with SMTP id g81mr16278742oif.153.1570433735656; 
 Mon, 07 Oct 2019 00:35:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190830062924.21714-1-hch@lst.de>
 <20190830062924.21714-4-hch@lst.de>
 <CAMuHMdXxWp2=9n2LQA9KVH_ArOUnY78ZoiQ7ZsDMbTOGsEz4hw@mail.gmail.com>
 <20191006184541.GA4110@lst.de>
In-Reply-To: <20191006184541.GA4110@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 7 Oct 2019 09:35:24 +0200
Message-ID: <CAMuHMdVdw8QGet8JxVPM9JOiQ1OG3rhbB7ha=mEQ7BdYGs4+gw@mail.gmail.com>
Subject: Re: [PATCH 3/4] dma-mapping: introduce a dma_common_find_pages helper
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_003536_837640_162B70FB 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-xtensa@linux-xtensa.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Sun, Oct 6, 2019 at 8:45 PM Christoph Hellwig <hch@lst.de> wrote:
> please try Linus' current tree.  It has a fix from Andrey Smirnov
> for what looks the same problem that you reported.

Thanks, confirmed fixed by commit 2cf2aa6a69db0b17 ("dma-mapping: fix
false positivse warnings in dma_common_free_remap()").

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
