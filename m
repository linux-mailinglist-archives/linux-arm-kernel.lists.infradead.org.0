Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B99E797A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PU/NEk7/5z/l8IPT/qgeyPKlmEDfAEgGX+vibWFDQEI=; b=mVssZOehOz7wNz
	zXCq4ZlJqVaT8V2vRAqAhwsvGga5KgX++hE3uTBRqGWs5T13WxXU4Hhyl/NH3k8xBRXaWPT60EfUP
	Op52Hw3P/Wwb0fQBXpxO7EkYPY8XhuV9HOHyZ+/Qnw2KaEeL1soAPsGs2nxn9Oes0o2ytQyiMYtrs
	CO1mO/lCezDCjo7v8Vn4WQ9ZLWREU24g/hmw90ByH9K+7hg3dsU73/JUZhX2Cv804LZGoBypHwn56
	CfLqjcHHIKtmXmdTFjWqAOMeLDo4+QgALoWv9PBD2gjp9KBH93O4RjXPGM1PvAG8sGUb6xwaxBCj5
	vK0uGVvzEvV83Suq8NBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPB9Q-00040X-DG; Mon, 28 Oct 2019 19:58:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPB98-0003zi-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:57:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id l3so7632235pgr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+wOJCmH0g8vAxxe+FcShlh+2/nEo9CAjIamY0wkPKUQ=;
 b=O0yZqC1vKJdTDSM5n1ypj42P6mUYqFnfIcgablhmOvhVLjS1Ybl9gj4HXCMp/vZ/Jg
 IlXkNeniJ714HLUGdQmrikkPN3FAzyra+IIBoiYFS+hSOqqXECKH+9kL8TmBRqTz+il7
 BXn0qi51LmPYcG+sXB1pj3nora5+8WYXfasYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+wOJCmH0g8vAxxe+FcShlh+2/nEo9CAjIamY0wkPKUQ=;
 b=dsFikiPZhxvhnrUPNCr9cyNlUfg7pxwmpQqQpbYnoypEfbhd+fip3QK6H0xiYkzYRm
 YA/4Nvh1bZ5fKaNvkFL45NRj24sLgV/cVFZQx2nrGM3Zjasg32nPvolFozJrhS0ERCAI
 4U5inEjVaosNmynE/baLTF/MwEG+dYTGGGnT0bAItLXjvkGz1skR8KB6ol3JFOHuDPEq
 GZzyRKfalkFVaaOoXhqXM5/5FVQ2tJm1Uh8iEP/6OeX1Os7Bdq3gEPauf3e1jAgolBHR
 1g3W120ih4ueIA/fP6jC8tKvbxIVwTsN1lHh1aeXfahSiFbfldIXirXDCtLJ8n2g5Vqj
 zoDQ==
X-Gm-Message-State: APjAAAUpnB/GOjHR2YZSYS4Tk+JxVLIsbZ8cB/fE40Kjc1e1dvS8nGZV
 rsMzc7s6kBfYM0N+unrSiVnQDg==
X-Google-Smtp-Source: APXvYqyKAiln1b5mOZI7AcApDWWXQnpclGuce0+3km3MXnlFB0MT9wWVjjgen/Fg+kiLaMYGZZoRxg==
X-Received: by 2002:a62:e10c:: with SMTP id q12mr13396875pfh.248.1572292664956; 
 Mon, 28 Oct 2019 12:57:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y129sm12883990pgb.28.2019.10.28.12.57.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 12:57:43 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:57:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <201910281250.25FBA8533@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
 <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
 <20191028163532.GA52213@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028163532.GA52213@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_125746_439705_BD5F2AF9 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:35:33PM +0000, Mark Rutland wrote:
> On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> > To keep the address of the currently active shadow stack out of
> > memory, the arm64 implementation clears this field when it loads x18
> > and saves the current value before a context switch. The generic code
> > doesn't expect the arch code to necessarily do so, but does allow it.
> > This requires us to use __scs_base() when accessing the base pointer
> > and to reset it in idle tasks before they're reused, hence
> > scs_task_reset().
> 
> Ok. That'd be worth a comment somewhere, since it adds a number of
> things which would otherwise be unnecessary.
> 
> IIUC this assumes an adversary who knows the address of a task's
> thread_info, and has an arbitrary-read (to extract the SCS base from
> thead_info) and an arbitrary-write (to modify the SCS area).
> 
> Assuming that's the case, I don't think this buys much. If said
> adversary controls two userspace threads A and B, they only need to wait
> until A is context-switched out or in userspace, and read A's SCS base
> using B.
> 
> Given that, I'd rather always store the SCS base in the thread_info, and
> simplify the rest of the code manipulating it.

I'd like to keep this as-is since it provides a temporal protection.
Having arbitrary kernel read and write at arbitrary time is a very
powerful attack primitive, and is, IMO, not very common. Many attacks
tend to be chains of bugs that give attackers narrow visibility in to the
kernel at specific moments. I would say this design is more about stopping
"current" from dumping thread_info (as there are many more opportunities
for current to see its own thread_info compared to arbitrary addresses
or another task's thread_info). As such, I think it's a reasonable
precaution to take.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
