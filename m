Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ED1F3499
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqrC8gA5UqNSunExsPzXoFm1H0EEmFXrXvcxCqiTLd0=; b=YFV5NE80WjCKMi
	rwbeLZXjtRc1Id+zCAe5QU4DHUfu8vrEQkW+frlblYuZCO8rPc1WhcNU3Jx1UlqcS8BxAK/e6PHFK
	piIt+OLGazQc3qQKvQUvON8nJi6T+RxWuTFaFnOYDP8AhiZ7XSwsKowkL90if18bQpvNB9AjlWHWl
	i1RSlfQ9AAla483AHej175GzJ7+qghCkRHK3SnopZNqHJdU+mrXSuKQ8iXi2tNSCdzSvfkI87DYrQ
	DeGCzuPlIqfYf8CMXW40ZjLCdvx3hPTnO/JVlp53Tyl32Q0eXeh7n1PQc3yLUUQ33noq5DkT5llSs
	jSR6UIoiXd161l+vyklw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkce-0006gb-15; Thu, 07 Nov 2019 16:27:00 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkcT-0006fe-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:26:50 +0000
Received: by mail-ua1-x944.google.com with SMTP id n41so776879uae.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 08:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AHVtna/ZK+ShoKE32vj/oIbQxq9UojFvas7d10KE8fg=;
 b=jZ5+6wBUk83wQPpJmxaIJELl84GXA/0+SmIJmGXKvPs+KkSBCCgqHgiiibcWA8tRTA
 HujJfE7DBIWcM4BdMqqm6Hcz+9CU85jfwEisPSpmYX8SNxvApOvMGdldNngt4QFlmguy
 L9WnpbCJuTK9/aD4SnBylkT5OXPccTKbvcPGHh1zNsTtz8OVlthkWe7v5As5buBEZozX
 Jz55FqoRAWXkZ9JM6qJpTKAC26iMxf6eygQfKLebtlCRS+d76RCGYyoBCD/ETzxuMdUU
 WKTMq/WWxlASzp8vUChued4POTmR6TtUPEetUvMBxAXDXrkob1IGUEAmcarqNNHiev2a
 mTgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AHVtna/ZK+ShoKE32vj/oIbQxq9UojFvas7d10KE8fg=;
 b=luZCbYOoHbmiCxsA6SFCDEIWaiZVAYBRmldo7dsdPB0B+gkjgZJ0ffortYHXsJHMsd
 stP8n+9mVrQWr6xdoD6rrsC9uCZLYz9IecMg4q/iew6Dk/+hwTefo1uy+9JnF94KMgzd
 L5EAmqd/cTsiIhK3yLJGgQMLH2HRkajZNnQmdmQNLvS5DCF12PGgztDVfm1RnMIfJz/t
 jINeOlVARc2bjz39SHs0pgEqFrISnU+8+L6xOwxSXfr9/D0HgBRCCT93J/JcXjOSoqhs
 1A3LZVa/TDDj5FoR6yvgPpZCvdPISaKPZQLTcWTO7t/PQcQUdS3fl6QaOqKgw7mZJRXQ
 qcsw==
X-Gm-Message-State: APjAAAUGOTI2oagEE0I1Vgs1b6Js4osnhA1QMpVKgd/xmOs9K5OUV2PF
 P7qBfOMO8UT53wnpq+9W39A9NfkGYJxVDEjDXynTDg==
X-Google-Smtp-Source: APXvYqyLUUrZngxfbpK2EJw4lHfelTLISIcLLsL1NXa8kNArn8q1ZLsKkeVxBc7Gqn8x30++WT7p1IgHdkDpA3Dvs2U=
X-Received: by 2002:ab0:2381:: with SMTP id b1mr2931374uan.106.1573144001488; 
 Thu, 07 Nov 2019 08:26:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-12-samitolvanen@google.com>
 <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
 <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 7 Nov 2019 08:26:30 -0800
Message-ID: <CABCJKuc9sxRRkfieExiFcYu0Cx=ZC=jyw2xXqsoQhF5-46HVDw@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_082649_620991_D55BA33B 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 2:51 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 6 Nov 2019 at 05:46, Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > If we detect a corrupted x18 and SCS is enabled, restore the register
> > > before jumping back to instrumented code. This is safe, because the
> > > wrapper is called with preemption disabled and a separate shadow stack
> > > is used for interrupt handling.
> >
> > In case you do v6: I think putting the explanation about why this is
> > safe in the existing comment would be best given it is justifying a
> > subtlety of the code rather than the change itself. Ard?
> >
>
> Agreed, but only if you have to respin for other reasons.

Sure, sounds good to me. I'll update the comment if other changes are needed.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
