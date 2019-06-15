Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ADC46DF5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 05:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hdJP0l/qaNFDGTz/tyB40X+vuQn2rzBRx+pYX+at0M=; b=e+27JCzy9I8nBr
	tHI/iYRB4LHHvn7yrrSWZlIVU9Pz6QvAfWzW9+yCeZKBPadJ5R23BcXMQ/9AkWjA5bE3pAdTivReV
	Fs2ChX86JawtCHK5zK5SuxEK/6cr5bO/no+tcK5TybbohbQTw9ABJ7OTRMt5jRJfYphuHqu4hwnFP
	WpF/fVLjfTI3zfu3LGlIQirToqPl+4dfuUCFz5iSauMYDNIIB296F5pkpuhbvcBlS90XgkDVbGzFS
	H7MV1dWzRe5Nb39suceIAfaSUmMIBBJ3+RNfrGswSwgtOaVoMRdUj8c1nGYkdU8GQctEjw06nXpIS
	k1XDxqaXA9R+0tuXx0mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbz3n-0000Bc-8N; Sat, 15 Jun 2019 03:08:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbz3d-0000B8-GW
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 03:08:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id k187so2585313pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 20:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=s3h9liOL4pzy4K3mokxNpyJvGGWg+jIohBl0u3f0MSw=;
 b=nLJrviAAsir3PYO/XtH16yQzp8ONsbHuhdT8WIRi/kJGgxZSSD55ofOhQDDYeUdiu0
 A7bYKKKzCmbwF1kdcQlqcIp/DseAP6aT5PVkQZaEIVEVBXstCULU0UiiNAXsNo5l2zrV
 gUD/9w6GoXQk/0PpZRJIVFj+/Sv4EozCcSF+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s3h9liOL4pzy4K3mokxNpyJvGGWg+jIohBl0u3f0MSw=;
 b=d6wIwB8XTTXVptKdCAFffwwJEPNNYVlyJQpnZQJPyykoTtEw7yyu73C3fHHxNawmMy
 7VJFn3FRygJojyevsNr/njNf5zRKOkUI8Ewjjg6WAD//2AakKCZv0M7n9bcTUkWAsNc2
 OCPIKNTP+UpQJHvlzsHvCqx+QYPcQdneqrGvaz6zvGH8pyK7bgGzwb1AvqxVZoyVOBk7
 MIi5aQwJdz31ejxauDogBcNnw9rOdrZxT8/3kfZ8HlZBu8Z3FlrJOb65cSxGzbt0qjVR
 WTPm1y8WCmmkcZ12KvOTqmBtlpaLpEKn8thbnokqEOcCB5ZQqPMkm+votvpLXlnQHUsz
 6crw==
X-Gm-Message-State: APjAAAUk3yAiYl9w9eHX1jJhCwzaobXIaSJoqBZRqU5pSJAwZmRj0D2s
 DHjnzwW8EElBqRN/11zcuJUNzA==
X-Google-Smtp-Source: APXvYqxIMz0tLLWT+ykuDfGa2gdns1WEiGTzOvYHKMsnAh3J26q1NOxQ3TGblUcsPdaDOSE8lxsQOg==
X-Received: by 2002:a63:f402:: with SMTP id g2mr37256655pgi.197.1560568124036; 
 Fri, 14 Jun 2019 20:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m20sm4057774pjn.16.2019.06.14.20.08.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 20:08:43 -0700 (PDT)
Date: Fri, 14 Jun 2019 20:08:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <201906142002.833D224C6F@keescook>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_200845_577776_E37F452D 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Russell King <linux@armlinux.org.uk>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>,
 Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 06:05:19PM +0200, Jann Horn wrote:
> On Fri, Jun 14, 2019 at 5:10 PM Denis 'GNUtoo' Carikli
> <GNUtoo@cyberdimension.org> wrote:
> > Booting was broken by the following commit:
> >   9f671e58159a ("security: Create "kernel hardening" config area")
> 
> I don't think GCC_PLUGINS alone is supposed to generate any code? It
> just makes it possible to enable a bunch of other kconfig flags that
> can generate code.
> 
> STACKPROTECTOR_PER_TASK defaults to y and depends on GCC_PLUGINS, so
> is that perhaps what broke? Can you try whether disabling just that
> works for you?

Yes, this has come up before: the option you want to disable is as Jann
mentions: CONFIG_STACKPROTECTOR_PER_TASK.

> My guess is that maybe there is some early boot code that needs to
> have the stack protector disabled, or something like that.

Right, though I'm not sure what portion would be specific to that
device. You can turn off SSP on a per-file basis with:

CFLAGS_target.o += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)

or per-Makefile, as in arch/arm/boot/compressed/Makefile.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
