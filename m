Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1234350B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAFX6D0za62DiJwmIWtVSU58RO04tKidBBJR/HxwzQE=; b=uJGD2IJG0zKoU3
	kBHB1YswsToySVcJhmZFWFxZbwFH43jRs/xVt9FHEqkfPnWpNPoo5i8uDKZj6cKiRZ4HypFG9rbFH
	pnRdTSrx0ovnAVHJIvB+H8OvmVyaQrtZW6Uo7PJsiWc+WdrtxWWnbPQkYM9Exs2ucXF7Fr9D+8zCj
	u75O711Tc9eRDdQwMkTnCyPUO19s94b4hA1SZPwCt4ZzMgumruGzbhfkv6uhWHYNPhnwTuyVIcBID
	SI3MsIMyZTgChc9fNwBmkMhaU9gwXyju9Cpm+9hWVXrs/Rpuca2O2HluCULkzzLVZYLQZsX1pnNtl
	FDGXPGL/eOONRPVTPj3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMVm-0000rd-Me; Thu, 13 Jun 2019 09:59:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMVc-0000rP-KL; Thu, 13 Jun 2019 09:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6go1h+qBvd8UqStxDka25oSP1lwn219vXM1njzftqM=; b=st/cCkCW17JvfhPcMMlIiWlWs7
 IjzbMHLeCgNGoALijV6IG+3mBu2hWh+zDF/ixgeztGRJFvKYWEb/k1hwDtOuJEM+LaN5VPyeL2Nyt
 pUW3p7YE7JRXzR5AqF9H3+IiwxYWckQCRps/QFoMco8bS1sS+v518UWrrJXO7ml5NcscdFDSXeQVX
 ZKduv2MoYrDVAMjIkypzrzv1fDu9De18EdqyKnVmVA/jtlt3lbqFtvB/kKq3/UdhRk448WORt2zGk
 vyVeBQhaltTvjNhKaj4bDz1fJNL7g5eIVBQzyzZatNVk3zR46pfOQJ6fi4X1Ul2gzhVbF7Xgp5Fcx
 8jdm6Tow==;
Received: from 201.86.169.251.dynamic.adsl.gvt.net.br ([201.86.169.251]
 helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMVS-0000iN-9Z; Thu, 13 Jun 2019 09:58:54 +0000
Date: Thu, 13 Jun 2019 06:58:43 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: "Srivatsa S. Bhat" <srivatsa@csail.mit.edu>
Subject: Re: [PATCH v4 18/28] docs: convert docs to ReST and rename to *.rst
Message-ID: <20190613065843.100f72dd@coco.lan>
In-Reply-To: <7dc94cb4-ebf1-22ab-29c9-fcb2b875a9ac@csail.mit.edu>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <fac44e1fbab5ea755a93601a4fdfa34fcc57ae9e.1560361364.git.mchehab+samsung@kernel.org>
 <7dc94cb4-ebf1-22ab-29c9-fcb2b875a9ac@csail.mit.edu>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Nishanth Menon <nm@ti.com>, linux-wireless@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Harry Wei <harryxiyou@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "H. Peter Anvin" <hpa@zytor.com>, Alex Shi <alex.shi@linux.alibaba.com>,
 Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 Len Brown <len.brown@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sebastian Reichel <sre@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, 12 Jun 2019 17:25:39 -0700
"Srivatsa S. Bhat" <srivatsa@csail.mit.edu> escreveu:

> On 6/12/19 10:52 AM, Mauro Carvalho Chehab wrote:
> > Convert the PM documents to ReST, in order to allow them to
> > build with Sphinx.
> > 
> > The conversion is actually:
> >   - add blank lines and identation in order to identify paragraphs;
> >   - fix tables markups;
> >   - add some lists markups;
> >   - mark literal blocks;
> >   - adjust title markups.
> > 
> > At its new index.rst, let's add a :orphan: while this is not linked to
> > the main index.rst file, in order to avoid build warnings.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> > Acked-by: Mark Brown <broonie@kernel.org>
> > ---  
> 
> [...]
> 
> > diff --git a/Documentation/power/suspend-and-cpuhotplug.txt b/Documentation/power/suspend-and-cpuhotplug.rst
> > similarity index 90%
> > rename from Documentation/power/suspend-and-cpuhotplug.txt
> > rename to Documentation/power/suspend-and-cpuhotplug.rst
> > index a8751b8df10e..9df664f5423a 100644
> > --- a/Documentation/power/suspend-and-cpuhotplug.txt
> > +++ b/Documentation/power/suspend-and-cpuhotplug.rst
> > @@ -1,10 +1,15 @@
> > +====================================================================
> >  Interaction of Suspend code (S3) with the CPU hotplug infrastructure
> > +====================================================================
> >  
> > -     (C) 2011 - 2014 Srivatsa S. Bhat <srivatsa.bhat@linux.vnet.ibm.com>
> > +(C) 2011 - 2014 Srivatsa S. Bhat <srivatsa.bhat@linux.vnet.ibm.com>
> >  
> >  
> > -I. How does the regular CPU hotplug code differ from how the Suspend-to-RAM
> > -   infrastructure uses it internally? And where do they share common code?
> > +I. Differences between CPU hotplug and Suspend-to-RAM
> > +======================================================
> > +
> > +How does the regular CPU hotplug code differ from how the Suspend-to-RAM
> > +infrastructure uses it internally? And where do they share common code?
> >  
> >  Well, a picture is worth a thousand words... So ASCII art follows :-)
> >    
> 
> [...]
> 
> > @@ -101,7 +108,7 @@ execution during resume):
> >  
> >  It is to be noted here that the system_transition_mutex lock is acquired at the very
> >  beginning, when we are just starting out to suspend, and then released only
> > -after the entire cycle is complete (i.e., suspend + resume).
> > +after the entire cycle is complete (i.e., suspend + resume)::
> >    
> 
> I think that should be a period, not a colon, because it is clarifying
> the text above it (as opposed to referring to the example below it).
> 
> Other than that, for suspend-and-cpuhotplug.txt:
> 
> Acked-by: Srivatsa S. Bhat (VMware) <srivatsa@csail.mit.edu>

Ah, ok. I'll change it to:

	after the entire cycle is complete (i.e., suspend + resume).

	::

and add your acked-by.

>  
> Regards,
> Srivatsa
> VMware Photon OS



Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
