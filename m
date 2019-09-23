Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440D8BAF29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ba6RYV2FFvHXYLOp2qtSNdpH8P6bqHUCb6zqocgqEZU=; b=dsfWqZ6GY6IYww
	3zj3XCEMXNmwXng+83iJmJk8Nc7OlqT9hZFoQjW9DWAYqQIdutPJtlNtxSw5yRn5ZpbPQlGH2GLNt
	mMsIGtz9VdrOxzTaidp7L1CukN5I2lKEkeehdQhAZANkrR2ZUNWFzoXtv4MCsnRXxomkrkqMoDFtt
	H379tBsDSFfSzkHkXeGGroXhK+jkRDIuiolkA4IbcpNK+Jj0x5cwwxV6gaCZL1gfnpSJ1DQq4INvP
	SxUUmhyGg10nGSFVcB16QcdZBCX5YFjBuXaOsUd1H7/OFJ4vm3l566GuwAAf4WU3ToLKxLYjn++7p
	aBZMx5nRREIVgzBB4evA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJXj-0008Sc-Tr; Mon, 23 Sep 2019 08:18:00 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJXS-0008SD-M6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:17:44 +0000
Received: by mail-io1-f68.google.com with SMTP id q10so31370414iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oqH5sSFzUYgYs5CppEfEXfr+LdLAvM6MsgUfbpsnBys=;
 b=PlrSCEP+RFHFLiL6ij24ZXbX+v63jU9PCdTE4d+ljDiU1OYLS1cY0xTqHE3al4o/R0
 PAUQbgUVBigDEY9m8ELZmIFZWWj4i+6lCVUZArNkaYlxMFVJkgqi/w4R+57VOauWK7TI
 25F1jOuW59+LWquBq1M47Mu2NHxVAbBXbVtCUK4TjP69scE092b07WpkzQIluz8Jqp2G
 NdxUAOrNU9gPEmbGGR1rl+f8xCV9leGhnymDKrep6IwGeKEI2Ns+U7UB0+RqZGv/hPR1
 KLAffm6ZLq0guwBSaFTtHJs7GxUgs2zjiF/KXr0GuUpPffnLfFR4rdLt1JPtZcRwOc7p
 NBqA==
X-Gm-Message-State: APjAAAVLXTXZsATViErriuBrLLG3AIBUvnCSVpMYk+Djmz9iD52V/9tK
 g1CIhJi5cvg59q0kieHRyVIy2iJOhOKk/2PLKSA=
X-Google-Smtp-Source: APXvYqybSq/9Hct6euMAEnWR43nL4r3SiLtP2VgXDx6Ms50oGJokTQ2mf4VZUzl78UffYdvDJ2tfCvw0mHpn/H+pSak=
X-Received: by 2002:a6b:4416:: with SMTP id r22mr14387046ioa.297.1569226661133; 
 Mon, 23 Sep 2019 01:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568211045.git.robin.murphy@arm.com>
 <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
 <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
 <83c45e97-8398-349d-5593-03af23b39c59@arm.com>
 <20190919083035.tv446nelad6ki6db@willie-the-truck>
In-Reply-To: <20190919083035.tv446nelad6ki6db@willie-the-truck>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Mon, 23 Sep 2019 10:17:29 +0200
Message-ID: <CAAObsKCja0xTaiayNq5TWE7YJ0RPiJbq5OqOdEtpKdCQivR0uw@mail.gmail.com>
Subject: Re: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011742_720715_7262CBD2 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Joerg Roedel <joro@8bytes.org>, Steven Price <steven.price@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 10:31, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Sep 11, 2019 at 06:19:40PM +0100, Robin Murphy wrote:
> > On 2019-09-11 5:20 pm, Will Deacon wrote:
> > > On Wed, Sep 11, 2019 at 06:19:04PM +0200, Neil Armstrong wrote:
> > > > On 11/09/2019 16:42, Robin Murphy wrote:
> > > > > Here's the eagerly-awaited fix to unblock T720/T820, plus a couple of
> > > > > other bits that I've collected so far. I'm not considering this as
> > > > > 5.3 fixes material, but it would be nice if there's any chance still
> > > > > to sneak it into 5.4.
> > > > >
> > > > > Robin.
> > > > >
> > > > >
> > > > > Robin Murphy (3):
> > > > >    iommu/io-pgtable-arm: Correct Mali attributes
> > > > >    iommu/io-pgtable-arm: Support more Mali configurations
> > > > >    iommu/io-pgtable-arm: Allow coherent walks for Mali
> > > > >
> > > > >   drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
> > > > >   1 file changed, 48 insertions(+), 13 deletions(-)
> > > > >
> > > >
> > > > Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> > > >
> > > > On Khadas VIM2 (Amlogic S912) with T820 Mali GPU
> > > >
> > > > I hope this will be part of v5.4 so we can run panfrost on vanilla v5.4 !
> > >
> > > Not a chance -- the merge window opens on Monday and -next isn't being
> > > rolled out at the moment due to LPC. Let's shoot for 5.5 and get this
> > > queued up in a few weeks.
> >
> > Fair enough, that was certainly more extreme optimism than realistic
> > expectation on my part :)
> >
> > There is some argument for taking #1 and #2 as 5.4 fixes, though - the
> > upcoming Mesa 19.2 release will enable T820 support on the userspace side -
> > so let's pick that discussion up again in a few weeks.
>
> Ok, I'll include those two in my fixes pull to Joerg at -rc1.

Hi Will,

Looks like this didn't end up happening?

Thanks,

Tomeu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
