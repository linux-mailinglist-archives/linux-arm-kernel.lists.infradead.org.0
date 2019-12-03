Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFC410FD7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb0hDCaQlkXyjj6KE8fyU5GpqTHtHROLatrRxOsYBkA=; b=kf8QrEDAOwZc1I
	fQ1nCEwr6OO7YSs60wYz20yZDV3tK9Mf93G7igL67OFxptqqiefec2DjttQ0shuZ9rrsgiHaOj3/4
	NWTzQ4tajK4DXjkpN5Du6yc9afUL1vHwWgWEOD46VENm7z+p4hxzPp0ZaSDy3REfsXymXp5whxNOx
	ikxFRd2jCkJrCqNCK3kY4aI++hgr/A/QKAf5i9Yc5Ot5hiYlzgfqvhPLobfRWQwudS/dUU9Rf2N0P
	NaYsmztVOWWGExIldgA6Duyg49u1PxOC2p5JdwY+YoiiEytarnp+hfYWRBzCDSGaUIBMoiUBNkTpz
	RyshXHcJ1goBUPgV3wtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic77m-0003RY-J6; Tue, 03 Dec 2019 12:17:50 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic77e-0003M9-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:17:44 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xucRU/gZXc6bR9sWr2GsvLC7501YqQ0R5UUgoG/iwG7eUHiKMX8Nit34WdolT80ss6tx2Pc8uV
 QySrWLWXXsT2ftetJt31z5oI3dCHM6bv3VT5T8SzCMPPCdozCm6KYXWCIAH4KoCm0L4R4SlbHU
 Vu3bLzTMMNETNbuRCuQwkNbz4JYKpabXby4OTeR2lYrbakA01gnKBc1bHMYZ5heX+OSGM2HrQ/
 BoVWdUa8RnWLwP4+JWv8bK9WRa3Q+UBXNC45d04Y3oLod+urQnxfVe5941dNjBli+iK/rf8zqd
 3WQ=
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="58577949"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 05:17:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 05:17:36 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Dec 2019 05:17:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCZo1OMphRy/tZuiYPwXUaA9DvwAzba1WKYkjaqrYT447aE1cTmGhuXf55AbXRIiMjDqGLs02KaHWeXE3KKsYWScnVLCx1LI+rrjO9AtthupVn0usUUPLhB4vsQZnXQCHQdHQY0ABTINBUc2HgDGXekKfkesiwc0sZcvMxfXJW3jaHNuWKhsAjpxYCeXP5/+cI9balxN3a8AZ8giATyfJJe5tZMn8z7g7nuW7p3jBK8/QFgRlrGpBbUTDN1odIB5K3rIxDVkioMG5CDvR6BCMECTwsHqkQ5nF3xloo3gkc/rt7DUz35ID9z52EgYx3Ls+nturyQC1AXQPfQ3RHtKLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WefrUTgDqd5plj6/DrtCCMbnV9LMt3JU+ooAFDBXuqU=;
 b=XMGCI5QjzhjfPegMDFggQnZ3N1kbcuzrGJDzNPAWO1/zjBi46ZDNK5pnJCREFEWOrzI2SMarF9cRMcengb1mVHxxHviCMjbzI02uEos1cnx7LQNiCHMzrHvLTin+TBERl1NGxo36v2hC7orlN9J0ziDf0XlxpI2AYpG+lFs7nxi0tli9Z1U8UmMPxoCAkrvW8lyIh3ZHcA8KJqoUPRmU9DDWvOrrjlsBH1E2sOHFybRIstjI3qQGGPHNHriXC1NLmMx4KOUneMAN+DsQ+xlNi1M1oYYDlAWHydco0zwnHzxY3sgACVOy9LPXAYEw5t7nDsWbmNqaIshZ4+aGF1wWhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WefrUTgDqd5plj6/DrtCCMbnV9LMt3JU+ooAFDBXuqU=;
 b=dB1nz4MaNliWMwP66OS/a99V7qM4i5KKPrTLAFuMYtJR4dpyGFjsjLraaRUyg+E3dtmRJozWhCbgs+9dpVfUxrd4WU4WcuE5Yg8B6VhkhoN5YdcG3SGiux59D9dRWp82+9V9HxymGXt+pbDM3wbtr5OP4pT/1nx058/mqSktqJE=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1323.namprd11.prod.outlook.com (10.168.108.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 12:17:33 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 12:17:32 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandru.Ardelean@analog.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHVo6GcybDu2MmyfkWfKAIGUFGv9aegRneAgABwyQCAAQdpgIAGeAaAgAAlqACAAAOTgA==
Date: Tue, 3 Dec 2019 12:17:32 +0000
Message-ID: <3a8ea46b-14d4-30d8-5766-02538cab8394@microchip.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
 <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
 <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
 <0075d7fc890b0986f2113664c664ff46931de432.camel@analog.com>
In-Reply-To: <0075d7fc890b0986f2113664c664ff46931de432.camel@analog.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4P190CA0022.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:200:56::32) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191203141711886
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1270efa2-b469-46b4-4e48-08d777eac613
x-ms-traffictypediagnostic: DM5PR11MB1323:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1323250C0F42B91B2C245ABAE8420@DM5PR11MB1323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(396003)(346002)(366004)(199004)(189003)(51914003)(446003)(2201001)(186003)(316002)(6246003)(66446008)(64756008)(52116002)(99286004)(5660300002)(11346002)(2616005)(66476007)(110136005)(54906003)(31686004)(36756003)(66946007)(66556008)(86362001)(6436002)(6486002)(71190400001)(71200400001)(6306002)(25786009)(30864003)(2501003)(4326008)(8936002)(2906002)(14444005)(7736002)(966005)(478600001)(8676002)(6116002)(3846002)(4001150100001)(229853002)(81156014)(81166006)(14454004)(256004)(76176011)(5024004)(102836004)(305945005)(6506007)(53546011)(386003)(31696002)(26005)(6512007)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1323;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5lrSIJtwVyBXBpAC0Y0Db5EhITB3m/zlc28v14OGhGsaPijkHG6QqCFGcqW9dTMzZ+58ze3m0TNhmtRJv4c+pv+V434P3AVCLayFpnuhBDp1uqk7Nbld73eycnuZZHZFR8jOXWtSzNasEPDs2qp8HIt1TDE324EYZkiTEJlJsYDwfwDJPQaHoDTvQFwejRNLjlnNLvUaCLBbYpCKMW384ksfRP7erAt7jmTgr0fZuxTfl6XShYBnH28m/jxXEfKUUzs2gm5F+sTW9Xuk5daaZ/mRrUTTyi8uiOwvEzN6ZT81Gu5MbgFW92IGYvID1Sl+thEZ0xmh4E4WEVbqiElWNsCJiFdJ/sRTGF8HUrwHg8OMplddGcpfYRY3n3OCB5lXmiK8Si8f6/1I6Gu9+JnEKWoLQR1tHig07r2PHzHQqcjWGngT+OuY46a2SCyLvBuDZVJ+fTrsUwnyqoVSFAbkMZ+i5YTTtcVuwCXo5Y/S1ww=
Content-ID: <2B8178F32A40634CBE4A12C8EA570F56@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1270efa2-b469-46b4-4e48-08d777eac613
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 12:17:32.7739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rcLiyZAUSrLuLXuFQiI/fWmSOGFBlA03tAA86ZZ8VqvKM+N+cJldU+VWBS2Qvzzcix6G9OSv/gvwqO9JVE6hs7gNhcVe/MqSoVG8EMLOjPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_041742_843156_206DF4AF 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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



On 03.12.2019 14:04, Ardelean, Alexandru wrote:

> On Tue, 2019-12-03 at 09:49 +0000, Eugen.Hristev@microchip.com wrote:
>> [External]
>>
>>
>>
>> On 29.11.2019 09:02, Ardelean, Alexandru wrote:
>>
>>> On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com wrote:
>>>
>>> Hey,
>>>
>>> Sorry for the late reply.
>>> I'm also juggling a few things.
>>>
>>>> On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
>>>>
>>>>> On 25.11.2019 17:03, Ardelean, Alexandru wrote:
>>>>>> On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
>>>>>>> The iio_triggered_buffer_{predisable,postenable} functions
>>>>>>> attach/detach
>>>>>>> poll functions.
>>>>>>>
>>>>>>> The iio_triggered_buffer_postenable() should be called first to
>>>>>>> attach
>>>>>>> the
>>>>>>> poll function, and then the driver can init the data to be
>>>>>>> triggered.
>>>>>>>
>>>>>>> Similarly, iio_triggered_buffer_predisable() should be called
>>>>>>> last
>>>>>>> to
>>>>>>> first
>>>>>>> disable the data (to be triggered) and then the poll function
>>>>>>> should be
>>>>>>> detached.
>>>>>
>>>>> Hi Alexandru,
>>>>>
>>>>> Sorry for this late reply,
>>>>>
>>>>> I remember that by adding specific at91_adc code for
>>>>> predisable/postenable , I was replacing the existing standard
>>>>> callback
>>>>> with my own, and have my specific at91 code before postenable and
>>>>> then
>>>>> calling the subsystem postenable,
>>>>> and in similar way, for predisable, first call the subsystem
>>>>> predisable
>>>>> then doing my predisable code (in reverse order as in postenable)
>>>>>
>>>>> If you say the order should be reversed (basically have the
>>>>> pollfunction
>>>>> first), how is current code working ?
>>>>> Should current code fail if the poll function is not attached in
>>>>> time ?
>>>>> Or there is a race between triggered data and the attachment of the
>>>>> pollfunc ?
>>>>>
>>>>> I am thinking that attaching the pollfunc later makes it work
>>>>> because
>>>>> the DMA is not started yet. What happens if we have the pollfunc
>>>>> attached but DMA is not started (basically the trigger is not
>>>>> started)
>>>>> ,
>>>>> can this lead to unexpected behavior ? Like the pollfunc polling
>>>>> but no
>>>>> trigger started/no DMA started.
>>>>
>>>> I looked a bit more into the code and in DMA case, using postenable
>>>> first will lead to calling attach pollfunc, which will also enable
>>>> the
>>>> trigger, but the DMA is not yet started.
>>>> Is this the desired effect ?
>>>
>>> Yes.
>>
>> How is this correct ? We start the trigger but have no buffer to carry
>> to... what happens with the data ? -> I think we both have an answer to
>> that, as you state below
>>
>>>> Normally when using DMA I would say we
>>>> would need to enable DMA first to be ready to carry data (and
>>>> coherent
>>>> area etc.) and then enable the trigger.
>>>
>>> So, there is a change in our tree [from some time ago].
>>> See here:
>>> https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8
>>>
>>> Particularly, what's interesting is around line:
>>> https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
>>> And you may need to expand some stuff to see more of the function-body.
>>> And some things may have changed in upstream IIO since that change.
>>>
>>> The change is to make the pollfunc attach/detach become part of the IIO
>>> framework, because plenty of drivers just call
>>> iio_triggered_buffer_postenable() & iio_triggered_buffer_predisable()
>>> to
>>> manually attach/detach the pollfunc for triggered buffers.
>>
>> Okay, I understand this. at91-sama5d2_adc does not manually
>> attach/detach the pollfunc. So why do we need to change anything here ?
>>
>>
>>> That change is from 2015, and since then, some drivers were added that
>>> just
>>> manually attach/detach the pollfunc [and do nothing more with the
>>> postenable/predisable hooks].
>>>
>>> I tried to upstream a more complete version of that patch a while ago
>>> [u1].
>>> https://patchwork.kernel.org/patch/10482167/
>>> https://patchwork.kernel.org/patch/10737291/
>>>
>>> The conclusion was to first fix the attach/detach pollfunc order in all
>>> IIO
>>> drivers, so that when patch [u1] is applied, there is no more
>>> discussion
>>> about the correct order for attach/detach pollfunc.
>>
>> Allright, what is required to be fixed regarding the order, in this
>> specific case? We enable the DMA, and then we do the normal 'postenable'
>> that was called anyway if we did not override the 'postenable' in the
>> ops. Do you want to move this code to 'preenable' and keep 'postenable'
>> to the standard subsystem one ?
>>
>> The same applies to the predisable, we first call the subsystem
>> 'predisable' then do the specific at91 stuff. You want to move this to
>> the 'postdisable' ?
>>
>> I think reverting the order inside the functions themselves is not good
>> as we replace the order of starting trigger/DMA setup.
>> So, coming to your question below...
>>
>>> Coming back here [and to your question], my answer is: I don't know if
>>> the
>>> at91 DMA needs to be enabled/disabled before/after the pollfunc
>>> attach/detach.
>>> This sounds like specific stuff for at91 [which is fine].
>>>
>>> It could be that some other hooks may need to used to enable DMA
>>> before/after the attach/detach pollfunc. Maybe
>>> preenable()/postdisable() ?
>>>
>>> In any case, what I would like [with this discussion], is to resolve a
>>> situation where we can get closer to moving the attach/pollfunc code to
>>> IIO
>>> core. So, if AT91 requires a different ordering, I think you would be
>>> more
>>> appropriate to tell me, and propose an alternative to this patch.
>>
>> ... yes, this looks more appropriate, to move things to
>> 'preenable/postdisable', if you feel like 'postenable/predisable' is not
>> the proper place to put them.
>> But the order itself, first enable DMA then trigger, and disable in
>> reverse order, I do not think there is anything wrong with that? Am I
>> misunderstanding ?
> 
> Should be good.
> 
>>
>> If Jonathan or Ludovic have a different idea, please let me know.
> 
> There is an alternative here [to this].
> Maybe using the IIO Buffer DMA[Engine] integration that Lars wrote [1].
> This would avoid calling dmaengine_terminate_sync() and similar hooks in
> the AT91 driver. That also preserves the correct order (start DMA first,
> then attach pollfunc ; and reverse on disable).
> But that is more work; not on the patch itself, but more on the testing.

Initially, when I implemented the DMA part for this driver, this was the 
idea. However the DMA engine was not used at that time by anyone , and I 
could not make it work properly. Jonathan advised at that moment to use 
this current framework.

> 
> [1] Upstreaming more parts for the IIO Buffer DMA[Engine] integration is on
> my to-do-list as well. I think there are still some patches that we use,
> but are not upstreamed yet.
> 
> I'll come-up a with a V2 for this with preenable()/postdisable()
> alternative here.

Ok, I will test it .

What I do not understand completely is why it bothers you to have at91 
specific code in postenable / predisable.
The same thing will happen will happen with preenable/postdisable: 
specific at91 code will be called after subsystem preenable and before 
subsystem postdisable.

> 
> Thanks
> Alex
> 
>>
>> Also, I can test your patch to see if everything is fine.
>>
>> Thanks,
>> Eugen
>>
>>> Thanks :)
>>> Alex
>>>
>>>>>>> For this driver, the predisable & postenable hooks are also
>>>>>>> need to
>>>>>>> take
>>>>>>> into consideration the touchscreen, so the hooks need to be put
>>>>>>> in
>>>>>>> places
>>>>>>> that avoid the code for that cares about it.
>>>>>>>
>>>>>>
>>>>>> ping here
>>>>>>
>>>>>>> Signed-off-by: Alexandru Ardelean <
>>>>>>> alexandru.ardelean@analog.com>
>>>>>>> ---
>>>>>>>      drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
>>>>>>>      1 file changed, 10 insertions(+), 9 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
>>>>>>> b/drivers/iio/adc/at91-
>>>>>>> sama5d2_adc.c
>>>>>>> index e1850f3d5cf3..ac3e5c4c9840 100644
>>>>>>> --- a/drivers/iio/adc/at91-sama5d2_adc.c
>>>>>>> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
>>>>>>> @@ -889,20 +889,24 @@ static int
>>>>>>> at91_adc_buffer_postenable(struct
>>>>>>> iio_dev *indio_dev)
>>>>>>>           if (!(indio_dev->currentmode &
>>>>>>> INDIO_ALL_TRIGGERED_MODES))
>>>>>>>                   return -EINVAL;
>>>>>>>
>>>>>>> +     ret = iio_triggered_buffer_postenable(indio_dev);
>>>>>>> +     if (ret)
>>>>>>> +             return ret;
>>>>>>> +
>>>>>>>           /* we continue with the triggered buffer */
>>>>>>>           ret = at91_adc_dma_start(indio_dev);
>>>>>>>           if (ret) {
>>>>>>>                   dev_err(&indio_dev->dev, "buffer postenable
>>>>>>> failed\n");
>>>>>>> +             iio_triggered_buffer_predisable(indio_dev);
>>>>>>>                   return ret;
>>>>>>>           }
>>>>>>>
>>>>>>> -     return iio_triggered_buffer_postenable(indio_dev);
>>>>>>> +     return 0;
>>>>>>>      }
>>>>>>>
>>>>>>>      static int at91_adc_buffer_predisable(struct iio_dev
>>>>>>> *indio_dev)
>>>>>>>      {
>>>>>>>           struct at91_adc_state *st = iio_priv(indio_dev);
>>>>>>> -     int ret;
>>>>>>>           u8 bit;
>>>>>>>
>>>>>>>           /* check if we are disabling triggered buffer or the
>>>>>>> touchscreen */
>>>>>>> @@ -916,13 +920,8 @@ static int
>>>>>>> at91_adc_buffer_predisable(struct
>>>>>>> iio_dev
>>>>>>> *indio_dev)
>>>>>>>           if (!(indio_dev->currentmode &
>>>>>>> INDIO_ALL_TRIGGERED_MODES))
>>>>>>>                   return -EINVAL;
>>>>>>>
>>>>>>> -     /* continue with the triggered buffer */
>>>>>>> -     ret = iio_triggered_buffer_predisable(indio_dev);
>>>>>>> -     if (ret < 0)
>>>>>>> -             dev_err(&indio_dev->dev, "buffer predisable
>>>>>>> failed\n");
>>>>>>> -
>>>>>>>           if (!st->dma_st.dma_chan)
>>>>>>> -             return ret;
>>>>>>> +             goto out;
>>>>>>>
>>>>>>>           /* if we are using DMA we must clear registers and end
>>>>>>> DMA
>>>>>>> */
>>>>>>>           dmaengine_terminate_sync(st->dma_st.dma_chan);
>>>>>>> @@ -949,7 +948,9 @@ static int
>>>>>>> at91_adc_buffer_predisable(struct
>>>>>>> iio_dev
>>>>>>> *indio_dev)
>>>>>>>
>>>>>>>           /* read overflow register to clear possible overflow
>>>>>>> status
>>>>>>> */
>>>>>>>           at91_adc_readl(st, AT91_SAMA5D2_OVER);
>>>>>>> -     return ret;
>>>>>>> +
>>>>>>> +out:
>>>>>
>>>>> I would prefer if this label is named with a function name prefix,
>>>>> otherwise 'out' is pretty generic and can collide with other things
>>>>> in
>>>>> the file... I want to avoid having an out2 , out3 later if code
>>>>> changes.
>>>>>
>>>
>>> Sure.
>>> Will do that.
>>>
>>> I did not bother much with these labels, because after applying [u1],
>>> some
>>> of them [maybe all] should go away.
>>>
>>>
>>>>> Thanks for the patch,
>>>>> Eugen
>>>>>
>>>>>>> +     return iio_triggered_buffer_predisable(indio_dev);
>>>>>>>      }
>>>>>>>
>>>>>>>      static const struct iio_buffer_setup_ops
>>>>>>> at91_buffer_setup_ops =
>>>>>>> {
>>>>>> _______________________________________________
>>>>>> linux-arm-kernel mailing list
>>>>>> linux-arm-kernel@lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
