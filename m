Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA31D4419
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dG9q337jRLrGdo8E+urN4pEGnWvfCPQVaHYQ2oReVkI=; b=XRtw7Nsdk3ylgf
	KQholgNmOgvDvCMFtZP0q0Sr4vHLzF1hNtwb+As96BLNvrINwNPslUyZ3b4bDVg1pQ1y9N74GrwWa
	37wD85KF20/9gJxKpJcOmYWmQq6+XFUYzhiFi4IgReGbqvWyE30CppA8ZW0ZcnbNIvRLGsh6OQqrK
	K1EkJthC8QlpGS+G1xzGQFSyjPx9AsmEgfhU3/8V7+/PUDY4cmFX+rdkyM1i1b64wBakhxguxXm06
	ftsQD/LcFpxBQQArli/q/thKyU4IE9JtrHJDazmRYLh4YPcfmA9Rs5BOaPNq58QdBcIEDPrJCEfLE
	1qUyjFjTRaC+ibUhb8+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwnb-000105-MI; Fri, 11 Oct 2019 15:25:47 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwnS-0000zH-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:25:39 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y204so3212743yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 08:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hjVVG+LCl45Ap93nqrjHPaMZ4hTq+jdNOcLl2h2isR4=;
 b=E0dKoxgvUXWjFVVVks6GzW0TjExH0yK1lnbi91wV8UOgJXhezVXn6TKlZ8HQUqA4LB
 Ocx5BzIjuxG958WumzE9PHeFIKmdin8uJ80H+haes7A8Uss5tac+84Bu78gsZut6QXAH
 lAk8SDxXuvS8brS+1lB1ksHLQ4k/RGyUL6wLn/UpINn7yR8VT+jswqGAyCr8ZhDTczre
 5iQpR0zvXXa+jUNmN6dDOszzNYTbsXpTuYHQnlbsTKD8jioNaXyu0auTjxbbs/cFails
 zGhGXYBrnMUWJ8wU2JABRejO0vxitMy0Ol37RK7oCzGgGTyKxkikYq8uCPF7weNSTt9/
 JvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hjVVG+LCl45Ap93nqrjHPaMZ4hTq+jdNOcLl2h2isR4=;
 b=iPS/NppVWWNM0090HXzvvPbf4JzQB1sKMSDhJUjUoOcN2SWsW3hpRckqD3NZuWvIOl
 u4Ig9I9P7Kl32TwwPrh1eOGxpBlOexLnm6mRuNPyRrr7vnQ6IdGAJ+tWWwy2d4sBN6Se
 JN5TSyr3Te249jzPjD6kQs1vIHgF76EU5qevwS/RYuyCukPdR9Ni4WLVznz19kRh5TvQ
 g4qb0VMPrzo622GZxARx28g7f3nOz/d1x3578NDj3xJGy4UqmAvx5g+DjWQswsWB1Tu7
 HnOFUFsCOg0bBQUUqRhtPcduXffJlQBkQI3n+l2M38pzNjrrBX0ZcER9kmvn+bwcNq5/
 9Jew==
X-Gm-Message-State: APjAAAXGkP7hu6ApJrjgk1yDZH09ld93wzX5d+/rCs6WHbH6LOkmL0Ra
 DwwBhsf9WIWE5m1mcLHnGEsBMWavsMk=
X-Google-Smtp-Source: APXvYqysY7dY5L83dfJIuaCR944gcYiW6Lfi2SqxpcDRGH/9Id6HpLLJrRLEW2oTFhfQatKUSjZZtg==
X-Received: by 2002:a25:2d49:: with SMTP id s9mr9205759ybe.450.1570807536250; 
 Fri, 11 Oct 2019 08:25:36 -0700 (PDT)
Received: from [192.168.1.44] (67.216.151.25.pool.hargray.net. [67.216.151.25])
 by smtp.gmail.com with ESMTPSA id t82sm2316781ywc.26.2019.10.11.08.25.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 08:25:35 -0700 (PDT)
Subject: Re: [PATCH v2 05/12] arm64: Basic Branch Target Identification support
To: Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <20191011151028.GE33537@lakrids.cambridge.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <4e09ca54-f353-9448-64ed-4ba1e38c6ebc@linaro.org>
Date: Fri, 11 Oct 2019 11:25:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011151028.GE33537@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_082538_679328_08616060 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>,
 =?UTF-8?Q?Kristina_Mart=c5=a1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/11/19 11:10 AM, Mark Rutland wrote:
> On Thu, Oct 10, 2019 at 07:44:33PM +0100, Dave Martin wrote:
>> @@ -730,6 +730,11 @@ static void setup_return
>>  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
>>  	regs->pc = (unsigned long)ka->sa.sa_handler;
>>  
>> +	if (system_supports_bti()) {
>> +		regs->pstate &= ~PSR_BTYPE_MASK;
>> +		regs->pstate |= PSR_BTYPE_CALL;
>> +	}
>> +
> 
> I think we might need a comment as to what we're trying to ensure here.
> 
> I was under the (perhaps mistaken) impression that we'd generate a
> pristine pstate for a signal handler, and it's not clear to me that we
> must ensure the first instruction is a target instruction.

I think it makes sense to treat entry into a signal handler as a call.  Code
that has been compiled for BTI, and whose page has been marked with PROT_BTI,
will already have the pauth/bti markup at the beginning of the signal handler
function; we might as well verify that.

Otherwise sigaction becomes a hole by which an attacker can force execution to
start at any arbitrary address.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
