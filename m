Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734DE1EA7E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 18:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JI65hDRO1v44EAb1pG2JExuqoJidMSxG0D4YmjWfEms=; b=ZyMmQmaT/nu+hH
	qCRhDSchHb0cDlLT/2as0c+tAUE9ThcZwcIOy1r3DIS+0v2zoE+/W63EIf+98nUvq0jAQvYvTaeq4
	zThrK7gpYHlflz+fnnNkIwox5g6SkF87Azbt0M3yc5KSdGxKoABcYP2VQuyc+bXbBZBpIrIQ92efX
	e24t9qumOnypFYfqOX+mlb4yLlb6ltjfRpbb+kDTdTwOiLsizpnav4A1wZOSFIWrxAQcpQenx8N+O
	C7zkVBuWwtC2fVGw4pWbqGNO6/OEVYIOMcMV6oymo4vxfxNaLKLvTEbGM5HHNR67UaWuky6QD1Tzc
	Jflx/Y70bW+osIpQ/S7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnUf-0006ox-Bz; Mon, 01 Jun 2020 16:40:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnUY-0006oe-AX
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 16:40:52 +0000
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1851620734
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 16:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591029648;
 bh=NYG3gshp+oj8OkqW3xLbsOx/d7ndBF0C+J+LbbynMxs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=M2kq0TfYLTrRLZ4n5bczgOufTM7wJnO1aEciCASecKhMjwc8uiFbDwPefsTpbApOA
 X749cRDUjq3AFKXTT8uxtLS5qKLnPL2NW9JHOILxyR59c0ueHNgz05Xhkzl9N7lby4
 2Gt2EX52I+tQPXskfiVYw0ZGJ02o25mTfPxSoXQc=
Received: by mail-oo1-f53.google.com with SMTP id e8so1106409ooi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 09:40:48 -0700 (PDT)
X-Gm-Message-State: AOAM533k5UuvYlC+lW7fktxEeOMpLOPbi9CfD7O0mcf40nRROg1ge3I6
 HMbcx/5wHOdHAOu7AfaioMWeV4AQfgubWpUnqhc=
X-Google-Smtp-Source: ABdhPJzztQLxUkDQWByJZDXkvFIUEKXXIVMXUHRPw1DkCme2EjXABnrjIAugyyS8k6ouHQytcl0QzJQV//KpDZoXs8c=
X-Received: by 2002:a4a:ca03:: with SMTP id w3mr8071722ooq.13.1591029647382;
 Mon, 01 Jun 2020 09:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
 <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
 <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
In-Reply-To: <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 1 Jun 2020 18:40:36 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGNSogYOBxZfoTq2uMtY-piZ3PePFVCs3-R5nBEvnx-Rg@mail.gmail.com>
Message-ID: <CAMj1kXGNSogYOBxZfoTq2uMtY-piZ3PePFVCs3-R5nBEvnx-Rg@mail.gmail.com>
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_094050_402097_A6DC4DF9 
X-CRM114-Status: GOOD (  25.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abbott Liu <liuwenliang@huawei.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 1 Jun 2020 at 18:37, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 6/1/2020 1:55 AM, Linus Walleij wrote:
> > On Mon, Jun 1, 2020 at 6:00 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> >> Since this patch series has had many people trying to push it forward,
> >> how about we try to get it merged as-is (minus bugs, see below) with the
> >> caveat that TTRB0-less CPUs are not going to be supported for now and
> >> later on, this gets lifted if we find a champion who can get that working?
> >
> > Oh I fixed most issues in the v9 patch set, we ironed out the actual problem
> > with ARMv4 and ARMv5 with some help from Ard, Catalin and then Russell
> > suggested how to also improve the way we get taskinfo from sp in the
> > assembly.
> >
> >> I tested this on an ARMv8 system (Brahma-B53 CPU) and an ARMv7-A system
> >> (Brahma-B15 CPU) with and without ARM_LPAE enabled and neither were able
> >> to boot unless KASAN was turned off (outline instrumentation), I don't
> >> even get to the point where earlyprintk is giving me anything which is
> >> odd. Have not looked at the differences between this version and the one
> >> I had sent before and have not hooked a debugger to find out where we
> >> are hung.
> >>
> >> If you have a Raspberry Pi 4 you could use it as a test system for ARM_LPAE.
> >
> > Did you try to use the v9 patch set on top of v5.7:
> > https://lore.kernel.org/linux-arm-kernel/20200515114028.135674-1-linus.walleij@linaro.org/
> >
> > I need to rebase this on v5.8-rc1 once it is out but it is working on all my
> > targets now, there is also this git branch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan
>
> This branch got me a bit further, but still failed to fully initialize
> (see attached kasan.log), on another platform with a slightly different
> memory map, I ended up getting a different error (kasan2.log).

How can you be sure kasan2.log did not detect an actual bug?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
