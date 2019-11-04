Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4641EE142
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:32:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BnDXFvT9/7/czfNpYoOzyUISgYlo+YtLuhSdLcNW24I=; b=LCIePH3VhWkmCOeeHv40+TSFr
	UbVBHBTyqle84fiE5U90pXCGg4GKukgCFOq9IRJfaGNhMmreEEmDEzv/7TCZg1bQUIV93meA0MkT3
	HqOzAWIaO/X40wHeDZo0+eImVXPiR3Jz3N58Z9ekg5wzY/XEB9nhwfk+71126uPhsvkzEIkCJmwE9
	tJuo1soXxoLO807P/mypNOlc+OJ/bg0eTDgvFwhePBrVXI6rX9JHZySEU/OwxCdSXv8Z8oDT/Fu/A
	+ZSZufwiW8r4smwWeU9pfPQa1ybvgpVDgf8VmwCzUDA0mF2cZU++RaQDTLKjoWIuwHu8eTwD7++1l
	BEj46Fdwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcT1-0000xe-DK; Mon, 04 Nov 2019 13:32:23 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcRO-000803-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:30:44 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iRcQv-0005Lj-UU; Mon, 04 Nov 2019 14:30:13 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as caller
 save
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 04 Nov 2019 14:39:34 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <79e8f958cbde52a3d90aec24dd4638d9@www.loen.fr>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-4-samitolvanen@google.com>
 <79e8f958cbde52a3d90aec24dd4638d9@www.loen.fr>
Message-ID: <63921b46250e2eb8eb9fcf0f8ec93b0c@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org,
 catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org,
 ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org,
 labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com,
 jannh@google.com, miguel.ojeda.sandonis@gmail.com,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053042_750520_22D867A7 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-04 12:13, Marc Zyngier wrote:
> Hi Sami,
>
> On 2019-11-01 23:20, Sami Tolvanen wrote:
>> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>>
>> In preparation of reserving x18, stop treating it as caller save in
>> the KVM guest entry/exit code. Currently, the code assumes there is
>> no need to preserve it for the host, given that it would have been
>> assumed clobbered anyway by the function call to __guest_enter().
>> Instead, preserve its value and restore it upon return.
>>
>> Link: https://patchwork.kernel.org/patch/9836891/
>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> [Sami: updated commit message, switched from x18 to x29 for the 
>> guest
>> context]
>> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> If you intend for this to be merged via the arm64 tree, please add my
>
> Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>

Erm... Muscle memory strikes again. Please ignore the above and use the
following instead:

Reviewed-by: Marc Zyngier <maz@kernel.org>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
