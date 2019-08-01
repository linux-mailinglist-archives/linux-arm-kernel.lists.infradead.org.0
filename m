Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BDD7D3BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao51DDhfHgOGAlTDsRsZG91InjR/okPt0ErrESDEuqs=; b=FcTRfj0tirR7Gu
	kIZIvfcRBwHhPb3SpNXu0p03pTwtDgYy93f7iMv4VYl3Z+d1kfEDBkQoNgnrMhi9cPmKps+xu3shZ
	r3rhqdLfoZF0AYCQzbGtdbeWRgt2cxjK+lWwCHb/GcUcdXw9ZuVaEI6tUEf/3NPvyoDcKvUOXk3Aq
	Jpj4E6MvfhcAmndZLFa2+CDkR+rtbpkBiV8gHILDGDxKpa86vTcM1psFJk0SRlLbSRyZC+64UTKG/
	Ile8L3cB6kK4aqGZuGEF/Qa0YMsMuOeu2IZhqMFW2hDkO0KdVTe35Ia+uEMZj7fbzHux+9HdON1cF
	+V2ejEA2bP+J2cLKzGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1sy-0004zB-HT; Thu, 01 Aug 2019 03:36:12 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1sq-0004yP-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:36:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so31463942plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 20:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=agxFsVFMrS4Uv8rkJ6+rXdsAOnVlA+SAVw+IjLOkFdU=;
 b=bUf4iEgLchiFXfhT1xmjReg6vuHTTMMnUTB4Y363ruCfk0w5x6lY6EiWkCv1iQTvfw
 X4YWjfgyPWpIFC9rKn++rTubN0mkZR7brGnZLLm2s+1NYTM/E4BE55nu+YQ6Ab3Ly9pQ
 WMCZRPQffPZuHyhc99gwM4wFkUavVG3TvyU5MrKjdLzbHQ/Z37n2YZ6adBpj7rYuzPl8
 SfvxW646djXWNNfxHFQNbHRnxaWIVYa6SqB1oRmS2QW/XuJ26OUoYUZJRwo6TnaiSX4A
 W0pjKGYGTaGKFJXX6RZelAdlYFloa7BQiqsDoU84SG8vMZxY7+lXWmf1n8GmXk379TTf
 wX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=agxFsVFMrS4Uv8rkJ6+rXdsAOnVlA+SAVw+IjLOkFdU=;
 b=ZDRWkK6/kr2KkQJT7lNLqcZPDHtpBSXSwkhN7YKmE+5WiLTACKIkPRT6gv0jtBcE56
 QgV/FG3/kGZPPF+QfzfeEE53XRmBABh0Bw8NDyDUTZyxgGDFjZHRbTBmhK5xRhUsycg2
 gn73sLKLxsB3O0X4Tkl7MRcvy01cZM8f8cvMbQVYZ2lQT5RCzUgpwjohyX7/rfbEOw8y
 dbsxePZYTSE9L7c/kHY5zzBtCJj/0zQA8xukrONd2Yjq18o32cRHaFWZEigKsgPD9b1o
 MXCIjfPZL3r48JlZxke9/pqgxZI7Abi+jkljZIpDQqAzCJKly9OkwJT0l0mCkV5YrpQ8
 os/A==
X-Gm-Message-State: APjAAAU60BR0dhRJ4y8RiYS0egn6RoY/jKC/yglg0vz8Y5V37Pdd4swp
 zo5Lh3xjQKBoYwtYZdhtGM1zIA==
X-Google-Smtp-Source: APXvYqyn64QqVAUXJUwPqvzYRKfETlhmOG6RXrqu4jKI3gLhnUT665IpkZH5AA2VrzxpqDptVQy8fA==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr77875171plq.67.1564630562466; 
 Wed, 31 Jul 2019 20:36:02 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id j15sm69478055pfr.146.2019.07.31.20.36.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 20:36:01 -0700 (PDT)
Date: Thu, 1 Aug 2019 09:05:59 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 15/43] arm64: Move cpu_die_early to smp.c
Message-ID: <20190801033559.23bovxwguppb7bbr@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <dd031e0851c01a0cfe275c05dc24935580d2fd78.1562908075.git.viresh.kumar@linaro.org>
 <20190731123532.GA39768@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731123532.GA39768@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_203605_690790_DC0A6A78 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31-07-19, 13:35, Mark Rutland wrote:
> On Fri, Jul 12, 2019 at 10:58:03AM +0530, Viresh Kumar wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> > 
> > commit fce6361fe9b0caeba0c05b7d72ceda406f8780df upstream.
> > 
> > This patch moves cpu_die_early to smp.c, where it fits better.
> > No functional changes, except for adding the necessary checks
> > for CONFIG_HOTPLUG_CPU.
> > 
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Acked-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > [ Viresh: Resolved rebase conflict ]
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> > +void cpu_die_early(void)
> 
> > +	asm(
> > +	"1:	wfe\n"
> > +	"	wfi\n"
> > +	"	b	1b");
> > +}
> 
> Rather than open-coding this loop differently from upstream and the
> v4.9.y backport, please backport commit:
> 
>   c4bc34d20273db69 ("arm64: Add a helper for parking CPUs in a loop")
> 
> ... as a prerequisite of this patch.

Done, thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
