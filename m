Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BFF9F3D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JULtFKdNJTgetJ2mMTlOvGB3wwlOy9hHP4XH6Bmg3TI=; b=Riiq0mtZZnYuWg
	tElnJ7tbsWxlyNOZOmB5urRbGiZZoo+HuIcyJ4EGBXiY2x2mvJVt3PCykPLtkXE2fwI9bhaIvtrcl
	SbkHLfgFnLmXp1PbAey57IY4Ui8Zj0fPr4/jdDATCo/4xe54OPh2WlBIC5zl5tQuQHI8fKMiOre4l
	3ThhIQZV3BUx1e+WiNnvr+nO8tQhIlpVIqlwDMVToSkf0AHHEiEZu22GWWJTGntrZoXFWHq3seq2O
	rGgvcwizRAEyPk9gG/FSp8HUU5pN+5LkCprqbgjnwFBaNbxH7LD9R0JwQiMbsvEay4fCSBoZ9Bafd
	u2jrkH2bRUDQ231gthbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2hpq-0003gq-1U; Tue, 27 Aug 2019 20:12:58 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2hpj-0003gS-0M
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:12:52 +0000
Received: by mail-qt1-f195.google.com with SMTP id v38so388312qtb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Le7/DPty+666pMSSFBSolUxx7aiRXx8yMy4J1BfqBIQ=;
 b=K2sV+WzHjw4BkDRl1w2KAlCFtIuoKyIM+fDud7uNvsNTzIGTtnwv91T08JPTxsJt8J
 mja7qN/25NRMEvgV8wXbBDw9JF7zG4qWoU6ipwcvFnT2MnBxBrVDS+eamg/nMjhY6eST
 phzNIAwM4AdihmwI5ebWWAvaKvCWaLW6AWy/oTKKgYuWvZqF1R3v4QCl3hnpa2HMDPf+
 0OxwQCqHC7v3lSxUEA23ZcbaN7ICii2ZX3F4TysmAmNUIR0Gv/+C8tAblI9iqYnGnwZ4
 hhKTk3U4EJpNiWGaOExADrgg7OuQy8+tHICiqIh1qJ5haRhUZhV9Cv1bW+15SUljAFLB
 W10A==
X-Gm-Message-State: APjAAAWKatSJLbTTsdlbi4jae8EXDO53SQByRk1pVCaiOdU0P4G5cRN7
 nLpMHqd+GZPgz13begcuFFQwIINnquN+OKSIzZw=
X-Google-Smtp-Source: APXvYqyEurgHAvSLKroxFOuP9U5ayE6Ghq9iJgArGFYndN0YDBGMpGHoMWmlrrisgnTI8voyhgeUAwkLXq8DOartowY=
X-Received: by 2002:aed:3363:: with SMTP id u90mr689168qtd.7.1566936769088;
 Tue, 27 Aug 2019 13:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-8-joel@jms.id.au>
 <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
 <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
In-Reply-To: <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 22:12:33 +0200
Message-ID: <CAK8P3a1Dgzrw7nuQR_YJYXSF7Owop2Hpd80bAL0OPhzHMHcbPg@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_131251_051157_E7088A02 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 6:43 AM Joel Stanley <joel@jms.id.au> wrote:
>
> On Thu, 22 Aug 2019 at 02:07, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > +CONFIG_MMC=y
> > > +CONFIG_MMC_SDHCI=y
> > > +CONFIG_MMC_SDHCI_PLTFM=y
> > > +CONFIG_MMC_SDHCI_OF_ASPEED=y
> >
> > The patches haven't yet been applied to the MMC tree, maybe we should
> > add this later?
>
> When enabling drivers in the same merge window as they go into the
> tree we will always be in this situation.
>
> If the driver doesn't make it in this merge window, or first has has
> changes, the worst that will happen is the kconfig name changes and I
> need to update it later. I think we're safe to include it as-is.

Yes, that's fine.

Please also enable all the drivers you need in multi_v7_defconfig
now, preferably as loadable modules.


      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
