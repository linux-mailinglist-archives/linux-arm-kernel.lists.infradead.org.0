Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBCFABD2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 18:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86iFHL5K9oikvnKHNwnqE/FhoEaTf2oqhJKUPAi6WKc=; b=UGjUEr1bmfaMi5
	pr68kziSxzrCfE8HYAfz813kNlpAgxruGo/iq7lxW9eIM5H7dNNCJZ8uZ2wyG1SbyApfj5KFLMydW
	nJKrtEtmitriBIc4aSvbNAFxNueDGUVR+FXAHh6u/Nq1ABVjh4vf/g9a1yDIIa93h1bpRYytKqEL2
	zBaX1PRztpuJjKx41abMYq/ed23dvV22EpMM3aGsgsy5i9RbBPotdgA/lPbXbHCGO+gYV2SXob5mh
	OAGU40FBsMSAhocmR36SUjZW/cJ1c/i7DkPSdYk7t+6M+HbgGd3/otuMn+g7qAE9BPMU6rTHMgUqE
	068EOpsNd2SuOhubiGFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Gfh-0006mQ-A6; Fri, 06 Sep 2019 16:01:13 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Gf7-0006VI-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 16:00:38 +0000
Received: by mail-qk1-f196.google.com with SMTP id d26so6138933qkk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 09:00:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ES4SaHURAaJC01GAaptDev9SfTdpvqyq6m4yX4fQcB8=;
 b=AyBWYqrrgyk8L83k6UF3S59eJ1Osa3Gd8QIdhFOyPIpedbafdFIftaeqB3gtfEY/9K
 qWJoK3xEuXv5JzuEzmTnQbn4K3j5IpEWJ/zAE0vXJjcvHLo2zRqlq7sqnuQc0o942CFO
 hhsjAGVmbqprXdhtqaTBq6i1ey0Fjlk7ZrATjb9IkOgLJVgFO2SYdXIn+KJSpw+Kvc0x
 HtuxVRD51e6LUE6RP1ZHR0JsRYIa00K/+3uc/QNooC79T6t7OhsVRV4HuA9pjyUh48Lu
 u2Hj+wGCsbuLmjP/oohODhgNaRLcTvu5kZCf12ql7ogighUqDCogA4VPS6aDzJAGkKYM
 bF2g==
X-Gm-Message-State: APjAAAXSZzrP4d1n/eL/u4txi3zRMakswHz3eeHNavdufp9AAsi2iQ+K
 Hw1mntqhMKJPsZrkiq3+lwrC3UZFcFpk6DWfPDY=
X-Google-Smtp-Source: APXvYqz3LSRyVLYYD4QDIyXNudChhzjqkuMLsRlKHB4VakqREofKG/STxaa6LfsgS6WjUsYS6TRljEVwYTs6CmUAbq0=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr9297353qka.3.1567785635669;
 Fri, 06 Sep 2019 09:00:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
In-Reply-To: <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Sep 2019 18:00:19 +0200
Message-ID: <CAK8P3a1qkMLW_Wnn-N0seUw4N5bPwTU7Dy7CwOWxzS6NTnTmiQ@mail.gmail.com>
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
To: Andrew Cooper <andrew.cooper3@citrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_090037_383555_FC245072 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 5:55 PM Andrew Cooper <andrew.cooper3@citrix.com> wrote:
>
> On 06/09/2019 16:39, Arnd Bergmann wrote:
> > HYPERVISOR_platform_op() is an inline function and should not
> > be exported. Since commit 15bfc2348d54 ("modpost: check for
> > static EXPORT_SYMBOL* functions"), this causes a warning:
> >
> > WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL
> >
> > Remove the extraneous export.
> >
> > Fixes: 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL* functions")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Something is wonky.  That symbol is (/ really ought to be) in the
> hypercall page and most definitely not inline.
>
> Which tree is that changeset from?  I can't find the SHA.

This is from linux-next, I think from the kbuild tree.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
