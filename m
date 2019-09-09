Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA376ADAE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9gi/+AMdds7XUzyanQ05GyU0MmwkvCAFBDxgFYJ0tVY=; b=Jxf3mxvuGUDiISfvfb5c7+czh
	cGsgG3wFmDy8lAk4uYGZ1hQoACn5YVq4PD5wIzm+EMjKxXVJQcbntnGOnaCWrB7b8lhNy/f08uqV3
	fZokbhACunQUC/PPGmg+AQ2T09sw6kV9cz8u+3VB+EzyuNspX62haT96SaBiqIg31gLeQBh3LKKan
	fiSXzISBgiLWpF4XNvvEUrQ3ctuXJFEn3trnxjtSJw8wLxb6zwlPeX/iACcKT7IgEwrcTggoPsBcy
	KILaTnZb93D/ml/zjAVWg89Twjo9cJbDOF8HIkfN9EfY8MvSNo7/tsW5ov+KZ6L2etuHUMWXay9SJ
	RlpQoupfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KPO-0007lM-G0; Mon, 09 Sep 2019 14:12:46 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KOE-0006s4-11
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568038293; x=1599574293;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=gi28FrqFGKtAvBvYFxkZYst96FU+E+hOzXKbUu21vJY=;
 b=NgiYz6661i710lrns0RQQhBY7WORviGbrfTKjHpt5W1lMAUqyujP1QvJ
 TMsUQXD8a/Qk4inMT8mx1gmKEG6LwVjyzq4Ywt0U6JhswsFkIwMOis+NP
 lIZpExSCBUZlLIlF38B8/NNxQ9Zg35i3cDBVWd896pTS6piUNu0DixtC/ c=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="829310330"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-1e-27fb8269.us-east-1.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 09 Sep 2019 14:11:29 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-27fb8269.us-east-1.amazon.com (Postfix) with ESMTPS
 id 3BF3DA1CC0; Mon,  9 Sep 2019 14:11:22 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 14:11:22 +0000
Received: from [10.125.238.52] (10.43.161.152) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
 Mon, 9 Sep 2019 14:11:11 +0000
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: Arnd Bergmann <arnd@arndb.de>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
 <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
 <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
 <CAK8P3a1NVGwYa1bw_vjBatd1xe-i875X1Vq1M+2G_Zxd2Oqusg@mail.gmail.com>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <8f7840c3-a682-04a5-18bf-ac7a723725b0@amazon.com>
Date: Mon, 9 Sep 2019 17:11:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1NVGwYa1bw_vjBatd1xe-i875X1Vq1M+2G_Zxd2Oqusg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.152]
X-ClientProxiedBy: EX13D15UWB002.ant.amazon.com (10.43.161.9) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_071134_133493_75ADA3A0 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will
 Deacon <will@kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick
 Venture <venture@google.com>, Olof Johansson <olof@lixom.net>,
 David Miller <davem@davemloft.net>, David Woodhouse <dwmw@amazon.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 9/9/2019 4:41 PM, Arnd Bergmann wrote:
> On Mon, Sep 9, 2019 at 1:13 PM Shenhar, Talel <talel@amazon.com> wrote:
>> On 9/9/2019 12:44 PM, Arnd Bergmann wrote:
>>> On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
>>>> +       writel_relaxed(0, pos->mmio_base + AL_POS_ERROR_LOG_1);
>>> Why do you require _relaxed() accessors here? Please add a comment
>>> explaining that, or use the regular readl()/writel().
>> I don't think commenting is needed here as there is nothing special in
>> this type of access.
>>
>> I don't see this is common to comment the use of the _relaxed accessors.
> I usually mention it in driver reviews, but most authors revert back
> to the normal accessors when there is no difference.
>
>> This driver is for SoC using arm64 cpu.
>>
>> If one uses the non-relaxed version of readl while running on arm64, he
>> shall cause read barrier, which is then doing dsm(ld).. This barrier is
>> not needed here, so we spare the use of the more heavy readl in favor of
>> the less "harmful" one.
>>
>> Let me know what you think.
> If the barrier causes no harm, just leave it in to keep the code more
> readable. Most developers don't need to know the difference between
> the two, so using the less common interface just makes the reader
> curious about why it was picked.
>
> Avoiding the barrier can make a huge performance difference in a
> hot code path, but the downside is that it can behave in unexpected
> ways if the same code is run on a different CPU architecture that
> does not have the exact same rules about what _relaxed() means.
>
> In fact, replacing a 'readl()' with 'readl_relaxed() + rmb()' can lead
> to slower rather than faster code when the explicit barrier is heavier
> than the implied one (e.g. on x86), or readl_relaxed() does not skip
> the barrier.
>
> The general rule with kernel interfaces when you have two versions
> that both do what you want is to pick the one with the shorter name.
> See spin_lock()/spin_lock_irqsave(),  ioremap()/ioremap_nocache(),
> or ktime_get()/ktime_get_clocktai_ts64(). (yes, there are also
> exceptions)
>
>      Arnd


Thanks for the detailed response.


In current implementation of v1, I am not doing any read barrier, Hence, 
using the non-relaxed will add unneeded memory barrier.

I have no strong objection moving to the non-relaxed version and have an 
unneeded memory barrier, as this path is not "hot" one.


Beside of avoiding the unneeded memory barrier, I would be happy to keep 
common behavior for our drivers:

e.g.

https://github.com/torvalds/linux/blob/master/drivers/irqchip/irq-al-fic.c#L49


So what do you think we should go with? relaxed or non-relaxed?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
