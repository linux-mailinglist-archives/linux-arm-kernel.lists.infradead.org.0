Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8152193A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjjjaXP/1RQhYAooEh4yJJ3GPDSkYcYaS/I+ZNAUfDk=; b=ahWrtUmGACZPj5
	rltElo0qVqKtnWktfjJcw1EUz0t0N/GTao8+syv3Por8sb3xykHcAaZM74uh0IfAogEqAPzAMu/Iv
	6RHif5FEtZt6nXM0CcQmobYs1vlNuQd2lixbiX0lB7euPXecIWpdtTzNiy25DYj/5+/zlRahVXKAO
	C1Txz5PllDjs1uVG5JP/LVMIt1n42EEUZbFX5xg286iOz1ZoO0lAiFDQ5MmfXsmJnwsMS1ORHQPwy
	ta2hAcE5HQFtEoH+GQcv44ow+kNqGaDYp46aPa/pZ3M2flleezkKUYNpfYY8LuSCUkdwAXDkHsGae
	hrAQqo81QvsiHkXKbD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRd1Z-0000au-J4; Fri, 17 May 2019 13:35:49 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRd1R-0000aV-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 13:35:43 +0000
Received: from [192.168.178.167] ([109.104.37.130]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M26n9-1hPhDI0msr-002bf9; Fri, 17 May 2019 15:35:33 +0200
Subject: Re: ARM: Possible memleak during i.MX6ULL probe
To: Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
References: <8b0e51fc-2b26-f98d-7afa-26c6b397d847@i2se.com>
 <47c1ff2c3d904fdf7cac6ceba254ee7d67948805.camel@nxp.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <9ed1247a-99c6-37f9-693a-28a12648bc0d@i2se.com>
Date: Fri, 17 May 2019 15:35:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <47c1ff2c3d904fdf7cac6ceba254ee7d67948805.camel@nxp.com>
Content-Language: en-US
X-Provags-ID: V03:K1:6adCMSEo5sV3Zl+oURjjTxr5WWMVOvTYRWoVLgNtTJGLcb4we/p
 6xFBehuFAn4c3mBrIiMMqhF3Kcj0Z0zC6FFJ0HOqiTekH/9Pgm4YzQjtND0vF6L1Gp01DOM
 CMb7zo/Vqoq3/t70BMYJG2qPp6yDfoTYrlHzvadiFOwpE8eCfvhZtWdVF/0i60IIK4zR9jm
 yxHbrzYY8/Mt9eAbzlCEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j6ynR8nkM1g=:PEhrm1NyqT9Opkn6jZmVqW
 0nSqbHEU3KophZiWbfSU7IcRC0Lg8L9E5G8z9AERb8wfDaSfXuAVpjczetVX0LDJzK5WhVzsw
 R4URbgyJv+SRlr2mKR80twgRXEcq/2nhvi7D/tslmdVMROWCt5VpTGoS9HPhyVx952Bq9MVfl
 vlhBI0aeCyamVDoeaQfQR7lx8Vev8Hmaik1npLcjDWdBrTgrJgGoFtscQCOKpLcn0NrQI5RuO
 Ax3/XExN98jxtJiuiCoXl4xhO1+uM7SdL482iud9KA8SEuf76leCql/yjQYz4nb34OGyjZGLQ
 lnzS6Jjbk4dNKb4Lh39SkXYfuXH2m9QRyJxx09x6fqH0CcONNGzW8+Bk9SFIa6AKNMDBhTrJp
 K97CN3KmpIyMoZ63WIboCiFbk01cQLg+Fp0HwJ59KFHK4TcuFD0bgKAyTqgw2SuuhHjrOCOyp
 T3bIFcbXTwafrbNr1pCcC3EDpW3qtRyqL1Tzhxkk36n3PgA0CEZVuSMB5lw+khFCfKcZB0ZSK
 OpPjJdWc2BZNbNs1H7MiBulKrexAbRLAWtELggxQIoLtYqyJpQWKZ+5phFjZYMve7ETevmP3q
 rCto9ajxiZ19gDzJyJNeLlVGOPCvEWbyUiCf6RcQdwMTvEmnNXeh12tgYSeLOSNNZhsjf15Fm
 D+FgVh/6ha5tMbSWkHPsMtgIedDgFpLlnT5lionSuu2vAU2Ou1vXYkArZ7tdrhZzrTbvID+Q/
 znIRz89B0ip7LbDkdzHjF+p7Iq7JEee0+7eZPegFMKesXOzXLN4YXLKo/3s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_063542_088358_D038CC00 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 17.05.19 15:03, Daniel Baluta wrote:
> Hi Stefan,
>
> Can you try the following patch:
>
> diff --git a/drivers/base/regmap/regmap-debugfs.c
> b/drivers/base/regmap/regmap-debugfs.c
> index 263f82516ff4..a2225efffdda 100644
> --- a/drivers/base/regmap/regmap-debugfs.c
> +++ b/drivers/base/regmap/regmap-debugfs.c
> @@ -579,6 +579,9 @@ void regmap_debugfs_init(struct regmap *map, const
> char *name)
>         }
>  
>         if (!strcmp(name, "dummy")) {
> +               if (map->debugfs_name)
> +                       kfree(map->debugfs_name);
> +
>                 map->debugfs_name = kasprintf(GFP_KERNEL, "dummy%d",
>                                                 dummy_index);

unfortunately this doesn't fix the issue.

Stefan

>
>
> thanks,
> Daniel.
>
> On Fri, 2019-05-17 at 14:42 +0200, Stefan Wahren wrote:
>> Hi,
>>
>> today i tested current linus-tree ( a6a4b66bd8f ) with our custom
>> i.MX6ULL board and i noticed a possible memleak:
>>
>> unreferenced object 0xd8366600 (size 64):
>>   comm "swapper/0", pid 1, jiffies 4294937370 (age 933.220s)
>>   hex dump (first 32 bytes):
>>     64 75 6d 6d 79 2d 69 6f 6d 75 78 63 2d 67 70 72  dummy-iomuxc-gpr
>>     40 32 30 65 34 30 30 30 00 e3 f3 ab fe d1 1b dd  @20e4000........
>>   backtrace:
>>     [<b0402aec>] kasprintf+0x2c/0x54
>>     [<a6fbad2c>] regmap_debugfs_init+0x7c/0x31c
>>     [<9c8d91fa>] __regmap_init+0xb5c/0xcf4
>>     [<5b1c3d2a>] of_syscon_register+0x164/0x2c4
>>     [<596a5d80>] syscon_node_to_regmap+0x64/0x90
>>     [<49bd597b>] imx6ul_init_machine+0x34/0xa0
>>     [<250a4dac>] customize_machine+0x1c/0x30
>>     [<2d19fdaf>] do_one_initcall+0x7c/0x398
>>     [<e6084469>] kernel_init_freeable+0x328/0x448
>>     [<168c9101>] kernel_init+0x8/0x114
>>     [<913268aa>] ret_from_fork+0x14/0x20
>>     [<ce7b131a>] 0x0
>>
>> Best regards
>> Stefan Wahren
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
