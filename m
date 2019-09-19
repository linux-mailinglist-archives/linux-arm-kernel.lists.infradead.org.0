Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0F2B7990
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ul5N3FE0h2l/Vu5LAEljUscP1NWyz6CvrZzvJRB2gRA=; b=qs08t1pi43Tfif
	dOpOlouYM52NhUFDpRGY9QzMb3YSuhQatUcDdZXD2JR22ZyH4jT8Pq1syXNjCj5QNnfI98vo37Sff
	48NbgsnfObNhjnUxTYMJGuSat44tGjRc8HoQzz1DPQ5FVRe4i21aboQQjwarYh01gc9khnAl4B7D4
	qsrRKH1KeHb2185GWcpxx0IAV7XhaWsM6VO2OARDK8rGY4FfRW2jqldiWjb/Od8P+gNGToLAeb10o
	RoU6CiXvQ3la5gJCVHa4AiMPv/4bxH5yhoQQj0GvP5N7beWJc9mYu5OC0hOwaOIz3sc2QEFoDHuW2
	SzeH3OZRJWoxCoPr+h3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvef-0005r8-QF; Thu, 19 Sep 2019 12:35:26 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvdx-0005cg-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:34:43 +0000
Received: by mail-qk1-f194.google.com with SMTP id 4so3162833qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 05:34:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Uyhy6Uax8YQF7rWKudmdZRWa5YwRk9haOx429+okoM=;
 b=Nu0oo6x56PlCkaswhK/yhu4hCVmRDC6yO3JTbB1iyS9G7KvxELvvAQI94mfvQWeoeu
 Jrp6DR+yswVbc8SgkNR6Ow3yZX10H+ZVqOw+1IdM1DBpBqeuHioaFIKZZm61Pqh3d1rR
 pdBgR304kSvH+PkAdRDC5GsBAkhFKw/WdMgUIsf1f2X7eDN/guRuBlUAF9Fy5ga/HpFn
 oqpjHZK1I4/POL/UpxpiNs0P/BHVtKi6QBdnwb/f+81BDJeBsVIPtxy/FT7ATp1rY5Og
 /Wq25znaWWDTAtvYozNjQfq4EByHST1x6aP85cNQHTPlIvv0lIriUvnVsiIXYNGwUA2y
 xrzg==
X-Gm-Message-State: APjAAAW+Ek/grVtJQRjTL2+gWZMz7qM406fZr4QAhJsdgushFViTtfZq
 J2/+WdO+kX6z0bSKHGov76aMFp36NP5bxx3tBj4=
X-Google-Smtp-Source: APXvYqxsF0NeJ+J6q20ijNnid8HRUOX+T6xU0Euwl3Qp0xXUeXxuvP+eu08WL+MyzK8Ts+WBX7qXW2dB2Aa8EsOeWcU=
X-Received: by 2002:ae9:f503:: with SMTP id o3mr2579143qkg.3.1568896479756;
 Thu, 19 Sep 2019 05:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190918195454.2056139-1-arnd@arndb.de>
 <BN8PR12MB3266E044DDF00F227B9B191CD3890@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266E044DDF00F227B9B191CD3890@BN8PR12MB3266.namprd12.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 19 Sep 2019 14:34:23 +0200
Message-ID: <CAK8P3a2QXMSPdDSQTx_MrgOhg4XjMp=Qre1LNp7iX2uKzdwC1g@mail.gmail.com>
Subject: Re: [PATCH] stmmac: selftest: avoid large stack usage
To: Jose Abreu <Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_053441_683067_43E3EEBB 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 9:58 AM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
> Date: Sep/18/2019, 20:54:34 (UTC+00:00)
>
> > +     if (!cfg || !cfg->enable) {
> >               value &= ~XGMAC_RSSE;
> >               writel(value, ioaddr + XGMAC_RSS_CTRL);
> >               return 0;
> >       }
> >
> >       for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
> > -             ret = dwxgmac2_rss_write_reg(ioaddr, true, i, *key++);
> > +             if (cfg)
> > +                     ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
> > +             else
> > +                     ret = dwxgmac2_rss_write_reg(ioaddr, true, i, 0);
> > +
> >               if (ret)
> >                       return ret;
> >       }
> >
> >       for (i = 0; i < ARRAY_SIZE(cfg->table); i++) {
> > -             ret = dwxgmac2_rss_write_reg(ioaddr, false, i, cfg->table[i]);
> > +             if (cfg)
> > +                     ret = dwxgmac2_rss_write_reg(ioaddr, false, i, cfg->table[i]);
> > +             else
> > +                     ret = dwxgmac2_rss_write_reg(ioaddr, false, i, 0);
> > +
>
> I don't get these "if (cfg)" checks. You already check earlier if cfg is
> NULL and return if so. I don't think you need these extra checks.

Ah, you are right, I missed the 'return 0', that makes it much easier.

> Also, your subject line should be something like: "net: stmmac:
> selftests: ..."

I think both styles is common for network drivers, though I think most
just leave out the 'net:'. I changed it in v2 now.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
