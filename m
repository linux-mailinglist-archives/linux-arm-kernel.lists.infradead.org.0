Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2141A1AE891
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 01:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3amlUKYeGgWGR6htbCV5YdypkovG9E0V9YXnV0g0PlU=; b=APH/VOrVQP1O6p
	kFS7O0e5XT4oPgOX/OKl5cciVQoqjYAxiu5AO5vuzwjT49VEqI+1o/7JMLB29Cw4K7q8ikdKvRCwu
	tfiaj6CTqXfk9l6GqjCPsRRJM1YhngiMQyhDAxqMJG/poVAKGvGaVC/Zcn9gK6lmihQv4Gtygaoo9
	Jy4Q/xfGaRapxsTHpL3a/FBKOkPe0VhZ6X780cPIwJYKcqPHYlFRERQQp3/li6oWlMGTRxfirTn51
	y6jTdVJIyq4dd5cIQN9HDAiuvOSXaEfDwg2sIUCOCsL0h9PFqvsGBVG3lzK/9yH5MHPVTHvVTq//P
	cnCUIxyf4xeo4ujYYeHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPaH9-0007Io-R8; Fri, 17 Apr 2020 23:19:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPaH0-0007Hi-BY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 23:19:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id y22so1519108pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 16:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eZN/WzOYxhMTyXM1n4Hh0KjKOonGokmtIz9JOOeY5Vg=;
 b=O3KHKU0k3dInIICnUfIysdWxzBUY+XUTDdijeLAiDhdFnA8PBKuhSQpvogX9RxTlrx
 kTA/e34YdRHp6WhC8hlBrw/wHMQiAsB5baO1CXMAOyQ8ifvtNvMIs4s159Dofwdzj2+m
 xmOBe5OL0lfhhbpZGbUM2gQ8jnidHc+1xlY/fOe26n2CzbTPuNkpasriAoOqZ07DoWfI
 xFKb+gMgSzaUOzRj2fy3suByEC/htSW+YF9Iyf3GrQ2l41nZaLnZ/2iMxm16wj+3V8iu
 ZKOI3sDWFzGtyd0JvAiuvKjTy/lgLrzbwdLv8B0BzgGvUDUm8aMYaJdtnU/2KyLI1DQe
 j/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eZN/WzOYxhMTyXM1n4Hh0KjKOonGokmtIz9JOOeY5Vg=;
 b=YGerrSWqlbhJ0gql6I0/2CvyWR7A5z97IIPIdahpbKrcmiNJNweqVpAyrBq9uiKYok
 9Z+gm1m/Cfuc9o3Kwvis27wNPH0NUFYyoWjU7kA+2bv8RV3BlHypvUzYp1VFsvO5IBPQ
 +Zn1NdRMRlHTHsJtUI7C5ZnboeEzSMZraGvqVoV+6bB8e5hfSTomNF4nIGF1tizIH1l2
 delqbAmEY8VY1+4BQMUPJT38skDD28wA0KoO45kRRRNMbLmBVnTa3RJ9+z57+D5d+5yE
 /hXjkH/YQ6pe8bm3WiwvyDIwRxlON2uMhC9OAY/92KRSApi9beCXmbO6k6cKNR6kojhl
 nofQ==
X-Gm-Message-State: AGi0Puai4pZ3t8DEXbw8t1Cxhyt73YhLS6ARtre5+X7SB87oI+2wNRpW
 NGFbBjzqzlKLKAIHLXK6Yn0FcQ==
X-Google-Smtp-Source: APiQypI+0JpweCt3GR455upZub8Lrjz/gzQ722UCFMq+C5APeD7it5UYnLinXZ4wa5mxzmtEsNYr0Q==
X-Received: by 2002:a17:902:bd09:: with SMTP id
 p9mr6170885pls.25.1587165584157; 
 Fri, 17 Apr 2020 16:19:44 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id y123sm20188542pfb.13.2020.04.17.16.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 16:19:42 -0700 (PDT)
Date: Fri, 17 Apr 2020 16:19:37 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417231937.GA214321@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
 <20200417152645.GH20730@hirez.programming.kicks-ass.net>
 <20200417154613.GB9529@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417154613.GB9529@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_161950_418038_0C902864 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juri Lelli <juri.lelli@redhat.com>, kernel-hardening@lists.openwall.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Steven Rostedt <rostedt@goodmis.org>, linux-arm-kernel@lists.infradead.org,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 04:46:14PM +0100, Mark Rutland wrote:
> If KRETPROBES works by messing with the LR at the instnat the function
> is entered, that should work similarly. If it works by replacing the
> RET it should also work out since any pauth/SCS work will have been
> undone by that point. If it attempts to mess with the return address in
> the middle of a function then it's not reliable today.

I did initially have a patch to disable kretprobes (until v5), but as
Mark pointed out back then, the return address is modified before it
gets pushed to the shadow stack, so there was no conflict with SCS. I
confirmed this on arm64, but haven't looked at other architectures.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
