Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2795C077
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 17:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qW4kVKQfF7fNw1YTfRgUtOI5fYmcRKlraDBbA65y+6Y=; b=AO//52Ic+QeGrJ
	vIxnxf00uhXMZ1G1PtvhApsgSsGIkve5iCyBcqN8R22sMGRuPo6NNgpFicmj3MdBi9k8QNVA+Y3e0
	jZv+Edv5vX+zrrTzgLnOxJaE7DVZNCgULU6NtKyc7uDaD+WBok9eEEmNBB0pVX3XtEt2itGnx36T2
	Bz9O8bCZ2eW2ikH0/X4VUq4FUE/5t2Mz96dTJfelQJuaMZs0YFq/e4Yh+TWrCbDv8mjY0ObaVa8lc
	Ml/lkGtggQIQOU4tz4fp2wlnEOafDYsDP1u87oRC2r2WneKpNLq0IqYYRM/U7KCgWHpc99Lk/gOAB
	L2mqiQLaojlIlqh+NffQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhyQi-00038j-TY; Mon, 01 Jul 2019 15:41:20 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhyQd-00037r-4E
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 15:41:16 +0000
Received: by mail-qt1-f194.google.com with SMTP id w17so15099058qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 08:41:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QX/9XC0DeimGVTmEjV3E87RMFjV7Hn7tB/e6eJ8Xuyo=;
 b=eyMseagC5p+2eRe4UgRgXeUOmxx0YjKwEglsKn03n2prQf9j+F1n4g27jvXo/tVl4c
 3reZDA7yM3dGsBHZURFh35jnpbcIkYEaolNQV2n6GKESpEWbpSErmEOQ36w+iyV2LWsw
 7o65d/tNJPrui+jhAXX0PEZmaEvkfvq8igul0bay91yEI6T6qpOcoEphudgbLiPaXZhi
 eZ0ZNcgTvRhtLrViKFcKcWR1wQo/gorXp8GQMc93lele7K5jkRtWQpGS+aegZIFIWzfm
 XP4Ke1ZYKBx+kZKTQGgYEyw1qfPcr/d7pw51dKSS0npcFnXElNcYJAAY/RuuAJXP1vf8
 r9fA==
X-Gm-Message-State: APjAAAX4EOa7vvbjqoeNr1DqT9bqmeVI82HCkX9s8/KQGfWnfQ3HCKCf
 Q03EL3cIXsjTnzXa+4O3c6s66caeLhhHw/sCEqo=
X-Google-Smtp-Source: APXvYqxGHBFa8P5vpjbVLPEama12INy2Pt2H83NHNiep+1vxl9TlwguBVZ4KnSLAGXloUkCXunz2yug6gKdinLc2iX0=
X-Received: by 2002:ac8:3485:: with SMTP id w5mr20305367qtb.142.1561995673724; 
 Mon, 01 Jul 2019 08:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190624054728.30966-1-hch@lst.de>
 <alpine.DEB.2.21.1906240922420.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906240922420.32342@nanos.tec.linutronix.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 1 Jul 2019 17:40:57 +0200
Message-ID: <CAK8P3a3YHstHAs9OsWNHTtXjHnWtQfqr=WUZTpK+bONLTWLj+w@mail.gmail.com>
Subject: Re: remove asm-generic/ptrace.h v3
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_084115_169299_31248F0E 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>, linux-mips@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 9:23 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Mon, 24 Jun 2019, Christoph Hellwig wrote:
> >
> > asm-generic/ptrace.h is a little weird in that it doesn't actually
> > implement any functionality, but it provided multiple layers of macros
> > that just implement trivial inline functions.  We implement those
> > directly in the few architectures and be off with a much simpler
> > design.
> >
> > I'm not sure which tree is the right place, but may this can go through
> > the asm-generic tree since it removes an asm-generic header?
>
> Makes sense.

Applied and pushed to asm-generic.git/master now, sorry for the delay.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
