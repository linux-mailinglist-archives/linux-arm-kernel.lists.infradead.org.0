Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4759FC258D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uCjPmUBXKlVvDN17xaDPaJbODnsodU8H4T12TwfIjM=; b=kR+EFSK+kEIgBD
	IQt/uI+gNusmGZZlKgL0J48req0A/BzGu4R5f/AWNNaQWwPlxtL9U3ZpBiQdw9lvMtEpYmNYPSnDG
	ZfaY5mlGE4NPYpeYIBbm826tiW5Bjwg706WSw66XCNwPaoSyv3hAKFKofhibnUbvVsE/gLEkfLpr0
	asQz0EFGD7NWazF6uusRQc0gngVCDYGQfJ58t1fINCW3kWx5Ec/dx7eiC3+Zol7a1tfcYP1kwzvSC
	ctvm4NEABJpKzEV62Varjg5rABmM2fLwnlfoVHlL+o2cNXIR1n9G1gqKAZQAq4C0CqlWa6UqrffWs
	OtXFAEeIwxUr+7ghL4hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEyz6-0005HT-27; Mon, 30 Sep 2019 16:57:16 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEyyt-0005Gm-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 16:57:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id m19so8987888otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 09:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZJu5nMPyA3CcXPtrWusDX9FpZgNc7KiBqwKc0pCnNk=;
 b=lDMXPyHH0b4q5PAmhy6A3YLJAkPCddp6btlDUZ0fPsYCu5yMeJTt74gZ5ZUXWWwe/w
 QnXSoca9X+Ns+PkoKCftGvH+eaa8NqLQr1kdj58zJ2hiotXy2CBBNxVuUeD0NYk76Beu
 YBIyyDFD6dc6upQ597O4TV60qpD4y3gXNE7Jery+lSUTFIndraj1O/EcZ1NBkAY+sVH2
 v9Ff9yFBknkTGA7ZEnjAI/tM6OntsNWbkiRuV6dtG3p13i1YVPGbTfhVgwtVRieZkRmM
 IFBRMzd0DiKPR74GE5cGaMLRvXbhOal7CevhadIXbfMyF4jjMUB76fGc/0EZmpPBcItS
 cFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZJu5nMPyA3CcXPtrWusDX9FpZgNc7KiBqwKc0pCnNk=;
 b=XcToqOG2KrTj4hstf+Y89rOHFAk0Yrqb6E4BGrEQu42pLxJnFE8p3a6Snng+H1QBFX
 xz5sJyPtu99hZxQA5HmcFFrtRJhgt/fIsPBocb0aoBNX/OFRfx+bn457oZd8FxwMMuYI
 ZKpp/Puq5s5ot+bSE2SaFL2qYILVwSBHgUgMLn5ywKdqOG4UHgQuYcw+tHB1DngRi/Q9
 fGqUylm1RvnNtZqSEC5+W5GFClgbsesA+ChveXjlhQBvGOqcwRGkZCTPwQMLxurGRksr
 H9HrrqQgbH7h3j7QnDZm50jlB2Ehuf5E/V2TemplFqwKs5P1pAYxYB4dmZbrAgBPmdop
 53qA==
X-Gm-Message-State: APjAAAXIC3AOGF8sTfMpwPHjCo0gLgK3Bgwhv+9PT4ohGhXknKoAmPsk
 LB0HTlQosUJAhUYrPgPofFRGUU/S7ffXodeQ141prA==
X-Google-Smtp-Source: APXvYqzB8H/7R2/+lg1XepUdOoHj928L8GWJV0m55A4x/X1lbYqO0HreOXXiM5k44rOocAfzJA5NKe2lpHDKrO0K8gI=
X-Received: by 2002:a9d:562:: with SMTP id 89mr1391432otw.232.1569862622367;
 Mon, 30 Sep 2019 09:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-6-robh@kernel.org>
 <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
In-Reply-To: <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 30 Sep 2019 17:56:51 +0100
Message-ID: <CAFEAcA_Lu73n9z-fyWNLvnxXyk-JcUbONHE5x06Uh9Upk4MVbw@mail.gmail.com>
Subject: Re: [PATCH 05/11] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_095703_947713_326339C7 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Sep 2019 at 22:45, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Sep 25, 2019 at 5:37 AM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Sep 24, 2019 at 04:46:24PM -0500, Rob Herring wrote:
> > > Convert ARM Versatile host bridge to use the common
> > > pci_parse_request_of_pci_ranges().
> > >
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---

> > >  static int versatile_pci_probe(struct platform_device *pdev)
> > >  {
> > >       struct device *dev = &pdev->dev;
> > >       struct resource *res;
> > > -     int ret, i, myslot = -1;
> > > +     struct resource_entry *entry;
> > > +     int ret, i, myslot = -1, mem = 0;
> >
> > I think 'mem' should be initialised to 1, at least that's what the original
> > code did. However I'm not sure why it should start from 1.
>
> The original code I moved from arch/arm had 32MB @ 0x0c000000 called
> "PCI unused" which was requested with request_resource(), but never
> provided to the PCI core. Otherwise, I kept the setup the same. No one
> has complained in 4 years, though I'm not sure anyone would have
> noticed if I just deleted PCI support...

Yes, QEMU users will notice if you drop or break PCI support :-)
I don't think anybody is using real hardware PCI though.

Anyway, the 'mem' indexes here matter because you're passing
them to PCI_IMAP() and PCI_SMAP(), which are writing to
hardware registers. If you write to PCI_IMAP0 when we
were previously writing to PCI_IMAP1 then suddenly you're
not configuring the behaviour for accesses to the PCI
window that's at CPU physaddr 0x50000000, you're configuring
the window that's at CPU physaddr 0x44000000, which is
entirely different (and notably is smaller, being only
0x0c000000 in size rather than 0x10000000).

If this is supposed to be a no-behaviour-change refactor
then it would probably be a good test to check that we're
writing exactly the same values to the hardware registers
on the device as we were before the change.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
