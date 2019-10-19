Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC6ADD5C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 02:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dO8BrfdgZ4drphLBMuJunAKL5h5cy3RK6HLExVuv0Qg=; b=Vgpk80wvk+lc8f
	bx11qUpWysVjbkoqvjTpp/vkHh9K+EsBmFqZiFgvQ2oLnXQNejyDMR61PUySLs6hQjN++QjwmgdKM
	vj6o8HtdBHrUTFmCtpPYTDgFLodxPfrKh44+QWohseGjXWk2dPXX3bQyPqd+ndvtE7e3xS5ukwUNd
	gQljbs0QDXhM3/ototS1YQ7e7k9/rtFXSwqHLlywWQ1f2U/WMdJ7LNZ/i9eui1aI2IhDjfiSPtcSY
	mmE40bdB3/nIwR+mDOjiFMO6VzplSBSnFnFvuKZbXxiph7bZeH4tSTe8vdgx/ohwPVPx1tnulSt+C
	arTPAVb2tL4uREscqYYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLcVT-00020R-RC; Sat, 19 Oct 2019 00:22:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLcVJ-0001zx-Jm
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 00:21:58 +0000
Received: by mail-lf1-x142.google.com with SMTP id y127so5961659lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 17:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZqICylESWKf0IpOr+KHkluRNlL0wf5TguV6mXdP4QGA=;
 b=SJhBGhz9kYlPN0TADnvJp8G2Y17kwQLx8bFgEQxXC4oPBXVPQajIkOkF46KrnCk3Y+
 SIhUxsEMZpo0mO71reWB5iYnGBSvSPpnlhJ7SOGmsAzO1r/eCW2htdVksbO0SI9DIYUV
 omVMOJI5aJQYPBTuWOcF+vN49kJ/Z38IZ5w69/IWpI0dZkus3V70HRJmjzixpNFSsrH7
 zFdeP18no8PweXdELrMKy1nvLYeUemGKl7HG8j1bU8GRNXdqGvneSPtLFgWbG2ZCxBd6
 JFKB+kpkVv5yQiadF2KjhDCmed79/Dn/ssCkl2cq1nYz+heSuFAzelrZNVV5W1OmMhq6
 qcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZqICylESWKf0IpOr+KHkluRNlL0wf5TguV6mXdP4QGA=;
 b=QofdKEO7hYlzuMpEDnte5SbAigXizOCVTwMD/Uuln/4smWDK0ydvkXMDqqH4bEia2j
 I+3ToWkDx+6ID/na57Irtt0wb8N3QEXTqoC8VlnXYUDV7hmIC1YLP1Qh2Pa9yftoRpIh
 ICTI8RSjsry1HwcIQhuAz7ZMrdhBU1vjxirRqTjOvkXmBX9tLtMntcaneufH63o//rf9
 sWGars8QMwccCWgsAJCsAskyYmfI44zMZuxNwbE63lx+WfYBwzNqXbtyJXbDLfbwqn9/
 xtHXYyphXXYQ+XfmWKT/EhqKW/ZfNBRXelwti0BQnb6lfvMYcuUBgtq2klDQHTI6xDVn
 hN2g==
X-Gm-Message-State: APjAAAUd80XLi3DuPqEuU6IxJXLrE2yPfWbD6weTRKCNgxbcRkdqWNth
 HcXhkKQ7mlW9qSVhUBMcIg+ytRrAEGg2SP5Rkvs=
X-Google-Smtp-Source: APXvYqxT5yYNPjiMSlzwumlj8UjSOAfCmDmgAcpOZOM10R//Skv4aoDktplFaX7g2Ws72X/gbHtxdVXSSeajbRTRouQ=
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr7590271lfg.173.1571444515448; 
 Fri, 18 Oct 2019 17:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
 <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
 <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
In-Reply-To: <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 19 Oct 2019 02:21:44 +0200
Message-ID: <CANiq72m_+YLLWuRGi=yZBAUj2WHSbw9E+jQ02LbXyq3b12Vb6g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_172157_678180_AE5312D7 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Sami pointed out to me off thread that __has_attribute would only
> check `no_sanitize`, not `shadow-call-stack`.  So maybe best to keep
> the definition here (include/linux/compiler-clang.h), but wrapped in a
> `__has_feature` check so that Clang 6.0 doesn't start complaining.

Ah, good point -- agreed!

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
