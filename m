Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874D8E3EE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMrHfh59W1JORra1oDRFEVYh0IhjsGSOCAmFm5APscY=; b=UqMpw9SZugnE00
	DPjGhtjFRWiVms7og7kd1YZ+x1lkwZAy5PcPIAzHBq1Xj5wzeVjJ+Cj4pSHliDGnvPLht5Ad1okm4
	WfkTD0mxAa58X7QYpADu5w/kmuhOCqpvVd12/upbb2R1FRdLR+i5YT4Jwh4dwhiefKK7ZL7uKJ01T
	uNoxfQ6M4rIw2YpKpuOnMyRUSJhtjeiPau2f9iMMQJTEvU9jI7wtjVpTJ4Fx9aNsfhp5EC0J8GQWR
	SHuJFFf7dYOGlYggoN1P2L3wb5WyxOLaanFm2bGvLbpeo0zh/BnK+4Oxm1FVnuQaJHiYXn3YqhByX
	8HnO0+y9G7JGXDaP2qbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlQG-0006m7-83; Thu, 24 Oct 2019 22:17:36 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlQ4-0006gk-Qp
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:17:26 +0000
Received: by mail-vs1-xe41.google.com with SMTP id j85so111602vsd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qHNXsthwregcyrL2BKVfLqYllW87y6QVnA+Lbr5Rgec=;
 b=u1/fHDmx2F03gUdsJoRaJfl7aP6BcoOTQj7WuOKplTSdf6uXX1E0Rf1hGTjZ93euSU
 NJGI0hMli675V4W1F5aGYPIB6vXEndENuc9l4uQvSvWlXKnpA/Q0fOf41lKCkzVymcMj
 vSAvJbnieQzBs39rOqmCk2ja2JZ+n2tLqqkQvWScrAsxpi7g4yEkQAJHTgbS1XIOEKGc
 ZIEUfghKoKXuOS8kPtcMk4jtp/voE4nzOI5nX/zgK6dajQqfV49v6nb1hfQWLq1Yey8y
 KbnrEILxVOYi9Z6E2nmjX/uSwH9bskxev0otzP5fbZ4T6AZwWHNu+W94Q+UntLXVb7q4
 mXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHNXsthwregcyrL2BKVfLqYllW87y6QVnA+Lbr5Rgec=;
 b=hGuj3PLKdXcjJlXEImGZEHEjHqNDu+PeSdZUS3me11AZ12w94rjZcqeVEFZLeK8HHE
 jnYrIRN6XuvxWP8lwgxUTfrlgW0HBPyv/r5h3FvOI6rUIk6vrpOKIRwTNpfE3aTfj9ez
 VZ7T/QjYrW812+r90hVUtfjqkOll/PlJF8ip4ro+yJ2WRI3fCRuI9+UOCcgvtZ7DHDLO
 9TofXq9NFYC4qAK7kx6xvkcVu6bcm+yrVAgyTkgZUdC94oJQSN0QTClsgL/tYO0+ckSw
 AfJiIVgbfBDYl4nwawsMnuovS5GkMirwHWM29HLNuDPwibt0rZim59iu1fvYhdvj8LaL
 eLZA==
X-Gm-Message-State: APjAAAVlP5wt3hueLowaSNhwZjLeQ26M5vuAPvAMKd6Gr48enBjJm69k
 lPhPb1XPX6gc+8+So9PqHmqst3A/6F150Yt7rwpoaQ==
X-Google-Smtp-Source: APXvYqyC5R+J94HY0QZwShcMklCS8zj2eZiTO4Hh3KIgdjFp8g8gOvA8xc0s1anKvCDkBcvEQB2MlCQ7jEx4vRyMG+k=
X-Received: by 2002:a05:6102:36a:: with SMTP id
 f10mr324969vsa.44.1571955439473; 
 Thu, 24 Oct 2019 15:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
 <20191024080418.35423b36@gandalf.local.home>
In-Reply-To: <20191024080418.35423b36@gandalf.local.home>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 24 Oct 2019 15:17:08 -0700
Message-ID: <CABCJKueb=xZzXBegc58aWRqPq6eCOpBf7uyyzVyNMujDSHhm1g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_151724_893440_EA6733F1 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 5:04 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> You can remove a CFLAGS for a whole directory. lib, kernel/trace and
> others do this. Look at kernel/trace/Makefile, we have:
>
> ORIG_CFLAGS := $(KBUILD_CFLAGS)
> KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))

That definitely looks less invasive in this case than adding
ccflags-remove-y, since we only really need this for one directory.
I'll use this in v2. Thanks, Steven.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
