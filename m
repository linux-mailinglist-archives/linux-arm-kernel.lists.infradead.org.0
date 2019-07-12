Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F567553
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/68DDp9oXHlKtHWMcQo0YtsZZdZsmV/zKjVcEp7eSA=; b=SwDw/mCbFDcA7W
	YZjMZN3Tg75Ii3hGbF0rbLKf4T6qV9Twqy65g7mpJFO5p4QnY2px9MuzAPsnFYCOXf0Z6o08mKL2H
	EFseluB/WufLi90ucfwl4oWVQxt6mBh/Awrz8tcYmU1OQQoa1cWqGiclVm5akOXhwW+i8PgFpTBgs
	hMSYXO5SXrPparVmwbMsEzGdJlOcZo8ahne8ZaKWuobRJ+fxGa4JZVfPn3SmIlKlcTu9qQuQrapL/
	RWPQEalVAKpYP5kwoa/qjOVWE4RIiAqSYUeg+0XusT4wLud2Ln9oeKdQPFBcQF2iRoh17cvFl0K3U
	Gj9cBHgQDWDRKaH6+VJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm12f-0002tu-TR; Fri, 12 Jul 2019 19:17:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm12W-0002sx-6C
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:17:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id m4so4957380pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TGOVEHDU6QMUFnbiD3BIRdKN9VyfrJPwBpHe3FSGpAg=;
 b=nkfZJQ9hgpCFW9iLzk8dwSkTH64i+H8vplqfGtPUXVaPwkuTMXUePKH3TZhzsr16GZ
 iK/X2lGuNteW8E8zt7aFgTv7ZFzXEowyDNMR3Zog3auXdALc+1iFvL+n92N73zf5bKmX
 94w5wBa0MVPIT9oZiQNGEAMvFEihECIB3xXXcSMQn2+aCqc/Vw5jyk2H3SKMGLZrLkoE
 ZcpGmxI0DhyWJ8BhMmYQl5+P97OCjSRK4jFpYCnXyOdCCKykftQFNs6LlCnaETQZ6vve
 +h2s08OhbxURKhZGLRmXAyUKgdn26GpPoV6PuOGJI7F39yWyAIKijSFQtvTCzwN2jKhX
 gjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TGOVEHDU6QMUFnbiD3BIRdKN9VyfrJPwBpHe3FSGpAg=;
 b=BzUeLvOQWNFxe7qgTO4mKT/YQwf2XhJC/tNOngT8tmFPhCJkT3Mndi3E1NtQuQfrXx
 +gFCIohaiKK1mrAqpb8CnK/o8uQ+LaoR4XzSZtre1S2IBWNEnbBfW/QuGnd+beW4Uo5B
 eJPiFhoSDSGJGS0GHfOSqstgpOisP5yy6bVFZPW4lMFpOAQtIoWrcyG9KjG65uZbULQ2
 g+pMlLRAOqzWQ9P4motYZHn4NK1v58KRVQ7Km9eSp8Nmxv0lO+gCkZTtVi8CJUdB90zk
 M17gb0xwnxxBiza4imbCgWXHRxr39zGcD9JoeL1FU8YWksqj4ln4PN05HT715+7SISQ7
 wziQ==
X-Gm-Message-State: APjAAAWDNC4YAmbkrtvhJhx/mH3YCaBxfLA2nzWgL8AN2oq83lYTTH3o
 y7q7FQqD9pF9WB7MjulegItO5ozVMqpXH/MQTLdSBw==
X-Google-Smtp-Source: APXvYqz8DDKKFfyMeq2XmFAEGFvXUc8cj/j6Ydq12GQbSzvXJXTqXhAodhBP4TFp0ZC2Q6obcPiqC40y7BHQPC/izYE=
X-Received: by 2002:a17:90a:bf02:: with SMTP id
 c2mr14074581pjs.73.1562959019386; 
 Fri, 12 Jul 2019 12:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de>
 <20190712173912.GA127917@archlinux-threadripper>
In-Reply-To: <20190712173912.GA127917@archlinux-threadripper>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 12 Jul 2019 12:16:48 -0700
Message-ID: <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_121704_234129_AB4C10AF 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 10:39 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> > clang-9 points out that there are two variables that depending on the
> > configuration may only be used in an ARRAY_SIZE() expression but not
> > referenced:
> >
> > drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > static u32 d40_backup_regs[] = {
> >            ^
> > drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > static u32 d40_backup_regs_chan[] = {
> >
> > Mark these __maybe_unused to shut up the warning.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch!

>
> Might be worth mentioning that this warning will only appear when
> CONFIG_PM is unset (they are both used in d40_save_restore_registers).

So would moving the definition into a
#ifdef CONFIG_PM
#endif
block be better than __maybe_unused?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
