Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E981CE4F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k+HhkU4dDnMKD9sIApfEyNdqw5OBbu8izDjJCDDCHHA=; b=QPWGwcrM9Xn10UiW9worjXL/a
	9IlV6qtoQDIsZ6+a3t0i8sl+0gAGkiL+daZ2Jcki9Zr4QXyLfXOITFA7ytj2+KPWScX2Hf8K9TX/H
	NaCwtLjTgKffLl8kaltQQN28XYGq/0zGW4d0ib7HRS8ZlXErQaRemSVfj4DTlCMLsKf6yxX8Vhllo
	fUdtEKiBco5VYYd0chnk5CSW1NjN5nXXRCPlgHUpH1c5M/JHJsn3ceDujBo/81CvglRX5y2cUMTyM
	azWhcO86wCt5LGDmN5KiIATfKlUTOhsFqLQeVxfyj2ouGG0eBFwj1ue+18URfsohRULIGuwFIVwDk
	Da/oHAfMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEdV-0001gt-4Y; Mon, 11 May 2020 20:02:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEdN-0001fw-Ry
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:02:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04BK2YDk093707;
 Mon, 11 May 2020 15:02:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589227354;
 bh=Nbw5S0nlz0IKqlpjtqgO4SfYIFZYmYYUYfxzJYCueho=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hxY1wVVJO5z5aZxvXkJSUzcJhaNnifY0kKqtoUzkl1UOvKMYihMunyLW01a5tpHZ+
 ojxi/JN+ILiZGZ9qEzt436nONhUj7OQJ/7gksDH49CFYNMGZwoaokNSGLqydTi32OT
 epDzLdBtBEs3pqkAi1ueD/bG4FFvhM/BHtlYnF/I=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04BK2Y7p008391
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 15:02:34 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 May 2020 15:02:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 May 2020 15:02:34 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04BK2V0L119216;
 Mon, 11 May 2020 15:02:31 -0500
Subject: Re: [PATCH v3 2/2] soc: ti: add k3 platforms chipid module driver
To: Arnd Bergmann <arnd@arndb.de>
References: <20200508100100.20740-1-grygorii.strashko@ti.com>
 <20200508100100.20740-3-grygorii.strashko@ti.com>
 <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
 <6614f29d-1796-18d9-9b78-214f56964a35@ti.com>
 <CAK8P3a19RC1hPZkLiGCEHFuHDNxNLiAg34RdbBZ=gxDhRg4RpA@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <71c11d42-9645-7b93-9cf3-3139d35befc9@ti.com>
Date: Mon, 11 May 2020 23:02:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a19RC1hPZkLiGCEHFuHDNxNLiAg34RdbBZ=gxDhRg4RpA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_130241_990276_A4C1C67A 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 11/05/2020 15:43, Arnd Bergmann wrote:
> On Mon, May 11, 2020 at 1:11 PM Grygorii Strashko
> <grygorii.strashko@ti.com> wrote:
>>
>> Hi Arnd,
>>
>> On 09/05/2020 01:17, Arnd Bergmann wrote:
>>> On Fri, May 8, 2020 at 12:01 PM Grygorii Strashko
>>> <grygorii.strashko@ti.com> wrote:
>>>
>>>> +static int __init k3_chipinfo_init(void)
>>>> +{
>>>> +       struct soc_device_attribute *soc_dev_attr;
>>>> +       struct soc_device *soc_dev;
>>>> +       struct device_node *node;
>>>> +       struct regmap *regmap;
>>>> +       u32 partno_id;
>>>> +       u32 variant;
>>>> +       u32 jtag_id;
>>>> +       u32 mfg;
>>>> +       int ret;
>>>> +
>>>> +       node = of_find_compatible_node(NULL, NULL, "ti,am654-chipid");
>>>> +       if (!node)
>>>> +               return -ENODEV;
>>>
>>> This will fail the initcall and print a warning when the kernel runs on any
>>> other SoC. Would it be possible to just make this a platform_driver?
>>>
>>> If not, I think you should silently return success when the device
>>> node is absent.
>>
>> Thank you for your report.
>> Can' make it platform drv., as the SoC info need to be accessible by divers early.
> 
> Which drivers in particular? In most cases you should be able to still do this
> right by relying on initcall ordering as long as this one can only be built-in
> (or possibly only a module for compile-testing).

Thanks for you review.

As I'm aware of right now, it's going to be: ringacc, dma, net drv and mmc.
So, It seems should work with platform_driver and subsys_initcall.
I'll try it.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
