Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9EA19E10E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iozpAa2l9VBtIR2c6wduKNNLhQYtoOnJTY/DyjzEpk0=; b=LuLmdTWntgL9my
	DS0mY2zSz6d7gGmmaGWIiLe1WM1ffzVcPUiRo9WBGVWQumJUaTEaCCrCVcRTE/bpFBozRouR8CG7D
	t3HQQKgEMarvNIzXY+unX0jyLxQj6jYGkvQBxlaHypw5jnipXUJNegsdQ4se+ajEV6BewC6yrdgOD
	pA1UMCjRWIzWAli6tn8FotE9egvDcPj1ZnGGBKMnAA5/JSJ/sGknKC/NvXDSZbGrMtwimeFz56wcR
	cgc7mII27gyx0knNviY96hGREKL5Av31QhyKbUskfiX8rEnj8osQc57gQPmTW2Oejn1TOjrpSmfk8
	+5jUzYTMtSipd/P1nBWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUnT-0004kJ-QR; Fri, 03 Apr 2020 22:28:19 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUnM-0004jd-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:28:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id z23so7102973lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 15:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ztm2c70nweVPXtPZ97E7qbHB7Ry5pYZyFypgiwrOPIY=;
 b=Er0IkP/deLDVRu09ZP8UT5uywg4gklKTG8m82afq2eQc92AjQ5VG6bvHLkN9wi21q0
 SVAwxNmPy4dGOy9EAUJjQmJlroptEQy2QhXaeIzWXoEN69QAG+ngdjlCveAn8Wcj3V+3
 B7q7OoR8t3HCWLgjV95nZvumDu4UG49HwxWpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ztm2c70nweVPXtPZ97E7qbHB7Ry5pYZyFypgiwrOPIY=;
 b=LLG0Puls3YnxajGPhg1b6nEl7z/M4mqA4UT8NL91QZ9GyPGGYldTs/GysYpt/VO2Ro
 VOr48k98QGUEy7RXFEPiHyB4n9LOOo4vrucj6nY0CD/uO7DHbFDWCP96of/pd4DMwGDP
 kqdKtXMXF/c6BhILoFQy29Nlz480mbsGlZ5psuh71LHkmC816u29iMq5DzMriPHbHcXl
 y6t28GCoavDZWAtw3EXGeSAXG08OcZJLb7fGE2OXtT+PYM05jR1voUOdPZk9RTGO7f2U
 lgiu65quLsjomD/6iZ2fOwaWFux/RbDFPFYYcg11v+oqoy7Le2CSbTXDQd9jthzcTJHh
 jfDQ==
X-Gm-Message-State: AGi0PuY/1tIVb+DfI1e7w95XhZF+w+xnDBcOwDVPH2pyaBqXIyXU3ytq
 SKA3jQ1woSmmyHXLVZDxQKcJ6QEiZDA=
X-Google-Smtp-Source: APiQypJpPUz1ZmEBkBIYvJJiW08S2V58hOMMoIutbSqVKPuofEeUOjmEr5oseJo4dBpFchAPW2YHiw==
X-Received: by 2002:a19:7407:: with SMTP id v7mr2195676lfe.124.1585952890128; 
 Fri, 03 Apr 2020 15:28:10 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id a6sm6729770lfl.5.2020.04.03.15.28.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 15:28:09 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id r7so8515809ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 15:28:09 -0700 (PDT)
X-Received: by 2002:a2e:8652:: with SMTP id i18mr6314194ljj.265.1585952888185; 
 Fri, 03 Apr 2020 15:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a3iGtudeWTwufBYYM29jL5b_FRkqzU2QZiQRu0B2NhyZg@mail.gmail.com>
In-Reply-To: <CAK8P3a3iGtudeWTwufBYYM29jL5b_FRkqzU2QZiQRu0B2NhyZg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 Apr 2020 15:27:52 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiZHmvCmXmGNQmmwDOYXLqpg3X=-LLRZ=Yq9p6V3pSEig@mail.gmail.com>
Message-ID: <CAHk-=wiZHmvCmXmGNQmmwDOYXLqpg3X=-LLRZ=Yq9p6V3pSEig@mail.gmail.com>
Subject: Re: [GIT PULL 4/4] ARM: devicetree updates
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_152812_479215_DFFF5037 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 2:46 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> To spare you the 80kb of git-request-pull output, here is a very
> abbreviated version

So you didn't do a test-merge and generate the diffstat from that?

That's just 567 lines and about 35kB, and I get

 488 files changed, 18917 insertions(+), 4522 deletions(-)

Anyway, it didn't cause any conflicts, and looks as expected for a DT
update, but I generally like to have the ability to compare to what
the sender thinks I should get..

               Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
