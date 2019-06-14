Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E670E46AA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1fp9J3H/zaYLy5lcZ/PhXuRF7bT1Wq4e9So8T6+uaA=; b=hV2iILUFrSzXig
	b1SEckqRdyG36p249VYp1coxwePBJ+1UlUTXFQ+Y1sJ6G+PZgCssXAEJsgC5igQseV7ivi6pQvvE9
	91hdniJAPxkHfSQvrUCExN3TTgEUpNY6nHXidlx4HtgjJFXtdE5EWye1ofDuqO6BVwRrYSsgY1fx+
	POOB26FIK2nTyZ/HK67CNltQcW3Dd/RJ9TsiHdCgJZI80IAFxSgrIqbmIA+viXtYs9sOZnYnKNddf
	ljITXH+yhAe6NvW9kJVoYfsAOSiuF9NklpSMWnnA2iQt7VI9oUwGF+6Ftlditu0IGM4cz2FDRH3kj
	NEtY6jAyUuV+mX6jHxMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsxv-0004sO-MQ; Fri, 14 Jun 2019 20:38:27 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsw9-0003ji-Ns
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:39 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 656C91429;
 Fri, 14 Jun 2019 20:36:36 +0000 (UTC)
Date: Fri, 14 Jun 2019 14:36:35 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 19/28] docs: powerpc: convert docs to ReST and rename
 to *.rst
Message-ID: <20190614143635.3aff154d@lwn.net>
In-Reply-To: <63560c1ee7174952e148a353840a17969fe0be2d.1560361364.git.mchehab+samsung@kernel.org>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <63560c1ee7174952e148a353840a17969fe0be2d.1560361364.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133637_807606_AC07DB09 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Qiang Zhao <qiang.zhao@nxp.com>, linux-scsi@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Jiri Slaby <jslaby@suse.com>,
 Linas Vepstas <linasvepstas@gmail.com>, Andrew Donnellan <ajd@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 "Manoj N. Kumar" <manoj@linux.ibm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, "Matthew R. Ochs" <mrochs@linux.ibm.com>,
 Uma Krishnan <ukrishn@linux.ibm.com>, Sam Bobroff <sbobroff@linux.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Andrew Donnellan <andrew.donnellan@au1.ibm.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 14:52:55 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> Convert docs to ReST and add them to the arch-specific
> book.
> 
> The conversion here was trivial, as almost every file there
> was already using an elegant format close to ReST standard.
> 
> The changes were mostly to mark literal blocks and add a few
> missing section title identifiers.
> 
> One note with regards to "--": on Sphinx, this can't be used
> to identify a list, as it will format it badly. This can be
> used, however, to identify a long hyphen - and "---" is an
> even longer one.
> 
> At its new index.rst, let's add a :orphan: while this is not linked to
> the main index.rst file, in order to avoid build warnings.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: Andrew Donnellan <andrew.donnellan@au1.ibm.com> # cxl

This one fails to apply because ...

[...]

> diff --git a/Documentation/PCI/pci-error-recovery.rst b/Documentation/PCI/pci-error-recovery.rst
> index 83db42092935..acc21ecca322 100644
> --- a/Documentation/PCI/pci-error-recovery.rst
> +++ b/Documentation/PCI/pci-error-recovery.rst
> @@ -403,7 +403,7 @@ That is, the recovery API only requires that:
>  .. note::
>  
>     Implementation details for the powerpc platform are discussed in
> -   the file Documentation/powerpc/eeh-pci-error-recovery.txt
> +   the file Documentation/powerpc/eeh-pci-error-recovery.rst
>  
>     As of this writing, there is a growing list of device drivers with
>     patches implementing error recovery. Not all of these patches are in
> @@ -422,3 +422,24 @@ That is, the recovery API only requires that:
>     - drivers/net/cxgb3
>     - drivers/net/s2io.c
>     - drivers/net/qlge
> +
> +>>> As of this writing, there is a growing list of device drivers with
> +>>> patches implementing error recovery. Not all of these patches are in
> +>>> mainline yet. These may be used as "examples":
> +>>>
> +>>> drivers/scsi/ipr
> +>>> drivers/scsi/sym53c8xx_2
> +>>> drivers/scsi/qla2xxx
> +>>> drivers/scsi/lpfc
> +>>> drivers/next/bnx2.c
> +>>> drivers/next/e100.c
> +>>> drivers/net/e1000
> +>>> drivers/net/e1000e
> +>>> drivers/net/ixgb
> +>>> drivers/net/ixgbe
> +>>> drivers/net/cxgb3
> +>>> drivers/net/s2io.c
> +>>> drivers/net/qlge  

...of this, which has the look of a set of conflict markers that managed
to get committed...?

jon


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
