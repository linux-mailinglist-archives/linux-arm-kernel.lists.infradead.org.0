Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46465A3F8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svTv12xW9KP0tnD/3rrjziBj3Xn1Ogxu4JyzsUuHVJ4=; b=JlykisMPbkFnrM
	Q8xVagJm8mo3v7UO5JXZtlx8Oj3+DiM8vaYLsQkEdiQ1135Hp0ODYqlCGT7Ksh4GT6xv6AZK41BBB
	U6RKil76//OuYm72Fuyc7LYFyYWqJLViGnnXWXlZIZRamOeSAydowRd5H/iS9ECnVededVIh18d1P
	Qo/yaTAKpz56nbDKa3MBMNto20SRDxCqxR8GbJeSGlXc05FcMuCk82wuLbTiLgaijJhlnN4GqDf/h
	IA681JKLal2KpFxlSrgqeyFcR0xTHa8z4ZLHgxIHwsTyGP/z2sMjC3fUERFkbMmkJDbiMkfU1SwB0
	O6/Fz1hNlp8TEwuZ6+KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3oFn-0000aZ-Ie; Fri, 30 Aug 2019 21:16:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3oFc-0000aD-Tw
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:16:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so4124710pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 14:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7xmwWYOATsL2bKw+HC5S30we7ZKKvQz0E6r6R/UPw60=;
 b=GmxIp6vzjWBB7ErAyBkwTn2kplIDtoG9r9JTOFes4vqRAnKhmUkVlHg/FjUWMbYb2V
 Qf0OXkUFs52MXV09CB3vcRFeTYtOchpaDir2oLoeHqf6+WhkfXeJfVo41hL9b0mtjw6y
 hPP5662QMqpUs4xKprg5LPNYF79GlfJsUUGK5jibiJNXJQT7fw9jcSmO2uqDJDqUm41N
 sZwo9prFBeKSX9cPYLwHSf6/xE7KJCIjgOL9fmZExkzowCInTViFz923V2LvQoI5q21x
 xphfkxsggmRN6z0EpRqHvz6+dGVKxB+1lBCRyiLe6OCdUybXPAxj2T721pjHIC6CXfwx
 Hqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7xmwWYOATsL2bKw+HC5S30we7ZKKvQz0E6r6R/UPw60=;
 b=V2Sske/VoCNQzA+NghLPxztra5g7yr/qkXO5VlvSc3zWt1WtNgq44KKm6UFXJoA1ja
 k5QX50imW8JQV6LpRWHnc0npFJrOfY0XzvTj1KqMh88vYNi+xBhFKVdW0C1HvOsBoNnV
 76xPZrm43CV2zod7huuyd8cl4f8JsbDNfEL9k6LLFFep55YXdo/9DAGLljAIaLj8eq4h
 QXVbzExFDLNa//n+S1vQ9I0EcR1b64f5upbaqGTJfrnRAmjKVdJfZPUThCy+nKrPIOoj
 num82JsBj8PykrfddYNce8ZsNGtNElmtrRO5tyrdQgWbTBfPInGvMnxbtD6V9bhUfrxv
 GDSw==
X-Gm-Message-State: APjAAAXnDcmVRic3cMKtl1lyCWd8MZO6Veq4acozQFeaPECLFE6anUkJ
 zCk5ddKme/1pzwHKEDAIcx03btB50eOq8Bl728J2+g==
X-Google-Smtp-Source: APXvYqzL4yUTG5cGxPBGrubDgFucuFYyaDYAkIFzHwYqdQb3h6E7G5Pt93QyEtg58JS0se6jUCFoMEVDzYQyYXAvSus=
X-Received: by 2002:a65:690b:: with SMTP id s11mr12545004pgq.10.1567199767599; 
 Fri, 30 Aug 2019 14:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
 <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
 <20190830172824.GA119107@archlinux-threadripper>
 <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
In-Reply-To: <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 30 Aug 2019 14:15:56 -0700
Message-ID: <CAKwvOdnUsmGg0V5GXeo9WR-hfOUQ_3_8-9t8n4ZKS8=inpxRHA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_141608_991963_43B45225 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 2:13 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 30, 2019 at 10:28 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index a43fc753aa53..23c2bf0fbd30 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >  CFLAGS_ABI     +=-funwind-tables
> >  endif
> >
> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > +CFLAGS_ABI     +=-meabi gnu

Needs a space.  `+=-`.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
