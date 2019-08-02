Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DBA7EF89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XfT09HO6Nqh8ppSptg38uQEqnvif2Y9svIJsoieK4g=; b=GMHrSx1CU24LtJ
	m7IidQx6azjd7kdCBAQKh/bB4IfET69dDkmyKMWid8m4xCyVOSjkjDBIsRrID2b6Ezt2nDXzmgyD9
	tMtjZBs3K9ncncJo3Um6x9HQufAsKz9FboAHVwblbzG2xcYNcDuUUE/dg+koLx4C0VAuAXMHCh/Yt
	4b2GlGwODkhxWiT/UfWVbliVYErMiZJif09YfPygxIVIJU73OR1WAWXJya4HP0Yzzh7ylQTjH/w/7
	We++gKG7WD2bVMn+dwLDSQeHhSO3ihV4C4TgKmytBHz6WsHNrjiEn/gC+F/fyim3f00tPWjdetzHf
	qK6W6grXi7fe4FXB516A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTAC-0000Ry-JR; Fri, 02 Aug 2019 08:43:48 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htT9z-0000RW-On
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:43:37 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x728h67g012180
 for <linux-arm-kernel@lists.infradead.org>; Fri, 2 Aug 2019 17:43:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x728h67g012180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564735387;
 bh=wardMXZhqHfzRdaUlSRopeNLdww/l/rmzyPDmUhlXoo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VgRGuQWUqhWhXTBkiq4DIonh2QCcj/QII79U1nOFS+0JcL4bpKDpYrxykm3tnyvll
 n1Ee5JP7t9W00qU/H9nOYEcFZbHArDCHE3NoTVMNBbbXXy9Zzot4keYIQKUyaCCjDC
 gq0jZaiJHoB51JXyk7csyKde3gmsp0uCjNBBQ9Btz9CJTv0B1KvZ1IQU34rWuhIUMr
 Vmaj6IZ8GyWFf5XQlbjF1xMXJFsfYsfFGZF6e1krbFxMtAPFF+z+Wsw/wM17JAV7VD
 MFT7kpGiY6fEzGGpB3/qeCdQ7X21CIqyyPVOB5LJ0Go3YJEP5ZGU+1en/oOXY2ed+8
 5rBEWfAnGzDTg==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id k9so50788500vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 01:43:07 -0700 (PDT)
X-Gm-Message-State: APjAAAVWDCiLQd2h6L5Th1tELtx7Ii288ANjOp7pcT4vhi3K2Gm5xtim
 tSZXMNFVMiMw8vT+RhYS3PND7F9HtOab0ZupSSY=
X-Google-Smtp-Source: APXvYqxb7HdOEocm1IkNIV8cZl+5shkbOoifQs/U/sfBj+Ev+87riBEz7Tu/XQyoeC1AxLbAnSyV3St7fc8y/cJtAOw=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr61970449vsd.215.1564735386265; 
 Fri, 02 Aug 2019 01:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190728161304.32022-1-yamada.masahiro@socionext.com>
 <20190729105125.GA4787@sirena.org.uk>
In-Reply-To: <20190729105125.GA4787@sirena.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 2 Aug 2019 17:42:29 +0900
X-Gmail-Original-Message-ID: <CAK7LNASq-WB5zJ+3uFHtzxtc2Vhmv5SKRXA2JwwFGrR5q9uMnw@mail.gmail.com>
Message-ID: <CAK7LNASq-WB5zJ+3uFHtzxtc2Vhmv5SKRXA2JwwFGrR5q9uMnw@mail.gmail.com>
Subject: Re: [RFC PATCH] spi: tle620x: remove stale driver
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_014336_047595_1E0FFCA0 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ben Dooks <ben.dooks@codethink.co.uk>,
 linux-spi@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 7:51 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Jul 29, 2019 at 01:13:04AM +0900, Masahiro Yamada wrote:
> > This driver seems obsolte because this driver needs platform data
> > but no one in upstream passes it.
>
> I've not noticed this driver getting in the way of anything?


I just happened to take a look at include/linux/spi/tle62x0.h
when I was working on my header-test feature of Kbuild.

Then, I asked this in ML, and Arnd was positive
for deleting this.

https://lkml.org/lkml/2019/7/21/19


IMHO, stale code should be cleaned away periodically.

Yet, if you are happy with keeping this driver,
that is fine.

If we could get comments from Ben Books,
that would be helpful.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
