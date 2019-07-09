Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A666341E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtFfKQVmOwnCAEJC3uxM/0B18y7h5eqTi5gh6AfqcEE=; b=pfFZ27escyyE8y
	3hBRGTBsj/ZHxBWksJn3T/zIOqRkPIBvwjUugv+ZpZnv1FHJZF0XGe7Em+DIES+qgYah7oLdtBACp
	V9/supFfbS1/QJFsO2J+o9Va/E8Ybi7429/USrJEYT2OAELNT7ImHc2Kh5lKIoxnt975nOlAQAEyd
	cDpuDE6IFnb3G5TtRXdGA24Nio+82UaLlcs/I8I5pXqyLRY3szK2kWO6KmCawmqRigGWQ5DwunFjA
	XFNu0lf7GZ/ItmZAC+XuTrmB0KsPEQrVPOverU06fj6Nj29tQ3jSnEBptYh5mLRcEcFaR6PDoKO6f
	cwUxHOc6Mfu5xiKthiZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknDk-0003RB-4D; Tue, 09 Jul 2019 10:19:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknDc-0003Qo-Bo
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:19:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so18985611ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 03:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=muIdAU71jrjl/Pbj5rlS7Ut9DTSuJ148dsi3/DfWkKQ=;
 b=oDOCVZxssqeo9nXwEhgJ/hHoUgG/L+2yB2JcenOs9IzBzDnTPuHlfR2wkN+S0Q7pkd
 BdOgZuTkmDt1rX+nR7SClLI2HmhrZqj/y1e+IMvZ+28haMDsWwy3izxclUQoillQCosH
 lE24TgIcpWDSQ5VCm9ob1R3eSGBu6YxYf9SQi4CmJQQFAPDG1gNz4rLUUqMIufCUhy4l
 iZ4EAd86ivTJkLbverkF+UxWd8oP7cpWbS6LD0gK2D3Nnkv+sicXtHEf06d4JGPhahcX
 91mQUwfOEPHAt9ENPjx3CuGGRpLpYv0eIXh2Pdv7RQ3zQU9ltm9VDwlY/d8/NU2rlzCc
 RKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=muIdAU71jrjl/Pbj5rlS7Ut9DTSuJ148dsi3/DfWkKQ=;
 b=ACVJbR7yxmp5GHbhfOpDpNPBaORoLfV4EcZkC7b1yhLQyVXIjofe/UfMXFlnVwpqFW
 urGHKJuO66vgrMV7+QCf/a/fKQGlMaH0A3UCkz4cvNvJD6VeR7klZy4DNEeO7F7y3/d8
 EYYPygPE4ht19I7H3npeEkpbahnn26+8pvYSC01JaUyM1dIKzTXyDGXfbnIQjTZr5KvV
 t57xCcAf6DKMUOEK1oUvtsmbXW1JY/cvn4UH0+mobgTQj/7PoXSerxjj9gW0FWc+kXaJ
 vxw7AIFtooX6o3Il9i//oB2NRQk2WlhIXiY371BbrrP26+m0i62LC7U4WqmEw8Oq5696
 iz8Q==
X-Gm-Message-State: APjAAAWR9Y1p7/zKiNPLR3gGhTndM1KDj/fecfms2Px0bqfLzJBm/pOS
 +scrV//QgNoKemESZKfOquAAj76wzT3hFSIyYMvbsw==
X-Google-Smtp-Source: APXvYqyUCrfTShwIFgPyKO5flqJsDKbiudHcHpVhR8kWvjkty0NfjAMw3UixBalcBHXjhm/ZFLtQzWYdFc2Blb30C9c=
X-Received: by 2002:a05:651c:92:: with SMTP id 18mr3723010ljq.35.1562667566489; 
 Tue, 09 Jul 2019 03:19:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
In-Reply-To: <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 9 Jul 2019 12:19:15 +0200
Message-ID: <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
Subject: Re: kprobes sanity test fails on next-20190708
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_031928_403901_E4AAFBBF 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.ibm.com>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 17:56, James Morse <james.morse@arm.com> wrote:
>
> Hi,
>
> On 08/07/2019 15:11, Anders Roxell wrote:
> > argh... resending, with plaintext... Sorry =/
> >
> > I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
> > CONFIG_KPROBES_SANITY_TEST=y
> >
> > I get the following Call trace, any ideas?
> > I've tried tags back to next-20190525 and they also failes... I haven't
> > found a commit that works yet.
> >
> > [    0.098694] Kprobe smoke test: started
> > [    0.102001] audit: type=2000 audit(0.088:1): state=initialized
> > audit_enabled=0 res=1
> > [    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP
>
> This sounds like the issue Mark reported:
> https://lore.kernel.org/r/20190702165008.GC34718@lakrids.cambridge.arm.com
>
> It doesn't look like Steve's patch has percolated into next yet:
> https://lore.kernel.org/lkml/20190703103715.32579c25@gandalf.local.home/
>
> Could you give that a try to see if this is a new issue?

The patch didn't apply cleanly.
However, when I resolved the issue it works.
I'm a bit embarrassed since I now remembered that I reported it a while back.
https://lore.kernel.org/lkml/20190625191545.245259106@goodmis.org/

Both patches resolved the issue.
I've tested both.

Cheers,
Anders

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
