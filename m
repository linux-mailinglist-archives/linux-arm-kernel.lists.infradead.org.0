Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F3EBDE27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 14:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ST7gaBn+UExxy9fF5JAAE04azx4BqluWdH+tPCre9Io=; b=QIySf/QkMOc+cm
	Uo2awAARH4+7f+3cbQBY7b5DMeQHf7jfCKtM8KEvbDf33+uoJfHJWoOWI+IZTdWAeg4Cila5YXz6y
	jRvUNImnGMFp1JL0loSlat2i6jZRXZLjF6nmoo3r1tVQivijeU6oClbbQaraJgmkyI1ydZh8MhUcl
	521/2pUFVR/KjXbUcB/RMh24Fw95ZEil4XRw9M9fxA762ZlPwnv08S2keNjmpISYqhygeH1pI9ak/
	0YsbmXOTZ2g5BlfE4qf7mSsvI7HH11vbReCPltNVjCXThIMtjFcseDgqjyGT5Kik0063LPbakF1sT
	XxwAipGxmREyBiSJAGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD6X3-0007nQ-RU; Wed, 25 Sep 2019 12:36:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD6UY-0007jz-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 12:34:26 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F37EF21D7A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 12:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569414828;
 bh=S0OrKaNGyI7miKcAbsKkAI+PcBOyiQjsvgRplH/VDqw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eRxpEohqKHmIhxjJm7exIF0yXeHlVGVt9kR88jA91C6GzDYJ6euGKRlDr3Sssif9K
 ukENO9Qe3wlZREEQKAAkS/xUPiR6mILEZQfWFUsrcSs+xuejWUQqbX9L5gY4Nhf1Lz
 b1YhZvtb4WUPZYvtB14nguCVgF0BGa4lsABYdxQM=
Received: by mail-qk1-f177.google.com with SMTP id p10so5065695qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 05:33:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWwNv17ZMiFK0oNGHcQfVttu+lL+84zaoLBsgvEHySz+b34mTK+
 XPlkoHMZVAPR4QKn7qf4CPZxXG85hnCtwxIN8A==
X-Google-Smtp-Source: APXvYqy+VpYHMrr0wwSi/PfiGlcOuazbCBbOD42iktFq7hAvyqzObahXJTnQcyL704BO/ru4JPY6Qp1tigUlCnAJsFY=
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr3321791qkl.152.1569414827046; 
 Wed, 25 Sep 2019 05:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
 <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 25 Sep 2019 07:33:35 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
Message-ID: <CAL_JsqKN709cOLtDLdKXmDzeNLYtGekMT2BiZic4x45UopenwA@mail.gmail.com>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_053403_454699_83970969 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 rfi@lists.rocketboards.org, Bjorn Helgaas <bhelgaas@google.com>,
 Ley Foon Tan <lftan@altera.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 5:24 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> > Convert altera host bridge to use the common
> > pci_parse_request_of_pci_ranges().
> >
> > Cc: Ley Foon Tan <lftan@altera.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: rfi@lists.rocketboards.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---

> > @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
> >               return ret;
> >       }
> >
> > -     INIT_LIST_HEAD(&pcie->resources);
> > -
> > -     ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
>
> Does it matter that we now map any given IO ranges whereas we didn't
> previously?
>
> As far as I can tell there are no users that pass an IO range, if they
> did then with the existing code the probe would fail and they'd get
> a "I/O range found for %pOF. Please provide an io_base pointer...".
> However with the new code if any IO range was given (which would
> probably represent a misconfiguration), then we'd proceed to map the
> IO range. When that IO is used, who knows what would happen.

Yeah, I'm assuming that the DT doesn't have an IO range if IO is not
supported. IMO, it is not the kernel's job to validate the DT.

> I wonder if there is a better way for a host driver to indicate that
> it doesn't support IO?

We can probably test for this in the schema.

ranges:
  items:
    minItems: 7
    items:
      - not: { const: 0x01000000 }

Or "- enum: [ 0x42000000, 0x02000000 ]"

Of course, in theory, the bus, dev, fn fields could be non-zero and we
could use minium/maximum to handle those, but in practice I think they
are rarely used for FDT.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
