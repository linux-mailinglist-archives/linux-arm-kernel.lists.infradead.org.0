Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930AFAE3A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 08:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sqUdWSdRV3iHnn4uc7eDb0zjQEQX5sGaRktNCj4fIJc=; b=Or351U1TMMQIlUDoEYm6ALv0V
	qJsoAj3+rDJOBIxvJOQJPJeD9Ijm7WO3VsN7XjNsNqSafJiuMnXJAmDhMYnWl8QEzkRffnqL9pjp1
	SpJCH0O/5u8qKrRuxB3Hod+DLHrPtJtaDK6z8+6Hno7qZJyiYz7d75rTswKfDuXOFsJ3fqaUkyBp+
	RuZajrA48G5SfwSdHrSWlM/lsW2ZWkA4rP62JHaRhUzfAj0LmkhMERrNH1ErwmQonOpBp/WQsyt0O
	QZXSQohbN5nYke/OgFRGkTJMPI/pRX8h9yTGgefZoz+1p9ssB6c4apI1tAdGiFYbc3tdCHKpMr6n2
	ppydSPU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZXj-0000pF-IU; Tue, 10 Sep 2019 06:22:24 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZWr-0000Js-1D
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 06:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568096488; x=1599632488;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=P2cS529XUmulKfRe/UANSM/dlb33mBmMJiHTNnM+zWE=;
 b=uR30FecKBi3b6JpiTLonlq8ol9c47cxJNNnPKm+81uJwY139oSzKn6Bq
 4qJFZww/tIRjUD4vT/Pi+BNV2MUO+MHB3vy+V7XQzY/wPoOmNdOswjuFu
 pdV/x54NMVMDofKkvBLeshixKlzk/5eTmnXjIP9rZipz9oyycG4oEFp7l k=;
X-IronPort-AV: E=Sophos;i="5.64,487,1559520000"; d="scan'208";a="749910613"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 10 Sep 2019 06:21:25 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com (Postfix) with ESMTPS
 id 95BD1A0742; Tue, 10 Sep 2019 06:21:19 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 10 Sep 2019 06:21:18 +0000
Received: from [10.125.238.52] (10.43.161.176) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
 Tue, 10 Sep 2019 06:21:07 +0000
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: Arnd Bergmann <arnd@arndb.de>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
 <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
 <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
 <CAK8P3a1NVGwYa1bw_vjBatd1xe-i875X1Vq1M+2G_Zxd2Oqusg@mail.gmail.com>
 <8f7840c3-a682-04a5-18bf-ac7a723725b0@amazon.com>
 <CAK8P3a1fbK-qoK+K1ZsWsU3rkxxZgZGaK8ywFAcM4va1GRn_FQ@mail.gmail.com>
From: "Shenhar, Talel" <talel@amazon.com>
Message-ID: <b50ba032-51f7-3cd1-a302-30146560f636@amazon.com>
Date: Tue, 10 Sep 2019 09:21:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1fbK-qoK+K1ZsWsU3rkxxZgZGaK8ywFAcM4va1GRn_FQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D31UWC002.ant.amazon.com (10.43.162.220) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_232129_204157_E8C978AC 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
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


On 9/9/2019 6:16 PM, Arnd Bergmann wrote:
> On Mon, Sep 9, 2019 at 4:11 PM Shenhar, Talel <talel@amazon.com> wrote:
>> On 9/9/2019 4:41 PM, Arnd Bergmann wrote:
>>
>> In current implementation of v1, I am not doing any read barrier, Hence,
>> using the non-relaxed will add unneeded memory barrier.
>>
>> I have no strong objection moving to the non-relaxed version and have an
>> unneeded memory barrier, as this path is not "hot" one.
> Ok, then please add it.
ok, shall be part of v2
>
>> Beside of avoiding the unneeded memory barrier, I would be happy to keep
>> common behavior for our drivers:
>>
>> e.g.
>>
>> https://github.com/torvalds/linux/blob/master/drivers/irqchip/irq-al-fic.c#L49
>>
>>
>> So what do you think we should go with? relaxed or non-relaxed?
> The al_fic_set_trigger() function is clearly a slow-path and should use the
> non-relaxed functions. In case of al_fic_irq_handler(), the extra barrier
> might introduce a measurable overhead, but at the same time I'm
> not sure if that one is correct without the barrier:
>
> If you have an MSI-type interrupt for notifying a device driver of
> a DMA completion, there might not be any other barrier between
> the arrival of the MSI message and the CPU accessing the data.
> Depending on how strict the hardware implements MSI and how
> the IRQ is chained, this could lead to data corruption.
>
> If the interrupt is only used for level or edge triggered interrupts,
> this is ok since you already need another register read in
> the driver before it can safely access a DMA buffer.
>
> In either case, if you can prove that it's safe to use the relaxed
> version here and you think that it may help, it would be good to
> add a comment explaining the reasoning.
Decided to go with the non-relaxed version as this is not hot path and 
likely be more clear to the common reader to have non relaxed version.
>
>         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
