Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45415D840C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ3WCZrtkpD8jj2ShUjsbp7pPGtjVQ9lu1dBZM6xEWs=; b=hyyDXZGUuSLvVO
	mpTCuzwAXI0+/SJToNO96JE5/wUxDZxESNXmk92ntB+8Du+U5msnUsNMk0QbMfcoL7pFabr2vHf/N
	OOvslvesu9YOItLkskf3XwMvh6iIp1d3AS5WPBoPNO9c7bV0vZOKYUOEmtAdoNzFYvtHM/J/ycX/j
	QrUW0toAi/qgvc8z9VzKtL1tqZumq4YgNye0m5eoydFDRr5xuuMg6iZmJ2nGA5GEclHCtmplrR9/F
	fNmRwzRKbte81DSoCP6Z0Jq0Te79cuRe4mX3co5r9e+jbPoBq5V6pPu61XuF4ssgpUFHuSlY/C4Gb
	Jdc+lJnPZn6azf7V9SSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVdB-0006TC-8r; Tue, 15 Oct 2019 22:49:29 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVbz-0005dK-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:48:18 +0000
Received: by mail-qt1-f195.google.com with SMTP id j31so33159581qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:48:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wW3J+M7tQtun5YRjxCSwb5z0yIjaole3jnpKo6pDabQ=;
 b=puRoVbWG4dOmyh/oKMXyMFVsgCaILqmX5jox1iAuaxzWdo/Gvu+yvujC3FXWDt+0JO
 0r21a8FhPlPPJ44LHnq6C5kd/s7f73JSFVmWzyvn7QM+VKOzamTk3nW/IuPq8AFdItjj
 1TZD6CD2IKXexJWrc2pRwdLX2KP3O6e4KVeWu4b22aLmgZiHAxNj6IqB005Lqi509P1R
 OXwcHzafhRAXyIf0DzMY6DllXGUPR8tMB0ZOPwCshKiAMndi3fPXDo3IorV+v84ksEwY
 tRzN2XpiB6L30HdfMSuqGTujDXQUNMpcOnO4OpBbAcbJfJrqNk19SREtseRReqKON00l
 puAQ==
X-Gm-Message-State: APjAAAWN4cLAEHkUzUrTWwsR5JwwdXQDHnKsFQl92Li3maQuYjm+ZRIH
 AfVckFujJUoAdj7ADBRKAoJWEZMUQCqlOoIcAdY=
X-Google-Smtp-Source: APXvYqzuDdko7JYdTFtGKHiBiAl0jsW9GZst76Bv9tRU8XgfeONW2Ydu9g66d9gYrVqLOb1ZNjGHuUY3H7h52Tx8+HI=
X-Received: by 2002:a0c:c70a:: with SMTP id w10mr21449240qvi.222.1571179692640; 
 Tue, 15 Oct 2019 15:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
 <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
 <CAK8P3a1Mu0Ghy1VtD7NBKQ4-ZMsYQe_bjYBAshRMTYTWtxzbPw@mail.gmail.com>
 <20191015223011.nyjbtylco6isjvb6@flow>
 <38a78a18-43ec-9425-6ad9-3ffe106690c5@redhat.com>
In-Reply-To: <38a78a18-43ec-9425-6ad9-3ffe106690c5@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 16 Oct 2019 00:47:55 +0200
Message-ID: <CAK8P3a1Mh9dtVuWwV1to60v=BnYE7PFDxLhoxLc19_TX=Tu27A@mail.gmail.com>
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
To: Waiman Long <longman@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154815_351069_83FF21E0 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 12:37 AM Waiman Long <longman@redhat.com> wrote:
> On 10/15/19 6:30 PM, Sebastian Andrzej Siewior wrote:
> > On 2019-10-14 12:01:02 [+0200], Arnd Bergmann wrote:
> >> On Mon, Oct 14, 2019 at 9:43 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >>> On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior <sebastian@breakpoint.cc> wrote
> >> Maybe it should be configurable?
> > Any comment from the locking department? I would prefer to avoid an
> > extra knob for it.
> > The v7 config is PREEMPT_NONE and HZ_100. Based on the perf numbers I
> > posted last time: with inlining I get more or less to the performance of
> > the ticket implementation on imx6 and it makes no difference on AM572x.
> > Let me run the hackbench test with the multi_v7_defconfig on my two
> > boards with ORIG/qlock/qlock-inline and come with some numbers here.
>
> Perhaps, we should not just looking at the all inlined or all uninlined
> cases. Different variants of the lock and unlock functions can differ
> widely in size depends on how the irq handling code is handled in each
> architecture. Maybe we can inline the small ones but leave the bigger
> ones uninlined. That can increase performance without too much overhead
> in kernel size.

We also have CONFIG_CC_OPTIMIZE_FOR_SIZE, which at the moment
only controls the -O2 / -Os options, but basing it on that would be
an easy way to avoid another user-visible option.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
