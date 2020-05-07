Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF05F1C8FA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noGRUmFW1nxsi/KPO7p91EK2DaMFVYqKkVWD+Z3RC+g=; b=KUJPMlsC9I7ENL
	APE+vyPXZCFTFP5XLp1c0mqfatNkzob/PtsNCPIpggfnWpjvLZGo83JBK8gQkTZhn4cjxyPCgZXKF
	yR+deKu/pboY9Vc3bU+35FoUw/N1SCa6HiiSLeLSW2+vJNPiYlj4l6f54imOFzvjMAQYs4vUaY0Td
	/GUZ7llm4YT9bzYWemLhMpyVxe6ds8haMzoR4E9cncae1dtXHdeH1asCwUwqDjadLlkqF8fyB6bQ8
	F0K1XEij5WucdIRXw9QVUSnZpIhyBm2eAYvR8gjNN1H9mc2cD7shtDEXPtIGZIZFh20h6wVqt3Ra0
	woCENUE1GORwYnI5Gp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhdt-0002V6-2F; Thu, 07 May 2020 14:36:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhdf-0002SM-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:36:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so6671035wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2cUePzGWzDDGYMdSJecoGhzZI0bICDSzA7fgbQwoVdI=;
 b=va8IcNz8I2zqjE9CHsCzAnM6YWsHCkT+6BNuJ8fRsAg/QlH3lUCW+YkNknR8VqSvOG
 E/IC3lRkd0ZwHQalan9TG1D4/w2fUTyiZGxS/Q17YpXKcCbyWWsxSxx0xFlWxdzfx+ut
 ysYussSGR3GqsKtZzvNvKz5uEtHfKa8FYgUcDiMWE1hpFlB7r3M6eaEtZRKXOjsn7QfN
 oORfrpfCEN3NfkyQRARTPBZf4GQ7PEgSTsKIsFDcD3penmf6YN2IBJ8mFLFunzaBnjmu
 tuILSOMKhNChWN19gJNhOvmcEv+JElMcVgODP4coW1YiN9SIPkaGu9JYdaOSup2+p4YN
 6M5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2cUePzGWzDDGYMdSJecoGhzZI0bICDSzA7fgbQwoVdI=;
 b=jGhwDMGR8NIPAW+EOE0sFZKHva4luAb7MST+2uW3XuH3fNVnJRVyVCX14qNYMWRGZQ
 RWWbLP5BmsiG/ZL5LH+x3A77qOXb3sNiSixrxcJDsoqs2CeXURtoFWgkborKjZuX4LwL
 uF0OMs42JCuuGMAhIuImwFOPT+Aeq5HCACy732r4GXoKzXPH7ablrr5rvotNhH9LBUCj
 pKoLFVk/DhL5hE9y7Uwo8lT9x9oae8spTQAjFUMl2RBphphrfgobGre6nsAjzeA4htJb
 skcXND5WbQnMWn+MBouLczW+7dvDc2hcZejXo25pS1uMfhfO7FQnOqarxNY/AMJjW2PD
 9YQA==
X-Gm-Message-State: AGi0PuZCGEYWSQLkrSvEEwWbEZvzgnG0uNLOGsh/P92I+T5Tsc7vYDxD
 liGoeIQ65Rz8cu+XxialCM7qWQ==
X-Google-Smtp-Source: APiQypIg/E6o9sgqmhLM4Cgv9qszquDB3MDl0xGyH0m0ulxsGd7+lcGC7cQvQySga4gTWRe+HpOBog==
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr15498170wrq.171.1588862197885; 
 Thu, 07 May 2020 07:36:37 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id h17sm8450409wmm.6.2020.05.07.07.36.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 07:36:37 -0700 (PDT)
Date: Thu, 7 May 2020 15:36:33 +0100
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 01/15] arm64: kvm: Unify users of HVC instruction
Message-ID: <20200507143633.GA169263@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-2-dbrazdil@google.com>
 <878si3j13w.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878si3j13w.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_073640_677057_47E9AECC 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 David Brazdil <dbrazdil@google.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 07 May 2020 at 15:01:07 (+0100), Marc Zyngier wrote:
> >  /*
> > - * u64 __kvm_call_hyp(void *hypfn, ...);
> > + * u64 __kvm_call_hyp(unsigned long arg, ...);
> >   *
> >   * This is not really a variadic function in the classic C-way and care must
> >   * be taken when calling this to ensure parameters are passed in registers
> >   * only, since the stack will change between the caller and the callee.
> > - *
> > - * Call the function with the first argument containing a pointer to the
> > - * function you wish to call in Hyp mode, and subsequent arguments will be
> > - * passed as x0, x1, and x2 (a maximum of 3 arguments in addition to the
> > - * function pointer can be passed).  The function being called must be mapped
> > - * in Hyp mode (see init_hyp_mode in arch/arm/kvm/arm.c).  Return values are
> > - * passed in x0.
> > - *
> > - * A function pointer with a value less than 0xfff has a special meaning,
> > - * and is used to implement hyp stubs in the same way as in
> > - * arch/arm64/kernel/hyp_stub.S.
> 
> I don't think any of this becomes obsolete with this patch (apart from
> the reference to 32bit), and only changes with patch #2. Or am I
> misunderstanding something?

Nope, I think you're right. To be fair, this patch has changed quite
a bit since the first version (which did change that comment a little
later IIRC), but David has done all the hard work on top so I'll let
him answer that one.

And David, feel free to take the authorship for this patch -- I barely
recognize it (for the better), so it's more than fair if you get the
credit :)

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
