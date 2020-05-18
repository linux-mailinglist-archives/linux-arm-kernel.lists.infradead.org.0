Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BB51D7290
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HS/G9uL+rM6i2TU8LGddVZfCFmDuyEogo0XNF7jTjas=; b=Yi70Y//tV4joUR
	S886Ftat98gfWo13SBlxFtT8zDtxw+it5Zu5oYmkf87QA7h6eT9vLoujl17iobsLb9K+KdPMDr62H
	c4x/H+eTmYjlpEm85PrGvscoDIfHz41w4m+qqyLyTvpDgKCupIkkU2KCqHNWkJir50sKQZEHbguzE
	e/BV6RpMBdRcR8w3GOL5WrWcmlkC96FQ6/xF68HN5t2o7Q+fpd7flMImPST3zcuLGeluNLL9oRu5R
	e4yvy8MXFDdbhjzwag4GHB1m4hiy/MXnRK13JGqAGs4XYDn49vIvYz3sxhI12AVadvMTXOV1SZMGz
	OaN5iPeA5lQbTjZisUNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaarb-0001t3-O8; Mon, 18 May 2020 08:11:07 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaarT-0001sI-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:11:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BB0805C0135;
 Mon, 18 May 2020 04:10:56 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 18 May 2020 04:10:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=0VCyxFvAMhgusgpYr5rZXUJVhIUn8Js
 Ts3zpGGtk/U0=; b=qqCr/U7ZsqicykMchNolnowqKvxzNY/evSBODVQQ7E0w/oB
 d/qF7NUTRhCbO/ZX8y3WxrsdPhJ+mA46E3n/C0RhbrrEfU/akHwmt+Jj1+QiuXVi
 J8w1vh3af7RD1euv7ZD/seRCYYDudB/9P8UOydCt6XxynGzH0YtPWAZ1XqU8KrXb
 hl9J0gn/iG/wbWXgZOJRnVlzF9zgYS+HnmDzPrX3U3BLlmZlIz0QISWPFCEdzhzi
 CAkD5/41cS0oAu5oLU8mCrr2p0D0bIDTXFXv/UBYv8w8HDOPuKiONS0gbK+c9LrV
 r5B8N1+OnJ2QtIzAipWiTPIeZnMEVGZEUuSRWcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0VCyxF
 vAMhgusgpYr5rZXUJVhIUn8JsTs3zpGGtk/U0=; b=T9C0di6fpbvAhkF2JLufwu
 fYCXmSMEM+NSdwzWW2JnJKDNTD3rHRiwGVwCGxxegyu/g0m3qXrRJa7ppJioeMOq
 ku4lbGzoVn9zfs5f0OupupdyOl5sUr+1qPqowvGj1iRHy3JL769SgO9ZpneHeMe2
 0a4U9m8uwI72TSw/OUNGW++XAYO/U7eMpM+RqkHNPQPKisZiU/G/Sw9iutelNIxJ
 LBSRnfbi+hZJ+8Befupo5Kiyec0t2KxoGzSUMw9Fu6yaFG9q5EB6vqcqZlw1m9IA
 bfWIs5Dgv76MLPsadpY1VOPBzjtSzmqoRrI7iMj8IVo+fcqhKgr/8cBgU57D1YfA
 ==
X-ME-Sender: <xms:DUPCXqjCTbbGhrZ3bGJBN7-MW1nPOL8J7dCfifvDJWZdP6yNHZM7lw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddthedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:DUPCXrDt1OZLn0weyuVs_63PfANhJRqOctaWv6-1wQuHZvShsS4SCA>
 <xmx:DUPCXiGs1UsRn-tIOlMXqGPSlZ6JKi0HG4NyuiscNNMlu0T3Zs4sjw>
 <xmx:DUPCXjRc79OBZYouM7Pb9zXXZgKzJqpEqY4lnauiI6BVANrMl1rWvg>
 <xmx:EEPCXn8KxaReefRybqzM0YKLIVqJVW9XuX_gW20J4X8mlq-07XWQvQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 231EAE00B3; Mon, 18 May 2020 04:10:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-464-g810d66a-fmstable-20200518v1
Mime-Version: 1.0
Message-Id: <bc674840-0789-4055-a228-d092f52f1ec6@www.fastmail.com>
In-Reply-To: <20200517160227.GU1551@shell.armlinux.org.uk>
References: <20200517153959.293224-1-andrew@aj.id.au>
 <20200517160227.GU1551@shell.armlinux.org.uk>
Date: Mon, 18 May 2020 17:40:31 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Russell King" <linux@armlinux.org.uk>
Subject: =?UTF-8?Q?Re:_[PATCH]_ARM:_kprobes:_Avoid_fortify=5Fpanic()_when_copying?=
 =?UTF-8?Q?_optprobe_template?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_011100_051393_BC0A7C8B 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 mathieu.desnoyers@efficios.com, Masami Hiramatsu <mhiramat@kernel.org>,
 labbott@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 18 May 2020, at 01:32, Russell King - ARM Linux admin wrote:
> On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> > Setting both CONFIG_KPROBES=y and CONFIG_FORTIFY_SOURCE=y on ARM leads
> > to a panic in memcpy() when injecting a kprobe despite the fixes found
> > in commit e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with
> > FORTIFY_SOURCE") and commit 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes:
> > optimized kprobes illegal instruction").
> > 
> > arch/arm/include/asm/kprobes.h effectively declares
> > the target type of the optprobe_template_entry assembly label as a u32,
> > which leads memcpy()'s __builtin_object_size() call to determine that
> > the pointed-to object is of size four. In practical terms the symbol is
> > used as a handle for the optimised probe assembly template that is at
> > least 96 bytes in size. The symbol's use despite its type blows up the
> > memcpy() in ARM's arch_prepare_optimized_kprobe() with a false-positive
> > fortify_panic() when it should instead copy the optimised probe template
> > into place.
> > 
> > As mentioned, a couple of attempts have been made to address the issue
> > by casting a pointer to optprobe_template_entry before providing it to
> > memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> > 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.
> > 
> > Squash the false-positive by aliasing the template assembly with a new
> > symbol 'arm_optprobe_template'; declare it as a function object and
> > pass the function object as the argument to memcpy() such that
> > __builtin_object_size() cannot immediately determine the object size.
> > 
> > Fixes: e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with FORTIFY_SOURCE")
> > Fixes: 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes: optimized kprobes illegal instruction")
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  arch/arm/include/asm/kprobes.h    | 7 +++++++
> >  arch/arm/probes/kprobes/opt-arm.c | 4 +++-
> >  2 files changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
> > index 213607a1f45c..94db8bf25f9c 100644
> > --- a/arch/arm/include/asm/kprobes.h
> > +++ b/arch/arm/include/asm/kprobes.h
> > @@ -43,6 +43,13 @@ int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
> >  int kprobe_exceptions_notify(struct notifier_block *self,
> >  			     unsigned long val, void *data);
> >  
> > +/*
> > + * The optprobe template buffer is not anything that should be called directly,
> > + * however describe it as a function to give ourselves a handle to it that
> > + * bypasses CONFIG_FORTIFY_SOURCE=y sanity checks in memcpy().
> > + */
> > +extern __visible void arm_optprobe_template(void);
> 
> Does this really need to be globally visible to anything that happens
> to include this header?
> 
> While we may abhor "extern" declarations and prototypes in .c files, it
> seems to me to be entirely reasonable for this to live in opt-arm.c and
> remove the .global for this symbol, thereby making this symbol local to
> opt-arm.c

You are right, exposing it globally was unnecessary, I got caught up poking
at the other symbols. But I think we should go with Kees' patch instead.

Thanks for the quick feedback.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
