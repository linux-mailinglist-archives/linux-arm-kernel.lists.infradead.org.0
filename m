Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201A957B8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOPAQxQ0NRkcVf5JGWTvDdlfAofIgkFbh7iDuJpaGg8=; b=UHbUaIwbWpPKn4
	EjUUUNpKyU7s3Fv5E4UZ6WlB4Rkbc/NCDUzUlyKaxFvUbEnn80hxnWmTuZxhiDsNaP5CUxJAPyR3H
	itPGEQ7UgK8cvnZFKyKSstkZ4lHbv/JRhqaM+NOfxL5TE4Jm1FZ3k+6Ftfen7tEJq4fR1FqsUuXjn
	ldP8DhV5VwAo/VmfRQbcb564tswGQyGOFpTcXK5+Nhohg2moeUM7N4RXsTSE6ccs8Kf60ew+NK0Lt
	FDh691TROkX5GBAKi2mDB5hE/bQHWaMxO5VOvRJM5a/LcZ13cziRofQWAB1A2/l/2MmJdN/5f7CSR
	NgI7EieuNiXOrwdcH/1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN4r-0007fs-C2; Thu, 27 Jun 2019 05:36:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqE-0006Qi-FL
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jVqZi0VDpRvustqGLunF6Pc/Tu/MfYc9yORaW6QQzAA=; b=N9kLnSxYBfwXERMWNvqzwMeuQ
 E68asArf4CFhQ9/aVdK1fL8uTADVVW7dFEQG7n8znaMqtyTiREQ1OIc9jTz/yuwoBvEv40ANmWGn1
 9uh2VYxmH9zRXIKxOd6tvFPYNS5dXx95J00Foc8N6N65BFMRAziE1lR/WruZmD56DqJ317G1vH/uc
 vuAjwgZX2VvMumn/UJtsoQaxWRZHLkrBGPW/bCx6yHAuRis15AksaeK/pg9PUwS6JmoP9rA+DcZ/n
 X6Vd1wmvZ2OxN2RQ158gQ1Ah9Eilkvxa9goDBWNSRVYGwfrNfIchC4EpoVdWlICMHHAdqtlvLKgES
 JLKP8LDkQ==;
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJLG-0007kj-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 01:36:52 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so1056475ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 18:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jVqZi0VDpRvustqGLunF6Pc/Tu/MfYc9yORaW6QQzAA=;
 b=1HDoASi8ehQLwS9AVqo+QZIvtpQhSg2NY0GoRAQ/E88QE51Uwjwzt+00Thte4mgkCe
 irtdL0UpXN18j497JbSF77PpCcWkHi/bICUu5OKdiKSpSuIRaAw5sWdKUqhZl3AZ1EE1
 07E4rzPxK8izncNWrpZSQr5Ug2rANfBvGe0849GPIhM+QgQoX+7+wSbnfsjPaHdjZ6AZ
 cdP8Ustc2ltJZBnLv3W+ieTJ9DmW7Moaac1IxX4t+eEwIX9vs5xoSPTc0v6OKkXV+nc7
 bnDBmto5w2jXhTBLRWnv9Hn4mNGoIA/QHctbcj0kbX1QQmqj2C10w7l7qYc2CHj9muhG
 voNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jVqZi0VDpRvustqGLunF6Pc/Tu/MfYc9yORaW6QQzAA=;
 b=YcihQT6eFLR3hGHBXCRzeOZX66GpG73gRDS9qgbTorv4B4SLR08P4siTBud+68/G+E
 UA2ki24GOO5OBNBTyzEyCu78qTqSAOw3wcpaHI388ylEpJ/IY9fLYVdCwq/FXEzpKxia
 qnUIWZaLS8+rpmVn/nY0E0Bno6s7p4x2FvfaTIq6B8lXuwSbWbIUWrBcy84X9cCMY9BI
 QD277uLjAHlrvVF0FFqAv1Bz1Ztq9TeU7dgP/8E0M0ZSYG1zqXMrKPW844az04bVQ3wr
 ziSaq+VfA8F+r2z39Qn93NnJxJpeN+ghtiIvM+ggoMydNjKaSiDr8ZyFuvthHXfga7F2
 PlxA==
X-Gm-Message-State: APjAAAVwJLGtYx8RWWQF2mpbPSOoc573EdJHRa5gMKrS/6HAetyhhO+g
 U69oE31gY3nmUNmfHvcYslTs4A0R3CWTHywHAhBllA==
X-Google-Smtp-Source: APXvYqzs75iMfXz7/rS4VeyHDtKAwlYTXfTPZZpSXxahppQZp/zCJx7DuwV1f+XkzmQJHKDm5D1GT8ViO7csAMLN+6U=
X-Received: by 2002:a6b:9257:: with SMTP id u84mr1461213iod.278.1561599283064; 
 Wed, 26 Jun 2019 18:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <877e9ayg88.fsf@belgarion.home>
 <20190625115042.qrlpbjzehjhxilvh@localhost>
 <87y31ow3o7.fsf@belgarion.home>
In-Reply-To: <87y31ow3o7.fsf@belgarion.home>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 09:34:29 +0800
Message-ID: <CAOesGMhtzW_mUdxqnWj3qhkuv2+5oOixQ6UH+rq2S_yJ523OGA@mail.gmail.com>
Subject: Re: [GIT PULL] pxa-dt for v5.3
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_023650_769918_64547B6A 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ARM-SoC Maintainers <arm@kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 3:24 AM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>
> Olof Johansson <olof@lixom.net> writes:
>
> > On Mon, Jun 24, 2019 at 08:45:43PM +0200, Robert Jarzmik wrote:
> >> Hi Arnd, Kevin, and Olof,
> >>
> >> This is the pxa devicetree pull request for 5.3. Can you please consider pulling ?
> >>
> >> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >>
> >>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >>
> >> are available in the Git repository at:
> >>
> >>   https://github.com/rjarzmik/linux.git tags/pxa-dt-5.3
> >>
> >> for you to fetch changes up to bea8754e784ef894a7aaf1821a1e8b700cc70f32:
> >>
> >>   ARM: dts: pxa300-raumfeld-speaker-one: add channel output mapping for STA320 (2019-06-24 11:35:02 +0200)
> >
> > Merged, thanks!
> Thanks.
> I hope you have also seen the other one of the split.

Yeah, did I miss replying?

It's merged:

https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/log/?h=arm/soc


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
