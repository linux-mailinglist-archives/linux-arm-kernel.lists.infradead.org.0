Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7044E10FB1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uq+lpkZ3fKomrOPAdcqjAfhFy7VoMGK6f9JwOwG2Ssc=; b=IILxYELw77CCJ3
	U1s+bKOcmj3h1ZN8kqCZdGF+JG/jSpFGb1O5o3zQYuXumKccjYfAk3No73jF5A7XpTp24cArFWiFu
	l1L3YvAYuAscH7zp3V66WbMOMrov6fNF5KPodKFWr9kVlAnWwPfM3fIzISQ6mw8V+pZggJB2hA4mJ
	KicQj0BEsXcm0NRFb2M0LZCMWb8nr+rdyuhBg74RkBHaxE/05sGl1s+mCyKt9mhXmoyGTxssUU/Uk
	JT8nTE06diik3cQVU/By0JzL20KJ8q6B/X8KVbUx5J5bs+rtSOKoHAVZ7jX8emvEYecK26YURWQfP
	SlE73p2oowLcMDG4Rz8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4oz-0007KJ-Os; Tue, 03 Dec 2019 09:50:17 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4oo-0006bz-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 09:50:08 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k3I2UDY5nNAVbx9xrj37ZTrVji8M+6+pG3sZ4Rnqxk425cZAzGtI8NFRqLXkkFknK+KQpwTGBI
 niYAtpou9xstgzKOVonpigAZlKWuwl+bDsCoYYqTclDQ9S/fSdPhZO4Sjyw8O3UGAS2CYTQ/5Z
 vL2pK+zZj+x8r9RiDJFGKOFRw54PXXy2rimItyeIdu895LXCF0NuG5G2XkvvOvEkQ4FHIKGzQR
 3EF5XWsm/jtRWUGWt/Pe+lL2SIaLgGcli5sBzzRo4P5W4TJ/D/TDNHVgWcdAksZlCTBXMQu+1P
 bm0=
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="57283125"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 02:50:03 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 02:50:00 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 3 Dec 2019 02:50:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eRq0IBK3C0TztkifPqpFrEr8NtMspTIFj2pxTq3SXEq/NuuqiGdVw+XKpwCE/Ty3c6Yjqf59fTxxrnOFKdbBnIVjipaVNZkWRox32k3Jka3r0tggdo46F0qIhLDYxDki7F6XdWdPnZDzPzxBg6PQXvLnEtHOZCJUkvyt9wsKFSIURjN3OtVCw/O2A7ju0IvPFr0nxJFsWQEYzH4NpFh8q1lDTMaKdFvk8VYrxloruk26N7/YsqaVYx4GFk55APFtjuAKHdqLY8QNIhoSmbxkCOtI6RSNSUoRfaROXxGVTO0sBFWaQ3Nj56LtJXgCOF40P5e5lwFbkePyh0uPRKJ10Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nCHpQWuvinieAHwdCTciUjXFfyzTGM5bW4PxulzEBm8=;
 b=DwFJnPSKpBTBy96tzK0jCjdch6Vo7blq9YU4Sq1WcopT6VDcQb46i/xnAL0l+4Z5ni/Ft9IriIWOBqQqGPD0PmXCx0VfWQZVLSd2wwW5CY+AhStHmnf+VbZGJO/EtEhR3H+5wrwuu7PvHjkxHPWkNyRNGRgnWpvl7i7Ab4scTug4YQ0MYLsVkFfeYdR6VTauTjAaktrr4tl8UVp4FijJpUcCy81NR6E/6iHWokWfCKVSHrlNeHXqdv0sCyjZxGo1q6oKxHLtGz8B4+FM7KuCJnMHfJYmALRpn4bejHiDeEdGdPvkaEVk/QzaZctH/WOn6Wdn1JKa2HNvP74LIgGH1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nCHpQWuvinieAHwdCTciUjXFfyzTGM5bW4PxulzEBm8=;
 b=rBOWgV3WJJ9r442ON9YpWuW+Q3Wq2Yx5qEAmT0Jny/J9NXO3+FGB/S8J/c/zzNcPS3q+s1gQKQmTsJKGqEAavrsda2yTHLr74pCu7Mp+5pE2bdye8WpN+9JCM+O0hK7q/cVwvBgqIhh73LYfFPbEKdquGMyZ4SLP56aLJJ45YiY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1499.namprd11.prod.outlook.com (10.172.36.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 09:49:58 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 09:49:58 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHVo6GcybDu2MmyfkWfKAIGUFGv9aegRneAgABwyQCAAQdpgIAGeAaA
Date: Tue, 3 Dec 2019 09:49:58 +0000
Message-ID: <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
 <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
In-Reply-To: <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::14) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191203114937754
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 604a65ff-6479-492b-c1a0-08d777d62891
x-ms-traffictypediagnostic: DM5PR11MB1499:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB149954344A3E74BC9233BBE8E8420@DM5PR11MB1499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(376002)(136003)(366004)(51914003)(189003)(199004)(4001150100001)(86362001)(64756008)(66446008)(8936002)(31686004)(478600001)(2616005)(6116002)(36756003)(6306002)(71190400001)(71200400001)(3846002)(5660300002)(2501003)(99286004)(52116002)(6512007)(76176011)(14454004)(446003)(26005)(81156014)(6506007)(2906002)(7736002)(386003)(305945005)(81166006)(25786009)(5024004)(14444005)(53546011)(66556008)(66946007)(8676002)(966005)(11346002)(102836004)(256004)(186003)(229853002)(6436002)(31696002)(54906003)(6486002)(2201001)(4326008)(316002)(66476007)(6246003)(110136005)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1499;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZKpkY9cG47JCb4MTO+ZACN+LJhd0kyqoAXUbHdiegvOzT0Gy2JtixWn42YUG084AwFD4DcQoAIaXdLKSmT0H13zf22rbJ/btY56oM5ll7gOWxg7+KPRpaWvIo2/fBLeziN7GW5bXMA+GVHEB9E0OCUGvuibVKFvMginwwgNereK1eZ1n+Rh3IGVCEj089vg5YH8HVZ9845ZksHsI4N7IU0ob4H0MEn3yujPmFX7yNbwv2BlVJqwBNDmrsWonlpTZeXkIolT1wOwIAAwmDwvd049FqDJ6ValccAG5yIy+BdSGRBS6ZV9FM/d3y/b0/A9ScHAX2aEZViNcOBDw7CKjGCr+RW+gqwFCV5Rsviuu57UF72HilJ9LveTuD+R7a6BFmDELc9uMNkqNTOjFn5V69G3lyw6/6iFrfKmvXlpiNmVBFS+zJytWrbLU6yXRluUOOgclgYOQP0bE8NrWDmcqKYABfXPbUGlqw8uaHzfVGY8=
Content-ID: <12988F83C52CD543A0F0CA2B4BDC8B92@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 604a65ff-6479-492b-c1a0-08d777d62891
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 09:49:58.5151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SKxejQvcLyUw/Jp6KQGsperDqb5uSDTBi8CO+KyGvRLrc+DxwOAwvosay6q9xYlAGA2/YLHgXogsboAsdqxVfT8U/BpxOmNjpmM46hY97xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1499
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_015006_652531_45ABB237 
X-CRM114-Status: GOOD (  31.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, lars@metafoo.de,
 Ludovic.Desroches@microchip.com, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29.11.2019 09:02, Ardelean, Alexandru wrote:

> On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com wrote:
>>
> 
> Hey,
> 
> Sorry for the late reply.
> I'm also juggling a few things.
> 
>>
>> On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
>>
>>> On 25.11.2019 17:03, Ardelean, Alexandru wrote:
>>>> On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
>>>>> The iio_triggered_buffer_{predisable,postenable} functions
>>>>> attach/detach
>>>>> poll functions.
>>>>>
>>>>> The iio_triggered_buffer_postenable() should be called first to
>>>>> attach
>>>>> the
>>>>> poll function, and then the driver can init the data to be
>>>>> triggered.
>>>>>
>>>>> Similarly, iio_triggered_buffer_predisable() should be called last
>>>>> to
>>>>> first
>>>>> disable the data (to be triggered) and then the poll function
>>>>> should be
>>>>> detached.
>>>
>>> Hi Alexandru,
>>>
>>> Sorry for this late reply,
>>>
>>> I remember that by adding specific at91_adc code for
>>> predisable/postenable , I was replacing the existing standard callback
>>> with my own, and have my specific at91 code before postenable and then
>>> calling the subsystem postenable,
>>> and in similar way, for predisable, first call the subsystem predisable
>>> then doing my predisable code (in reverse order as in postenable)
>>>
>>> If you say the order should be reversed (basically have the
>>> pollfunction
>>> first), how is current code working ?
>>> Should current code fail if the poll function is not attached in time ?
>>> Or there is a race between triggered data and the attachment of the
>>> pollfunc ?
>>>
>>> I am thinking that attaching the pollfunc later makes it work because
>>> the DMA is not started yet. What happens if we have the pollfunc
>>> attached but DMA is not started (basically the trigger is not started)
>>> ,
>>> can this lead to unexpected behavior ? Like the pollfunc polling but no
>>> trigger started/no DMA started.
>>
>> I looked a bit more into the code and in DMA case, using postenable
>> first will lead to calling attach pollfunc, which will also enable the
>> trigger, but the DMA is not yet started.
>> Is this the desired effect ?
> 
> Yes.

How is this correct ? We start the trigger but have no buffer to carry 
to... what happens with the data ? -> I think we both have an answer to 
that, as you state below

> 
>> Normally when using DMA I would say we
>> would need to enable DMA first to be ready to carry data (and coherent
>> area etc.) and then enable the trigger.
> 
> So, there is a change in our tree [from some time ago].
> See here:
> https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8
> 
> Particularly, what's interesting is around line:
> https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
> And you may need to expand some stuff to see more of the function-body.
> And some things may have changed in upstream IIO since that change.
> 
> The change is to make the pollfunc attach/detach become part of the IIO
> framework, because plenty of drivers just call
> iio_triggered_buffer_postenable() & iio_triggered_buffer_predisable() to
> manually attach/detach the pollfunc for triggered buffers.

Okay, I understand this. at91-sama5d2_adc does not manually 
attach/detach the pollfunc. So why do we need to change anything here ?


> 
> That change is from 2015, and since then, some drivers were added that just
> manually attach/detach the pollfunc [and do nothing more with the
> postenable/predisable hooks].
> 
> I tried to upstream a more complete version of that patch a while ago [u1].
> https://patchwork.kernel.org/patch/10482167/
> https://patchwork.kernel.org/patch/10737291/
> 
> The conclusion was to first fix the attach/detach pollfunc order in all IIO
> drivers, so that when patch [u1] is applied, there is no more discussion
> about the correct order for attach/detach pollfunc.

Allright, what is required to be fixed regarding the order, in this 
specific case? We enable the DMA, and then we do the normal 'postenable' 
that was called anyway if we did not override the 'postenable' in the 
ops. Do you want to move this code to 'preenable' and keep 'postenable' 
to the standard subsystem one ?

The same applies to the predisable, we first call the subsystem 
'predisable' then do the specific at91 stuff. You want to move this to 
the 'postdisable' ?

I think reverting the order inside the functions themselves is not good 
as we replace the order of starting trigger/DMA setup.
So, coming to your question below...

> 
> Coming back here [and to your question], my answer is: I don't know if the
> at91 DMA needs to be enabled/disabled before/after the pollfunc
> attach/detach.
> This sounds like specific stuff for at91 [which is fine].
> 
> It could be that some other hooks may need to used to enable DMA
> before/after the attach/detach pollfunc. Maybe preenable()/postdisable() ?
> 
> In any case, what I would like [with this discussion], is to resolve a
> situation where we can get closer to moving the attach/pollfunc code to IIO
> core. So, if AT91 requires a different ordering, I think you would be more
> appropriate to tell me, and propose an alternative to this patch.

... yes, this looks more appropriate, to move things to 
'preenable/postdisable', if you feel like 'postenable/predisable' is not 
the proper place to put them.
But the order itself, first enable DMA then trigger, and disable in 
reverse order, I do not think there is anything wrong with that? Am I 
misunderstanding ?

If Jonathan or Ludovic have a different idea, please let me know.

Also, I can test your patch to see if everything is fine.

Thanks,
Eugen

> 
> Thanks :)
> Alex
> 
>>
>>>>> For this driver, the predisable & postenable hooks are also need to
>>>>> take
>>>>> into consideration the touchscreen, so the hooks need to be put in
>>>>> places
>>>>> that avoid the code for that cares about it.
>>>>>
>>>>
>>>> ping here
>>>>
>>>>> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>>>>> ---
>>>>>     drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
>>>>>     1 file changed, 10 insertions(+), 9 deletions(-)
>>>>>
>>>>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
>>>>> b/drivers/iio/adc/at91-
>>>>> sama5d2_adc.c
>>>>> index e1850f3d5cf3..ac3e5c4c9840 100644
>>>>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>>>>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>>>>> @@ -889,20 +889,24 @@ static int at91_adc_buffer_postenable(struct
>>>>> iio_dev *indio_dev)
>>>>>          if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>>>>                  return -EINVAL;
>>>>>
>>>>> +     ret = iio_triggered_buffer_postenable(indio_dev);
>>>>> +     if (ret)
>>>>> +             return ret;
>>>>> +
>>>>>          /* we continue with the triggered buffer */
>>>>>          ret = at91_adc_dma_start(indio_dev);
>>>>>          if (ret) {
>>>>>                  dev_err(&indio_dev->dev, "buffer postenable
>>>>> failed\n");
>>>>> +             iio_triggered_buffer_predisable(indio_dev);
>>>>>                  return ret;
>>>>>          }
>>>>>
>>>>> -     return iio_triggered_buffer_postenable(indio_dev);
>>>>> +     return 0;
>>>>>     }
>>>>>
>>>>>     static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>>>>>     {
>>>>>          struct at91_adc_state *st = iio_priv(indio_dev);
>>>>> -     int ret;
>>>>>          u8 bit;
>>>>>
>>>>>          /* check if we are disabling triggered buffer or the
>>>>> touchscreen */
>>>>> @@ -916,13 +920,8 @@ static int at91_adc_buffer_predisable(struct
>>>>> iio_dev
>>>>> *indio_dev)
>>>>>          if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>>>>>                  return -EINVAL;
>>>>>
>>>>> -     /* continue with the triggered buffer */
>>>>> -     ret = iio_triggered_buffer_predisable(indio_dev);
>>>>> -     if (ret < 0)
>>>>> -             dev_err(&indio_dev->dev, "buffer predisable
>>>>> failed\n");
>>>>> -
>>>>>          if (!st->dma_st.dma_chan)
>>>>> -             return ret;
>>>>> +             goto out;
>>>>>
>>>>>          /* if we are using DMA we must clear registers and end DMA
>>>>> */
>>>>>          dmaengine_terminate_sync(st->dma_st.dma_chan);
>>>>> @@ -949,7 +948,9 @@ static int at91_adc_buffer_predisable(struct
>>>>> iio_dev
>>>>> *indio_dev)
>>>>>
>>>>>          /* read overflow register to clear possible overflow status
>>>>> */
>>>>>          at91_adc_readl(st, AT91_SAMA5D2_OVER);
>>>>> -     return ret;
>>>>> +
>>>>> +out:
>>>
>>> I would prefer if this label is named with a function name prefix,
>>> otherwise 'out' is pretty generic and can collide with other things in
>>> the file... I want to avoid having an out2 , out3 later if code
>>> changes.
>>>
> 
> Sure.
> Will do that.
> 
> I did not bother much with these labels, because after applying [u1], some
> of them [maybe all] should go away.
> 
> 
>>> Thanks for the patch,
>>> Eugen
>>>
>>>>> +     return iio_triggered_buffer_predisable(indio_dev);
>>>>>     }
>>>>>
>>>>>     static const struct iio_buffer_setup_ops at91_buffer_setup_ops =
>>>>> {
>>>> _______________________________________________
>>>> linux-arm-kernel mailing list
>>>> linux-arm-kernel@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
