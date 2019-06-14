Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5CC4689F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELLgx6+sa2D+0wlslHxLVOhvuAmtY39oGK1MT/A2WvU=; b=m0HDu0HMLDpg0Z
	i6hfP57ptGiwWUaX9wKuznJFxswpXWMXS36dflDZVK1Ag9uDrlLrnjUIOTGSZ1bm0t8+UrOgNhHVY
	cc15AgeZSBmMA8W7e4XPJpf3o1I9fRQOk7U6Yf+dQ16xogbK1M1r0Z9MtaPxa6baQUDX0CUYikfUE
	7qKV8d0M9q+WuyPWEnFKUoK8e1D9h0BPagCVDgFE+9OgXCQUXeX9/vq0I41MhIgaglO0ZxW6R/sK3
	dK94Qw5pj+JBLS5lx59K5SFnGoiJahXMdXa2mRopvw720TSHlObbuIM19CvwfgNrf1Ny8IJPch5lL
	fyOoeyh4wrKlfZJhXv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsXI-0007l9-HP; Fri, 14 Jun 2019 20:10:56 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsX5-0007kj-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:10:45 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 8A9C6128A;
 Fri, 14 Jun 2019 20:10:42 +0000 (UTC)
Date: Fri, 14 Jun 2019 14:10:41 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 02/28] docs: arm64: convert docs to ReST and rename
 to .rst
Message-ID: <20190614141041.335a76e5@lwn.net>
In-Reply-To: <8320e8e871660bf9fc426bc688f4808a1a7aa031.1560361364.git.mchehab+samsung@kernel.org>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
 <8320e8e871660bf9fc426bc688f4808a1a7aa031.1560361364.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_131044_012346_EB5962DC 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
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

On Wed, 12 Jun 2019 14:52:38 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> The documentation is in a format that is very close to ReST format.
> 
> The conversion is actually:
>   - add blank lines in order to identify paragraphs;
>   - fixing tables markups;
>   - adding some lists markups;
>   - marking literal blocks;
>   - adjust some title markups.
> 
> At its new index.rst, let's add a :orphan: while this is not linked to
> the main index.rst file, in order to avoid build warnings.

This one doesn't apply to docs-next, since there's a bunch of stuff in
linux-next that I don't have.  I'd suggest that it either go by way of an
ARM tree or send it my way again after the ARM changes go upstream.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
