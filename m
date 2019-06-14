Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC2D4699B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LkrVM5RedrGCUMSj8hgY1l55pw/mpWK1BRMSvNNogk=; b=qPvIOtTvzBi5Ko
	yRQ65RMYsPFJN5mhL/8Xm70ZIRBeCd4NYE6gQPGVBxCCpgfLAu/CNeK3eJzaA36fRHWgRkSlN3lN2
	EXWxhDVAnNFrR3XCBKwvdITChV6Yqkor89kxtyI04MwmkZTEM6YGo4UOdrqwWF44diHNBgACHYLlj
	YZ1P5NPiEU4Kp1nMwAWshpTz1HjL3RB24toQfVm45wAtYm+ZQfWz77TA07OKcvtU8K0mWb5VQC5Qq
	Pi/L65nvZ2iBVfOPvFw721hUbmdFIq2d93HreU+VTWBbc02b/lyWstCE/26ijlO6GuyzIgMCwr+1z
	Yt6E7dCLWMP+RLU8fIng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsuG-0001Va-FP; Fri, 14 Jun 2019 20:34:40 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsu7-0001V1-1r
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:34:32 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 20793128A;
 Fri, 14 Jun 2019 20:34:30 +0000 (UTC)
Date: Fri, 14 Jun 2019 14:34:29 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 02/28] docs: arm64: convert docs to ReST and rename
 to .rst
Message-ID: <20190614143429.640226ec@lwn.net>
In-Reply-To: <20190614141041.335a76e5@lwn.net>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <8320e8e871660bf9fc426bc688f4808a1a7aa031.1560361364.git.mchehab+samsung@kernel.org>
 <20190614141041.335a76e5@lwn.net>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133431_094719_D8AA45B4 
X-CRM114-Status: GOOD (  11.96  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-efi@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Radim =?UTF-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Harry Wei <harryxiyou@gmail.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Alex Shi <alex.shi@linux.alibaba.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 14:10:41 -0600
Jonathan Corbet <corbet@lwn.net> wrote:

> On Wed, 12 Jun 2019 14:52:38 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> 
> > The documentation is in a format that is very close to ReST format.
> > 
> > The conversion is actually:
> >   - add blank lines in order to identify paragraphs;
> >   - fixing tables markups;
> >   - adding some lists markups;
> >   - marking literal blocks;
> >   - adjust some title markups.
> > 
> > At its new index.rst, let's add a :orphan: while this is not linked to
> > the main index.rst file, in order to avoid build warnings.  
> 
> This one doesn't apply to docs-next, since there's a bunch of stuff in
> linux-next that I don't have.  I'd suggest that it either go by way of an
> ARM tree or send it my way again after the ARM changes go upstream.

Actually, nevermind.  Pulling my tree forward to 5.2-rc4 resolved the
issues here.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
