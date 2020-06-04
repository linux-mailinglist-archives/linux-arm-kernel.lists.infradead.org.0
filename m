Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C21EE63A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsBSQlC1M/UUUKCaeMeZQ6dktYAnM7ZS9LlpAmLpbU0=; b=uHvAg2BDHfeZcR
	j2oTQWW38bsGmuTSPzoW+cHmbma8DzZbvsXKU8CN4fW8GVT5Oprv5Xv/XQZDILZJhZxUuR96/b3PS
	A32ToFzA7Ipe75SZ0/eSCpbIzzElv87lV4sGElzVuz7X1OhFCc8wDwtI8M+UdC7BVVgPDdpV1U0rv
	CsdMiVZyruyBNNPfecklhaHysk2nbkbiKhbRY3q4Nb6kWjIuAhQAqrDA/u3dAE8iMAKr7AQJwGuoB
	/d/TiI00UicZtb0X6PQFomJnHMyeIQM21CD2oWkKAkMfEcIeAN94zTDSLfI9m1T6ADYlMlR6WyPz0
	VkTu6xPRgrYTI9mcpwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqRe-0000cP-Ri; Thu, 04 Jun 2020 14:02:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqRX-0000bP-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:02:05 +0000
Received: by mail-lf1-x144.google.com with SMTP id d7so3656515lfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 07:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RyahCwj7GWFMqqvRbPUi/TlPiAHD4KqpSE60TAEaL9A=;
 b=gjHkdzUMhdyHJkapNYoxi9E/bvX0FBFiSvfqIhYHEmYQTT7TsTNlVhAesWRAL7isYP
 lsna+Fr7cHbRtH48eiLL8jfUvf8a5+6nuqcuxFZt/wGr1wGuhifGi+ylwfCLPZBAO82I
 Q3OvNuGkRmpIli8heThK0uGKWFAxsAIWwF1U54EWDKNOJlKtVaXqUX+JzWrUVavBKvqB
 iFXYlKgXAdF4Q95WyKBxD8X1AdyHA5WeZRKC8nk2uz5BDKsKTZl+l3QGpqv+NeShBwcv
 eMXXQFW75HJDx5wd1ToS/HhRrjtFKP+7hSfuFsfKEYeHvp1RvkiP5BS3ZElqqVJpanMo
 9Pig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RyahCwj7GWFMqqvRbPUi/TlPiAHD4KqpSE60TAEaL9A=;
 b=RaI6U4WvPNCDapLhmZDPQiyLz5zlWH6e+oSyvZxMrBUwwM6Tk/O9lmBqPnMrZlqVpa
 6atKMnco9O2sPb6QwmlSaUZBoaYVr6w2zAW8Haj7HqgObSSrdSaA9eZXtUWJRKvbZ1op
 foP9PcdaGlWYHDXYwofKAQLdmblz7aZehMxN9AvmQ0r2nCJq60GEivJPZ6+ZHcz74DLR
 aIQCBdnC66ka2hZWrnCdp+EU39nD9J5H72bwUWF9+ylDwIbkKdohO49lUIssQ+hwzEDF
 51c4DCNrIF+t1QB5V3zRer//412az1bMRWZxzR16T2Mikis6MNk0hhISiJ7ne3OdfbOz
 708g==
X-Gm-Message-State: AOAM532YLl1Kq4beSB6vGE+FNaVz6fOoOYUdAL3FCmbMeARFlFmchqKv
 8oYSccku2QGdd4/9O/nZveTB5568Rib8pgOncW1uCg==
X-Google-Smtp-Source: ABdhPJwB31t3SsgcUaqovXgGt8jFxRPQdX0SXfXfNcrhI263Zb2nRLIjrQ392jUb57HBWnL6OVG/nj7aV6lYdX+datU=
X-Received: by 2002:a19:cb92:: with SMTP id b140mr2706702lfg.63.1591279318209; 
 Thu, 04 Jun 2020 07:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-2-alex.popov@linux.com>
In-Reply-To: <20200604134957.505389-2-alex.popov@linux.com>
From: Jann Horn <jannh@google.com>
Date: Thu, 4 Jun 2020 16:01:30 +0200
Message-ID: <CAG48ez05JOvqzYGr3PvyQGwFURspFWvNvf-b8Y613PX0biug8w@mail.gmail.com>
Subject: Re: [PATCH 1/5] gcc-plugins/stackleak: Exclude alloca() from the
 instrumentation logic
To: Alexander Popov <alex.popov@linux.com>, Kees Cook <keescook@chromium.org>, 
 Elena Reshetova <elena.reshetova@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_070204_020948_CD5F79F5 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>, Emese Revfy <re.emese@gmail.com>,
 Iurii Zaikin <yzaikin@google.com>, PaX Team <pageexec@freemail.hu>,
 Laura Abbott <labbott@redhat.com>, Mathias Krause <minipli@googlemail.com>,
 linux-kbuild@vger.kernel.org, Alexander Monakov <amonakov@ispras.ru>,
 Michal Marek <michal.lkml@markovi.net>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>,
 kernel list <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 3:51 PM Alexander Popov <alex.popov@linux.com> wrote:
> Some time ago Variable Length Arrays (VLA) were removed from the kernel.
> The kernel is built with '-Wvla'. Let's exclude alloca() from the
> instrumentation logic and make it simpler. The build-time assertion
> against alloca() is added instead.
[...]
> +                       /* Variable Length Arrays are forbidden in the kernel */
> +                       gcc_assert(!is_alloca(stmt));

There is a patch series from Elena and Kees on the kernel-hardening
list that deliberately uses __builtin_alloca() in the syscall entry
path to randomize the stack pointer per-syscall - see
<https://lore.kernel.org/kernel-hardening/20200406231606.37619-4-keescook@chromium.org/>.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
