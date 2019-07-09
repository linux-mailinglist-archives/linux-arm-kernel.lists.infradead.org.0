Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E602E63609
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGjJiUlnci+awrr4XHJFGNVyuxYde7JKJD2NqqhR18o=; b=ZZJZA6DkYl8yzj
	54dNwgXFZRVnjVNz/g/cczJSK0RBUhpIVEDpMeeovPbysPnQH/y4XkNfh/0xONOqr+FBaZ2G2B+cs
	iB0kbJkX8O9eUt+v3HF82DDFcnhCZ36SM+C766ceztlDDfFWY6L5BbXIdv02h7NdWeUziKSDkMYGj
	SilRo/cGkJIbfQ7TjkWPJdoXAkl4u3+N9l9a7tWGZHA/IiBYgbQFakfa1bnx2+6I4eUOuzk4SU/sp
	bH/JUsn9gawUO/BSFb1j0zNwUwYKSUuWkjWDLbT+UzloWdwP2+DUk9fmkuK7jjPCU0GqoNUzbMpOe
	QfR/a3mRlG7lWlUIltcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpMy-00061w-RQ; Tue, 09 Jul 2019 12:37:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpMm-00061T-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:37:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so4451353pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 05:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=toXyCL0quzFOYmrXy8+MCWdClqdzvUSV1PASvI/KRWE=;
 b=GwfJMv7VfaZfq541svvZnCJToRGP/8W+q7J/2YC/eZqxEDsURJ5Hmqk6qz3aD97lmk
 JNT1ydj7O66POQPHdHTjg3jSZAREZD1j25psAWSvOcsILW8Ub/o3WC+P80nvtiNHnB2h
 gHmdUsjEXJ/jHI/sCNvtBt7hN7kfQP4b7BoZ+WsJp4/6bOpPc5lCJ5mOle8tIb2UsK5d
 aRUxqBcgLvBSAJdQ8nlJ+gvcRA5sJl+mlQiK6YgMz4HdJ5apBSDLLI+E8HPHvkHgFX/7
 a17c22B/w03BUYS9dDBmJMrPfrUAgL2rExPU9WlhJdzGh15MM20NE38Od/muYr9oMFpT
 /YGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=toXyCL0quzFOYmrXy8+MCWdClqdzvUSV1PASvI/KRWE=;
 b=jAX47zr4lA3B3wTHjU7dtdVaNkRpb2eLnnRjq2jjz3h/Qgl5S2fdWWApbQYOP3tMxE
 DY8X2ddCk02TL9uB65ajleumMwdSMEBX685sKlAOBKMxC1ang9Cw16BVPvAeEB1VG3bK
 nWblaogjOKYuLwWHw1yNfhPjdOCwIJ9i+OYVrsXMVCVn9Jydd6hJZ52dCB9YnZjlo88p
 0+ft5FKFYn7PLYhVK/q8W9SmVtrRGl47sf1HJcc5y/vwg4/QcLIIaCRa/5EhTGzjK+AI
 mfSn3ZgES4LvcPLb1yNv1nMtZ63XaR6ZCdYWUdxHfjvKXCzjxGASdVqCZ9Ckl/VBerPf
 +5Tg==
X-Gm-Message-State: APjAAAXxUn+fV4VxwgGO4D/6jMWIXFY09wIggg+mj8neptbbs1eeb2wd
 PWAb5oKS4jT/l1zhx+F4pgY=
X-Google-Smtp-Source: APXvYqwnEr4a7gislIXb4YWANEcVg47+zBKfEfCiGCTnhSL0oRHV35kB9bn+pZ1dMusp8+MfbOCCSg==
X-Received: by 2002:a63:211c:: with SMTP id h28mr30226836pgh.438.1562675823411; 
 Tue, 09 Jul 2019 05:37:03 -0700 (PDT)
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id v23sm20816932pff.185.2019.07.09.05.36.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 05:37:02 -0700 (PDT)
Date: Tue, 9 Jul 2019 21:36:57 +0900
From: Masami Hiramatsu <masami.hiramatsu@gmail.com>
To: Anders Roxell <anders.roxell@linaro.org>, Steven Rostedt
 <rostedt@goodmis.org>
Subject: Re: kprobes sanity test fails on next-20190708
Message-Id: <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
In-Reply-To: <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
 <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_053705_037555_4647F66F 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (masami.hiramatsu[at]gmail.com)
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
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.ibm.com>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 12:19:15 +0200
Anders Roxell <anders.roxell@linaro.org> wrote:

> On Mon, 8 Jul 2019 at 17:56, James Morse <james.morse@arm.com> wrote:
> >
> > Hi,
> >
> > On 08/07/2019 15:11, Anders Roxell wrote:
> > > argh... resending, with plaintext... Sorry =/
> > >
> > > I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
> > > CONFIG_KPROBES_SANITY_TEST=y
> > >
> > > I get the following Call trace, any ideas?
> > > I've tried tags back to next-20190525 and they also failes... I haven't
> > > found a commit that works yet.
> > >
> > > [    0.098694] Kprobe smoke test: started
> > > [    0.102001] audit: type=2000 audit(0.088:1): state=initialized
> > > audit_enabled=0 res=1
> > > [    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP
> >
> > This sounds like the issue Mark reported:
> > https://lore.kernel.org/r/20190702165008.GC34718@lakrids.cambridge.arm.com
> >
> > It doesn't look like Steve's patch has percolated into next yet:
> > https://lore.kernel.org/lkml/20190703103715.32579c25@gandalf.local.home/
> >
> > Could you give that a try to see if this is a new issue?
> 
> The patch didn't apply cleanly.
> However, when I resolved the issue it works.
> I'm a bit embarrassed since I now remembered that I reported it a while back.
> https://lore.kernel.org/lkml/20190625191545.245259106@goodmis.org/
> 
> Both patches resolved the issue.
> I've tested both.

In that case, the later one (move postcore to subsys) seems good to me.

Delaying the test is just avoiding the issue that the selftest found,
since right after init_kprobes() are called, the kprobe is ready for use.
This means that the selftest must be run as the first user of the kprobes
and it must be run right after initialize kprobes.

Thank you,

> 
> Cheers,
> Anders


-- 
Masami Hiramatsu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
