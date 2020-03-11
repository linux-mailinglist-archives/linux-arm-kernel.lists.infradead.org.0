Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6BB180F0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 05:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1Fh0Yp3SNb91nEZfSkf5Zpnn/tlueixtPhY1OchvR4=; b=LSsm25x8+wKHM0
	6ecMxO4eOpGmvhFnaOn4p/fsr63VPD4MK8cRN+/3ViK4lKsS7VXtljiH3/t6LMpsA6sgH/XnJFKHw
	H2yoSn/tHPKli64I/3j2vbPFkYM0eykBDJuXX32+RlUCuysIBqUy6HEYk7/QFioDGtLPV2s2iPiiN
	nlvRqIZ3QuJNEe7WfXFIAo1rdTWfgIzTfVUo7szJnDeVTIg8w4lhNaDq9jSlBQWHpy44So/h3lhkw
	y5lzUkvgOFeBvGeNxUclLvuinZ54OtyZVnSABO4rOUYy9xWrZWjbf945pN7UFZz99vfDlWcNNvAcf
	VtuOEIBcxNSQc+TQYDGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtRp-0003Vh-Ie; Wed, 11 Mar 2020 04:58:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBtRh-0003VG-F1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 04:58:19 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02B4vliK085472;
 Tue, 10 Mar 2020 23:57:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583902667;
 bh=MFTqGdrDyTmeaJQ1bZpBzfDtbpnP3ovZ3eA6y3Etkpg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=LxyfcpIh2W+Bsk5crUUjzOQjTkD+k2r8DTKINGYZI4hjjSWMWyIekWRblL9BFyK0r
 2CMSJJG9jE6OdD55+B0kykLUyHNFd98Vp+AmDZQeCmo21uMDzycgsEKRFEkd4fOB8i
 o6DR36lvZrdupylA+QzkBojFkE/TCocpBSkg1tFs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02B4vlbe057182
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Mar 2020 23:57:47 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 10
 Mar 2020 23:57:47 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 10 Mar 2020 23:57:47 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02B4vgLT066746;
 Tue, 10 Mar 2020 23:57:42 -0500
Subject: Re: [PATCH v8 07/14] gpio: thunderx: Use the default parent apis for
 {request,release}_resources
To: Tim Harvey <tharvey@gateworks.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-8-lokeshvutla@ti.com>
 <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <ed6472a7-5bd8-25bd-e2bc-f88f97a82607@ti.com>
Date: Wed, 11 Mar 2020 10:26:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_215817_588661_613144C6 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, open list <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tim,

On 11/03/20 4:57 AM, Tim Harvey wrote:
> On Tue, Apr 30, 2019 at 3:14 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
>>
>> thunderx_gpio_irq_{request,release}_resources apis are trying to
>> {request,release} resources on parent interrupt. There are default
>> apis doing the same. Use the default parent apis instead of writing
>> the same code snippet.
>>
>> Cc: linux-gpio@vger.kernel.org
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Acked-by: Linus Walleij <linus.walleij@linaro.org>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> ---
>> Changes since v7:
>> - None
>>
>>  drivers/gpio/gpio-thunderx.c | 16 ++++------------
>>  1 file changed, 4 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpio/gpio-thunderx.c b/drivers/gpio/gpio-thunderx.c
>> index 1306722faa5a..715371b5102a 100644
>> --- a/drivers/gpio/gpio-thunderx.c
>> +++ b/drivers/gpio/gpio-thunderx.c
>> @@ -363,22 +363,16 @@ static int thunderx_gpio_irq_request_resources(struct irq_data *data)
>>  {
>>         struct thunderx_line *txline = irq_data_get_irq_chip_data(data);
>>         struct thunderx_gpio *txgpio = txline->txgpio;
>> -       struct irq_data *parent_data = data->parent_data;
>>         int r;
>>
>>         r = gpiochip_lock_as_irq(&txgpio->chip, txline->line);
>>         if (r)
>>                 return r;
>>
>> -       if (parent_data && parent_data->chip->irq_request_resources) {
>> -               r = parent_data->chip->irq_request_resources(parent_data);
>> -               if (r)
>> -                       goto error;
>> -       }
>> +       r = irq_chip_request_resources_parent(data);
>> +       if (r)
>> +               gpiochip_unlock_as_irq(&txgpio->chip, txline->line);
> 
> Lokesh,
> 
> This patch breaks irq resources for thunderx-gpio as
> parent_data->chip->irq_request_resources is undefined thus your new
> irq_chip_request_resources_parent() returns -ENOSYS causing this
> function to return an error where as before it would happily return 0.

Returning -ENOSYS is the right behaviour. If the parent doesn't have the
resources, child driver should not hook it at all.

> 
> Is the following the correct fix or should we qualify
> data->parent_data->chip->irq_request_resources before calling
> irq_chip_request_resources_parent() in thunderx-gpio?

If there are no parent resources why should  thunderx-gpio request parent
resources at all?

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
