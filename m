Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120CF1B892D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMqQXrj5YEl9x8Bb+W7IEJKYRDYWKxne71OOUuoVzSs=; b=Al3+HjNtDOhOYN
	eMvyRs5N+vV5zOnDb7SW1ntSEElJdDDeW8JBR28e89yQvds3fjSykjiV9maKYGVeys5vOtORjFZrA
	kzoa31vNweiFTy4TwRdcdun4u6auOSp+x+w3izBb2bJgG7TtbqkeQbA3BDYaT6KYltDh56LZxNcuV
	vuaVEtFI8pkBdT5xH3AmSalkmGPDAHbBteBZ1nGc22NsTCzIPmpMb89L5UjDTkE60LWZcS0DzHpsd
	q/Al9q2PJnktTlDfHTx4HNz6nb27ZDO+9Fyl4g/qWtDNItPF3mf4nroJea6C0hQnAuJqezDUFh7cS
	VS2xkvo7ZKTd8TTAHL2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQsr-000269-98; Sat, 25 Apr 2020 19:54:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQsh-00025O-QC
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 19:54:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id p10so14407356ioh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 12:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mfnbKcCpJbWCQA0NeNDV+FBZxx+MPYQOlwXCT1OUxm4=;
 b=oEnWezvbQ0wLmJ3qpYZUMG6fbo/KEIDRrkdrDctwvp4YFJ9YXWnIq/LA+w0I00Cw0B
 aad4R8G5mNnojDY8/cxBsmY/RSiVeIVuJ5o8q4hp614Bs8LNlsLso3VMks3z+KGINn0v
 ctGRZSO0HmO6lzjhR8Gi9m3nEUICojaY0OfFGtG4LyA3aJrh/CBsBzqrMcymk3lN8ukc
 5sHaRvEBwI7t0MF0KipcbccT2AIcBCkyRGzfrLXsVsT2bdol5TR8M0tZLUW/LarkmKR0
 1CCsknhX4Ymmh9i50cZ7XyfS9zGOS6cnRslBa7hfeMcmb94Pmer7ul2fRfIok0/859Uk
 cosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mfnbKcCpJbWCQA0NeNDV+FBZxx+MPYQOlwXCT1OUxm4=;
 b=bknWflt+TM3jvmMp6STPBV4rmV0CCMfoAB7HSIxJKSq6sXtz/uu9vs5gaJPPqVkb3t
 DkTdWAJqEvrrlZINojx3xb3kvmgwC6KFAtQWD/+sDNypHDUJ80StbovesNpTt4e91JQL
 JeMduMBXGOIfbLau7fWg33USXLIXBpnttMV5D5BOHZXjFHbWaXdZjFcBYvh0921wLX/w
 sHxSaH9vNj3pf3tr1VEpiC3By9JzSVEh2tHKOKpnyA1sC2EDN+eFW/lX/lJh8gkAuUqV
 QGEdFmuqBB2wELPRYdpnUvrk9lSRfO+4SKX2ssvKeQdKGmRDiXnJUKchXg0iC7Keohfw
 +qxA==
X-Gm-Message-State: AGi0PuaYmkZqjEQ0DjPb7DTMELsuBtXuzU1kuAQLDrv2I7NEJ293FPBq
 x7X2LJvj1gFcjzFonjHytr4Z7tekTN/E9Llxnvo=
X-Google-Smtp-Source: APiQypJ9fBT7OSqx8QDi4cFo8f9HY1o/iD3UGfefjuzCIkvL6m2Qz8zpz+Fc5LCLfaghvnfs1hSk6OGANzTFANVcYK0=
X-Received: by 2002:a02:cbac:: with SMTP id v12mr13485718jap.103.1587844469555; 
 Sat, 25 Apr 2020 12:54:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1587840667.git.syednwaris@gmail.com>
 <66296904e2ffce670c14576dfc7ea56417c670ab.1587840668.git.syednwaris@gmail.com>
 <20200425192607.qa2jr7ef2g726txr@wunner.de>
In-Reply-To: <20200425192607.qa2jr7ef2g726txr@wunner.de>
From: Syed Nayyar Waris <syednwaris@gmail.com>
Date: Sun, 26 Apr 2020 01:24:18 +0530
Message-ID: <CACG_h5pVEQ8+LGogWo4Ea+8OcRz1edudJPWL8SytGdaAc8xabw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] gpio: thermal: Utilize for_each_set_clump macro
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_125431_849574_A297E972 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kucheria@verdurent.com, yamada.masahiro@socionext.com,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 bgolaszewski@baylibre.com, linux-gpio@vger.kernel.org,
 linux-pm@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 12:56 AM Lukas Wunner <lukas@wunner.de> wrote:
>
> On Sun, Apr 26, 2020 at 12:35:02AM +0530, Syed Nayyar Waris wrote:
> > This patch replaces all the existing for_each_set_clump8 and related
> > function calls in the drivers (gpio and thermal) with the equivalent
> > new generic for_each_set_clump macro.
>
> Why are patches [3/6] and [4/6] included in v2 even though William
> said they should be ignored?
>
> Again, replacing for_each_set_clump8() with for_each_set_clump()
> does not provide any benefit but may impact performance and makes
> the code more difficult to follow.  So once more, please do not
> change drivers which are known to work fine with 8 bit clumps,
> specifically gpio-max3191x.c and gpio-74x164.c.
>
> Please in the future include a list of the changes you've made
> in the cover letter, not just in each individual patch.
>
> Thanks,
>
> Lukas

Hi Lukas,
Your concerns are noted. [3/6] and [4/6] won't be included in the next
version v3 of the patchset.

Regards
Syed Nayyar Waris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
