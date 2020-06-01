Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4931EB19F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 00:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cHQhrxoCNLTzEZ3ymjmqrvYlt1GWGkxAxEqqSVxqes=; b=Z/brlZnHDvGvBW
	hBLdq1I8qYwkbCKGhwlCBHdK/zHhhb1nhu7T5stMG3A4JhvHpTUi8sT+DSkcLsV4EWLDhQu70dOBk
	PzOL/aCJQjbBcApBp3Ggs4hTHgG1nnov1QBf1WQWQKKlzeEiBLOAmrPiLwYhEFy5wGfZZxY1k8KUJ
	UTTYsXY1cjuT+dI5AVvalSid3r6BRNr4p5wTn9YnGJm5EIPk2Y/brwJMNNq/ofj1hr6Pv3l3a+cfr
	Nmo088E8hGKI9sfjqSaddhMHPdhLxP7zXiY+hXZ049MQfoeW5yUHgQcjBNbt1F9fqH1cx89pSQvky
	lABdZgldrW9KXVdTPSag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsmX-0004Tp-Ea; Mon, 01 Jun 2020 22:19:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsmP-0004SO-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 22:19:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id z64so4106643pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 15:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/IqLU2DCduGFuGkJYk7IH1ysNp9fExFbJIun8lKl0NY=;
 b=Va83dYTqvaNl5qiheSXCYhTaywOS/5I7nBvJ60RbmcbffczHTFnTdy5w3Cu9/InZIZ
 L3p9iZvAep9FZAzDYnYpoVIwaS96ru06JOjvqqhKVhdThLDW+exQ28MEi8KSfWD8prhL
 SsVoR+CV+vcAnRTeB2HjvMO3ZDw1m6FPL4D+rW4Q4WgOcFRHRqBjlVAsC4TWVgCkcBNA
 khC67QMX2BiAvNcy6z3T+LXut4iJSHRvAp7W1rDWfzEY9XZ8ZEvZYdgkTisC9DDb2CmA
 Z9uMwt0/7keUrv2M4CtCr7QCFMzmt2vX/iaO7/Lk3KNrL36QGMeAs+5ZsI+mrMHJhW4n
 6WXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/IqLU2DCduGFuGkJYk7IH1ysNp9fExFbJIun8lKl0NY=;
 b=jDwCtJsTZTXeDLaNNkqSdf//J7ip+0E7EKbTYD0YE99sSLLCLCS914CZnYOm3R7wdT
 OhdeoDdEM52KOk3wGKw8ZLNOHgszvs2IQZ6VN96RaGhxabFL0Mb2+p4aVFus43sKTHNI
 q/Iep4L/1Yw5oY6QWdhCY94hRiIKus7w9WfovXHaOwbWjl3Pi9Xg3GuxYanfgIqRSIoX
 uzbBslaKNv7LjK1SAXzqIOl6hhjt51hXkq6TkSBn6JFYx7hOCFywhxmiT4uikjsZsK5k
 dAZAQQ6vpSHulD5kNyzoLn3/pHcWjtgx0rxNJQblg4+yyevg7RXvoApbzOfa/WySYMIQ
 VBew==
X-Gm-Message-State: AOAM5307SIwJ99plGBYP9VOZxfS7MR6w7k06MXsvqSB7mk7vhdNwJXaM
 HbaFvUtnEj8tNwtuZWjtZRDkQUZeT1PFkaONDEzh9g==
X-Google-Smtp-Source: ABdhPJwuOswGjiRvrNC6PZ0sVDYvurnOvic6nYlnyLftU16CyrywOCBP8ZooUgIAi0ibz3FJ6jwGMEZb8nLG9sK8jVg=
X-Received: by 2002:a63:5644:: with SMTP id g4mr20317628pgm.381.1591049975387; 
 Mon, 01 Jun 2020 15:19:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
 <20200526202157.GE2206@willie-the-truck>
 <20200527134104.GA16115@e121166-lin.cambridge.arm.com>
 <20200601070459.GB8601@willie-the-truck>
 <CAKwvOdmXmxOdW_TJQmYBYDY8gDOacjDTcpSWQGATb2p_85tFAQ@mail.gmail.com>
 <CAMj1kXFQzBaZO+RGKs2iJOzW6rdEiAjdVc8PJ4U+KMWgCD9a6w@mail.gmail.com>
In-Reply-To: <CAMj1kXFQzBaZO+RGKs2iJOzW6rdEiAjdVc8PJ4U+KMWgCD9a6w@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 1 Jun 2020 15:19:23 -0700
Message-ID: <CAKwvOdnz-=GD9-taLQt6LDhs2Q-xgWmywCUA6skB0NJhubB+nw@mail.gmail.com>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_151937_434748_B396C96C 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Collingbourne <pcc@google.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>, Alexander Potapenko <glider@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 2:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 1 Jun 2020 at 23:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Anyways, it looks like the address of member from NULL subexpression
> > looks problematic.  I wonder if offsetof can be used here?
> >
> > #define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (offsetof(d, f), (void *) 0)
> >
> > Seems to work in my basic test case.  Untested in the kernel.
> >
> > IIUC, ACPI_OFFSET is trying to calculate the difference between the
> > offset of a member of a struct and 0?  Isn't that the tautology `x - 0
> > == x`?
>
> No. ACPI_OFFSET() is just a poor person's version of offsetof().
>
> (Note that it calculates the difference between &(((d *) 0)->f) and
> (void *)0x0, so the 0x0 term is there on both sides)

Got it. So we're trying to avoid including stddef.h?  Can
__builtin_offsetof be used here?
#define ACPI_OFFSET(d, f) ACPI_PTR_DIFF (__builtin_offsetof(d, f), (void *) 0)
The oldest version of GCC in godbolt.org (4.1) supports this builtin.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
