Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5062A21046
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/qRU5ixDjF4GY+hO7uvbCNohgn9WFSKfgqpeNhmpww=; b=ABwVyznhv1dskS
	KkzAAc6CG2aDv3m5ty+8svuEWJA24D5afAYX3xbKT9uLpf8WUWddlgN3mezJKA3X6YYd1gPJHS5M2
	mpC6vxsTymvr/okFA+FLD1XJbn21uCmQm1xMvWtJrKBvGSChahAFHpryOQpDuQ+DVUMr6r1NeYvb7
	Gt15cjH62kvVFvy8yT0hHI8Ieo+M4QVifoywoNLJhvvXtcecnqAAsjcbs6zVKSPRMpShgY5Du37xc
	4Ri97+l9fzD65r82dKd6xLDQl9AKEnQQ/cafvlPbOwBfL1ehFlmF+qGih2G1Z/HWOyOs0S1Vr0IcX
	SuQyxSaB7kNrKOG8xY4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROHj-0005IQ-Jb; Thu, 16 May 2019 21:51:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROHS-00054H-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:51:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id d8so3788425lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TxsNy0d6Z0NEmyHjwLQqkeMvbekfex2o7Dex22q3rXc=;
 b=BC8BsfalvsLkHyig9Dht9Oshl6827AqjIKgf14GTPWRJ+gFcmG0B/lcDupYHDLnDm9
 FIagejSZDef52VTnIlw6cx4lLi/pclQyxNCrhSV/SIInc45kD+waIWwN4VKhb+0VKjqT
 gr4O8X0pSyS5BWiaMKDgyBq4tGfaaqo3w/Lh9Ta7rV2BMLkVbMLRMHq/PgY2Cv7DxI3T
 6Faq6HlJ+UJb9POBD8nbbsN8UwRY7EXqcYFpUAkSvddVoq6R1zkjgCEhzQ2qwPLkv1ol
 fSB/gfX/Lgyac3ZXjDSyVvQlIKI2ut/dENTvP7T/lrOwzuUlOI0uah1UVe8Hy7Mv7dma
 LOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TxsNy0d6Z0NEmyHjwLQqkeMvbekfex2o7Dex22q3rXc=;
 b=cI4V8pyvPWVFaopy+ZY7TsLDJRzty9HUsMV/6MJtE8KEnOXf/zM0gu+gGulZSkgGMd
 tCc+32D+/Ktd1xMIFfJJWIm2+u/xnSZq80MMsGsMW+9NNlSPkDU2PLkV24oZSF2ohhis
 s67gBP2XKNfVgsHUo8NoCwh/vANnDRHNtTTaI41dSVkxjx3t5vwtmVBQmJo5ftsomcHy
 gH0SRfs5g+hfPIWBqP0cU80EdZ6QeahUSUtEP89rt2+hhoWeKq9o6OLOKX1YyGEcDbsn
 BZ2ZyygPE3HrSdhMnbAimYV7hETvIMzfGrRhNRaBjXpy0wSTozPZdLRiI1ya09nRMM9O
 GMqQ==
X-Gm-Message-State: APjAAAVIDXop94DSV82xa8eU/A/CiV/MLLwLQySh/XYT7iRR0/sjZTzn
 eFvCnnikxvEuci1ypAE141bABQ==
X-Google-Smtp-Source: APXvYqyUx/72N94IFhpw2E4+oVtCGmXZIOvsrpFHsbjII9Tz+5BOtbhb8EcJkKImevrUyRIje+YKdQ==
X-Received: by 2002:a19:5045:: with SMTP id z5mr26662060lfj.108.1558043470797; 
 Thu, 16 May 2019 14:51:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o124sm1174315lfe.92.2019.05.16.14.51.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 14:51:09 -0700 (PDT)
Date: Thu, 16 May 2019 14:48:19 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH v3 1/4] ARM: use arch_extension directive instead of arch
 argument
Message-ID: <20190516214819.dopw4eiumt6is46e@localhost>
References: <f48c245e7e2b432f6771a5f97ff9f4b5bedc5089.1554968922.git.stefan@agner.ch>
 <2f3d0fa7ba599f46960ad3e7419477fd@agner.ch>
 <20190424141217.GC8007@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424141217.GC8007@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_145114_770551_DED4A6F0 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: nicolas.pitre@linaro.org, andrew@lunn.ch, mans@mansr.com,
 Stefan Agner <stefan@agner.ch>, robh@kernel.org, f.fainelli@gmail.com,
 gregory.clement@bootlin.com, linux@armlinux.org.uk, krzk@kernel.org,
 arm@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, kgene@kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:12:17AM -0700, Tony Lindgren wrote:
> * Stefan Agner <stefan@agner.ch> [190423 20:20]:
> > On 11.04.2019 09:54, Stefan Agner wrote:
> > > The LLVM Target parser currently does not allow to specify the security
> > > extension as part of -march (see also LLVM Bug 40186 [0]). When trying
> > > to use Clang with LLVM's integrated assembler, this leads to build
> > > errors such as this:
> > >   clang-8: error: the clang compiler does not support '-Wa,-march=armv7-a+sec'
> > > 
> > > Use ".arch_extension sec" to enable the security extension in a more
> > > portable fasion. Also make sure to use ".arch armv7-a" in case a v6/v7
> > > multi-platform kernel is being built.
> > > 
> > > Note that this is technically not exactly the same as the old code
> > > checked for availabilty of the security extension by calling as-instr.
> > > However, there are already other sites which use ".arch_extension sec"
> > > unconditionally, hence de-facto we need an assembler capable of
> > > ".arch_extension sec" already today (arch/arm/mm/proc-v7.S). The
> > > arch extension "sec" is available since binutils 2.21 according to
> > > its documentation [1].
> > > 
> > > [0] https://bugs.llvm.org/show_bug.cgi?id=40186
> > > [1] https://sourceware.org/binutils/docs-2.21/as/ARM-Options.html
> > > 
> > > Signed-off-by: Stefan Agner <stefan@agner.ch>
> > > Acked-by: Mans Rullgard <mans@mansr.com>
> > > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > > Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > Arnd, Tony,
> > 
> > Patch 3 and 4 got merged by Gregory. I think the other two patches are
> > ready to be merged too. I think they should go in together to avoid
> > merge conflicts. Tony, if you agree, can you Ack patch 2 so they can get
> > merged through arm-soc?
> 
> Sure I just acked it for you.

Hi,

These came in right around when I did the last patches for this merge
window. I'll apply them once -rc1 is out for next release.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
