Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502891F4696
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz1+gkcmaerbsUEnK19WPsQBMhCZ1vJaYPMj5HIgZ1k=; b=UIrwxiRRYhFAak
	QgUEe89wOb9+3IU5+iHw9ekxe1BZ52Euohz5C47k05Nk6Nia9Ny6SlseB7qStjm9awSfJTBEIBM89
	Q9E9eAbC85yQWDYuKyIiQDfsRoMTE8we3xco+inI1gDajN3/ou5aMXN+7XfxOAx3iKWGcrwgr3HGu
	2bZ5Z5VGt6PHsWagFKgthJiDfdU/0pGMt694QJX/uGYfz82Ddg2HfhkiDITI2H06EuvuFR/zyufVB
	c6OkoX3sy3/pJ4t/gcK1zIwz294/LPKrMXByzOgVCHFOfwEnwbno5QVbnxbBYh2X84lHMexouHFsr
	Q8s4bCKESTdsg//n1chA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijHi-000264-6h; Tue, 09 Jun 2020 18:47:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijHW-00025d-Oo
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:47:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m2so1791576pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uJfu7VCoabwyy7XV4REVbfqvINHE8jJHSSQxXyuHXd8=;
 b=RRs1XpvKUrWcGC9rIH96xpb3pTK7Sz9Y478qOvPHNO4RLX043gSI9fVBKTbIjskAsD
 NYVbHiStuO9ZNyJZjm0N/3IRfTEgzEFthkAy/Nt63yzoJ0aFhLDWR5b0DOgY+O1mRVuG
 TpNIJcS9r6syyH23xPO0c25GxRl4Du26VqrsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uJfu7VCoabwyy7XV4REVbfqvINHE8jJHSSQxXyuHXd8=;
 b=lq26NFgMEqINPLN6mYXxz0PnIVIZDYqmemedqnocf8g8MarNeVTDt//fcrHV/FYR1S
 V2+S7i4T+iawY7VxczfMoN20pl8Dqxhsfgk2Mhr9+KHOUuuW55PQcjJlPTs2G4N4PC/D
 9PNnCwti10rgfjVzzpowvVyJnmNVXcU0DS9Sb4Xdpg5GO+EYP/iwm6hJk5J27SbBT3Lb
 oPnAVRKsyi9lkbEBuoJdUcqpYDqZb8d9dLOh14Hwrgj67ItJkM1aSZV7WfIhgkKeBwcl
 sdr01TaV9TUqc4qrkhtcjCPWmA+DJcRP6Ja7mHB0y74u3y32odCvMk81yJ+xtkizSSu3
 cK4g==
X-Gm-Message-State: AOAM533QfwrfZgbW9e9yjcc0jVmgpWAsRhdOkzITLQeXH4EQz4krhTR+
 ZklOJQick2N/jI2gLBvVNJeS+w==
X-Google-Smtp-Source: ABdhPJx/4VVBlneDG36Q/SLWPtFp+CtxwJnOIUCT1u2jRalyMTmf8uve0S/G2MJuu/H/na/+h9PhSA==
X-Received: by 2002:a17:90a:30a5:: with SMTP id
 h34mr6603724pjb.36.1591728450330; 
 Tue, 09 Jun 2020 11:47:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f3sm3388976pjw.57.2020.06.09.11.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:47:29 -0700 (PDT)
Date: Tue, 9 Jun 2020 11:47:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 3/5] gcc-plugins/stackleak: Add 'verbose' plugin parameter
Message-ID: <202006091147.193047096C@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-4-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-4-alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_114730_809079_925DE1A2 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Jun 04, 2020 at 04:49:55PM +0300, Alexander Popov wrote:
> Add 'verbose' plugin parameter for stackleak gcc plugin.
> It can be used for printing additional info about the kernel code
> instrumentation.
> 
> For using it add the following to scripts/Makefile.gcc-plugins:
>   gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK) \
>     += -fplugin-arg-stackleak_plugin-verbose
> 
> Signed-off-by: Alexander Popov <alex.popov@linux.com>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
