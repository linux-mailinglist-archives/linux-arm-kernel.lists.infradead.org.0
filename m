Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D3411EC9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Egm3ZiVvIKVprfVhgysIk/gAJNsWo2Shbvw56flXSG4=; b=dpTWa0Ephh+ylG
	WS8VAd+PMw7GajzrAxk31J0oPqcaWK1/EB+UQwK4qsGxnsfiq66cZs/w2gn4osm/ePU6k8io2lfZq
	D4JUgFveDMwxg0ahB8GaRWLFc6kI00aHjuChcWR/EAjvYeDcyetcGz63BaXiKo6eHHfgpVj6vzDtc
	MmdmAIM2vCvCx1B1KqVsUts8djlF+YWmgS4Td+t8yvEVeMMgJ1fQgJEELUIoTKBDP8A0cXgnM1/9F
	uvWxvh8tj+XPWQTafoTWVFwG+ewr/F8uaSFPAiVByT3i5/AHu0X6QbG081XUIDmkinjEvHy60f+9m
	BU9mJ/TkNKFjuYpcGbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs9u-0007Tg-28; Fri, 13 Dec 2019 21:07:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs9W-0007Gb-4z
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 21:07:12 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66C7B24671;
 Fri, 13 Dec 2019 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271228;
 bh=+Kbq946pLpBFZ/ZRLDIAH/9uhSYYVh8GR73ctHhEEIk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cfL67DjS188dqDBrbIjTGxh0OEx4ZaWEyJ1x1nOpkCkeFPncNCj7pVekbVRMuvWTf
 +1jk0dF9FupZsVS0G0LbpXYfdD8/Bc9J6We0kJThpgRPTuP/uct1DZckkUcC7shiHC
 Z1K7jBQSUg4CKyGjnGrBHaf+WlR74KXIi+olHx0g=
Date: Fri, 13 Dec 2019 15:07:07 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191213150031.GA229369@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ad40b55-0d31-a7b7-9f99-ea281fd4ad7d@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_130710_249894_114C4918 
X-CRM114-Status: GOOD (  27.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 11:05:31AM +0000, Andre Przywara wrote:
> On 11/12/2019 20:17, Bjorn Helgaas wrote:
> > On Wed, Dec 11, 2019 at 11:00:49AM +0000, Andre Przywara wrote:
> >> On Tue, 10 Dec 2019 08:41:15 -0600
> >> Bjorn Helgaas <helgaas@kernel.org> wrote:
> >>> On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
> >>>> From: Deepak Pandey <Deepak.Pandey@arm.com>
> >>>>
> >>>> The Arm N1SDP SoC suffers from some PCIe integration issues, most
> >>>> prominently config space accesses to not existing BDFs being answered
> >>>> with a bus abort, resulting in an SError.  
> >>>
> >>> Can we tease this apart a little more?  Linux doesn't program all the
> >>> bits that control error signaling, so even on hardware that works
> >>> perfectly, much of this behavior is determined by what firmware did.
> >>> I wonder if Linux could be more careful about this.
> >>>
> >>> "Bus abort" is not a term used in PCIe.
> >>
> >> Yes, sorry, that was my sloppy term, also aiming more at the CPU
> >> side of the bus, between the cores and the RC.
> >>
> >>>  IIUC, a config read to a
> >>> device that doesn't exist should terminate with an Unsupported Request
> >>> completion, e.g., see the implementation note in PCIe r5.0 sec 2.3.1.
> >>
> >> Yes, that's what Lorenzo mentioned as well.
> >>
> >>> The UR should be an uncorrectable non-fatal error (Table 6-5), and
> >>> Figures 6-2 and 6-3 show how it should be handled and when it should
> >>> be signaled as a system error.  In case you don't have a copy of the
> >>> spec, I extracted those two figures and put them at [1].
> >>
> >> Thanks for that.
> >> So in the last few months we tossed several ideas around how to
> >> work-around this without kernel intervention, all of them turned out
> >> to be not working. There are indeed registers in the RC that
> >> influence error reporting to the CPU side, but even if we could
> >> suppress (or catch) the SError, we can't recover and fixup the read
> >> transaction to the CPU. Even Lorenzo gave up on this ;-) As far as I
> >> understood this, there are gates missing which are supposed to
> >> translate this specific UR into a valid "all-1s" response.
> > 
> > But the commit log says firmware scanned the bus (catching the
> > SErrors).  Shouldn't Linux be able to catch them the same way?
> 
> Not really. The scanning is done by the SCP management processor,
> which is a Cortex-M class core on the same bus. So it's a simple,
> single core running very early after power-on, when the actual AP
> cores are still off. The SError handler is set to just increase a
> value, then to return. This value is then checked before and after a
> config space access for a given BDF:
> https://git.linaro.org/landing-teams/working/arm/n1sdp-pcie-quirk.git/tree/scp
> 
> On the AP cores that run Linux later on this is quite different: The
> SError is asynchronous, imprecise (inexact) and has no syndrome
> information. That means we can't attribute this anymore to the
> faulting instruction, we don't even know if it happened due to this
> config space access. The CPU might have executed later instructions
> already, so the state is broken at this point. SError basically
> means: the system is screwed up.  Because this is quite common for
> SErrors, we don't even allow to register SError handlers in arm64
> Linux.
> 
> So even if we could somehow handle this is in Linux, it would be a
> much greater and intrusive hack, so I'd rather stick with this
> version.

The problem is that from a PCIe point of view, UR is something we
should be able to tolerate.  It happens during enumeration and also
during hotplug.  It definitely does not mean "the system is screwed up
and must be rebooted."

To go back to Figure 6-3, I'm getting the impression that the "System
Error" shown at the top is *not* the "SError" you're referring to.  If
they were the same, the Root Control enable bits should gate it, but
according to your lspci, those enable bits are cleared, yet you still
take SErrors.

SError is asynchronous and imprecise.  Is there no way to do the
config access in a way that makes it precise, by adding some kind of
sync?  There's no reason we can't single-thread config accesses and
maybe even MMIO/IO port accesses as well if necessary.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
