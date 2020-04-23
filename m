Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0171A1B62BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpPtAPxecYXyk9zbx+098tC4pSAfSo4AyGdJuJuEJ0c=; b=DDY8VKrnwjyYfl
	1YCuoI2Bc4DdPgVxyGw9Pa2mLcKrVF5Pklt7w6E2wvs/ODRvrzM1hk1Y8yd1DH3nop6vF2UrViNTq
	4MdpgS1x+a5Eog1guey041xyFHsGQJsrsZrlv+6/rFf+bw8fkaBL4zse/gHuIFM11q5TajK+vgT0D
	cM35ovvlVdCH3swkaT5WwEIy8qnhQH3srXzaA6/wZ1P1yFPlXDfDq3p87pDcAqx/320MEPKUGGh04
	QNtlZCEt4croKK4om5TTBYwm4a1eXOrkzUg5sTFajKGmEIutYBZdYrPyypaNPkhRcaFWMifvlbrjG
	7hBJ77hjmKwznIUEwhEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRg1s-0000yY-Ig; Thu, 23 Apr 2020 17:52:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRg19-0000d0-V3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 17:52:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so3331473pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 10:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gUBWqO+doxiCdXhXr0gP3xCZStrWlqjjVcMdf3dRmaw=;
 b=ePd5uThm0bXYSdghyVL6I8ByRtTuSR6tLpg9uD5btVJ1E85KUfRyUDcADHutASIuDr
 wDRbsm9ApCKQZzTHq3mRpCwYKxFbfoi6FBL+jrJjgTuhJOa3JtS04BSBu7+j0Gvo0Kfp
 GWql8yW1YEi7K+fykGXsWHbz9wd1XAGEE+AXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gUBWqO+doxiCdXhXr0gP3xCZStrWlqjjVcMdf3dRmaw=;
 b=rieGyI4kp8V29/v0Z25B0qFUFHE5pqVqCMlWDgVPFd+qX5KIwQWt25CXQAe5hTDEuT
 nqbpKlNBHdSHL20k2is4Bou9IxOQos+Yykps46up0Num4CaTLOkND15rLvAiYkSqHN8R
 wnvgyLsOZT8kf4PiAOYirx/hu0jUcSi9uWhLsJ33q2YOis/6tgY94qek38wIK4oA50w8
 +Kpjc0eQqPmdRZX/pDoZ80mmKTmLzsJumWM47udDc+rxEti+oh952tY7kYGaKxmYydJK
 sliIx38bpo+4ujViZ3YxJ5n10x/qvmPcPWlYd5UCKMCXVU/7uM8ca+BcfJXZVt6glfSN
 /GFA==
X-Gm-Message-State: AGi0Pub29/RXIlx6Jj/94yE6qocCtrvT+72803wti/Cg+4z0TJ68kY8U
 JaNnvQpu0+BJ/OAEBqp5bJICfg==
X-Google-Smtp-Source: APiQypJjwRJAqItcsR/IbYNtsDxmiUE23oypy6sxVf2T83GopjZzhZgPEk7nNNtXCX6Xs1QV17SLXw==
X-Received: by 2002:aa7:80cf:: with SMTP id a15mr5116879pfn.124.1587664326513; 
 Thu, 23 Apr 2020 10:52:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y26sm3046528pfn.185.2020.04.23.10.52.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 10:52:05 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:52:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
Message-ID: <202004231051.5DF870A@keescook>
References: <20200419191958.208600-1-masahiroy@kernel.org>
 <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
 <20200422075854.GK25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422075854.GK25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_105208_057864_373F7C77 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 08:58:54AM +0100, Russell King - ARM Linux admin wrote:
> On Wed, Apr 22, 2020 at 09:44:38AM +0200, Geert Uytterhoeven wrote:
> > Is there a real reason this is only applied to a subset of the C object
> > files, and not to all of them? Or have we been lucky so far, by not
> > triggering the issue in decompressed.c, misc.c, and string.c (yet)?
> 
> I don't remember the details. See commit 7f66cd3f5420, which came from
> Kees which introduced this.

Just to clarify: the original change was just removing it where it was
detected in the then-current build. I was going for the least invasive
change to the build system.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
