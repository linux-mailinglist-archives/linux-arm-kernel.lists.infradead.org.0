Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0112757C76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxaCV4ZHAVNT4LOt9dxFY+Q9ZwUh4FBKZg1UqAeH0is=; b=iRpcZRUEtAt/pL
	ZRzYr8k0q75xpLr7yj3TNuttV7OcFr67a6A9Sf1BztgLB46W1CpD7oK3pKMfTDwYFgkLCARpsck7q
	Pe8P9xkOHCDHlQoXH5aLjxX72/IlI2azvsLs1XNkwdKjZOz3L+f9nPbeiN0n9cRvdftN6jQL1ex6I
	KxDIi3byrgfkt4ndJWsrlfHdrK+lrPk40qbhWNMz8MagBJLbMd2ttX6JCMTldQeV1LZzsGeuVnqUn
	WYN8lrPDxi9qDK1CHyAMJ4Zco6wiX0ey0TQh4qxQwdh2HZfWU5KeW2bUB4ZLo2XxsiXViMIOudgJN
	pIWAO+irSa8CkZvKAJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOFD-0005pn-Uw; Thu, 27 Jun 2019 06:50:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8V-0006KM-8m
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GirFD0tj14eOcNigOiuR+adoaf7F2tcBSQADwLekiMo=; b=ZFmDYO7xyFRSxUCHvUjQ0fnxE
 mrdLVJqyeUCNC4zrhNCdRQDpeLDHe4s/PUt45C1Ys+NhVEsYluqP+E6OzBn9KlncRpHVOldzXA7VB
 uHD856y5gGvrum00Iykiwu44GufMqX3D/rDjzq99GO75w6LbOnYQm4SiDQaFxIDwkiqiGmzKhpSpl
 OCYRCUgGvZxp5nu95sVtnPbz8VvEMDI8V1uzPpMWWUgJwAtV2nKYbaPItA2v1+VUrzL6Ibomz44ow
 MU1UXZrCPwA9kC+s7lpgxTdT2pfAPEi6rlqz790SOMlkwmpxjOLvkaW1og2wtEcAtcgTro3nSTNCP
 3K1H3+8PQ==;
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJtQ-0005k7-B4
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:12:09 +0000
Received: by mail-io1-xd43.google.com with SMTP id s7so1177935iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GirFD0tj14eOcNigOiuR+adoaf7F2tcBSQADwLekiMo=;
 b=pii7E5Ahk5T4edgsAUKINFJv0/qEmkruVlt0xSQlZ+pefkvnGVJUmYrR8M2aJ4bQLT
 LdoVmy5HHWNqYd7NEunjmm+PpdhB8B3xzUB9KJAJG2y1m8YDFXLSDpdPO3nVXqzHxhNU
 sM8yquVdwqL+9Y1hCXGedmcu6SL7AaPw7Po4GekDqTRkPlf6xXXHhXD2wIVgWbQUYGbs
 CELpEqldUL9NseRu85oPfUzLykjqeYBD1gZnAF7LvqnVRA0dxhDaFmkY2AEJJ7KTdPAh
 ebYR0hoGjTnoZW+N+lJ3gmHOfu/UPTVZ7PRP/2XZUnCfKXUYEwUgqQH3NmpyvLeK+bQV
 EbQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GirFD0tj14eOcNigOiuR+adoaf7F2tcBSQADwLekiMo=;
 b=WBvuZzLMAa622zZrDtrGJZomEtAxlfs8o4DsXPyXY3BhQXzQsPf/FitE8yG7SJATJS
 Ydxn1k0YoI2M+I58G9nefskff9W0vVn5LbQ7JXaBGdKKQ6fVW0tdgabx9nS0p8ZzcvwM
 tqgJ2TLNXpMMIhvTgAnufZrnGd3IHBS2OFdvxHHR0f+TPP/AA1114yLVwxLK1/KOWrQG
 ntKGem3zKGqTl0AMXn+ukj5QkCW6jbm/48b3jbDhs97J58ZkU7D/3kx/FDRFh6e9bHIA
 z3V8kZIXGncJuwUULXNfUoW0rab6dHUw8iFaHCMqmJw5I9ZW/G5YrWr5MfFZdtjXVjd0
 3wMQ==
X-Gm-Message-State: APjAAAVHxsikHjYu4NeuwaPU7/BO2qjIXHv4PySmRR4/ZQYfygJ7rNar
 9k18W4z2K9ecUpk/6OIN4OkRBvTTGxm6K9O6oIUZ9TDEhxM=
X-Google-Smtp-Source: APXvYqxcVFOKnfcr++nPStl5MeIsqkbZcgj7crK9MG/zr+NkN241hhGfdGwPgJnnErTIsQ7tQU7NvRLMiyD0MAIeZBE=
X-Received: by 2002:a02:16c5:: with SMTP id a188mr1544309jaa.86.1561601404485; 
 Wed, 26 Jun 2019 19:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
 <20190625114119.tgxsiwstd3pfm64i@localhost>
 <20190625123219.hwg5vjz3qocxavn5@flea>
 <CAOesGMhXVnNuEKHPBo6s9GBWrKAiX8zFPSt89cQRYNS711ymvw@mail.gmail.com>
 <20190625145541.55c4mszwphx4corj@flea>
In-Reply-To: <20190625145541.55c4mszwphx4corj@flea>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 10:09:53 +0800
Message-ID: <CAOesGMhBSCnmN2S4yHLMZ2CEefaSFXG4VsegCtFuHEKWcghLEA@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:55 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Tue, Jun 25, 2019 at 02:36:30PM +0200, Olof Johansson wrote:
> > On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > Hi Olof,
> > >
> > > On Tue, Jun 25, 2019 at 04:41:19AM -0700, Olof Johansson wrote:
> > > > On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
> > > > > Hi,
> > > > >
> > > > > Please pull the following changes for the next release.
> > > > >
> > > > > Thanks!
> > > > > Maxime
> > > > >
> > > > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > > > >
> > > > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > > > >
> > > > > are available in the Git repository at:
> > > > >
> > > > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807
> > > >
> > > > You know, there's a timestamp in the tag too, no need to encode it in the name.
> > >
> > > Yeah, I've switched to some tooling to send them instead of doing them
> > > manually, and having a timestamp was the easiest solution to avoid a
> > > collision, but I guess having it down to the minute was a bit
> > > overkill. Do you have any preference on this?
> >
> > Main thing for me is that I can't tell from time timestamps if it's a
> > respin/new version, or a re-stamp, i.e. if it's something I should
> > care about or not.
> >
> > I.e. it doesn't carry any useful signal for the consuming side and is
> > mostly noise.
>
> Ok, so you'd prefer something like <tag>, <tag>-2 if there's multiple,
> subsequent, PR, and <tag>, <tag>-again if the latter replaces the former?

Yeah, that's what a lot of other maintainers do and it's something
that's been working pretty well.

Sometimes they use -v2 at the end for respins, i.e. dt-2-v2 etc. I
recommend deleting respun tags so we don't accidentally merge them (if
we didn't see the follow-up).



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
