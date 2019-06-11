Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874CD3D379
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNg2d2ReRUO+h+4pGeCYq8XHKTGMB4mFFObC8nOwD0A=; b=ZdlMGefYADt+Oa
	UXXO2sAfXNnVsNxQgAzrDuNdm5y7kmvD9UzQMYtVHCd3OpX39ikLC8zuSN610sO0V1+e8/gk4FQMn
	4B9wUzULIxvxafL+hBCTIk9RQxTnOVf+07XIr8RlVN1KUq0tBhNXeplbJDKhrgU7bHuxMJjNRVPCh
	+C6tOYx9LXVeic4S1SRiGgBVwSVkJUw+j5pM4/JhNhDU56J+KohuZV+PR+mgrGWCjP0eU9LYA8bMz
	QrIYN0RaIQ3hTH+nSO8wJctqnDVPayYHwV+WJOuiL0EJxAbo2j2+fUcif3FGUyyohoxtii5JGoIg7
	Il70wDS33wMesYcmggrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakEh-0004LO-Km; Tue, 11 Jun 2019 17:07:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakCy-0002ya-Ci; Tue, 11 Jun 2019 17:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Yq617plFowJ6SPqfSlFnXKBCkZMDSV9shNeKC4mMEY=; b=K0CsPURbcVID3VZgvAW0iTm3wR
 a4w5JgdjFouiUq0BWdslkyoBdxaVdGLJePyibi1Mog+r1AuYwR/+jqWtSVGIrgf6yzUg0z1U28CyG
 ZhJdIclAT572+X/UXggsJ8f8SVJMT/MisC//pgJXvXzFsvm9J+X3u1iSiUKWNx87KYuHGB3heK7cb
 r1U6atgMP9cSs7F68WdhTtVFB7a/r7PPkSHtsAXTs+U5GV1KWlGhJYzDFXrGHhlV1xt/wYfmrvWud
 Gs8cNb0zXmzCs1nXi+2dGANfmt3c8nyUKVKzyntwvyexURPTWIVP8gQmd/HhZ+q8RGBPy2CreqY6B
 yzJmGK5g==;
Received: from 177.41.119.178.dynamic.adsl.gvt.net.br ([177.41.119.178]
 helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hakCs-0002PQ-Bo; Tue, 11 Jun 2019 17:05:10 +0000
Date: Tue, 11 Jun 2019 14:05:01 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v3 06/20] docs: mark orphan documents as such
Message-ID: <20190611140501.11ba091b@coco.lan>
In-Reply-To: <CAHp75VfTNJOGZx-PoUXLRvzghqf6bVUdJ+yFjE9hNtDLCQ1=UA@mail.gmail.com>
References: <ff457774d46d96e8fe56b45409aba39d87a8672a.1559933665.git.mchehab+samsung@kernel.org>
 <0bea1c7c4fc06c7edabbf3185c0cbbc6e85eafd0.1559933665.git.mchehab+samsung@kernel.org>
 <CAHp75VfTNJOGZx-PoUXLRvzghqf6bVUdJ+yFjE9hNtDLCQ1=UA@mail.gmail.com>
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
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel@lists.freedesktop.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Andrew Donnellan <ajd@linux.ibm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matan Ziv-Av <matan@svgalib.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, "open list:LINUX
 FOR POWERPC PA SEMI PWRFICIENT" <linuxppc-dev@lists.ozlabs.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, 11 Jun 2019 19:52:04 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:

> On Fri, Jun 7, 2019 at 10:04 PM Mauro Carvalho Chehab
> <mchehab+samsung@kernel.org> wrote:
> > Sphinx doesn't like orphan documents:  
> 
> >     Documentation/laptops/lg-laptop.rst: WARNING: document isn't included in any toctree  
> 
> >  Documentation/laptops/lg-laptop.rst             | 2 ++  
> 
> > diff --git a/Documentation/laptops/lg-laptop.rst b/Documentation/laptops/lg-laptop.rst
> > index aa503ee9b3bc..f2c2ffe31101 100644
> > --- a/Documentation/laptops/lg-laptop.rst
> > +++ b/Documentation/laptops/lg-laptop.rst
> > @@ -1,5 +1,7 @@
> >  .. SPDX-License-Identifier: GPL-2.0+
> >
> > +:orphan:
> > +
> >  LG Gram laptop extra features
> >  =============================
> >  
> 
> Can we rather create a toc tree there?
> It was a first document in reST format in that folder.

Sure, but:

1) I have a patch converting the other files on this dir to rst:

	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=convert_rst_renames_v4.1&id=abc13233035fdfdbc5ef2f2fbd3d127a1ab15530

2) It probably makes sense to move the entire dir to
Documentation/admin-guide.

So, I would prefer to have the :orphan: here while (1) is not merged.

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
