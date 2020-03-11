Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C65181425
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:10:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1NO303aAt95oHQErNfGDWtyHexZsowLOLeHDf53Cx2M=; b=uxigdf//wXUrysJLOqxA0Z37G
	FxqqssXEv+3ofwh9lOvvomrsFm4EX17A5S89G3Fsha43fxD9spZj4b/yCAa/CsV6kpK1Tl/02psfF
	2id6Bs3XzFmumolxNkC/v//EZ7o4nY2aSLlWiMZ24U5CSN2Fjal3O9Y1p1C2c89/oVugJK8/yNb2J
	XVF9/b1d7yGeJKo3PD8P9H3PxT4KTp1kSzvnQeYeJyBb7pIsEhCeh7NyBJJcc8EenxbyOvDk1PMTB
	g73TRfNBrTsRyEPMq4mWa0CXAJH+SfGeU5uXagpJmq7YHe1fd2S0IPsuQiDG79REq+HaZlonhV7Rf
	Ba6nU8U5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxNE-000669-Hx; Wed, 11 Mar 2020 09:09:56 +0000
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxMk-0005ph-0k
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:09:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBu9kXwi2eTWqY6dPiST5cVgK3RrChgBRVNneM0dNBDjHbt/UZhFdRSVVpho+rryT/TSrOTO0S/UBR8emM7poBtHbrtjOnJO2nnbyjqdK2JR+mECsw34pWNX8aos9D70guF42ozYnaQc6WXEU7GJXs5/rwkVgiiqPVyGBkeG7pxV1kbVLTfmZYtwz+hGYKaLxgL8fBfFxeLLAOWdAoGqwhpF4XrpnnUcFR0oZrUwWJ0hJHfXdq7EdV2el6m7uKEZF3MSINKag+eS1IqTyxAwgKewR+FJjjpoU+MygH2DRjBD5jR5oqpVYvtv4OIRWjBvkdhNeVoGvhdHniSwJWCezA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ojMWbSbmArSbqVcyDnzZP7M0Ae7fPEYB16Mp9nNFIM=;
 b=RIve3WoMXr+f7losWW0xkz01psq3wxRen2VSRFBtrlOthHYLPti9tWbdSN5O2O8dZfG/BonXwptrhZMcDd3nD9s2FG1o0eWiqd8/rkRLwKPU7VrdBKZL5x/Zh/d1Xud/11UqIVKNIGCfW02EvkhOcloWauIDwY7imdZbj/F1JEV9USTec5hOSiSMeCiYIRJfBgtQd5HFmV9PANFD+3O7rK3/v2VGRV91KQmXUmK2x2Fq+SRsCxx72B51njEcGOeB0P1k0TuFdcBiGumLIkF91Kdhaa7hFcZW+f5RMNoqjYb2EtZb8h/7Dw4o8EWghCDqV7xsmHtEBr2UsKFWfcoOeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ojMWbSbmArSbqVcyDnzZP7M0Ae7fPEYB16Mp9nNFIM=;
 b=Pse9yrXHBF62GOLrwTatWxcNQW1im7eEIynTT3z9l0GFeRMCgvfz80d+3SimDX/nrwa2NM2hFwBmmmr3EKw4dM7MTB6KdqpOdm4uCHjde34y5at4+PNbifHR769oA9RdKIf/Mo98Yz7kZ+qZCoGPSiu8dkWyV/k8FrTRpVEH+0s=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB5160.eurprd04.prod.outlook.com (20.177.35.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:53:46 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818%4]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:53:46 +0000
Subject: Re: [PATCH] soc: fsl: dpio: register dpio irq handlers after dpio
 create
To: Li Yang <leoyang.li@nxp.com>
References: <20200310120719.2480-1-laurentiu.tudor@nxp.com>
 <CADRPPNT4diVa3gYv=t174=vmZZ3qRX2QmtXto9hLEnjQvv5SwQ@mail.gmail.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <4f61005e-356f-c5f8-83f8-cc741cd89d82@nxp.com>
Date: Wed, 11 Mar 2020 10:53:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CADRPPNT4diVa3gYv=t174=vmZZ3qRX2QmtXto9hLEnjQvv5SwQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR0102CA0053.eurprd01.prod.exchangelabs.com
 (2603:10a6:208::30) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.171.82.13] (89.37.124.34) by
 AM0PR0102CA0053.eurprd01.prod.exchangelabs.com (2603:10a6:208::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Wed, 11 Mar 2020 08:53:45 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 44133238-c30c-4183-794f-08d7c599b557
X-MS-TrafficTypeDiagnostic: AM6PR04MB5160:|AM6PR04MB5160:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB51609F5782AB410E65B8207AECFC0@AM6PR04MB5160.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(199004)(44832011)(81156014)(81166006)(8676002)(186003)(956004)(2616005)(26005)(16526019)(2906002)(5660300002)(478600001)(66556008)(66476007)(6862004)(8936002)(31686004)(36756003)(45080400002)(86362001)(31696002)(4326008)(52116002)(53546011)(6486002)(54906003)(6636002)(66946007)(37006003)(16576012)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5160;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UIa3XGvmiMggokf1Xlidszk0VfktpPiA/PcS0oIRUDS6bB09WAUkUiLDKmKHzoPnYf+NX6FCKbRPuX6ME42XfwnzRMRiqaz+1UXH1WACv4HNmAQVZ7t4EA2AmtH9R94efOT6ZF0cXUp9WbuPrcVPiVw9F1gM4eyDZwpc8D8npac5YvtGcHfnyfd1dxJOePY+QWAUyD+8usGg7r+FpO71GDrdk3BVkSiXNJtu+FKi11yvR19vMUE1lD1sc8+cxaXx9Bz0YMLpSg/pjFkRPGnc2SFsrJ+nev4xKt1VLChDaVSCKecziGEQd0QEH7I0FGlrwh04Pn0d6AqMsJbSGYeBIGoouaQ7KpUDTZQG/N1QJWr/fm8KB8svgDp/W0oAsDovcdCIaSScW8RljD9ptG0rvaekPjkqMe1Gx/KFk992SE6JvjARUeY1juJDP+regGFP
X-MS-Exchange-AntiSpam-MessageData: l5riezagawdb0tgRuV6Vt05ZQdK5zs+uYRp4cWE6+TutbkPSoqRWRbj9jsrx8/XcZ354OKWTjR+x+fm02zybOrsk2XwUcFXDYMYtgNOR3AUo8bOr4uo1gylyFzvT5Caz7RmmZKmZKHwGMn9V/JUB3A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44133238-c30c-4183-794f-08d7c599b557
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:53:46.1460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xgeZMJNkvXDHWpfFUDNLWrr8UhVfAF1mUvlGFo2E51+uGjM5lryM/sul6jnAIxZdmDfkfOB8/2yNJAUCXrU7mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020926_059271_6B2CDCCE 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>, lkml <linux-kernel@vger.kernel.org>,
 Youri Querry <youri.querry_1@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Grigore Popescu <grigore.popescu@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10.03.2020 22:30, Li Yang wrote:
> On Tue, Mar 10, 2020 at 7:09 AM Laurentiu Tudor <laurentiu.tudor@nxp.com> wrote:
>>
>> From: Grigore Popescu <grigore.popescu@nxp.com>
>>
>> The dpio irqs must be registered when you can actually
>> receive interrupts, ie when the dpios are created.
>> Kernel goes through NULL pointer dereference errors
>> followed by kernel panic [1] because the dpio irqs are
>> enabled before the dpio is created.
>>
>> [1]
>> Unable to handle kernel NULL pointer dereference at virtual address 0040
>> fsl_mc_dpio dpio.14: probed
>> fsl_mc_dpio dpio.13: Adding to iommu group 11
>>    ISV = 0, ISS = 0x00000004
>> Unable to handle kernel NULL pointer dereference at virtual address 0040
>> Mem abort info:
>>    ESR = 0x96000004
>>    EC = 0x25: DABT (current EL), IL = 32 bits
>>    SET = 0, FnV = 0
>>    EA = 0, S1PTW = 0
>> Data abort info:
>>    ISV = 0, ISS = 0x00000004
>>    CM = 0, WnR = 0
>> [0000000000000040] user address but active_mm is swapper
>> Internal error: Oops: 96000004 [#1] PREEMPT SMP
>> Modules linked in:
>> CPU: 2 PID: 151 Comm: kworker/2:1 Not tainted 5.6.0-rc4-next-20200304 #1
>> Hardware name: NXP Layerscape LX2160ARDB (DT)
>> Workqueue: events deferred_probe_work_func
>> pstate: 00000085 (nzcv daIf -PAN -UAO)
>> pc : dpaa2_io_irq+0x18/0xe0
>> lr : dpio_irq_handler+0x1c/0x28
>> sp : ffff800010013e20
>> x29: ffff800010013e20 x28: ffff0026d9b4c140
>> x27: ffffa1d38a142018 x26: ffff0026d2953400
>> x25: ffffa1d38a142018 x24: ffffa1d38a7ba1d8
>> x23: ffff800010013f24 x22: 0000000000000000
>> x21: 0000000000000072 x20: ffff0026d2953400
>> x19: ffff0026d2a68b80 x18: 0000000000000001
>> x17: 000000002fb37f3d x16: 0000000035eafadd
>> x15: ffff0026d9b4c5b8 x14: ffffffffffffffff
>> x13: ff00000000000000 x12: 0000000000000038
>> x11: 0101010101010101 x10: 0000000000000040
>> x9 : ffffa1d388db11e4 x8 : ffffa1d38a7e40f0
>> x7 : ffff0026da414f38 x6 : 0000000000000000
>> x5 : ffff0026da414d80 x4 : ffff5e5353d0c000
>> x3 : ffff800010013f60 x2 : ffffa1d388db11c8
>> x1 : ffff0026d2a67c00 x0 : 0000000000000000
>> Call trace:
>>   dpaa2_io_irq+0x18/0xe0
>>   dpio_irq_handler+0x1c/0x28
>>   __handle_irq_event_percpu+0x78/0x2c0
>>   handle_irq_event_percpu+0x38/0x90
>>   handle_irq_event+0x4c/0xd0
>>   handle_fasteoi_irq+0xbc/0x168
>>   generic_handle_irq+0x2c/0x40
>>   __handle_domain_irq+0x68/0xc0
>>   gic_handle_irq+0x64/0x150
>>   el1_irq+0xb8/0x180
>>   _raw_spin_unlock_irqrestore+0x14/0x48
>>   irq_set_affinity_hint+0x6c/0xa0
>>   dpaa2_dpio_probe+0x2a4/0x518
>>   fsl_mc_driver_probe+0x28/0x70
>>   really_probe+0xdc/0x320
>>   driver_probe_device+0x5c/0xf0
>>   __device_attach_driver+0x88/0xc0
>>   bus_for_each_drv+0x7c/0xc8
>>   __device_attach+0xe4/0x140
>>   device_initial_probe+0x18/0x20
>>   bus_probe_device+0x98/0xa0
>>   device_add+0x41c/0x758
>>   fsl_mc_device_add+0x184/0x530
>>   dprc_scan_objects+0x280/0x370
>>   dprc_probe+0x124/0x3b0
>>   fsl_mc_driver_probe+0x28/0x70
>>   really_probe+0xdc/0x320
>>   driver_probe_device+0x5c/0xf0
>>   __device_attach_driver+0x88/0xc0
>>   bus_for_each_drv+0x7c/0xc8
>>   __device_attach+0xe4/0x140
>>   device_initial_probe+0x18/0x20
>>   bus_probe_device+0x98/0xa0
>>   deferred_probe_work_func+0x74/0xa8
>>   process_one_work+0x1c8/0x470
>>   worker_thread+0x1f8/0x428
>>   kthread+0x124/0x128
>>   ret_from_fork+0x10/0x18
>> Code: a9bc7bfd 910003fd a9025bf5 a90363f7 (f9402015)
>> ---[ end trace 38298e1a29e7a570 ]---
>> Kernel panic - not syncing: Fatal exception in interrupt
>> SMP: stopping secondary CPUs
>> Mem abort info:
>>    ESR = 0x96000004
>>    CM = 0, WnR = 0
>>    EC = 0x25: DABT (current EL), IL = 32 bits
>> [0000000000000040] user address but active_mm is swapper
>>    SET = 0, FnV = 0
>>    EA = 0, S1PTW = 0
>> Data abort info:
>>    ISV = 0, ISS = 0x00000004
>>    CM = 0, WnR = 0
>> [0000000000000040] user address but active_mm is swapper
>> SMP: failed to stop secondary CPUs 0-2
>> Kernel Offset: 0x21d378600000 from 0xffff800010000000
>> PHYS_OFFSET: 0xffffe92180000000
>> CPU features: 0x10002,21806008
>> Memory Limit: none
>> ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---
>>
>> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>> Signed-off-by: Grigore Popescu <grigore.popescu@nxp.com>
> 
> Applied for fix.  Thanks.  Does this fix apply to stable kernels?

It sure does, good point.

---
Best Regards, Laurentiu

>> ---
>>   drivers/soc/fsl/dpio/dpio-driver.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/soc/fsl/dpio/dpio-driver.c b/drivers/soc/fsl/dpio/dpio-driver.c
>> index 70014ecce2a7..7b642c330977 100644
>> --- a/drivers/soc/fsl/dpio/dpio-driver.c
>> +++ b/drivers/soc/fsl/dpio/dpio-driver.c
>> @@ -233,10 +233,6 @@ static int dpaa2_dpio_probe(struct fsl_mc_device *dpio_dev)
>>                  goto err_allocate_irqs;
>>          }
>>
>> -       err = register_dpio_irq_handlers(dpio_dev, desc.cpu);
>> -       if (err)
>> -               goto err_register_dpio_irq;
>> -
>>          priv->io = dpaa2_io_create(&desc, dev);
>>          if (!priv->io) {
>>                  dev_err(dev, "dpaa2_io_create failed\n");
>> @@ -244,6 +240,10 @@ static int dpaa2_dpio_probe(struct fsl_mc_device *dpio_dev)
>>                  goto err_dpaa2_io_create;
>>          }
>>
>> +       err = register_dpio_irq_handlers(dpio_dev, desc.cpu);
>> +       if (err)
>> +               goto err_register_dpio_irq;
>> +
>>          dev_info(dev, "probed\n");
>>          dev_dbg(dev, "   receives_notifications = %d\n",
>>                  desc.receives_notifications);
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
