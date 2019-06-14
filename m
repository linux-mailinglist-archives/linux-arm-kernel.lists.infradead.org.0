Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448A246BE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KX0DoaqibKsz6jmKREOnGHqAHEAiWXmOPyJ0iCM+Y4M=; b=qFpSeq8klV1g3u
	jvDXSqXObwxZe+akXj31Y+hXMyy86IPKPOB4xxRxoEsCkw3gdWlfWHRxZs0omCAetGUoy5KeeIV+C
	vyVCRE3gjsDw2Y7su9+/V9U1ZX6mCDDquekYRGFXawHzkl7u49/aM6s2nL8ARoUCMQEwff2aeJon8
	BUQiqG2BeHYsIPXeKzAe3CxYQdohERrDTupq8EUcptO/uubUv2Kz8hZfwrj61EyCLbTEUEUQv/9r7
	PAChZ1rgvn7zHUXdhWBXnJ5JHkhbmiYolnQQPx0IJZd3Byk2ANjT/pAtCOfRxGf6QQlB7kPkzlxHN
	qBbbFFGnie1ogExDvycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtmY-0006qb-0C; Fri, 14 Jun 2019 21:30:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtmN-0006pu-4x
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:30:36 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E908206BB;
 Fri, 14 Jun 2019 21:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560547834;
 bh=ZxDW8K6J+radmhN5Vs7dffyGWwY56OXzv8PYXR/lauo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D/zHigl6AEHgfKDfYaQUw48nJ0lJIJi63bv2MJ+d8wmz+4j43FfzZUkMaIGPzY7VV
 n+W7xyxXoFe8ifSY15/YHLd5tqvHKjYOYq243asXrG4VkaF+IKjYq4SNTJiVqGGVD3
 isDi+ABOK/k1Q25bBsPQ+LT1tqvlis8g776GBz60=
Date: Fri, 14 Jun 2019 16:30:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 19/28] docs: powerpc: convert docs to ReST and rename
 to *.rst
Message-ID: <20190614213033.GV13533@google.com>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <63560c1ee7174952e148a353840a17969fe0be2d.1560361364.git.mchehab+samsung@kernel.org>
 <20190614143635.3aff154d@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614143635.3aff154d@lwn.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_143035_217928_26F24294 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-pci@vger.kernel.org,
 Oliver O'Halloran <oohall@gmail.com>, Russell Currey <ruscur@russell.cc>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Qiang Zhao <qiang.zhao@nxp.com>, linux-scsi@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Jiri Slaby <jslaby@suse.com>,
 Linas Vepstas <linasvepstas@gmail.com>, Andrew Donnellan <ajd@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 "Manoj N. Kumar" <manoj@linux.ibm.com>, linux-arm-kernel@lists.infradead.org,
 "Matthew R. Ochs" <mrochs@linux.ibm.com>, Uma Krishnan <ukrishn@linux.ibm.com>,
 Sam Bobroff <sbobroff@linux.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Andrew Donnellan <andrew.donnellan@au1.ibm.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 02:36:35PM -0600, Jonathan Corbet wrote:
> On Wed, 12 Jun 2019 14:52:55 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> 
> > Convert docs to ReST and add them to the arch-specific
> > book.
> > 
> > The conversion here was trivial, as almost every file there
> > was already using an elegant format close to ReST standard.
> > 
> > The changes were mostly to mark literal blocks and add a few
> > missing section title identifiers.
> > 
> > One note with regards to "--": on Sphinx, this can't be used
> > to identify a list, as it will format it badly. This can be
> > used, however, to identify a long hyphen - and "---" is an
> > even longer one.
> > 
> > At its new index.rst, let's add a :orphan: while this is not linked to
> > the main index.rst file, in order to avoid build warnings.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > Acked-by: Andrew Donnellan <andrew.donnellan@au1.ibm.com> # cxl
> 
> This one fails to apply because ...
> 
> [...]
> 
> > diff --git a/Documentation/PCI/pci-error-recovery.rst b/Documentation/PCI/pci-error-recovery.rst
> > index 83db42092935..acc21ecca322 100644
> > --- a/Documentation/PCI/pci-error-recovery.rst
> > +++ b/Documentation/PCI/pci-error-recovery.rst
> > @@ -403,7 +403,7 @@ That is, the recovery API only requires that:
> >  .. note::
> >  
> >     Implementation details for the powerpc platform are discussed in
> > -   the file Documentation/powerpc/eeh-pci-error-recovery.txt
> > +   the file Documentation/powerpc/eeh-pci-error-recovery.rst
> >  
> >     As of this writing, there is a growing list of device drivers with
> >     patches implementing error recovery. Not all of these patches are in
> > @@ -422,3 +422,24 @@ That is, the recovery API only requires that:
> >     - drivers/net/cxgb3
> >     - drivers/net/s2io.c
> >     - drivers/net/qlge
> > +
> > +>>> As of this writing, there is a growing list of device drivers with
> > +>>> patches implementing error recovery. Not all of these patches are in
> > +>>> mainline yet. These may be used as "examples":
> > +>>>
> > +>>> drivers/scsi/ipr
> > +>>> drivers/scsi/sym53c8xx_2
> > +>>> drivers/scsi/qla2xxx
> > +>>> drivers/scsi/lpfc
> > +>>> drivers/next/bnx2.c
> > +>>> drivers/next/e100.c
> > +>>> drivers/net/e1000
> > +>>> drivers/net/e1000e
> > +>>> drivers/net/ixgb
> > +>>> drivers/net/ixgbe
> > +>>> drivers/net/cxgb3
> > +>>> drivers/net/s2io.c
> > +>>> drivers/net/qlge  
> 
> ...of this, which has the look of a set of conflict markers that managed
> to get committed...?

I don't see these conflict markers in my local branch or in
linux-next (next-20190614).

Let me know if I need to do something.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
