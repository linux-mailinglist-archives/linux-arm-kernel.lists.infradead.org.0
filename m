Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DC9E5450
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 21:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4hxRmBVjJzsYXQYIKtGNZ9gLIpbkIwRm7vmsJ7DuiY=; b=gzZFZTn0e29qgh
	BGHjTj4Hx0gime07ipaT6EMoz9WZI2N3N47s7wYwx/K98VFlvm36rzCACT5KV/ZHCvFSE8nJD0QtS
	JMuUZ86uOiWvvf84kj9drKJVrvsIuieot3E6VMRD/fM8Vj/xTaqnaNVwRUgWBjR8XqEqor7A62l99
	HDr7dDc5j05EMzbM7WUqqdnkEpSOSuNwpoi+wE+FrbAoP5M670WfJkVwxiokVP13HSm8qlO52KeSg
	bKr1Lbva/Xy3P/lWj9G6caEJ5GlEGLChBB7t+rX6ne9XkcOde/f7roC/y01XvdGedybpr2seC/fwQ
	tx/jH9UVm0IXlxk0a31A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5Ck-00019p-Sq; Fri, 25 Oct 2019 19:24:58 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5Ca-00018m-B0
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 19:24:49 +0000
Received: by mail-vk1-xa41.google.com with SMTP id t5so732439vkm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 12:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o1KNKNAvei7RdsNFTjOCPFJdbKge4JWaaDzIh5QD5WU=;
 b=B4GQskO1pBnqkDlZ8HZ8x5c1vhCFZEW3X1j49w0bM7B18rvKIKDxfC7joa+DwOV5Vc
 6mh8e55rxeRH5ENNIRbSFdpc4Nh+5atNEe8sNssBKJ9XjsSSar2EG+qy45G8otOvHTmf
 44KVb2wwSKDA1+xgpzIIX2vx9nzpS4E6myim+/Oh+1q43BEhwKqUu/JmNYikfa5KyNWV
 1iOlg2gSv7/W5mcA1DU1YxNT/6x9K2zHfgklyJ7/ytVFeVZ5QDd5kH3Gr94p0ehppWx2
 PnfJTJ9tbP7fJYy5sGjgyqirYK5pwV8HQ9Phq/+6VkTITjeJCpYwL0osN6AX8s8CJ3/t
 92hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o1KNKNAvei7RdsNFTjOCPFJdbKge4JWaaDzIh5QD5WU=;
 b=qsvOaG/B9fv/iaSeVz7jMYU8TityOt3Y3n3uBBu78UG0yf0tNfobREshd6yfTjYcph
 6n0N85aWl3lFffwvHYmuIaonpiwKpnf/VjgXwxPG7p2rOo4sgDI7tQkt9bZjIw+/dRXY
 JvYwrsxSUnQadFP+ntrPi0jyoL4HPovhfrfhUsO13btbeEdEcoGqGDclTkymp/OTpsle
 iLy8PX7ry7qZsjcm8Q0HUUeJsNFiza2TGuOTSJuIWua8gF3ftt8ix16nJdYsdhjAnBa1
 Ncdv3haG4t8JLv7d4ggYzF9l0ooFS0H5xZ2/NoMo4I4e34UTA2jOnVaxd00o5xWoZJJ6
 ciGQ==
X-Gm-Message-State: APjAAAVyhAMDXVtjS4SoqAnchjWW6DMM0Bo8FJSj/j8kx9+7XCbinKl2
 2m0oYugarRUpni82b5Tw4xYMxk+5Q5UgBhGMjTJe0Q==
X-Google-Smtp-Source: APXvYqyNGrPZJ0eMOQynE8OcxFRJ+vW6Age9LhpyOufu31lfdbamMEtUIyKoPDjLtJVIa6dmx+KdXEfZL4h57Ja1Nx0=
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr2977044vkc.71.1572031484800; 
 Fri, 25 Oct 2019 12:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-17-samitolvanen@google.com>
 <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
In-Reply-To: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 25 Oct 2019 12:24:33 -0700
Message-ID: <CABCJKuegPN+=rHp4E+QMtfAB0w=MikZVG7vxoTBpLkE56UR4HA@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_122448_404949_2EF95A23 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 6:31 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> $(subst ... ) is not the correct use here.
>
> It works like sed,   s/$(CC_CFLAGS_SCS)//
> instead of matching by word.
>
>
>
>
> KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> is more correct, and simpler.

Thanks, I will change this in v3.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
