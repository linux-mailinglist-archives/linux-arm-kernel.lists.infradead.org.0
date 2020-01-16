Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F189A13FAB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hebAaIR4CzOQHkxHgcRHSE9bEsId5I+TVoSjvViYhHM=; b=uSfrZk6cBP23r+
	YLb2RVcpu+syrwm4bxofdpQimESWCYPQY7fvjQvKgSs8H4vw2gP5g82fZOvlXmgoIo/uL+Iy0mY9u
	6/sW5w4gYSFPVgFxiz46DBXJVWlD1ZBrVDgANwtD6jP4qFYKJ8O1CqKZD4V19KT4kvi3R9TSD+MBR
	kBjJY7I1vetS/1jD7I149UI7aqwLuKWblX9b7GQqskGN2aagzEZeftrnVOyUa2rj+e7BgeXiL6kYD
	hJnX4ota0dR1rZTf4/xxHUS4qGihCcrO5Pppwnxq7JDHpDjelEquBjkIRCNGh+e8RzG2GjaB/qtPL
	K4uVTaMV9YoMUSuSW+Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBsO-00084t-VT; Thu, 16 Jan 2020 20:36:24 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBsH-00083i-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:36:18 +0000
Received: by mail-vk1-xa43.google.com with SMTP id d17so6045898vke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RV6fXTo3b3qoT7vSlLu9LZXPKWnKYVEBYLBa7aJ3coE=;
 b=dryW2bgxQT3TcmKHyF7k3/UkFi2E2Qunh6WctF3kjeRnNJDiSxf7obYQetkLkkmU/f
 rsRO4G1R9NHiQfiB7IbS/g3e201MDYpYRfm3I3lKZQuJ6YOovOwoFVhI0kbjkNwOxZtP
 m0dEx+VXLI9Cl6w4dCABDOZNZ3pChr94FxH3Dz3EX4sWv6ulIjkhtRpxwc+9VzwfxebA
 cjQgmaLfTXvQy+lU5KMD7jPpMrGjZ09Pd0UPfHvYS5HSHD7Naska9ofDRIcdvtGMBkNE
 kQkpg/ELqolO16Xjr3izfosdUsgTcuHhXOL5clFLaqYqXnnDVzR4Q0VRcIwAYcdwoE7u
 IvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RV6fXTo3b3qoT7vSlLu9LZXPKWnKYVEBYLBa7aJ3coE=;
 b=aSV86yiQkdkEspi3yf8egyWMXGhPEKQQXU0JD7ZEGIcC3MJXhsbaxnJc6hRazQX0MR
 Ma6F+qBEnE5tkQgAaNujjvexQH5SFYlaRLjcO4wpWZA9UeWuka2FrbY+gwKAMTBfDtH+
 K2Ulh5XLKJu/v26p9L71mRRHvoLq61dP/NHgOQw7xMZ63ATPqnaru6gQN4QAk90d1j53
 WdfAfC5NAW34s76tVGb74b/m8v00tyoh3QfT4wOW8N8bwH8UJbvIDqQBmqgRqKF9yNZp
 9k9jlHp7yjDmNE+bSk/tAmiDIbeeBzsmyM8srQWWxpqY/9giX77DA1MCXiohdhziVzhf
 E3tA==
X-Gm-Message-State: APjAAAXZZEWBlfrQZi1IuEKc2wjb49Gs72FC5f8s9NMSYZxhguG3Q9+O
 UbD5W7TGdBKfCY0rOiwToUAL25gtPs1WAcPJeZ6Gqg==
X-Google-Smtp-Source: APXvYqy3hookrrU/Buxl44KY5o3vqIMbrfDIWbbyEY39r9m+d/9XpIDAayToTJcBMK5GJtdqCaMmmDL594aQGbaPCAk=
X-Received: by 2002:a1f:2910:: with SMTP id p16mr18939592vkp.71.1579206972944; 
 Thu, 16 Jan 2020 12:36:12 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-12-samitolvanen@google.com>
 <20200116174450.GD21396@willie-the-truck>
In-Reply-To: <20200116174450.GD21396@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 16 Jan 2020 12:36:01 -0800
Message-ID: <CABCJKudsTFd22NzB9JdzrAo2UFzsfNVtB_zvdRiAEBXAC9t3=g@mail.gmail.com>
Subject: Re: [PATCH v6 11/15] arm64: efi: restore x18 if it was corrupted
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_123617_416693_DE67BCC9 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:45 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:47PM -0800, Sami Tolvanen wrote:
> > -0:   b       efi_handle_corrupted_x18        // tail call
> > +0:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     /*
> > +      * Restore x18 before returning to instrumented code. This is
> > +      * safe because the wrapper is called with preemption disabled and
> > +      * a separate shadow stack is used for interrupts.
> > +      */
> > +     mov     x18, x2
> > +#endif
>
> Why not restore it regardless of CONFIG_SHADOW_CALL_STACK?

The ifdefs are here only because restoring the register without SCS
isn't actually necessary, but I'm fine with dropping them (and editing
the comment) in the next version if you prefer.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
