Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF1D1BEA18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=035vGtTfyraq303ipInN4Cup41Pztg8zlCN1B0QnZbI=; b=qxFSkSsw1PBdr6
	KWPqqEupsX3uup1eo1YeuwGewRvs0kq2XiIoc/hUDKMsxBnux73wEJJY4IkIHYIw7uFj3n9gro4vj
	Nil9IyWDmvceDj1+fx4QIsPTVSsgADHfogxjfAz9+cXhShUMatvtiyGMpp+QB36PEI7pIDOPv5Lds
	6B08xN87ZEdI5YavnyAKaMWFWHA6zsNUC6lx2hk3RnUiKb2r5BfQm0K2yF5ESs5jCh9Qqg3DV1XZb
	oS3rLthsd0j8Y6wPN+zs0kqlKzUKNGbRE/iOdSLHyFYCEkSuK22JsXEGcJB8pk2tsKaSlGUzHwDLA
	66bRaLFtaBAuwrIpL/gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuTM-0001fc-UJ; Wed, 29 Apr 2020 21:42:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuTD-0001en-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:42:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so3675964wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JKDBwJcZax2PzLVw1ePltj5BC4bx576vKdr0MA9gIUc=;
 b=OBWdSZZEU8v5bf+acHlcUOOaYOskE6i8eOyUUgFTdXH8nkoFmXkXnUdLdKYnofMrJ9
 8bPZBv9f0/i0lnKsE7WKEMsZn98XFGUhIUSpeiI7YOC/XAn8XdwfSYIfwuZHS4wnW7JN
 bbqvLWuKdzgCwoif3vbb3ya+xsXeK9C2HD5Cak36PsiAyNppRAyTmFrbRlOl/IBgOIFP
 DMQ8d7mjRUoSAb7aKg/cVigA9zcW3aZMCMeGiiSWkmND2ILJ6czhhEiQk/uIkhjPaS2l
 gqC2Xb09sYEu1xV/AUNNLKi7bs/tl25SeW4R9bnAbjRody6vMFzIzcC8VLo8s9tzWcRc
 jvEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JKDBwJcZax2PzLVw1ePltj5BC4bx576vKdr0MA9gIUc=;
 b=RlHz1qLSp4l2pn90Vknr2Evi4yFhCmA/E19vpzhgu9wm3oXEanybC5gwbVG7sk+Y2o
 KAurcvg9IC59Ny61pyxuAQWRdV7OJn52gHUDNCPSkv3JM74k2s66JDr0JRnsHnfYUfpN
 XzC9AjmlUlVBkPouzQPaS1pgZ0qBcl6+a7ApV/xD75y7V2qVTUEj7uVp8kvgb8WLVpXN
 3mxrdSlSQZeu0ScvRl8OOyEJ7wAJnSraKKsc7D0Doeux/MWYTqDFC3PGV5YMn6rOQR9B
 g96sZG/l2Xiqrn/Pa99yNzFc+yC03EwL3zGw7Y6dnZrvG2rUyuB6IaQefjOUHXPXsrQf
 ijEA==
X-Gm-Message-State: AGi0Pubg6sp+45CD+tR1ZFEPhKFabQKmS9BEST3xcC4PPuM8P5hfn5sz
 V+vPsss3hniYqsCfvU15zYXnz3LAskl94CBPuOzEvQ==
X-Google-Smtp-Source: APiQypJz2j6tcSqobZP8V1gKRyP21DzGYQxJBgW2rw26J2kl+VXzqSpYuBskMD35Bfik5ALm25O8eRfCalQ5amsJVfY=
X-Received: by 2002:a05:600c:21d6:: with SMTP id
 x22mr5661958wmj.95.1588196534951; 
 Wed, 29 Apr 2020 14:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200429210826.GA8604@willie-the-truck>
In-Reply-To: <20200429210826.GA8604@willie-the-truck>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 29 Apr 2020 14:42:01 -0700
Message-ID: <CAMn1gO7Xh2nnZhcjpwA3Y-8C5ePPOwHS2ORMASuQA4UaJgrFfg@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_144219_773144_E8396A72 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 2:08 PM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > the tag bits may be needed by tools in order to accurately diagnose
> > memory errors, such as HWASan [1] or future tools based on the Memory
> > Tagging Extension (MTE).
> >
> > We should not stop clearing these bits in the existing fault address
> > fields, because there may be existing userspace applications that are
> > expecting the tag bits to be cleared. Instead, create a far_context in
> > sigcontext (similar to the existing esr_context), and store the original
> > value of FAR_EL1 (including the tag bits) there.
> >
> > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> > v3:
> > - add documentation to tagged-pointers.rst
> > - update comments in sigcontext.h
>
> Hmm, although the code looks fine, why don't we just expose the tag in the
> new field, rather than duplicate the address information? I'm nervous about
> exposing privileged registers directly to userspace.

I have no strong opinion on whether this should just contain the tag or not.

> Also, Catalin, could you elaborate on the MTE use-case please? The
> architecture says that FAR_EL1[63:60] are UNKNOWN on a synchronous tag
> check fault, so we'd have to *avoid* exposing them in that case!

The basic use case is to allow a signal handler to identify which
allocation was accessed improperly in order to provide better
diagnostics. For example, if you have granules tagged 1,2,3
consecutively and see an access with pointer tag 1 on the granule
tagged 2, you can tell that it was probably a buffer overflow from the
1 granule and you can report that to the user.

It seems unfortunate that bits 63:60 are now UNKNOWN on synchronous
tag check faults. It seems to be a recent change to the specification.
I can think of a number of use cases for bits 63:60 after a
synchronous tag check fault -- for example, an allocator could store
an additional set of random bits there, and later use them to
determine with more accuracy which allocation was used after free or
out of bounds. That being said, we aren't planning to do this in the
initial version of the MTE-aware scudo allocator.

If there is no chance of changing the architecture at this point, I
will send a v4 with the bits masked out when handling a tag check
fault.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
