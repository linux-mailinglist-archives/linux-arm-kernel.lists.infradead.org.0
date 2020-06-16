Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121F31FB275
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LqquiplkD5InNy9PQKBiuhE8wTFoCRZnBmttoYblCo=; b=tVAFTOg4DYAhYS
	Tixw+cnvVDvQe1waHuRQ167jpDIy3xGYRBFS2Y6pIYV5KZlXe9xlxt9uj2jz9h9yDgXc0OHrgL5zC
	mNPMnLY7fDS2uye/66n2atwCHv0/l6Vkd25RCzcj8XAuRHkx6EoTH3Ut/eBLPR2HD5AdFS3wf62u0
	sLnohoXvHKLgZi3Xu/wdLdHyMf9RtZdqbsAnrl8Tafq3bTtCxyWFEqbB8HjQbRFWCY/7Y6uqIgrfV
	EXVLQt/CsnGQXRvQWlBu7k3pgRQ9ipKUHeiv0OEjB2DPDttJ112sQ+WUs9orvL5cMQydAyLR9+JTR
	7radLR63vHVn0X7rWXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBwg-0006Tt-Ox; Tue, 16 Jun 2020 13:48:10 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBwO-0006Pd-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:47:54 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m2so1614496pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TUln3eDvcCJnsTxP4o2nCcbHN366GT2XubrxAw/PwPQ=;
 b=U6/hmvvbBbi9/FmqWEyN7ARc+R7Qqp9XN3x/VwhFJBb4m2JgiRW7JX/moBz4mnQgZm
 WPlOUeu+0igHuD55YwEruLd1450HsTM1F0FBQ7ShKl8YTQsser8xdFrstxqNSMRYlPNl
 ZHjjjEYU/uC0c17FfWG0iljqCjCV+68N/ZbFe4w7wsTgIUtVxTIcHLGZq8nKyqMAh2cP
 GO4lbPVN1quzQkJulkGhxhz4pTvLLjqr3MA882ZhK3jTb66EMyR1yBvsowZ0hY97mIy1
 k3e7T/NBrnzQks5Z+2r8aCGXg4Cs+sfJ00+ZdD85ZaEjeSUMpLhcnGJaqAA9SFu2ernE
 WNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TUln3eDvcCJnsTxP4o2nCcbHN366GT2XubrxAw/PwPQ=;
 b=n+66q1BCe+YYyOg5JclDbjq4EaKMqSPMs1LIb2QLrFbf1PBFMXKL3v3/YUP8mW3SXZ
 uSAib6qelHDoAk7X0ocHkfJ9D3WbLLw58ZQuZpH3cNe+3ybZVfnKHNsfqM3GlgviycPj
 HWz7NJORLAIJtUX0p8aiSPD33lrbFLB8vloCQNTM6yjyNN64gcj7igZlhxNyb0nlBRIn
 7aVPlSmutp25fwV4jGsto+8HA440Z8iteCif1If4QU0jKcvC2Av+C//5vkMpwjwiu9la
 Rw582wCAxlHchS8X4O7Mx43PReA2qadRbeOBYqkg1EZ1OD6ruQP6dBdDIemnMJmOLFvZ
 EfEw==
X-Gm-Message-State: AOAM530d/Fjv3LTR4kezJrteBbQ/mYekVFTVX9b65qtIv7F7fO2z4LED
 bzzGcBf72cq66ipQZyO3iZ7BbQ==
X-Google-Smtp-Source: ABdhPJwh0ibun0ESRx+TqhgJ9AGgABOCSZFvigx9X6GzGraON4S2C0XpvGXtaFdBeNA6eAekB/neHg==
X-Received: by 2002:a17:902:9b92:: with SMTP id
 y18mr2057706plp.228.1592315270891; 
 Tue, 16 Jun 2020 06:47:50 -0700 (PDT)
Received: from ?IPv6:2a02:8084:e84:2480:228:f8ff:fe6f:83a8?
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id k12sm17030398pfk.219.2020.06.16.06.47.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 06:47:50 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
To: Mark Rutland <mark.rutland@arm.com>, Andrei Vagin <avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
 <20200616075545.312684-3-avagin@gmail.com>
 <20200616112418.GC11780@C02TD0UTHF1T.local>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <d16b5cd1-bdb1-5667-fbda-c622cc795389@arista.com>
Date: Tue, 16 Jun 2020 14:47:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616112418.GC11780@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_064752_862497_040C32CA 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 6/16/20 12:24 PM, Mark Rutland wrote:
> On Tue, Jun 16, 2020 at 12:55:41AM -0700, Andrei Vagin wrote:
[..]
>> Whenever a task changes its namespace, the VVAR
>> page tables are cleared and then they will be re-faulted with a
>> corresponding layout.
> 
> How does this work for multi-threaded applications? Are there any
> concerns w.r.t. atomicity of the change?

Multi-threaded applications can't setns() for time namespace,
timens_install():

:	if (!current_is_single_threaded())
:		return -EUSERS;

Thanks,
          Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
