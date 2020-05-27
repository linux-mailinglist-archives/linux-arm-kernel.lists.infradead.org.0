Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0ED1E4A91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCdYsLAhP7c/tHRrVci+KYHtD6oCJiDMal0QIGRXZ0E=; b=ajSAiwQT72gBjT
	YAIbxbHLsAoqR/Fjv+vHzQse4pqFq51LHLh40ClOvJMHN+X5Yehi9e+JKximIVdBjwsGxM7rZQ4VT
	K5vKq4PfV+nBeWMrYArgcV/DKzWt+N9mfOjeH17xbD9lOIUYkjzUKXyYqH2HHAmhMVnSLUuCeqAwj
	+qOMcaBAbIIStbA06R/KLLpeajBLHO4jbYh/V57ZqAmeujwCy1XXUSCTDvfI48QrLF+GclQJ3r8/+
	3n9HZZ+Hm43hI6GNYGQdb3bURgJK9F5JVM+jJWEHNscOGZxvjTPyDES7D/YUmKMocYUMwF+9RhWL0
	hzfEdiLNppmWxiksMLXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz8H-0005qC-FY; Wed, 27 May 2020 16:42:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdz42-0008Ie-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:38:23 +0000
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18DE720C09
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 16:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590597477;
 bh=1ElavpxIOb162jTK3qnHRLYZHlidGmYNpnubB2FcWVo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CSc6KbFP5IFSMVcU25BkGBaUGo+R9FqeOUCt0o2DX9mgcvg9JruRp4Qn39hDf4q0i
 qVL3+P2ip5hAxLC9gyhnXqNnQsMatS0i6bSAKMCmov1ZykA8eVNixPS2WD7udS6r79
 jzeA3QvVJfUAzMRLrHRZJGYtHCoTKuSbOuKSzCpY=
Received: by mail-ot1-f49.google.com with SMTP id f18so21532otq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:37:57 -0700 (PDT)
X-Gm-Message-State: AOAM530tT9GWamMWJeyxNpjTZw3bU18FVuI4/HqBPOIr0e3M6Z8Gx3vF
 hhfMO26hpWs7x3YlFlsGCr9erPR3e39g6Xwk+Q==
X-Google-Smtp-Source: ABdhPJypzvc3q05z4AIUaGBF+aU21FPPXvUjMSTRC9ZOMkYJnnpBx8mSfd2Yxm6R6AYCBI8u4iJP95DuhMIdrGo2nfU=
X-Received: by 2002:a05:6830:18d9:: with SMTP id
 v25mr4952847ote.107.1590597476323; 
 Wed, 27 May 2020 09:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200522033631.32574-1-kishon@ti.com>
 <20200522033631.32574-4-kishon@ti.com>
 <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
 <df29309d-8401-4040-eb1e-90bb3af93a82@ti.com>
 <CAL_JsqLy9T8O81stSW8RHpsUXFFjon80VG9-Jgync1eVR4iTew@mail.gmail.com>
 <b3663862-44df-867f-0824-28802909f224@ti.com>
In-Reply-To: <b3663862-44df-867f-0824-28802909f224@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 27 May 2020 10:37:44 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJMZxOFw-kn5_9bNTPzJuwHybJAi6iQyBq=6BrKSvfTqA@mail.gmail.com>
Message-ID: <CAL_JsqJMZxOFw-kn5_9bNTPzJuwHybJAi6iQyBq=6BrKSvfTqA@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] PCI: cadence: Convert all r/w accessors to
 perform only 32-bit accesses
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_093758_749991_1EB794B7 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 4:49 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 5/26/2020 8:42 PM, Rob Herring wrote:
> > On Sun, May 24, 2020 at 9:30 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >>
> >> Hi Rob,
> >>
> >> On 5/22/2020 9:24 PM, Rob Herring wrote:
> >>> On Thu, May 21, 2020 at 9:37 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >>>>
> >>>> Certain platforms like TI's J721E using Cadence PCIe IP can perform only
> >>>> 32-bit accesses for reading or writing to Cadence registers. Convert all
> >>>> read and write accesses to 32-bit in Cadence PCIe driver in preparation
> >>>> for adding PCIe support in TI's J721E SoC.
> >>>
> >>> Looking more closely I don't think cdns_pcie_ep_assert_intx is okay
> >>> with this and never can be given the PCI_COMMAND and PCI_STATUS
> >>> registers are in the same word (IIRC, that's the main reason 32-bit
> >>> config space accesses are broken). So this isn't going to work at
> >>
> >> right, PCI_STATUS has write '1' to clear bits and there's a chance that it
> >> could be reset while raising legacy interrupt. While this cannot be avoided for
> >> TI's J721E, other platforms doesn't have to have this limitation.
> >>> least for EP accesses. And maybe you need a custom .raise_irq() hook
> >>> to minimize any problems (such as making the RMW atomic at least from
> >>> the endpoint's perspective).
> >>
> >> This is to make sure EP doesn't update in-consistent state when RC is updating
> >> the PCI_STATUS register? Since this involves two different systems, how do we
> >> make this atomic?
> >
> > You can't make it atomic WRT both systems, but is there locking around
> > each RMW? Specifically, are preemption and interrupts disabled to
> > ensure time between a read and write are minimized? You wouldn't want
> > interrupts disabled during the delay too though (i.e. around
> > .raise_irq()).
>
> Okay, I'll add spin spin_lock_irqsave() in cdns_pcie_write_sz(). As you also
> pointed below that delay for legacy interrupt is wrong and it has to be fixed
> (with a later series).

But you don't need a lock everywhere. You need locks in the callers
(and only sometimes).

> How do you want to handle cdns_pcie_ep_fn_writew() now? Because now we are
> changing the default implementation to perform only 32-bit access (used for
> legacy interrupt, msi-x interrupt and while writing standard headers) and it's
> not okay only for legacy interrupts for platforms other than TI.

Now I'm wondering how set_msi is not racy in the current code with the
host setting/clearing PCI_MSI_FLAGS_ENABLE? Maybe that bit is RO from
the EP side?

Ultimately I think you're going to have to provide your own endpoint
functions or you need accessors for specific registers like
PCI_MSI_FLAGS. Then for example, you just rely on the 2 bytes before
PCI_MSI_FLAGS being reserved and do a 32-bit access without a RMW.
Trying to abstract this at the register read/write level is going to
be fragile.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
