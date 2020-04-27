Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E981BAFB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 22:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meSQ6E9oaT9fSmLTmJTeP64XSmWZ0Vm/bMcMRACmaeo=; b=cNx6b3AtA5ocBR
	7n26cxzdAMxhyRE/yZz5zxEij2caKF7kErCLHiFd1VVQbXGcN2NW9MDJEtK9/VKx4q5rdiAAi5ffo
	dj/C+hnmpIMIoB+5brT5GpRELglzCJehx+bdU9vAOUMKqvKC6YXiB6bFmkQDB36i5opCbn8rwHIWk
	ur7daN3Cuf/yu/74+8F3O3hKBpppRZWTzoRFygPXCBONjeWy7FFHlARDVZnUpIGB0Oij2wjHxrhk3
	TgGyCyhY63P6Lp6aZX29V85J9WeFUBCbVfVHJfYxXZOgAI/6KaatJQxMYWWrLUN/k5kcqpPlyH86L
	qRMgy7AcrhCHO3P2hbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTAdg-0003Iy-Ua; Mon, 27 Apr 2020 20:46:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTAdY-0003Hq-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 20:45:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id p25so9554203pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 13:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bcag0IOMjkeMKf6Qdaig8RmUgJulOZ6Dwcg/kc7mWuw=;
 b=vr00ZiG50BbHCZgiGhKzUig8ebmcxwNyAuSZDS9Fy9++/+lBSJLPHB5VE0jqKA8VVp
 g5hGQKYr39R1dLfLNK2DxhYc//BK+yuzOcm5KbUsvU99ovE352pXh2+A8+7w7icg/xqJ
 RQwcjXxsQigIv1hDNScho2GwzEDFZfzHHQaRH/4pVYxLOayrJSWaOEVPwPB4xxrhdIoU
 RiQO1uExeEqZgKgR01+xq+u4cWEz7Wt1sbzS+NfXx7/JhBbJnsVGfWrstDJ129Ge1XMZ
 SuSTWs1W3SCWz53yl1fhzUC1dT7hlEqmdxcZgxuyk4Ah4zyhUKRpkoeUu5rKpqLSHkg7
 Q6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bcag0IOMjkeMKf6Qdaig8RmUgJulOZ6Dwcg/kc7mWuw=;
 b=AvtdDIDlP6OASsvwJ7ELnKy61mrdusx1xHG/cdvX+x+mdvkUgfgQkNapNsXpna8uHq
 3eRY2EPndVPTCcpMF7nvb1a17sUmQELyYst6JmCJVlkyW7EubWN7Y2PFkHgKaGVTBCpL
 e9C1AwY4EN1PhafZLKy29tnzmyLAJFLM1KvnO87qk3EZ5FV5IXfDxZfpSDIGCfZpAps+
 +Vibu97XPBA2M+vNfGvDVeHKfAYRK+mnXk9F1ZoEaD8qFrvdHHrcjHwj3vxsVDK4boyx
 CMe/OsAjEF24LbATJ7eRfpSFjYjfcQlIvvKrnK4tKbYTiBHwsRTMDH8hMUoDeAnTnSNu
 nkyA==
X-Gm-Message-State: AGi0PuYdD9OhmkV49RANCgmuPA34s32ntALBEWxLVZsWGF25ORoGsUki
 uB3XleJkDsKnRkQlWCVQszXuzA==
X-Google-Smtp-Source: APiQypIdmfjwcDuAuA2SB4pP8kr68I93NPWhf6BxSPVcCeqZMEvirYIWHKdGIJ3TN8iKQ9IKNzr4sA==
X-Received: by 2002:aa7:9218:: with SMTP id 24mr25789630pfo.312.1588020353394; 
 Mon, 27 Apr 2020 13:45:53 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id 1sm13672326pff.180.2020.04.27.13.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 13:45:52 -0700 (PDT)
Date: Mon, 27 Apr 2020 13:45:46 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200427204546.GA80713@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424112113.GC21141@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_134556_330145_6C3244B3 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> allocating blindly out of the kmem_cache? It means we don't have a redzone
> or a guard page, so if you can trigger something like a recursion bug then
> could you scribble past the SCS before the main stack overflows? Would this
> clobber somebody else's SCS?

I agree that allocating from a kmem_cache isn't ideal for safety. It's a
compromise to reduce memory overhead.

> The vmap version that I asked Sami to drop
> is at least better in this regard, although the guard page is at the wrong
> end of the stack and we just hope that the allocation below us didn't pass
> VM_NO_GUARD. Looks like the same story for vmap stack :/

SCS grows up and the guard page is after the allocation, so how is it at
the wrong end? Am I missing something here?

> If we split the pointer in two (base, offset) then we could leave the
> base live in the thread_info, not require alignment of the stacks (which
> may allow for unconditional redzoning?) and then just update the offset
> value on context switch, which could be trivially checked as part of the
> existing stack overflow checking on kernel entry.

I sent out v13 with split pointers, but I'm not sure it's convenient to
add an overflow check to kernel_ventry where the VMAP_STACK check is
done. I suppose I could add a check to kernel_entry after we load x18
from tsk. Thoughts?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
