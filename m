Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D5FEF150
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 00:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ooC8NdMIov8ETMglUMqgYqZ8EQuBgwTOMirn/4Pxbw=; b=VAeTPWEjW3Fqod
	NUImjwMKCKqxwicI6I2um5OvpWIhFAojD/J+7VpmMvWMk2dLiF/rdIDwBlEtby75k9UQoOyfin0YE
	uilgcAXEui+H17hDXhwiT1c50R6EPc3JFhq5qqL/cdo1IbqAYYJDFrpQH57448gRXXzE7e74FItef
	+SQbiTKgHziYj/7pDpjrKw0LOrtuFZ99JhBF9jAHdu4ozgr8m3goXMYZM3vghRbS/VB6FrYEYudPx
	uzg2wQSRltnRQZfvoxed6xKA3Ivdisyp5BI1Nukgwxyw8yS8bwdwDLpeJu/P9SPBR20JrSE4ERSvD
	PZjx0n8KyiLyj5LrWDxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlzS-00085A-Ok; Mon, 04 Nov 2019 23:42:30 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlzL-00084J-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 23:42:24 +0000
Received: by mail-ua1-x942.google.com with SMTP id z9so1803875uan.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 15:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r7KXOloQM0IlfDWd2ZmUfquqt9+rdW/LWeVsYzZS5Yo=;
 b=oGPkCL7MQlhqPwAizXy81wfFgmEWqswSVaJ070q7QSMUHV4rPFEYIVwwPUoI9JzQsV
 tjGNPbiNdqm3wtOwdKjIJhkvEjEXR8IE1Pm1iGuTui1lsJ+zyZeDnmwaGc2e6IpIiC7j
 9DxB+dahbSm/W3s0bm4fZ+Ya8dVCfIpGNF7eIHGT9X8eK1ysYtT0Awoo+UNrLzgXT1M8
 6lCULIQcB4PBf/VReN8veBI+zOWkOCacAf5D4mMyNLo05/F1kRUX0ZUZHRqR65q2ltF0
 9f1oEkjctFu+UunQvKHg6uh6X+4dlnVuWcEQ+Q7Gr/HjdzHoxvC8WHhHXsbWPLqqmzQT
 XpXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r7KXOloQM0IlfDWd2ZmUfquqt9+rdW/LWeVsYzZS5Yo=;
 b=Ar+70Cb9UVf6H1BJ/Un3UuSRh76lTpVzP1U4xI77GwKGDQoNd5Wbgntpxd8AHOoJpS
 JiGkQB8aSO497V3rwX5NA0wIOxGjIh3+WHdz3SCeL/8g2f0r3QnyTiC/ei72Jd/ueJ7S
 qQursux9jMTDORLIXpXtM3iQbNbhWGC7NOMDCCNco+prK6A8gAtFrxdDUpLE955sT4lc
 HeslctSW4CSLfQBAW15PrDe/mnoKtehphzZMqwKit7zPaglXGzGzwzF1Gt3NFaxLZbey
 patp7f1kdKu7uCP9dBTwfZ6sS1iDfXNHxgkFmLBeZ3II9zMNScg6FBLNFimkr+/iCEM+
 lPKg==
X-Gm-Message-State: APjAAAU6XQZyHgjUFnl6VfhKS/QT61t2LnbU6iDIaZSEgjgaPKXyvsic
 8JEYS7YfvYHUZGIC4saCOodyV6BQNxOE/5rydYSByg==
X-Google-Smtp-Source: APXvYqz8I4cRB5IWTivRJgxux0uUc15gQK8/fyRxTXKNu37vOixhqfpx8UpDAvilaBEvuvDWvryENhED0MHmtPoojeg=
X-Received: by 2002:ab0:1451:: with SMTP id c17mr4197520uae.110.1572910941690; 
 Mon, 04 Nov 2019 15:42:21 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-11-samitolvanen@google.com>
 <20191104170454.GA2024@lakrids.cambridge.arm.com>
In-Reply-To: <20191104170454.GA2024@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 15:42:09 -0800
Message-ID: <CABCJKue=yZqe23DYg3_WyiSKhxXS+GXe+3skhvYon4ytkfH+XA@mail.gmail.com>
Subject: Re: [PATCH v4 10/17] arm64: disable kretprobes with SCS
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_154223_358572_365ED4E8 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 9:05 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I'm a bit confused as to why that's the case -- could you please
> elaborate on how this is incompatible?
>
> IIUC kretrobes works by patching the function entry point with a BRK, so
> that it can modify the LR _before_ it is saved to the stack. I don't see
> how SCS affects that.

You're correct. While this may not be optimal for reducing attack
surface, I just tested this to confirm that there's no functional
conflict. I'll drop this and related patches from v5.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
