Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABCDF1AAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaCvE5eMc5RQBE6mAyE4Q0K0Q/TvIQSOk9NZdz5cVyo=; b=KiWePNvhQCbrTa
	SNGImTySGtt+TK/deNB4x3cD+swLM13M+f8fOGoOZaRKLQ9BVjuDWBDw5jfY/1nubJPPpO2Tqig/p
	b7LkCbInpYhkQyLb0mXAKSfqbucf5OFB/1eqtRz7FLpgAegUVoWHOA/UEm8RJbXw6ZSn1hfYgFma+
	wW8+/hD3t7r7H2rOUU2XLulixGZ7PoyJJ/GAi9C/kpNjC1vmF+s9ObYLVRWyllQrWpIulcTWw8Q8a
	OTwF9dnYa+m0keruhIqz5kuz/NpLQtfdMWScsusFwmhv+A5TQDj0mrOZqys6YlakCVCWYEDMZn11Q
	3AIQX7PSPJFAv9SENOhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNje-0000i4-OZ; Wed, 06 Nov 2019 16:00:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNjK-0000UL-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:00:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id x28so16023934pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 08:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1GV3/Jdxkg8ik6S7OWfdp2ifwH1Q7AbghamYNHcPHOc=;
 b=VSOaZA+jblM9AJLZwqdcCQod+zmpe8jHwojVTlpMraDgX4jrwb/4WIL5cqdd1d0kTR
 lMt1fPwOvxB8EgRvMAmZx9dl9lR19yeXgQaPeRwnKDGcRJNcgdaf4YHNnOTgrn0j86MI
 MNscn9U2vaU+IAabqYj8T73H0KzZYfjFiAi52EJKJPnYBVg1T5ugyzJOLAkKWUNG2KCQ
 lfWtYITopl9ZQ3QZbf2F9iaSD9E7Wavw5O3tfO200GF2et+Vpp6Gc+yBr2lfCFFMrmqf
 b74UkHIYuLdcSkrb16h1f9jTB4iSTNUREUywfP3jg1NWBvSco9f+BcQ97E2bQin3a33Q
 RU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1GV3/Jdxkg8ik6S7OWfdp2ifwH1Q7AbghamYNHcPHOc=;
 b=tCBf2UAOdEVSeJvz/7ScGgR16CuAUeE++GoUo+IKZw9iOfMrKjhfBJzYb+UfqoY19c
 4evktB9J4AgLCpe/KCu8+YQXRupAkHzRMdEWn7lkMS6iNc1tPC7r/4hMuIDvbTMp7haj
 BURZR9kgXTgZzx+l6fugRv18W/lcKAPXjr3LvPQgefa/8jb+rUfE2tz8oxK/x7tt32kP
 qBWqDe3jvEEA+a3IHPIQJM7BgdRTuOBQ0ZaBcX3qp+ZIP8TJ6kxmPOhGU66lbxWvFEtX
 ohUkMGRhnGmkKUZVKNHxxRX/ozZKFeleeN3rlZVaCaqIB67CFsb0Z9yBUqXJYMz7N5K8
 keeQ==
X-Gm-Message-State: APjAAAVXL8e2KsftEXIRbU1O3KKnyEmJlpmV7056NY8Zn+92197EoLNG
 aCr2atpOskUhtnafStT6KEGRuQ==
X-Google-Smtp-Source: APXvYqxL9k+5TcfM9wckN3H0edDZs1LX2me43REHosrAo9CIFZgKkMe3XaA4FVlF2GlOyeGrmyTDyg==
X-Received: by 2002:a17:90a:280e:: with SMTP id
 e14mr4724404pjd.135.1573056021910; 
 Wed, 06 Nov 2019 08:00:21 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id h6sm3082451pji.21.2019.11.06.08.00.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:00:20 -0800 (PST)
Subject: Re: [PATCH 09/50] arm64: Add loglvl to dump_backtrace()
To: Will Deacon <will@kernel.org>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-10-dima@arista.com>
 <20191106132516.GC5808@willie-the-truck>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <8750aff1-036b-4604-27ab-5e04c7f9eeb4@arista.com>
Date: Wed, 6 Nov 2019 16:00:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106132516.GC5808@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_080022_778239_2FB25EAF 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Russell King <linux@armlinux.org.uk>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/6/19 1:25 PM, Will Deacon wrote:
> On Wed, Nov 06, 2019 at 03:05:00AM +0000, Dmitry Safonov wrote:
[..]
>> @@ -82,12 +82,13 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
>>  	printk("%sCode: %s\n", lvl, str);
>>  }
>>  
>> -void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>> +void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>> +		    const char *loglvl)
>>  {
>>  	struct stackframe frame;
>>  	int skip = 0;
>>  
>> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
>> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
> 
> This one needs to stay as pr_debug().

Makes sense, it's debug rather part of backtrace, will fix.

Thanks,
          Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
