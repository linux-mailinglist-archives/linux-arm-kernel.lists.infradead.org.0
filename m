Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F824A0FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFtcFc+NpigWvKIEvAApnlmbPRUGFbmruQXaHPmfUlc=; b=J+bCexfzEX/m/O
	/OE2BOyxa+8fhxrunltVpBlJck8wgwlFXol6L4NzrkrvhD53utLLDc59hcNW0unxf4AsLgW0oF50W
	YKIH2RI8snWgeRkMrWtQlg2aRLhPB1oVWJCSOIo1uGOK3/TRDeEVyUMZe62Ex87vtu+6t2ZqY5+Ou
	3CePAVBoZ7wS0BI+B0O6ElU+YX2OmhaAP+zv20LjKbx5i6BM/ScgjsluKvzh2MFBfgwARkoTBBVZI
	uf3cNtB9mZxBhIHQyzk8LHAz+GZwaUkx2A/Syy6ObangJKMuaz9h4987f33+F5V9Ophqq8CjrWMdW
	ySZTjwGx2L6eSbCpONrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDP2-0003Ht-Vv; Tue, 18 Jun 2019 12:39:57 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDOs-0003Ft-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:39:48 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Snhl0Bsrz9sCJ;
 Tue, 18 Jun 2019 22:39:34 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 19/28] docs: powerpc: convert docs to ReST and rename
 to *.rst
In-Reply-To: <20190614143635.3aff154d@lwn.net>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <63560c1ee7174952e148a353840a17969fe0be2d.1560361364.git.mchehab+samsung@kernel.org>
 <20190614143635.3aff154d@lwn.net>
Date: Tue, 18 Jun 2019 22:39:32 +1000
Message-ID: <87blyvoynv.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_053947_234040_D7F1CDC7 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Jiri Slaby <jslaby@suse.com>, Linas Vepstas <linasvepstas@gmail.com>,
 Andrew Donnellan <ajd@linux.ibm.com>,
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

Jonathan Corbet <corbet@lwn.net> writes:
> On Wed, 12 Jun 2019 14:52:55 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
>
>> Convert docs to ReST and add them to the arch-specific
>> book.
>> 
>> The conversion here was trivial, as almost every file there
>> was already using an elegant format close to ReST standard.
>> 
>> The changes were mostly to mark literal blocks and add a few
>> missing section title identifiers.
>> 
>> One note with regards to "--": on Sphinx, this can't be used
>> to identify a list, as it will format it badly. This can be
>> used, however, to identify a long hyphen - and "---" is an
>> even longer one.
>> 
>> At its new index.rst, let's add a :orphan: while this is not linked to
>> the main index.rst file, in order to avoid build warnings.
>> 
>> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
>> Acked-by: Andrew Donnellan <andrew.donnellan@au1.ibm.com> # cxl
>
> This one fails to apply because ...
>
> [...]
>
>> diff --git a/Documentation/PCI/pci-error-recovery.rst b/Documentation/PCI/pci-error-recovery.rst
>> index 83db42092935..acc21ecca322 100644
>> --- a/Documentation/PCI/pci-error-recovery.rst
>> +++ b/Documentation/PCI/pci-error-recovery.rst
>> @@ -422,3 +422,24 @@ That is, the recovery API only requires that:
>>     - drivers/net/cxgb3
>>     - drivers/net/s2io.c
>>     - drivers/net/qlge
>> +
>> +>>> As of this writing, there is a growing list of device drivers with
>> +>>> patches implementing error recovery. Not all of these patches are in
>> +>>> mainline yet. These may be used as "examples":
>> +>>>
>> +>>> drivers/scsi/ipr
>> +>>> drivers/scsi/sym53c8xx_2
>> +>>> drivers/scsi/qla2xxx
>> +>>> drivers/scsi/lpfc
>> +>>> drivers/next/bnx2.c
>> +>>> drivers/next/e100.c
>> +>>> drivers/net/e1000
>> +>>> drivers/net/e1000e
>> +>>> drivers/net/ixgb
>> +>>> drivers/net/ixgbe
>> +>>> drivers/net/cxgb3
>> +>>> drivers/net/s2io.c
>> +>>> drivers/net/qlge  
>
> ...of this, which has the look of a set of conflict markers that managed
> to get committed...?

I don't think so.

There's some other uses of >>> in that file, eg about line 162:

  >>> The current powerpc implementation assumes that a device driver will
  >>> *not* schedule or semaphore in this routine; the current powerpc
  >>> implementation uses one kernel thread to notify all devices;
  >>> thus, if one device sleeps/schedules, all devices are affected.
  >>> Doing better requires complex multi-threaded logic in the error
  >>> recovery implementation (e.g. waiting for all notification threads
  >>> to "join" before proceeding with recovery.)  This seems excessively
  >>> complex and not worth implementing.


So it's just an odd choice of emphasis device I think.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
