Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77695315CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 22:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bY7bwmNj96PhGM4eCqkdQlNtSRY5+0aM16AoaJK8YhU=; b=qayX8LzOxmH3RK
	/rhe6iVgzwQ5d++b+lWG4ej1zkcmTewW8GObM8n85O6n8PKIE9emBrhBUrULPGFXab+EvtaHaZye7
	M8CG6rG6C3eWt0B4sbT/rkHvml+UzLdAVurSU/dZ+zBdmmQnXMMv+nH7gLyLTMXSn/fnx45C2F14P
	5zv9j6jxbLWhr0GwtVxcVbhoNZPQwYxFxXeLHnuaev/jCTgsrq085GzoPvlYDk+DAqau19XNvyGQv
	pfIbOAXWxmCyMbTESMIU1A56HLDQLP9zoFzFzoF9DmGuSwXyBU+mcertFnvu+q88fAztR1jMxQF7W
	/ZUEwIaFWXxIfp6wG1ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWnnS-0001gL-V4; Fri, 31 May 2019 20:06:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWnnL-0001fJ-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 20:06:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so6826783pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 13:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9TL9DcOEKgadixiKIuv445aeR9WBFQdFXZrUAgDcDlE=;
 b=kV49vqq86GuJyq1B2ExOHqAEHCBbLYAxLrlwX9YHW790oTpaKgrElCoYJHUXWkgOJV
 TyS26P7yQV73R8/GWkjjhukLJb66Q7zUUUJ7a2B93/pJZO6Shv5cFVuO06NhX0qS4a8f
 ckE9aHhSd9lIxLohPE/+lCMBZ2E8LEVATqVLm7wOqPKHieY8trNRGEwdnTfcrdqsN1Fz
 yu0mhBAzkmIxIgd+iih/pD0/QURI9+rxP04X2IHVXV+35kUITHS70Eb+sKRt40HBMm7w
 s6s3jP7zdEP+vz/WybVa2KYlVXm/9BI/SzyLBAfs7+4YVEhu/Sm8BI/uV6UgsPEc/XKh
 zXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9TL9DcOEKgadixiKIuv445aeR9WBFQdFXZrUAgDcDlE=;
 b=iNDiTiZiexJcX06f2u9XurKP4Zkt5o7kxtIZSJT4jzXyeb1qhbwR/4aJ0bQWX9DfPv
 wAp+ikojs2LUwH52C8R5jS8CVTlsCOOQ6Cd0S4zjpOBDCYSd6mIZtEIlgqZtVwncdiX+
 6Fj3oTDGjZz+0k5Trz0d2JMl7hsHSlQzauemuxpFQWxg2NTXlk2s97kegd6WMRoVB/5v
 FKW4Ikw/s3Iektz1UF19VJ84gO8mvacXdkQ6ARbumn86fww7vZmsWpX8M6Ay9rpWVZ9Y
 ch9Voic2YADCb6RISR5MQkeFQ7gJ+7urTk54fbNQHgpYdU1Eird04OCaLMra4IEHKawR
 3/Yw==
X-Gm-Message-State: APjAAAVx4J+70Fd1rYIgQtc9mYEDBlpArA7h2cm2RsifLvF3gjJuQcif
 juIEDsrESt6qnAcVK+Kg8Gv7igl8/wZaYDVX5R6/pGLI
X-Google-Smtp-Source: APXvYqyEK1gsqxDA0Or/CK+vKBpJnggOs9awLB6ySElXj4BB/3+n9Gqj3w6GYh+I5qrhLxZWF88p5xir5ByMCP3e/lU=
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr3043266pjq.134.1559333185173; 
 Fri, 31 May 2019 13:06:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
 <20190531183227.GA34102@archlinux-epyc>
 <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
In-Reply-To: <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 31 May 2019 13:06:13 -0700
Message-ID: <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_130631_918497_EE2E8DC7 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> clang, I would suggest dropping your patch then, and instead adding

I disagree.  The minimum version of gcc required to build the kernel
is 4.6, so the comment about older versions of gcc is irrelevant and
should be removed.

Nathan's -Rpass warnings are warning that vectorization was not
calculated to be profitable **for 1 of the 4 functions** by LLVM.
Surely we wouldn't disable NEON opts for XOR because 1 of 4 was not
vectorized?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
