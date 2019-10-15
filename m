Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F53D74C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sO0zM/qZD0a6tHROSHmHpb9Y5YJlOhxlz4GPGOtsS8=; b=GjUGfKBH5kdn30
	mWrp6+hJ0ur54fV62UOJo6foydwZxHJLdnvKhPBeimyq7LwxB7cqfkW3YCttuCVeoxbtgjj7hgURI
	skf7PY7Vwa+zTUC60AcWJ91Ensn9cxYT5rVmUB6V7VDlreMgCZKKTvrx8Vu97SS8vrn6w/FPepfWD
	OfkiK0r/Z6n4+hNMKy8npZFK9CQxbXnSwwh+Tgmqo20B912ZE+hglpifQv8BU5arskF6x7SGiE7xz
	pL5eHn3Oorf3VRc2BkxitNxRlO4hoT0HWdcruzAMUmNlarjSY7hmzZ5RgXg2/R/O9tRcYlpBKWM1p
	XAuWx1knrKliE6qzFVzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKqw-0005gW-4N; Tue, 15 Oct 2019 11:18:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKpc-0004gN-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:17:38 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5019921848
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 11:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571138255;
 bh=oJs4Nz/w5KcJqHZkCZCLIDvyah4l8VweCXBAgTjhNYs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b32Cjb9nv5iuC2edc5oLuv0kNikzaqCU+laPpIrHyWfA8edNBRj1164v0Qeu5TZMV
 0HSmF28RcGMyGbff/ShNudJDFleGB1X4fqOU0hmQCS4/tzdj69jEUTxZC1RhnA7D4i
 98hOmbzOfncbKIOuXNIoFEX/G4MYJ+zTiy4ETvxo=
Received: by mail-qt1-f169.google.com with SMTP id w14so29917600qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 04:17:35 -0700 (PDT)
X-Gm-Message-State: APjAAAU5o8Ay49B391klkMQbZ/5pMqMOrJ7id71tnnTUyTFkHByvE4x0
 XVKIjkZQElIklHh3Fcp9j8NQK4rS0LM81eA55A==
X-Google-Smtp-Source: APXvYqxZBQjXM06pV3GgKICK1b1Wdn//r19XqyM/3vYWnaPxKSp5jNZnSkfg00Qy9v7U1ZTrW9FlkUNkrdvCpYUlXGI=
X-Received: by 2002:ac8:6782:: with SMTP id b2mr37959337qtp.143.1571138254502; 
 Tue, 15 Oct 2019 04:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
 <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
 <20190930151346.GD42880@e119886-lin.cambridge.arm.com>
 <CAL_Jsq+3S7+E+a5E122aR7s0a9SxkMyxw2t=OkO4pS5QUR+0CA@mail.gmail.com>
 <20191015110254.GA5160@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191015110254.GA5160@e121166-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 15 Oct 2019 06:17:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJwmiUZmJSmRU4RAecKd=Zw+vGKGrHZ4UXrAwOGCNMF5g@mail.gmail.com>
Message-ID: <CAL_JsqJwmiUZmJSmRU4RAecKd=Zw+vGKGrHZ4UXrAwOGCNMF5g@mail.gmail.com>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041736_338480_8E6DFA75 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: PCI <linux-pci@vger.kernel.org>, rfi@lists.rocketboards.org,
 Ley Foon Tan <lftan@altera.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 6:03 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Sep 30, 2019 at 12:36:22PM -0500, Rob Herring wrote:
> > On Mon, Sep 30, 2019 at 10:13 AM Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Wed, Sep 25, 2019 at 07:33:35AM -0500, Rob Herring wrote:
> > > > On Wed, Sep 25, 2019 at 5:24 AM Andrew Murray <andrew.murray@arm.com> wrote:
> > > > >
> > > > > On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> > > > > > Convert altera host bridge to use the common
> > > > > > pci_parse_request_of_pci_ranges().
> > > > > >
> > > > > > Cc: Ley Foon Tan <lftan@altera.com>
> > > > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > > > > Cc: rfi@lists.rocketboards.org
> > > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > > ---
> > > >
> > > > > > @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
> > > > > >               return ret;
> > > > > >       }
> > > > > >
> > > > > > -     INIT_LIST_HEAD(&pcie->resources);
> > > > > > -
> > > > > > -     ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> > > > > > +     ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> > > > >
> > > > > Does it matter that we now map any given IO ranges whereas we didn't
> > > > > previously?
> > > > >
> > > > > As far as I can tell there are no users that pass an IO range, if they
> > > > > did then with the existing code the probe would fail and they'd get
> > > > > a "I/O range found for %pOF. Please provide an io_base pointer...".
> > > > > However with the new code if any IO range was given (which would
> > > > > probably represent a misconfiguration), then we'd proceed to map the
> > > > > IO range. When that IO is used, who knows what would happen.
> > > >
> > > > Yeah, I'm assuming that the DT doesn't have an IO range if IO is not
> > > > supported. IMO, it is not the kernel's job to validate the DT.
> > >
> > > Sure. Is it worth mentioning in the commit message this subtle change
> > > in behaviour?
> >
> > Will do.
>
> Hi Rob,
>
> I would like to merge this series, are you resending it ? It does not
> apply to v5.4-rc1, if you rebase it please also update this patch
> log, as per comments above (I can do it too but if you resend it
> there is no point).

Yes, I plan to resend it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
