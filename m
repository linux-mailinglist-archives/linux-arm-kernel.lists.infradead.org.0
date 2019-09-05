Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF383A9E05
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ii3NuhXE8lI2y3DkbON4oIAP4id1tZ6cld/wEKBp3Wk=; b=HHl4c6gDp/2hgC
	+Gz6uNKp+MkE7dv88p2KUGhOUKWdjV2F4iX5bwfALoJvegWTXq44FktAT5FfOiK0DaVjBHzKzMW0m
	HSncsoycb2pzz4eTWcJ1lx5cWrWAjf/vOD/42B8Qt3pe6r/DnyOsnYxqFJ1osZIfKgFLP/OzRNUAh
	8tko5hOUrFBqzMNMA531JWnIue33R2EvhatdTU6gPmmXnRNACpDl/wTj0UI1UkuLX2vUSAhr0mnNF
	gmXZOw9n5KI09aYSf9AamMAuNmYt2RmI0W/eSm89dLbpvTu278yCXRsbPkGy8t1HOZqpcTFQBaej1
	Bq524Sn+TsakbAoxkqEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nsV-0001Et-Gk; Thu, 05 Sep 2019 09:16:31 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ns1-00012t-9k
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:16:02 +0000
Received: by mail-qt1-f194.google.com with SMTP id r5so1989534qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 02:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2wdOSWE5MA7UzN80AN6qv9ksgmxFQ62ViKKWBvCsVGo=;
 b=ANDM9U+fMVC6K49NHv5DTZbWMmLzAB2/6O4YkXoM6/IDtaJoq8Y/0SzfkJ5MeFPU0D
 UktNoSiyVORjJ5WGBnwD4+yHEeYWtQMfj1DY6uDyFG4Dz/d3nB1GT8vMLCkLHK5S4bgw
 WPE52aih/RiCI/eR8yOnj5UrbdLFBzO3tI5tTM3hp1N0lEME6MJQh/3coQ4mIDKUsfcK
 npE/7uIDSRF2ELWEtBsD9U3npTFmTff3W3Jg5X1N02XujB3T2F0m3zvTQ2RMF0KXZxI5
 /cBoHgmWuBpNzCLfsmGEsYUDAkJIj6xYuo7QMOzWOkt5ZsvhpIxZ4jTFmmHz0a6fnQWa
 FlHQ==
X-Gm-Message-State: APjAAAWxisk5eLR0OCbqKV3DzHW1KxYw5lII6gpqIchIYRj98RXywPqI
 xa1JvseRCmF+ucG63UUZMdfAjv/Mc/hhkJKYETc=
X-Google-Smtp-Source: APXvYqywE0A9L3+58OsCnwUMCMvV6KgWxEIIMxYUXmYy5WIil3yyHcWYs9iOwLgy7xiBGVE62xpyd8k+u0lOITdrFFY=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr2370044qts.304.1567674959601; 
 Thu, 05 Sep 2019 02:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-2-nsekhar@ti.com>
 <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
 <937b7ee1-ebdd-220d-f43a-da5e40ddfdf3@ti.com>
In-Reply-To: <937b7ee1-ebdd-220d-f43a-da5e40ddfdf3@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 11:15:43 +0200
Message-ID: <CAK8P3a1+qHrg3Wp89AUXrsPEiJXxvTzLZdha5-cHmXGWvW+bnw@mail.gmail.com>
Subject: Re: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_021601_356981_89B6538C 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 8:18 AM Sekhar Nori <nsekhar@ti.com> wrote:
> On 04/09/19 8:21 PM, Arnd Bergmann wrote:
> > On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:
> > Some lines are just moved around but these ones
> > are completely removed:
> >
> > -# CONFIG_IOSCHED_DEADLINE is not set
> > -# CONFIG_IOSCHED_CFQ is not set
> > -CONFIG_PREEMPT=y
> > -CONFIG_SND_SOC_TLV320AIC3X=m
> > -CONFIG_SND_SOC_DAVINCI_MCASP=m
> > -CONFIG_LEDS_TRIGGERS=y
> > -CONFIG_TI_EDMA=y
> > -# CONFIG_ARM_UNWIND is not set
> >
> > I think most of these are ok, but I don't see any explanation
> > about why you turn off CONFIG_PREEMPT.
>
> So this came because with commit a50a3f4b6a31 ("sched/rt, Kconfig:
> Introduce CONFIG_PREEMPT_RT") PREEMPT lost its prompt string. As
> suggested by that commit, davinci_all_defconfig should be enabling
> CONFIG_PREEMPT_LL=y to retain functionality.

This got changed back with b8d3349803ba ("sched/rt, Kconfig: Unbreak
def/oldconfig with CONFIG_PREEMPT=y")

> I can respin the branch with the preempt fix first and then the
> defconfig refresh. Or I can skip the refresh altogether.

I think the best way to do these is to split up the refresh into two
or more patches:

- one patch to reorder the options that just moved around
- one patch that removes lines that are no longer needed,
  explaining why there is no replacement
- separate patches for things that are now called something
  else, or got replaced with a different option.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
