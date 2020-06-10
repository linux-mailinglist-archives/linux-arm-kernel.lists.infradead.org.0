Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01FF1F5C60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 22:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpfV3nothyOvpign3qHNiC6uu2TkDPDy0UZsSkuZ8OQ=; b=jpEjlPFec0asEu
	2lVS0av+Ryo+6SVKtVIIf+jDSEfxOYM9lCm7lg07yPo8H2zgyKDLf28/felu0xSexvJh//OSFRfJ6
	+SkcRNdk8ejKA59xU8q/uIbD9IX1XQX91DVADdZwIVXcOht/VQ7IhnXIVViMeT1SMJ29MuPwpqx60
	QK1/rpGHf9LxDpU8b6ttve1lL3HiS7WURfTIF8uf+9Iv6w3YOdDDk1XmDTW5Jc4bO6DelFvYoCS6F
	1mI1I3/Yz+nSURDh0oT7765PfehOw8jlJ7OJXc/rpWsc7zgUXzOh+KG3Py0jpsYLNcehVBCMCn+Os
	oaLreKbOmqngdCr9MZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6xm-0005cB-LM; Wed, 10 Jun 2020 20:04:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6xe-0005bc-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 20:04:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id b201so1596803pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 13:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DXoJ3aLq9uhplWhtB2O8RgTDmA73SlXyMWG4MRv/Ld0=;
 b=Les6gM1utqz0wgQgKhZ4Nfpc6QS2e+nlg1Z/E14+jR0X69Sr3LwW3Zm/3lj8osjycK
 p6DUplVPD/d8Rthsbcyt2ZdYdwH3RELL5O74k3dxdMf4kX7zka4VtVliwa5J4nSVuu9e
 CL0gdKwiiV/4hvJM+5XPBMzv9WqFgKyQV9MGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DXoJ3aLq9uhplWhtB2O8RgTDmA73SlXyMWG4MRv/Ld0=;
 b=K39BvlOgHQz1mrXbyWgE3lsocrroZMDPk1eZZzlHhvd643LGJb741eASoNQQ0MtlNi
 XF0+3gGXWg2kHc+Dz2+EmWAAXsLu3GWgkpj6z0+v3z7WnPysSM1qRrSnFqNZf3TYk4yJ
 baZ7LQglHIpGJZ982oHDJEOiL5wmI2zzOYZ31tnWemLVtrS1JQBE3IvZmvvdEMTmSXT3
 BAZoiSxxM3zo5vfwJtwbBmLuBSP0YKVFOSW1q/WK8syrOIUm2eLJiW8SxSACQm3i6Zv7
 o+ski+Twv8sDRfmDFihKFfLB56GLt45i4yNrlil8c+GT7IRM0iUDLAc5tDf0buspOu+u
 HvNg==
X-Gm-Message-State: AOAM533xj/aDpqroIwVSPstXjuNmfeWikL9qLSyo9HzEPRqBJCu8yauB
 g34Ls9f/VFPF0/y/CcveuqFtdQ==
X-Google-Smtp-Source: ABdhPJwC9KNAXjpOXoR+vUMW+1gcz/392CyELM73At2IMG3pDZxxAs+wEHjca9ODW8LTFHMHIMEw8g==
X-Received: by 2002:a63:df48:: with SMTP id h8mr3947452pgj.411.1591819472188; 
 Wed, 10 Jun 2020 13:04:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w190sm723093pfw.35.2020.06.10.13.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 13:04:30 -0700 (PDT)
Date: Wed, 10 Jun 2020 13:04:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 3/5] gcc-plugins/stackleak: Add 'verbose' plugin parameter
Message-ID: <202006101303.71B51BF1@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-4-alex.popov@linux.com>
 <202006091147.193047096C@keescook>
 <fb051386-4913-9442-f051-23ed25802c9e@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb051386-4913-9442-f051-23ed25802c9e@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_130434_117856_3685672A 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 06:52:10PM +0300, Alexander Popov wrote:
> On 09.06.2020 21:47, Kees Cook wrote:
> > On Thu, Jun 04, 2020 at 04:49:55PM +0300, Alexander Popov wrote:
> >> Add 'verbose' plugin parameter for stackleak gcc plugin.
> >> It can be used for printing additional info about the kernel code
> >> instrumentation.
> >>
> >> For using it add the following to scripts/Makefile.gcc-plugins:
> >>   gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK) \
> >>     += -fplugin-arg-stackleak_plugin-verbose
> >>
> >> Signed-off-by: Alexander Popov <alex.popov@linux.com>
> > 
> > Acked-by: Kees Cook <keescook@chromium.org>
> 
> I see that I will change this patch after leaving alloca() support.
> I'm going to add debug printing about functions that call alloca().
> I have to omit your 'acked-by' for the changed patch, right?

If it changes dramatically, drop my Ack, yes. But since it's going via
my tree, my Ack is mostly just a quick email marker to say "yes, looks
good". :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
