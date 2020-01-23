Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756DF146FC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzlMv9QaU1mbFUwJ7VsmtrXbBdvUQ7znyVXZELuNWpo=; b=S6ArIHK8qFqbkR
	bBJc5jiXYyemwh6O7i+T1l4EfanH4cG13F04Tk6V64iE3lonTucHkv/tbQdaTgxBlKXpAhsC3+bWf
	nmx/zvLTT+DjvgefrUrbE3uCD3+/wTm2dNGI9Pd/6NJcZuUhGID649eb9svfABLEIf1FhJP71B4rl
	b7+Cam0RFjiYYYC456N+8NBBiRRL2Eg/YATNL/h4zm0emUMblVjKnwykgk6GFjwCMaemYB+HuOPNQ
	5KTV3hm86t3M+SIzCOX8Sgzsp/oWKNPJ5aiFDGzCk5jm8agCmNpq4iakCpcCacMnPM0+f45ZwYgyb
	BdQZpoews6idWUSpdGsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugKP-0006eo-TA; Thu, 23 Jan 2020 17:31:37 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugKG-0006e1-Oy
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:31:29 +0000
Received: by mail-qt1-x829.google.com with SMTP id d9so3048765qte.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 09:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=rBBThgXC3RlRJATFU2MQijt5WNYWxLR5qQsGqFoA6wA=;
 b=XvGvEarOb01ZEusXNSWgTQPqXL49NPn7ZdBHl1xDJaj4P91lqVHNgPsdqyfzRxxM9q
 QWhIY6G3RfbdNuPfN3VY+KvSQOFyF3VyVufw3Whe5jToj5GHdp4dU3hgBwO1U27iO0bl
 8EzOMA1a937f6UGkiS9HfLzxNDx0Q7wVHE8wDkqCU9uZhb1bP8/k41g16s+snBOpEcTB
 HtFkVwN5Hjsi5BPTzD77DOIAwiDW/lQ74bBAey5s2Dor1BNiqRagXDcmoRbbcg11nKyG
 eNhS/2h81T5gq1KD4+K2QCr6M+0DhgoVYUXvCd1xG15NQ5iEL3qB2jKK25A5XqbTNMLm
 D5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=rBBThgXC3RlRJATFU2MQijt5WNYWxLR5qQsGqFoA6wA=;
 b=RmtWn7tU3FC6j+z5xUD0/SSqa1bNqrVtBWdjk0DjCVT1AUsswi8CsnJpon2cpoVzHE
 8U+SeNT8ywkTH7Hfc9X56hL9jkkcxIwo8loKwbQuJq2ZCZdSPHlQptrf0g6yBD6DjmOE
 TOWQdy/d6MJ4nGF84Jd7EEVWdN9D78JkOk10v8LMzHIAQ4EQ+0HLkOSZ0Jxoonp3C2/c
 3wLaekQozbdeXhJY2xgc665IvNIPTqQp9Q93K90bViHrVl2LcqJ6bjUFs/yNTUvDVcUw
 XMIcWEIk+7OQrhNbflOwVNDcGfirE3aNUjtk+lSDQRVN74V6FNzqDmpYx6MV5wpMCJHr
 AlAQ==
X-Gm-Message-State: APjAAAVigw1NESRksnaIOSKWifThnzBBJHrsOve8JW5Tgam3mQevoBqn
 AeLco3l9YAVLA0qs0N/9xNXjkw==
X-Google-Smtp-Source: APXvYqwrAlyp/Lf5BA048RSQXVW/8wtLXFtugWLJuAfJ4/djDPXGUFxMFAqSZR2WzsgC17OwYTT7cg==
X-Received: by 2002:ac8:745a:: with SMTP id h26mr16566059qtr.320.1579800687406; 
 Thu, 23 Jan 2020 09:31:27 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id q7sm1194556qkc.43.2020.01.23.09.31.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 09:31:26 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 12:31:25 -0500
Message-Id: <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
References: <20200123165614.GA20126@willie-the-truck>
In-Reply-To: <20200123165614.GA20126@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_093128_837184_40510011 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:829 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com, longman@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
> 
> Damn, the whole point of this was to warn in the case that
> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
> the macro argument instead (e.g. ({ (cpu), false; }) or something)?

Actually, static inline should be better.

#define vcpu_is_preempted vcpu_is_preempted
static inline bool vcpu_is_preempted(int cpu)
{
	return false;
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
