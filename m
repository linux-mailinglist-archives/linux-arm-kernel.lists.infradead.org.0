Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394DB1C5F96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nPYbF5EIafr2L7trAi9Pias1Ak4hm5l3e4hnD1P2D24=; b=X1ffjYlIDeV7W7DiYO25ShgjY
	JVEg48i9wqQUDQjyiHlfuNlykHbimtgGwOqdH9PCGCZqyOQFLWjGipCGgxzfXscnT90ZnR+o0ZMGS
	kQcsAmuy+wY2ltAfTmGkgBKyKFASy1nWV/q1zN8LI/tF7/msJLDjduATjW7oi/5eiOMV2WOXw8Jfu
	x8LdjJMVboAf4X77/qrLuPsGiKuKghPY01UF1yeS037nx4ldmVg8cZY5ImROI29ifycziMGoo6LKr
	i1/QALk523BrNh8r3urDeeDKEUMat0FF2csyNTUE8iNkBMbCLMspW2HVGC+PRRcpwn+6weYlqia61
	+Uho5lY4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1v2-0001ko-81; Tue, 05 May 2020 18:03:48 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1us-0001iq-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:03:42 +0000
Received: by mail-qv1-xf43.google.com with SMTP id v10so1488730qvr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 11:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Cle1DWcPgPwaZVS6K0GMi0byjOYCQs6ur6FJmvddoLs=;
 b=J1uhBg+3MkuM1j9tvj0WGa7CGjzz9eGSspQTqVRSKqIdeC3wyzadBR3U7aKzH5oULK
 1NBjfx6a+kMXoR0J517DVHPn0CVf6YL9au+1tCE8PnDcWU90F52qXsF3oy6DnBiG/fm4
 dMGFzOJORy0Gxy5s+E3q2lJ01+5YkrzdLkpM6mgb058B182LFtrBfwEJoJZZaCLaXOf6
 ZV6IWTrmh7mUs0GBUEpPi+H/OVLR8nI5+T8OWbGeCrvk1S3TCuFPycFL2XDyiZXO8act
 npVP+w7T+3cyPoxbYqwTrIn+nJsCzBsEpe5mjtm5s3MW73yagI+0b9NjLgfUbh4YmcaO
 gVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Cle1DWcPgPwaZVS6K0GMi0byjOYCQs6ur6FJmvddoLs=;
 b=imC0V8ejjFpvq0hqOnfQJv+vlzsSHqS8eJmsq/h93sx8gHC50z3UKBvmk+KvaMj0Yv
 SWGcPytxCzFkhSvsK42lUSPdSLdn3LOB5Jp/cNUIt/ZTmYiQUlXtl3aoarEWNGkyeS8T
 I6bToMMv9KmKoxfWM5qFpkW67GuFVnofUK9F7mSgGsQgs5nUXjybfu9dKmuqLNeBdmsH
 tlf717li/+4ZAeeVmWL3SEKVh0LPW0YWxbRQ1U4HAbrnvlujr+NQHxbwy0QoVxsrV9KR
 ip4KwsYDmX4IfEeu85RukZ5UMARB8dLwKFSya8pH94LbwHX+Xmckkihl/LaOC90CODe0
 afBw==
X-Gm-Message-State: AGi0PuanOkJhRlSyoCQM2IBf6lIlQJjzN0G/6UShvNH1cDNW1tOXNe31
 eHW1SYE8+vOQgBqjjqjABZBCfQ==
X-Google-Smtp-Source: APiQypJa6N5F6cPRll3YQL8uaSBvMyiPNIl4PgWRh95sWBVd9KkFeg2UCfAEuV2oheS/qEcgVKCSDw==
X-Received: by 2002:a0c:8262:: with SMTP id h89mr3848628qva.173.1588701816621; 
 Tue, 05 May 2020 11:03:36 -0700 (PDT)
Received: from [192.168.0.185] ([191.249.236.107])
 by smtp.gmail.com with ESMTPSA id c26sm2326833qkm.98.2020.05.05.11.03.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 11:03:35 -0700 (PDT)
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <b78fe0c4-f89e-9347-7d7d-a68085f70b1d@linaro.org>
Date: Tue, 5 May 2020 15:03:29 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421142603.3894-20-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_110338_652893_05A637BB 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/21/20 11:25 AM, Catalin Marinas wrote:
> Add support for bulk setting/getting of the MTE tags in a tracee's
> address space at 'addr' in the ptrace() syscall prototype. 'data' points
> to a struct iovec in the tracer's address space with iov_base
> representing the address of a tracer's buffer of length iov_len. The
> tags to be copied to/from the tracer's buffer are stored as one tag per
> byte.
> 
> On successfully copying at least one tag, ptrace() returns 0 and updates
> the tracer's iov_len with the number of tags copied. In case of error,
> either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> page.
> 
> Note that the tag copying functions are not performance critical,
> therefore they lack optimisations found in typical memory copy routines.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Alan Hayward <Alan.Hayward@arm.com>
> Cc: Luis Machado <luis.machado@linaro.org>
> Cc: Omair Javaid <omair.javaid@linaro.org>
> ---
> 
> Notes:
>      New in v3.
> 
>   arch/arm64/include/asm/mte.h         |  17 ++++
>   arch/arm64/include/uapi/asm/ptrace.h |   3 +
>   arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
>   arch/arm64/kernel/ptrace.c           |  15 +++-
>   arch/arm64/lib/mte.S                 |  50 +++++++++++
>   5 files changed, 211 insertions(+), 1 deletion(-)

I'll try to exercise the new ptrace requests with QEMU and GDB.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
