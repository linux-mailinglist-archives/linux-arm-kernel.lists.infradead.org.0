Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46A43161F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 22:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKm+txD2a8vXZkm54WAEkq853mxwrD277YIOcDzAv/E=; b=C9DvNv1MAJwf2N
	Ir821pBxosGDI+OAlZs8Gwfx2uLIt1vXwiyMubQh0ZCUGfS6EJS2Ux2QONsB0ohplTy1DKK1fjASs
	pXIhYBm0P0YphJXejfNkiPE8nykmCp+fRvPOB+O6Kbt/gI2BQhrte3i/R1PhyXNTg5WxyzSt9/iOp
	LY+Un4swzTD72/2IdbcOyHa17rdyeumirUE4uo8td7c1sUKHkSBr4wcNluDdB1DlY3KpNNKZt1NBz
	i2pXVOgU3oJu5SQdjfWthCaLX2DiQqVkTfiHaCIr8z8Mz9wCjYcoaYBMJ85GjJiAJT9nly+2eYWN6
	E0sQvgcdXp7jeda/1mNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWo6V-00083k-CG; Fri, 31 May 2019 20:26:19 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWo6O-00082q-7W
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 20:26:13 +0000
Received: by mail-ed1-x543.google.com with SMTP id f20so16281259edt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 13:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gkdrhj+L2y9Un3DqIxCBN2IczH3NAgr/P0YLMvWGg3k=;
 b=Xv43EpmEIYCOnqrcH6IC1jp47hvR8jTZmpsuMilbWt6IoPWH1ceBQLdNcwW1Ar1Tfc
 BaL/lNspAs5IRQaUY2ITsepMDgaj4bX36mXu8JbEV2gn5MfxqziePZ1goCdh5rxF2xRA
 ephcT0SA8NIjA9rlqzcqsDfFXVSRJ4VndZuCK5rnmo2R7Pa8KPARwxESCUxVSjFOQ1bw
 nn6Bxa61HWZ7m7UPLW9L54TSAB8QXfwRo79eIgjevEGPWCKOOxgF3+WGb9v93fCtZ3wH
 8Y6Ye6iZTLO/yFY9AUWH/B6+RJj7c9Q/h8j3uw1AQaxu4kNzFkHkNhvxFovkT2M13MWh
 GCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gkdrhj+L2y9Un3DqIxCBN2IczH3NAgr/P0YLMvWGg3k=;
 b=PM773bjdgT6EhTU7Q+me4fh5e3woKKy2w8LaiJm7QEm65iEs4eKLs9BVTSDniDgN0B
 sUmt4TF9bgx7pCxFDBhXrjogoqkBT0Sd2gAvb8xQ4oMjRsgzVGrDyR0IdA6xHqh9p3EA
 65ZE0gHDdhpzsSlZ/eMJpuGirD/Htcn4a8JUWexo3wdSZnS8JRof8x6/VGruY1G50eQw
 lifcNeqdDRsUeCHKaq+ECG0VeUf8Bt9YSNkf08aGIm62Wn06vAae+Ow8+1IpFzbQl2F7
 1kSjM84ccKMApxrtU9Eie/JGPFi1NghxFRIV3HLCW6JnCVtU6+2QEUPdjEgjafxMny3q
 OTMQ==
X-Gm-Message-State: APjAAAXy45NejIRbX0nFBebE9tieqOsOaXSzRqJu4cnlOa/KDTDef3bK
 7bJyiqpN0s6O0K8pEV++tqGZcTO6m4Izsg==
X-Google-Smtp-Source: APXvYqxixZFEj5U32gsuL97OYf945hk0gTpmJ868WJqXPlesOklKj4GB4h8NEuJIo6Ibi7k6Kx9AYA==
X-Received: by 2002:a17:906:a94c:: with SMTP id
 hh12mr11415070ejb.143.1559334368623; 
 Fri, 31 May 2019 13:26:08 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id i45sm1892124eda.67.2019.05.31.13.26.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 13:26:07 -0700 (PDT)
Date: Fri, 31 May 2019 13:26:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
Message-ID: <20190531202605.GA78113@archlinux-epyc>
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
 <20190531183227.GA34102@archlinux-epyc>
 <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
 <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_132612_297847_54F96343 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 01:06:13PM -0700, Nick Desaulniers wrote:
> On Fri, May 31, 2019 at 12:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > clang, I would suggest dropping your patch then, and instead adding
> 
> I disagree.  The minimum version of gcc required to build the kernel
> is 4.6, so the comment about older versions of gcc is irrelevant and
> should be removed.
> 
> Nathan's -Rpass warnings are warning that vectorization was not
> calculated to be profitable **for 1 of the 4 functions** by LLVM.
> Surely we wouldn't disable NEON opts for XOR because 1 of 4 was not
> vectorized?

Well I kept it short but clang warns that all of the loops are not
profitable.

However, the config option for xor-neon.c is CONFIG_XOR_BLOCKS, which
also controls the arm64 implementation. We wouldn't want to disable it
for clang altogether if it works on arm64 fine.

If it turns out to be broken for both, I suppose I would be okay with
disabling CONFIG_XOR_BLOCKS for clang but it should be done in a
separate patch as this one should be applied regardless of clang working
or not (because this warning will appear again when clang is fixed).

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
