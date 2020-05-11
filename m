Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9231CD751
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Us1pvKV0R5cyQLRoBx3PkGmJc8QoxK7oUYKCxjQTD+0=; b=cp0Yf0Dpn6kDv+UhCwBjj8kAr
	07Mj0YVlsGk4ySe2CbAdvd9YnYWxWPKjZaI2O9WaMQomCYFWFnhF6Y+w/fiaH+VBJaUW58GsY6v6U
	osm6z8DsT0ClYRMVMCQKzz/A70UbqPmFw/G+FHoP+ZF2lnLkPVacWmZst28cktRE8tnijUJoEvUE8
	u9P6iPhB4EmonEN2Eu8tIiVMsrffiXRb490SPQkMaygWkpBIonO+X3v02+6EbSEEYbs2ANGyCKiFN
	Uqux6RkCeaAboUBFXQzql2k/EyZYaJPpYlkxa7rULP/QhyYguzxKDAzd729MFVo4Vv9DDA8XlZdaq
	OwvWG+2wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6LP-0008PE-QS; Mon, 11 May 2020 11:11:35 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6LH-0008OV-K7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:11:28 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04BBBLrD037346;
 Mon, 11 May 2020 06:11:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589195481;
 bh=CISqFCxu5t1PMoQny1CBKpSz9hzWS0lgiIvGz7SxhJg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GpNiWynafDZa99VZDkD2G498YjQqyj2XZFeL+K2CqcbKkoGoCdyJw66FSJKO4jlMe
 PS/nWFHw07WTBhicFjgSdhkR78LLPIqKlmNb39O/ityyVZOF84Vw65Ojytm8ndY71+
 UODRCjBrkLs9/b0VkfvK3y3yb5QXgaVVusQ2WoNk=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04BBBK0U042948
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 06:11:21 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 May 2020 06:11:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 May 2020 06:11:20 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04BBBHKd091718;
 Mon, 11 May 2020 06:11:17 -0500
Subject: Re: [PATCH v3 2/2] soc: ti: add k3 platforms chipid module driver
To: Arnd Bergmann <arnd@arndb.de>
References: <20200508100100.20740-1-grygorii.strashko@ti.com>
 <20200508100100.20740-3-grygorii.strashko@ti.com>
 <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <6614f29d-1796-18d9-9b78-214f56964a35@ti.com>
Date: Mon, 11 May 2020 14:11:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_041127_757598_76C18798 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

On 09/05/2020 01:17, Arnd Bergmann wrote:
> On Fri, May 8, 2020 at 12:01 PM Grygorii Strashko
> <grygorii.strashko@ti.com> wrote:
> 
>> +static int __init k3_chipinfo_init(void)
>> +{
>> +       struct soc_device_attribute *soc_dev_attr;
>> +       struct soc_device *soc_dev;
>> +       struct device_node *node;
>> +       struct regmap *regmap;
>> +       u32 partno_id;
>> +       u32 variant;
>> +       u32 jtag_id;
>> +       u32 mfg;
>> +       int ret;
>> +
>> +       node = of_find_compatible_node(NULL, NULL, "ti,am654-chipid");
>> +       if (!node)
>> +               return -ENODEV;
> 
> This will fail the initcall and print a warning when the kernel runs on any
> other SoC. Would it be possible to just make this a platform_driver?
> 
> If not, I think you should silently return success when the device
> node is absent.

Thank you for your report.
Can' make it platform drv., as te SoC info need to be accessible by divers early.
I'll fix it to return success.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
