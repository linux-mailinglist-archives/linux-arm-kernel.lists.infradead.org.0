Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEABB12E94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsYQQ260oPgac+mrNP7dLihZw4VnKGTW8Cx5uLtNtEI=; b=EUOAxxD60zniJH
	LfDXztMIjusbDyC5h0Y4xZoNX6+JRxrk+pgvc7F81v9mHVAnw5g/wWK1zNYSAmor5cJiJ/jtKfKmR
	VDiY5vT666+jaCj3QhPWZyW72/Gujv7ixWzApNL28YaowkchGUsrBe8L3Sq0iyzMpoBekNxKJ4ZAt
	nMxyXfB0JPV0gK7nmyYOts/aq4wVizNzwAQhio/5gwtEKR0NjLmUjt3D3QivGS9iAA05kZkP3ZCeg
	LX8Hq30Wx1uLYLiQdh76aOxUFZDO7LerOqzqNaNRDCR5WPDo5o4CgqrQa3paYs6RuJFxav4hfCHEY
	88BQOe5KxipGATpnoR1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXlK-00067g-2l; Fri, 03 May 2019 12:58:02 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXlC-00067K-Sl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:57:56 +0000
Received: by mail-qt1-f196.google.com with SMTP id g4so6483379qtq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 05:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Sdy9iaHURUvZLe2z2TWslaL2IkPLpsKGDTPao4Xq9w=;
 b=CVCvCRY20ZBg4ShRahv+lL2wRzSPsOYwHfDfX13pvuhqcUpOSGQO6J+eaO5gdzeref
 0rOOqr0b8m99QJQPPhrB8WYB06BZiiXgN3pH0hw1B2gCvBo6Xm+uxtGimo3DtOD0V7zH
 NB08ow1CzfMmL9fYaoPzucH3Uwf0Y/IjVSHNMhq47C6A9XrZP/FG8s7SnpKlqCwlVdUN
 uA++JLPN1Hu4RA80bpdH/DlkZd4XUqAQx0BTIz5JT4j2Cb0dUElfhuUXoePxzeVlehLw
 o8clfekQgSp72zfTw5X1nIU/HKjROn+pgj0nUAFpQuTe4nE8k7p3q5p8uIXz0P+juh+f
 IaUg==
X-Gm-Message-State: APjAAAW47hXUFMIy7VoQ/TZM35SKEVdKoFj/gzSLdICgetQDVbJUczkN
 wdqDw7YprPysvpWTIKP7LP3PzoHs36JL9y3rrvn2DwOY0D0=
X-Google-Smtp-Source: APXvYqz4I66pwqVNkia+5QmCH0JMxT1NXFZAqd7SA9VcuUTPzK6FTtjijdQ+px26v/oRzFFrRi75cZp5kQT3vJ2MYQI=
X-Received: by 2002:a0c:980b:: with SMTP id c11mr8129691qvd.115.1556888273217; 
 Fri, 03 May 2019 05:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190430092839.767e5bf8@canb.auug.org.au>
 <CACRpkdYBuBf7jA2nUitiZWRriXVTPWCyB93q2CzmP4tbVZXqHA@mail.gmail.com>
In-Reply-To: <CACRpkdYBuBf7jA2nUitiZWRriXVTPWCyB93q2CzmP4tbVZXqHA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 May 2019 08:57:35 -0400
Message-ID: <CAK8P3a1dy92NYX=bo6LYUGkFmKjGq65HjomOq7cCYDgx6ceoaA@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the arm-soc tree
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_055754_932030_931126DE 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Olof Johansson <olof@lixom.net>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 2:49 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Apr 30, 2019 at 12:28 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> > After merging the arm-soc tree, today's linux-next build
> > (x86_64 allmodconfig) produced this warning:
> >
> > drivers/clocksource/timer-ixp4xx.c:78:20: warning: 'ixp4xx_read_sched_clock' defined but not used [-Wunused-function]
> >  static u64 notrace ixp4xx_read_sched_clock(void)
> >                     ^~~~~~~~~~~~~~~~~~~~~~~
>
> This is kind of normal for timer drivers, as the sched_clock() call is #ifdef:ed
> for CONFIG_ARM, it is not uniformly available on all archs. This appears
> as a side effect of COMPILE_TEST which I think is fair to produce
> things like this.

Could you send a fixup patch to mark the function __maybe_unused or
move it into the #ifdef?

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
