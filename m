Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A2819BED7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5T7FnGkaXaS81/jkpfJXitpst5O8KsrwAf76dRs5P8=; b=rzt72oBxTObTtG
	L/K4K+3nsFFxAaPrs+aQ1KT5RjH6rWHSrlqTcy8y7F5m0fl9/xAUt/QrygGJ/4ll7pQzF+YSrbSy1
	CtbuQkwdWTx1toKvmQ2Zidr2dBt7rlpyNQByvuAMTifY8ssvRaP7rv2iCVY/t1mbaonVtl1B00zjy
	jy2Hbg0IW4TPsmHyT8G0pW6oInXzOo+vlued/NOXm6kA3d5JMbqjm/l8JW2T+Z2qqdkDRX38hc1KI
	XN83kGzffIsqYpuxknB76wCn8r1j3wMsWYuSIVEdUVA/ryk3UUJPIk5S5to/P5Cwe8bydgnD/hz1c
	nRGygAENcaMU4HEtGsJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwPV-0003jh-Hd; Thu, 02 Apr 2020 09:45:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwPJ-0002iE-8G
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:45:07 +0000
Received: by mail-ot1-f66.google.com with SMTP id r19so2747810otn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:45:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QsAWgv2Ltj0RJCtE6KJA+MjYMln5Gouk6TC2Ox8jgH4=;
 b=IlHT1HflzCgSEfe4I4ViL9u0otOBJgQqAYfrWlNGfYYsnOXIxEQTjlevRykzgvtdqY
 aesc0cN2rugH9eDtSKtCQjVie7Gew3Dl2ZRtekXQoE1lFuWWVnVRbNmCIcUoHZK2Y+Ds
 0kdy/IA3zcdaqm5vBT7cS+B6XT80PyVZ9kWQtmkihWEeYB8Cu01hEzLFiBRcpXUYmXar
 J2Nyl1cDJIbCSYNK2DAWZVNArk3teBX+YkfOVa91lcNSbUByxAXZBgPj0/jDGq7zuBg9
 nICbCVbXP6bndLmSXx9TaNOZ4FMP8ri/h3dowxMY1I530JZ5YU+8+Z5++ATPQsYdbx3B
 ch+Q==
X-Gm-Message-State: AGi0PuY+Y3Cb0r6Uw4OJBsFL2vuF9xL9YLyvn0+7F6I5LFHGi/MafIxi
 G6uXEiX1fs/ln+m6J4jCTQuF7Z5lvM908f+qmcYBG+I6
X-Google-Smtp-Source: APiQypL3aEbK3qOHNFc8UUfG1eVBIVhIQbKqstnxpQiJYGdX95SEeZH23cRMjtqmXh9u9LqdYz8tHj6ZjdF2jD/UzHQ=
X-Received: by 2002:a4a:e08b:: with SMTP id w11mr2039415oos.62.1585820703485; 
 Thu, 02 Apr 2020 02:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200402080239.7471-1-linus.walleij@linaro.org>
 <20200402091446.GA19366@bogus>
In-Reply-To: <20200402091446.GA19366@bogus>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 2 Apr 2020 11:44:51 +0200
Message-ID: <CAJZ5v0hm0Ubj4OXqu497njn-AaD0HAEDXaFQzjrQg1pfD35VLA@mail.gmail.com>
Subject: Re: [PATCH] cpufreq: Select schedutil when using big.LITTLE
To: Sudeep Holla <sudeep.holla@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024505_324461_AF48F374 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 11:15 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Apr 02, 2020 at 10:02:39AM +0200, Linus Walleij wrote:
> > When we are using a system with big.LITTLE HMP
> > configuration, we need to use EAS to schedule the
> > system.
> >
> > As can be seen from kernel/sched/topology.c:
> >
> >  "EAS can be used on a root domain if it meets all the following conditions:
> >   1. an Energy Model (EM) is available;
> >   2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
> >   3. no SMT is detected.
> >   4. the EM complexity is low enough to keep scheduling overheads low;
> >   5. schedutil is driving the frequency of all CPUs of the rd;"
> >
> > This means that at the very least, schedutil needs to be
> > available as a scheduling policy for EAS to work on these
> > systems. Make this explicit by defaulting to the schedutil
> > governor if BIG_LITTLE is selected.
> >
> > Currently users of the TC2 board (like me) has to figure these
> > dependencies out themselves and it is not helpful.
> >
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Cc: Vincent Guittot <vincent.guittot@linaro.org>
> > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>
> Good to see another user of TC2 ;)
>
> FWIW:
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

This slightly clashes with
https://patchwork.kernel.org/patch/11463531/, so I'm going to queue up
them both.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
