Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970F1599B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0Kt6J8PdbdrWdhaMUajJawWMFdjktfRJbkFUVU++tA=; b=kZesoX4GW5hwZP
	N4B+x3PFihnn23/DKqpIUVHiNyDni9e8hhRMIbyNISNwTFgUFGlxaJmWrjGRfBaqLXytUk9xSGT7v
	kZFuA4xRrZo9o4Y0NCbuq/CCVbZ/OPxvthNTrkJZ3ot8N7kOelQYxhrWKfAO92FNHhvQ2Crfx5gQC
	7ighKSnvRxVXT8LmUStQDTRBZMdnXNLZLtlGp6PmmtxX6ZH6MfLoK/llwZRu3aME8tFgnIMqFj/8M
	MTI2s3wqVNwyl87vdvRw1GlFXSeUI/ThK90CeKiRS7F+zQzQFUQw6BSQI6DUqEnE3GWH6/fYo1yu7
	dIE6bBMYlz1iVwY4bmTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bAT-0006Ob-Lq; Tue, 11 Feb 2020 19:25:57 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bAM-0006Nm-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:25:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id e8so4654177plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 11:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fduhzb+WwBefc5G2IiZw7jkFkPhFvQRZKGxZZqFDo/E=;
 b=aBFZgI1bEVFMDfd8bvtXh9AZ1Mze2/1St6L/4BVij/mXj+0ZVWJe/BBz62kvdV/PUy
 KBlDmWnFixMHuEJ2x57jhZe2RZwo4KxOOAhGPDQppATODztQCUF1bGUHqwB2F+7dyFEs
 eKbWf5MArG16cSHqLbOgFxRg8G+4rPIDu1A8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fduhzb+WwBefc5G2IiZw7jkFkPhFvQRZKGxZZqFDo/E=;
 b=QGzH7PUCu4dWwFhZZYNElH5OlqZ4VS43m7qnkieZXdGkcWLjfoE2C6UifhkcFK1AdY
 KSt6bFHUfsIdoX5JGg0kFtGbtt696CRgl2MK8778MZle3Jvzl9P+YVKMEOrUqvRJPp4r
 HVQstQYqXadfhA5O1iSC9GYTYvZZOz+HA709M2K/3gPAj9geAVf7vWhJVS+Xr99UsQU1
 p4C8Hr7tZGkgC/+ieZSEflDjjtSfb4uofL2dgfv8hfNWdlbdApfSRPaLt1RDMxYMpJtE
 73ogzL2RXnv4nOKNxyK6F7vGNCyIvEbcKeWhFHxXMSekFkA2bg9vSOjlnLEvUSkZBfoD
 AXUQ==
X-Gm-Message-State: APjAAAUQ6sPv7r6h3PZS/BjiDFgICJTjLf16FhA5xAj0L/fHnR2rowpS
 lRUkq6yyDORhrr5hNLT6PkIh2g==
X-Google-Smtp-Source: APXvYqzYyVOg7uqgSBmTXebLQ5IGOoof6bohkjL6i/HNSEw99SG6fXpTLlzi3kbK2a4VrLpxXNd1Pg==
X-Received: by 2002:a17:90a:b30b:: with SMTP id
 d11mr6814381pjr.22.1581449148710; 
 Tue, 11 Feb 2020 11:25:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 3sm4285511pjg.27.2020.02.11.11.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 11:25:47 -0800 (PST)
Date: Tue, 11 Feb 2020 11:25:46 -0800
From: Kees Cook <keescook@chromium.org>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
Message-ID: <202002111124.0A334167@keescook>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-8-keescook@chromium.org>
 <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_112550_483895_3DAA9535 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@mellanox.com>,
 linux-kselftest@vger.kernel.org, kernel-hardening@lists.openwall.com,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 11:11:21AM -0700, shuah wrote:
> On 2/10/20 12:30 PM, Kees Cook wrote:
> > In order to check the matrix of possible states for handling
> > READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
> > add tests for these execution conditions.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> No issues for this to go through tip.
> 
> A few problems to fix first. This fails to compile when 32-bit libraries
> aren't installed. It should fail the 32-bit part and run other checks.

Do you mean the Makefile should detect the missing compat build deps and
avoid building them? Testing compat is pretty important to this test, so
it seems like missing the build deps causing the build to fail is the
correct action here. This is likely true for the x86/ selftests too.

What would you like this to do?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
