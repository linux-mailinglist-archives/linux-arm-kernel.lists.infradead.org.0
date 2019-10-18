Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCBADCF35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ott4Ioz6ogbVrdDvFjZ2TTWQbN/pO1LfAh8xakSET4I=; b=NhpntmaMxv1NUf
	lU8OUViKJiLCU70fApRg+KmYgYrn81bcgdWv+dt+iFHoXDu53ev60rPht3PBuxM7+79sJcKJO3ycM
	iGd95fOzwYrK1xKq3Fg1ZWd7tU55Cus/2DKplzZQpnrlKXLH7EKlHLLpJkLXFZPyrgyRQGCQKdY0+
	J6iis4n504DzNW+g6mT/OSTUETSjBYo1OlygqfzK2EiJyrB71UMahxuw2Cb51F8QygyeiCl+hcera
	EpfJJjwIQywNcKMBqO8VyXix3uuhY1z/GSUco/jXnPaml75SWjFks6G+rk89ZhkCW3QKKVn6/U2zd
	T5I9wd6gv219SWJogY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXmR-0003vB-Qm; Fri, 18 Oct 2019 19:19:19 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXmH-0003uq-US
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:19:11 +0000
Received: by mail-qt1-f196.google.com with SMTP id j31so10663283qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3U4XGKYJwhdQD0/oZgkQawFhyEgJU1s1iV2DJRNVE0=;
 b=Y2L00TQ3/GpG9UkB1U1TM1VcCRK2YeqJMy5RIEnAv7pO8B1WgVh0njlFZYS5wqS+RP
 kadh9zsvOG4T+WoNc1IsP+6/t6l7B+c4AW9NDak3pejy3R1rbEoCgq6VzXvday9KndWo
 VCMY7YgnAGgdhw3rGwRjx8ZBByjYR3EuJJJ6AkwF6G3nA0DELH1CyRV1WAsKrseK18QQ
 N4UjZU4HOUO0TdqmGfmFD9boY9KCElirBDfS3tsqFpaGQjf7BkhV7RwlX56v14vUjoVb
 MNssHwwzlk4z4AzDoAxrreq5NkbO6mJp136nZIsCtJACI5AF2pVRBSmAr/A1JF6zuz30
 lbnA==
X-Gm-Message-State: APjAAAVSeOltK6+MZGS0w7vjalTXbEdLNYnv+D0NiWZtUebrYztslwoa
 BbgBJB1x7lTrAiHMAjH8MsdVJNMLvWBJZqO7U/g=
X-Google-Smtp-Source: APXvYqxSdwLbuKUmnS6HRUngapjYIWC2HNoTLspIqQPpMjTGmKepluzI6LCX3jGsQESRx9rOP5yHQqeQSsLxa9EJpzQ=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr11534406qte.142.1571426348391; 
 Fri, 18 Oct 2019 12:19:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-6-arnd@arndb.de>
 <20191018190135.GF24810@lunn.ch>
In-Reply-To: <20191018190135.GF24810@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Oct 2019 21:18:52 +0200
Message-ID: <CAK8P3a1hw7Zi_g=F2ZThDW0FCKO1941f0yM8b0OA4d0toTRpUQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] ARM: orion: unify Makefile/Kconfig files
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_121909_984363_CB37B345 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:01 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Oct 18, 2019 at 06:29:19PM +0200, Arnd Bergmann wrote:
> > +config MACH_TERASTATION_WXL
> > +     bool "Buffalo WLX (Terastation Duo) NAS"
> > +     help
> > +       Say 'Y' here if you want your kernel to support the
> > +       Buffalo WXL Nas.
> > +
> > +endif
> > +
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +menuconfig ARCH_ORION5X
> > +     bool "Marvell Orion"
> > +     depends on MMU && ARCH_MULTI_V5
> > +     select CPU_FEROCEON
> > +     select GENERIC_CLOCKEVENTS
> > +     select FORCE_PCI
> > +     select PHYLIB if NETDEVICES
> > +     select PLAT_ORION_LEGACY
> > +     help
> > +       Support for the following Marvell Orion 5x series SoCs:
> > +       Orion-1 (5181), Orion-VoIP (5181L), Orion-NAS (5182),
> > +       Orion-2 (5281), Orion-1-90 (6183).
>
> Hi Arnd
>
> I don't think this SPDX line should be in the middle of the file?

Fixed now, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
