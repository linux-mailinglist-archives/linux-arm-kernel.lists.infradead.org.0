Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F5B7B86D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 06:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juREE/CnCKvI+cjfJllqq2ffHFMB2sOYXtcZCS0WfTE=; b=XQb/nhlAaIhEhK
	TTT1WNCrziJzsWFoxCd0xvFgagOPk970GMy85Wqma8JLEQKHIfXbuSa3MtXiM2SnCY0ooELRaxWlN
	73IR2JLLb6Ci8cMMmTGwKaSdBWNK+qc/0p7Hvku4pwmMo5oTYVvPJvxJMuZZPpxFjCtOEdzijp//r
	69SLRxG5HqNbqp28xgQ6HS0PnvbH6uFb8yFlh+icrBgh+WYQHsKmRd2JuZ/lKgAZ04VVtQem+D9kP
	dUJ/woR7SQ16zb2JUZtJ+c0prJHnvMY0Nr1do/DuDHypV/vhdiLQDeyVrP3NZwEoe9RRaWetRfwLW
	WM+haBPFb7oqp6iWQf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsfzT-0001Hr-2E; Wed, 31 Jul 2019 04:13:27 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsfz8-0001H1-TG
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 04:13:08 +0000
Received: by mail-qk1-x744.google.com with SMTP id r4so48169891qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 21:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NFVesl0ZnOpQBqtMqV5lpfo1vwR6WRneLNekq2w+A+0=;
 b=r1wIjjlaOUYXC9i0CtRzf8gVkGR6i7HDy0I7VVJKls8IoU+bJTFRBj1qe/DGeZNwS3
 mgGjvWiGMKJ5bP8brcspcZO4X4V9eenYomQN3tD6rEkVc0vAb+6ZpUSxr5z+Ixu7M5LS
 C+dQ4sCispoR+WPJbpeV4A3KmqkmKV8aNcP8bUq37kWCpCN8HmKmrmVc8vrmnmmS5a1z
 pllvWFZjj4465RcciKSuD8r9iNFT9t0DU+fajvZmzT+qVTZnQCeDyTZZLsYvTPcta7Vy
 4NaCttjGVF1oboy6iznh59NugAeylu++kg+f7wcyJVdYPc0G39Hhm3wTwrIOxZ+x8oOL
 cRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NFVesl0ZnOpQBqtMqV5lpfo1vwR6WRneLNekq2w+A+0=;
 b=CPswTD77WV2HSp2FIoc93JDmbZkrgFIK9wsBR4Hb2NCA32DBslYG7eZ3DaQ3SR/lhp
 1MxFs6OauwwMt90D3bh9fuGwqEyemYPgNHtz8Lj5L6JAVbzvNrdmDe3lob5jbHrmWJeN
 ukvwEDUeq6Gs1Od2CpRrekTm9OQTa0+fQCLZ8fm/C1FVo9hXMUzi4F0izocc9GOcnB0G
 4Qd0Ap7zetPWHXQRm9RCEG33g620foEwAcbti7aqYn2M4jywFHxaJsUV9BO2QG0gKDhN
 YQp2oa0Rac3n9heAt6+57F3iO5T74pbu+sId+ag0WiWJzrgA3sAt43Pm9vZrGrna5HPK
 SglQ==
X-Gm-Message-State: APjAAAV8pfGv1p262VaL4F2ADejcxkVSTVNaKGxAIyGHRdAmIunpLpQy
 HTKEj88mATm892HHqEKqxfjAWd7dMV/lVTkJAPM=
X-Google-Smtp-Source: APXvYqy2sz2eWCGTJfeBDvYeHklxGvXDMSeWgw1gHMMJZXav5IjX+rI/W8oAUPJin0pn2pg2QXOlbRH7FD1Tuk2ix2k=
X-Received: by 2002:a37:5942:: with SMTP id n63mr5572295qkb.69.1564546381707; 
 Tue, 30 Jul 2019 21:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190730044326.1805-1-luaraneda@gmail.com>
 <20190730104746.GA1330@shell.armlinux.org.uk>
In-Reply-To: <20190730104746.GA1330@shell.armlinux.org.uk>
From: Luis Araneda <luaraneda@gmail.com>
Date: Wed, 31 Jul 2019 00:12:11 -0400
Message-ID: <CAHbBuxoMBiq23Rkt7-jm42O4ePY=23ZsgNEVf3UJKQ2Dg+3fbg@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_211306_946518_FB6240F8 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

Thanks for reviewing.

On Tue, Jul 30, 2019 at 6:47 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Jul 30, 2019 at 12:43:26AM -0400, Luis Araneda wrote:
> > This fixes a kernel panic (read overflow) on memcpy when
> > FORTIFY_SOURCE is enabled.
[...]
>
> I'm not convinced that this is correct.  It looks like
> zynq_secondary_trampoline could be either ARM or Thumb code - there is
> no .arm directive before it.  If it's ARM code, then this is fine.  If
> Thumb code, then zynq_secondary_trampoline will be offset by one, and
> we will miss copying the first byte of code.

You're right, I tested what happens if the zynq_secondary_trampoline
is ARM or Thumb by editing the file where it's defined, headsmp.S

When the .arm directive is used, the CPU is brought-up correctly,
but if I use .thumb, I get the following message (no panic):
> CPU1: failed to come online

This seems unrelated to solving the panic, as the message
even appears with memcpy and FORTIFY_SOURCE disabled.

I could add the .arm directive to headsmp.S
Is that your expected solution?
Should that change be on a separate commit?

I'd like to know Michal's opinion, as he wrote the code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
