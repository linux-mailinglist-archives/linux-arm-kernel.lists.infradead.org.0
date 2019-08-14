Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D9E8D29E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Op9OMzrFFaAiZiS0cmOTryrpMU8nS7RKfiKQX/Qccc0=; b=jwuvz+qeG+uUpM
	+OO4carg2wxHCsbTg/5iUwZ+y1CSanoN7KpkM8z58zu72o1gRB7iYZoooa0vXzPBzSFvm2BGtvSL5
	NQwaZe1ABnFolC/fMk1IyF8H0vABA5VttwSWfr6qJmZzY7icMOFiFnWuHY8YuWTHe2eKfehC/Cjr9
	49mCHR40qnX53Fna4zTYRjjxP1MnaD6YpImTHJNiZ4a+wZdODzdh7IR7Ha/1Z1iKlEaERtnmhXJj4
	4vtgoYv0CtlYfmvGw9AjIxnQiTTt3Cdg6puWLLpxcfrrp7pQ/69ozVta/+y3vCgT2vbEuhCuTR7pS
	37yEO/zk++pVDGG4zp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrwM-0001ji-O6; Wed, 14 Aug 2019 11:59:42 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrw2-0001j6-Uh
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:59:24 +0000
Received: by mail-lf1-f66.google.com with SMTP id x3so79243368lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:59:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8NHuBBys1AqC0nWO0pn74jgJq6YD6r7LGRtWjE6jmtU=;
 b=Q3VFkfB34yf8lErJy7UQWm6hLqm+uycRrlLtmNNbewD1+P3uWra4JKeOqi4ZPddNKK
 3Bl24K7j29XrPhg0jfARP/Ku3L4d5pDtSiXsTK3t1FhfcYPz8U7H4ssHi4nB2eLX/N1B
 dU1ZVCxJ5f3JKI3XupOZWcShoB7kw1rkbshZqA2wAnra6Aw2SrECAktrdadSxTf3uK3Q
 ncEkUieFQqdHHb/8yCG1uCzJ9/ZToLnqkUzGQG9h2SizgS+FW239an2gYc0biM6hQjQG
 ZOTzJKhDFjFtDnDy2cCwsgyBzfj0qBe0t18B7yWE7haySRaGU7FKE1tleu/k+pNc8AfP
 en5Q==
X-Gm-Message-State: APjAAAXAZLCFMKLR/GEcIBDxyMK6wdYifwxWIa9PaPSxPl8S3jN6tECX
 DlTRgYdOMj+4XzdAl5M01uc1U3VEvIzWjAliKTr1Rg==
X-Google-Smtp-Source: APXvYqwt29cWpLQGx1e5xNjYiebOwubUJzPfj3n565rGPBKWVO7WzrR+LmQgdrv/ffvPLkVlo11c/UO8AGm+MUsLVgk=
X-Received: by 2002:a19:4aca:: with SMTP id
 x193mr24921779lfa.146.1565783961175; 
 Wed, 14 Aug 2019 04:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
 <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
 <20190813131013.vpc5a2vlxwghizxa@willie-the-truck>
 <CAMuHMdXr+S2QeOSEXZoGGDOB_PrgENPbVXFjS=pEfbHfvN2zhw@mail.gmail.com>
 <CACi5LpNhh0a0ktLeDDCO4K3-mBx0D8QZ344juAzbHeP4QFtGDw@mail.gmail.com>
 <20190814082137.mnk242lp2vw5b4ot@willie-the-truck>
In-Reply-To: <20190814082137.mnk242lp2vw5b4ot@willie-the-truck>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 14 Aug 2019 17:29:09 +0530
Message-ID: <CACi5LpMNC2h-JAmT3gc8wt6rwPBzQaAUZq_P18D3Atjg9CNS5A@mail.gmail.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_045922_994366_951B483F 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph von Recklinghausen <crecklin@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, maz@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 1:51 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Aug 14, 2019 at 01:34:49PM +0530, Bhupesh Sharma wrote:
> > I still see the following issue on a 48-bit hardware (i.e. _non_
> > ARMv8.2 hardware) with branch 'for-next/52-bit-kva' with commit
> > d2d73d2fef421ca0d4 as the HEAD:
>
> Have you tried the patches I posted here:
>
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/673315.html
>
> ?
>
> Whilst they're being reviewed, I've dropped the 52-bit branch from
> linux-next (for-next/core) so that people don't keep running into this.

Thanks will try the above and get back with my results.

However just to make sure that the 52-bit changes are tested properly
(before landing up linux-next) - as we had issues with the 52-bit User
space VA + PA changes in the past (which broke userspace), I was
wondering if we can have a dedicated branch to have the v5 patches
from Steve + fixes, so that they can be easily tested and issues (if
any) reported with easy reference.

Or, if such a branch already exists, kindly share the pointer to the
same as well.

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
