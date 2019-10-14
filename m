Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06ACD5C94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXyiD03G4f+T1yZCEI8iN0bp3eZ6jP8QSHvnlOrDtHk=; b=mfLSp5t0iIa5Xk
	4pjWTI37SWVq+i6j9YOg7sindu05ChhuqRWEQr6Lo2DkroqxMU6VAG4QDN2DYdV9pFQtDFFW/+zc2
	nbq6mkyr2CCwB6Hm/AWQizSLbXRRFToV55CMVb0VDvVdPJ1LT8T+BlgqAUM7BpZ6eA1GrrUxXNrF2
	yrYrUO12L7xT6encnXHKHv/nBwitMej2GHmhMFthGgZJ2nEzzBr31hXUGvaf+OagRJQ0meE81OhDd
	8OlIpxgltoPpurtRd1sktX4n4InpaFZ1CIPd1PP5rixovJ/9jkf0bnoOVG5FRrbBm3j5Jttpi4dGQ
	N0Qg+QP88y1tZlIvuing==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuyv-0001yJ-Pt; Mon, 14 Oct 2019 07:41:29 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuyl-0001y0-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:41:21 +0000
Received: by mail-yw1-xc42.google.com with SMTP id w140so5813560ywd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sEN7o3yuO56xvPDuUwKgUiAGNAgWvdh9IYFyMwir9eg=;
 b=ULg0x+kVwo2eT+iIl7xEqgOGbAzw68nEs+Tf1EX6WbkwD6JZiL1PJq9RZFvkDJEthU
 ocfdC+Pu3HU8yKboyYft824CwBNxjIEzx8zyCCvt9khKX2P3rnlv1B/RrEDuwgE/1mG/
 dO9bqvuIwHg7kYFJ6cR8Rxh98z5xxnACgBkXR6UU0aSIjsvAx7CLSTrvS1W1Yc6B2hbM
 xVKkvAsHm4h5LvwOcL7O3xZNwPSbX/1EH8Ha7BFbRmH59L7FLoc17rAHr/p/fi2/0aQd
 XhR8EuPvAa5rR0cGHGbuZEBAsY6jzipW6b/VsB7pAItTeOGbyHWLGnGRGwAir0skqH6K
 QqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sEN7o3yuO56xvPDuUwKgUiAGNAgWvdh9IYFyMwir9eg=;
 b=NjEx9Mqa43cIa0qDQAu9QIeVI1i8BWMY/rDYnB9dpnPozgoZx6/rd50JxsJf+2yylP
 kcA27g5h+47xvb08Kaa68q+M24zj8/7clzIP7E00SzYB8c4b3jJV9MWyQwrPwRWPqr2e
 iLsQV3RUsYfdUXWSJQvRDYB5/KJBjlsVQHIicwejeDk7eP7OrebraGCsjsTmJ6wSAMFt
 HUpXokZhJ8RYfhTqXEXdKfuN5PikHcKe7GCIhZTgiWlvQSZeuy25h88W4WxnyF6ld3Cz
 3kwGV2e/FmkfFEpDZ2nwmLo5TjrtuRPu4+4xSBj+rLxfuXYufAjXl8M/JUz7Cfu6DwX4
 Fy+A==
X-Gm-Message-State: APjAAAUvQElLXE0jhriBS0t/klqwe6mvGxwSFj8S07Ahq1gpaqUd7UbA
 0HtPzC2JOSnnUpvw0F2G0U0KWGZwEuDTopbEJ1ngtw==
X-Google-Smtp-Source: APXvYqw4VB+FAxVRs0lcX+ZIr7P8ykk483BJkOe9a1ta9sipUpx8Dmb1cwz7VKpxf94e6Vopzx6wAvxttFQCwsQ1L0I=
X-Received: by 2002:a81:254d:: with SMTP id l74mr12130385ywl.409.1571038877410; 
 Mon, 14 Oct 2019 00:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-26-keescook@chromium.org>
In-Reply-To: <20191011000609.29728-26-keescook@chromium.org>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Mon, 14 Oct 2019 00:41:06 -0700
Message-ID: <CAMo8BfKexMmMusB3XOeaMOZHdU4ccz+PMGA=Jy+KQhgD8H_8UQ@mail.gmail.com>
Subject: Re: [PATCH v2 25/29] xtensa: Move EXCEPTION_TABLE to RO_DATA segment
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_004119_817770_42B82EA6 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel
 letters 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jcmvbkbc[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 "maintainer:X86 ARCHITECTURE..." <x86@kernel.org>,
 "open list:IA64 \(Itanium\) PL..." <linux-ia64@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Borislav Petkov <bp@alien8.de>,
 "open list:PARISC ARCHITECTURE" <linux-parisc@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>,
 "open list:ALPHA PORT" <linux-alpha@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 5:16 PM Kees Cook <keescook@chromium.org> wrote:
>
> Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/xtensa/kernel/vmlinux.lds.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Acked-by: Max Filippov <jcmvbkbc@gmail.com>

-- 
Thanks.
-- Max

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
