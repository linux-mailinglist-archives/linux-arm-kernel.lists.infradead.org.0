Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EAB1B1017
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6JfEnyTwmAi6JDP4FZJfX2bKeOvapeLA2qlliT9IDI=; b=ABkwDn/GmLvGiH
	HfGMcSZ/bSrM2vdpT8HB3EoFOyoU9rhEq8EuA5anrS7X0q1KYo4/GyGa3VYGwn69yTQM4vvIvGMn/
	mYfuwTEbLUA46QN2LqQp1+Q/Ji1Swja8MkKmInKWfwTcZxXRtylvw1h1uJLOPjm04phVjE2aVzPaC
	FTDLOyWau8z1NZ6MX6E0pg/9rOjjnOCYaSp4Mlsy7740qQJWWyRkGI3Lo8kZV4z6D89xeAMO6pSbK
	lupYA15iMz09Wl8XSmxUEsqvb90BcZ5jClkY6e3FfM7zflalvjwaEhmYhl9IMcibI1ml+uL4avv4o
	sYU4njkdjc6CYtuRdfXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYMc-0005Dz-VT; Mon, 20 Apr 2020 15:29:38 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYMR-0005CW-Rx
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:29:29 +0000
Received: from mail-qk1-f170.google.com ([209.85.222.170]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MQvH5-1jcyGo3zhH-00O1E5 for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:29:26 +0200
Received: by mail-qk1-f170.google.com with SMTP id l78so10996793qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:29:25 -0700 (PDT)
X-Gm-Message-State: AGi0PubXMGkw0ofWhF1rOSqhp/sEUqLMr1LNYbi/WW5rXk+vJT2Xuk4i
 wOtyeEEQAF5883QFWtA1qzZG90FHvI0rq3zFMQo=
X-Google-Smtp-Source: APiQypJrsjj47rLO7etVcwIzpCXHKkPAXIea+LEbdmXIAe6seFlFpi5fTqEA4RCqERoRKbHJMRnMOJveoPM7mHMro0I=
X-Received: by 2002:a37:ba47:: with SMTP id k68mr16835085qkf.394.1587396564640; 
 Mon, 20 Apr 2020 08:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-10-robh@kernel.org>
In-Reply-To: <20200419170810.5738-10-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:29:08 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1PFd4nb0twHsNkXJpecfWMqpyuGb+pJiMNBXwjtK+iTg@mail.gmail.com>
Message-ID: <CAK8P3a1PFd4nb0twHsNkXJpecfWMqpyuGb+pJiMNBXwjtK+iTg@mail.gmail.com>
Subject: Re: [PATCH 09/17] mfd: vexpress-sysreg: Drop selecting
 CONFIG_CLKSRC_MMIO
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:eCLYg53HP67iJOhgy4NqarWMT5JsMYNcvXMbMfpYyBpQexSQ0RG
 LAlVPcH8ldtfX5fOrQpdJctu/uTC0+/nBk8Dwc+7Y1ozzI+exsIR6OTb6jY5ohoWZA0K4ny
 EkQlSYw1UWU5Hm2sgOaV0Giu0us4SsU7WinI52nPIrpG8JQA2YqMsxKxvZo+eVA7NA84APT
 BaiS9SWFpGhFhaUkL4O1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pUS10N+2Lu0=:SjWGnvQPtIcoa95ErC31lJ
 Ay03APn8VJHDTJP4p6zfPKjqtr0DyyVgbG+MMwnJdWxusVVFl7oWzn2bQUORucCngUYLuPg7w
 gyZ1xMnT8BfYYxU/djiu0i2ny+vdzx2CYRlJh1qNXW08vqAOkb1cs32EBq6JdoFsCUkG2KG0r
 aKj2QHW3K/phDNLKbI2dVqwpeFieMJ16w0nApHrD6U0SnOEbUopmGscEjITt1QRCKqb4c6+oa
 Ihvkq7lvkLUhvXIJaj4qzhDo3p+AIMTFi5D3B0CgC+2qKzEyPVLHO7VqTRJzEf8z/GCPdD3FE
 sDJ7OSbSivvz+Idhs1TzBND7n2tj9IaXQg3pEJJb8YokZG2DW5h4FPVLmRgpWcTSfEKUunyY5
 EHXOjNPqoGZlEP7R41PeMp7Id1Xoqao8Za8Gk8RUsBkvcT/eL+r+VLazI0GH7TdGSn4IcNvp0
 20rGQUzCj+zsXBh7ePm+i8qO2TxzLSjjsaceHaQHPQOzbvcU82p+sKOjpJuoWyG9gwaxYAIbt
 3KD17guMLjSR5WZP8Ni3EgC4Q9TjQ3wCOGV01KyfZ3UU9ot+s2HsCY/5a8JXv9bXJXGIoO8BY
 IYg4hyl8p9DgM8rhFVt1qIub2yuZoQjEDwUmVCIgfJnAaZiYMNXT+LDl8/fQ7ZREK3kh4xtPw
 M0SQfeYYiTwdeZIM4dIC0I1mRIbV0vKkiW4nBEbK1D9Pu2moOckyTfEkHWHWPdiLXbuC/+l+U
 zEvQZopzZThT9kjxf10lrCFujUKqmSXF/nSQURePFY71xooY/ZXTmqQ4Sm7NNe2zaDKX0AcJG
 xybdE/BLSfeDgJL/vKki72AxLunLDalJapiv2OuQv60dv1JK9U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082928_196678_636DA0D3 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> Nothing in the VExpress sysregs nor the MFD child drivers use
> CONFIG_CLKSRC_MMIO. There's the 24MHz counter, but that's handled by
> drivers/clocksource/timer-versatile.c which doesn't use
> CONFIG_CLKSRC_MMIO either. So let's just drop CONFIG_CLKSRC_MMIO.
>
> As the !ARCH_USES_GETTIMEOFFSET dependency was added for
> CONFIG_CLKSRC_MMIO, that can be dropped, too.
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
