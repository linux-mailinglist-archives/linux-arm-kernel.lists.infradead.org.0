Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD98AD7B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tFIGWOysMoSaKMqRsPg93BsYIDhfNtGLJNRBliYHz4w=; b=LPoSBaa8ZxLHXKPBoZVCpeajK
	gqemtb7M9bwZgbw1Xn3+jNdDnMlNJykD8VzcXSqjRhvk/qU0w3KBqAhShxgw5muoBhPF1eDfR9FIs
	z8CRtnCwTqaKgbBorlpyCf0FOLHJzQHr95u7B7PNY63f3QtqTkZjwu67TqxxGjoBEi4xRo17kDr4X
	KQC1G1X0y4+q8oJoUtvTBHkniVF41pTDmVYa7Fda9nB75W/3AK5C3M2Kk0v23fxOVPX5dWFXO3U9t
	sC2C2d1fzbkomAETbYhAlahC+ceI+oBJsK06bYdcHWt3NoX9ehiEa4qBs7nnbIwHRuylO5VK3zGGM
	QffJJJdKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hbm-0007QP-IB; Mon, 09 Sep 2019 11:13:22 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hbf-0007Pf-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568027595; x=1599563595;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=F9WoBKV+oWdvDBwrEieyAZ8tIJPF4Cx6CuXAUeqFsQk=;
 b=X/2hIaLzDhmTmldf6pKq9X5lwnuVHi04xz1KXG7ieLBwjevCK0MFwtJ+
 cDcVLg8JIXcNrr1nps6pmreNfO29kFUZoBSOVAgSVQ64pkjvzjKD9mOvb
 B2rczl80ydgx+1lXNha2jeIk1rHba6oZb1IzuDSy0KxDMrQRuIE6H97Pa Q=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="414286943"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 09 Sep 2019 11:13:12 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com (Postfix) with ESMTPS
 id 57341C0934; Mon,  9 Sep 2019 11:13:06 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 11:13:05 +0000
Received: from [10.125.238.52] (10.43.161.152) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
 Mon, 9 Sep 2019 11:12:54 +0000
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: Arnd Bergmann <arnd@arndb.de>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
 <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
Date: Mon, 9 Sep 2019 14:12:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.152]
X-ClientProxiedBy: EX13D16UWB001.ant.amazon.com (10.43.161.17) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_041315_873695_F54C5A2F 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
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


On 9/9/2019 12:44 PM, Arnd Bergmann wrote:
> On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
>> The Amazon's Annapurna Labs SoCs includes Point Of Serialization error
>> logging unit that reports an error in case write error (e.g. attempt to
>> write to a read only register).
>> This patch introduces the support for this unit.
>>
>> Signed-off-by: Talel Shenhar <talel@amazon.com>
> Looks ok overall, juts a few minor comments:
Thanks.
>
>> +MODULE_LICENSE("GPL v2");
>> +MODULE_AUTHOR("Talel Shenhar");
>> +MODULE_DESCRIPTION("Amazon's Annapurna Labs POS driver");
> These usually go to the end of the file.
Ack, Will move them as part of v2.
>
>> +       log1 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_1);
>> +       if (!FIELD_GET(AL_POS_ERROR_LOG_1_VALID, log1))
>> +               return IRQ_NONE;
>> +
>> +       log0 = readl_relaxed(pos->mmio_base + AL_POS_ERROR_LOG_0);
>> +       writel_relaxed(0, pos->mmio_base + AL_POS_ERROR_LOG_1);
> Why do you require _relaxed() accessors here? Please add a comment
> explaining that, or use the regular readl()/writel().

I don't think commenting is needed here as there is nothing special in 
this type of access.

I don't see this is common to comment the use of the _relaxed accessors.

This driver is for SoC using arm64 cpu.

If one uses the non-relaxed version of readl while running on arm64, he 
shall cause read barrier, which is then doing dsm(ld).. This barrier is 
not needed here, so we spare the use of the more heavy readl in favor of 
the less "harmful" one.

Let me know what you think.

>
>> +       resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +       pos->mmio_base = devm_ioremap_resource(&pdev->dev, resource);
> This can be simplified to devm_platform_ioremap_resource().
Ack, Will simplify them in v2.
>
>> +       pos->irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
> And this is usually written as platform_get_irq()
Ack, Will replace them with platform_get_irq() in v2.
>
>         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
