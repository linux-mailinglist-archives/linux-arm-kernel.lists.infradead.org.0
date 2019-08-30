Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F8AA3CE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiTxJTvlv6n75AJzFLKx5qmmff+2NRVdHXGqPHxwCEQ=; b=cBH1o4Xb1biqwe
	WuTeGtv+zMbfO3tz1gTbtzRpl7IuSBMQ5S+SxyOs90ck4auhNO872dam7OHUEHEGoi8lSrXa+K0mK
	CCEziBAFcf7QdqNUpPN8xVIwwjnhPLp11vSXmkJPfbqAE8JwwskxtuESBRNV+Kt1OMevG3YhF5rCH
	My3R/qqb84k95H5SzbewpGhBKYcO5pII7vvDFiiss40JcfPSOpV67wYRvlN2K0b9PvyritMsQDC3q
	NSIKq2LJi8bVHp2s/KCU0USBEFyKLyqSECJtCqeOeeL14Cuc8seVojdLTa48b0Jgmy2tU6t8C+86T
	6GHFxBtJcBkZUiItNL2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kay-0003WQ-5Q; Fri, 30 Aug 2019 17:21:56 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kZ4-00023o-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:20:00 +0000
Received: by mail-qt1-f195.google.com with SMTP id g4so8383957qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 10:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eREbuz0j2yx01SeF7umXo65Zd8gunKI6vNp3hTkMlVc=;
 b=t1TB43/IX/oJg/JJQdWAohhv9M79n2k/d5jZHiow/XWJjSW2oE1T52fVlFqhBhXESE
 GzDfD7mkSXiYJxoIgcNSHllRytMqGZ1Cque0KxlipiyAxYiloIBABiAMrXDqelLRLhNb
 rZtetFwXbyRJ/MZUXyHoIt1jzCLpoYqAwi00zzTmut5bJlu2VfQMRXQzD7xj3AfjvoK5
 BcC9G1bhiiWXwGDxSEPkxkeAG+0ZeuD/wv6xK+xd9pWpRGkOMC/sTN7DIA67datzVuId
 9qu67FH7TYXyOp57C0FkKnZkPO1IlGTZwquAhnc2Cm+E2dyV4uep8nj+uUQ0yyNMZAGb
 li5A==
X-Gm-Message-State: APjAAAUYQDcEnMzVBSS/mxMm1Nt3CZ+qc/CPsWzrEj8Tc8SGN/lwSOtR
 vXLmJ4wLaCM5yCQH+20dUTkITzw2qkz6jvfzRH0=
X-Google-Smtp-Source: APXvYqwVevCuvuH2sy338AJ2V2IsQ6SavmSFH2Vz3yo29gW/Ty69n6T+cSn11lboWM0ZqxXySp5bXRiU47TYVhw1fhY=
X-Received: by 2002:aed:3363:: with SMTP id u90mr16473668qtd.7.1567185597224; 
 Fri, 30 Aug 2019 10:19:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
 <CAHk-=wgq71zNZtcb7vAsgb0EEozJsBDrLC0L+91tmMCBG=8FiQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgq71zNZtcb7vAsgb0EEozJsBDrLC0L+91tmMCBG=8FiQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 19:19:40 +0200
Message-ID: <CAK8P3a1WQn67D2L1pBwF-L=HeodjgJNhAKfMM4BC99bXiO9t5g@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: SoC fixes for Linux-5.3
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_101958_580043_1BD86870 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Tony Lindgren <tony@atomide.com>, SoC Team <soc@kernel.org>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 6:34 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, Aug 30, 2019 at 9:26 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git armsoc-fixes
> >
> > for you to fetch changes up to 7a6c9dbb36a415c5901313fc89871fd19f533656:
>
> Nope. That's a stale tag for me, pointing to commit 7bd9d465140a. Your
> old pull request from end of July, it looks like.
>
> Forgot to push out? Or forgot to use "-f" to overwrite the old tag?

Wrong tree: I pushed it to soc.git, but passed the old tree to 'git
request-pull'

Correct URL is

git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

I guess we should just delete the old tree now to avoid confusion like this.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
