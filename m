Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BBD14C733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 09:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3rBQ8GZ/1vBQNdxI0DltauP6ke0jXgVPMHZuKtpPB4=; b=NkLc/TTFn4fAUY
	6ZkQewwcXcd6jiBARofTs/dSdhXfoPghkkpbfql+rperBTEQkDw2FMY94+SIf/Q54o6L9W12wYjed
	NsUuHcLk+HflF9QfPI+z7eQc84exGleQR0h9jnvNtZWyPs4UPRONO7K65arsdLHxxwGDOkmzzb90z
	0eL4eedbALU647UIHeBduAVmRG/ijTrUgvE7pb5rbg+V0x1KhtEm0Cx7+mbT/Wcx7UQiqXeo3UAMp
	MZw7FU8FC2SZ8d7ZKfIou2Bh5fGCaxZCua4IuYPk9SIT0OjcoP6mKRgiq4CHDbqi2Q6MK/NCCGfgY
	hdmIWCnJiqLw/YlkkOgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwiN8-0003Sf-L9; Wed, 29 Jan 2020 08:06:50 +0000
Received: from mail-db8eur05on2127.outbound.protection.outlook.com
 ([40.107.20.127] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwiMy-0003S8-UX
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 08:06:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f72Y1REEW9JpKXFak8mX+u9o2CtRpDXoDKrAHy/zSYpY+I9VGj02hgwGOebnCbjEmlFebohMLFjo5cDV6Dz8+1PHUQIyf/NxpaWLEoxGZX55fF4WyJaNOpEvw+J7N5G8s5lYqwq+Q/FKcKjSldEAJC8kX0OkoQHo8WmchJWPQ8DsiwahdYUjgY8OG34wTKsoOOsXLagh6TUPLIsuTd1mJHzMA/BMKs8Qv59CH9vk1F7kvWX7MBp3vHNRidlh6YtGWXkjGba82/Iol6O2f3FIC3xrcp2mmCbPpb9ubzky2wLSdo7pfUGTZRMk4+gCGEgNXTpJ5IKoArgZsuYhNtOtUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YA+IxNNhZXAZarUdhmtadRKZ3bSHnOcids1aLsayQOw=;
 b=H8+8y+gcAO3aF66DtBgkiupf/SSvpsj5ygXyIYTkrbWWCc/ceNAF2+/smGZ4YzO+drC/whH0qAmkYcoUjd+1jqVgyTZ/PRySbcWHjATCkdxAV5NaYsR9BGSLoL0tEPhnivxvpPoRKGohy8jGwiVP9A2Xu9jbQYHZl/CR5V3016vPQDiR/QhvADHryyyFuhCf8AQ2KbBGgKLvQCUJlKNdHE9R1eK3nHus7O8fdS6CsBcnbT8ysxVswfgT+SSbV534+iuTcc6H3QIY5dN5bCByeRbKvyhQZDOwgoRFzy8f8RkMQJasqyXcOAbxxjgBRYOBl5OQAO5tA86UD6AiYu8q9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YA+IxNNhZXAZarUdhmtadRKZ3bSHnOcids1aLsayQOw=;
 b=QgiIWV/7qb003Qs7mwZorr5vizhJreKHOB8RKvV9146/6KLU8FdExsyHaCatOBCUwWMSzATsj3zDI4eqHDkTt0TNzztIJreI9hoPfccAcOFnOBlYAheCz5uXrXUbvGMrmiRy71Yaea9NJlQu/zcc2WcITyhgS6hqJZof1H+AmvU=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3580.eurprd02.prod.outlook.com (52.134.66.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Wed, 29 Jan 2020 08:06:33 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 08:06:32 +0000
Received: from [192.168.13.3] (213.112.137.122) by
 HE1PR06CA0146.eurprd06.prod.outlook.com (2603:10a6:7:16::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22 via Frontend Transport; Wed, 29 Jan 2020 08:06:31 +0000
From: Peter Rosin <peda@axentia.se>
To: Colin Ian King <colin.king@canonical.com>, Dan Carpenter
 <dan.carpenter@oracle.com>, Michal Simek <michal.simek@xilinx.com>, Johan
 Hovold <johan@kernel.org>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Topic: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Index: AQHV1PvGmbkS3JsMKku+pbwF3sqcKKf+WLcAgAAReoCAAADJgIACM4iAgAAX7YCAAJWdAA==
Date: Wed, 29 Jan 2020 08:06:32 +0000
Message-ID: <f8c236de-4ed6-49dc-e5b7-283ebb859199@axentia.se>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
 <20200127120535.GC1847@kadam>
 <89661e5e-7662-81a5-ec36-57367825de5e@canonical.com>
 <35ed6501-3b26-36a9-d332-d4ed3366ebd8@axentia.se>
 <3b287fb5-e344-c13a-2803-09c2958b9b0d@canonical.com>
In-Reply-To: <3b287fb5-e344-c13a-2803-09c2958b9b0d@canonical.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [213.112.137.122]
x-clientproxiedby: HE1PR06CA0146.eurprd06.prod.outlook.com
 (2603:10a6:7:16::33) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c39b6653-5cb5-46e2-7048-08d7a4922716
x-ms-traffictypediagnostic: DB3PR0202MB3580:
x-microsoft-antispam-prvs: <DB3PR0202MB358052A74A019793FAF31705BC050@DB3PR0202MB3580.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:341;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(396003)(39830400003)(136003)(366004)(199004)(189003)(31696002)(508600001)(8936002)(2906002)(36756003)(31686004)(81156014)(8676002)(81166006)(66446008)(86362001)(6486002)(66556008)(64756008)(5660300002)(71200400001)(26005)(4326008)(186003)(66476007)(956004)(2616005)(66946007)(53546011)(52116002)(16526019)(316002)(16576012)(54906003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3580;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e23Ipoi6H93eYGUEw2lpJM8EFfefqjj+znORdfhIAOSufGHjc2XvjN6+3U2rpl3SAe4XqIilzrYD/MPfXRBIadOEXvE74RT0AJpuGxpBJkQa3Tp5jbai/Cs/g+ojilVgsXfnQR/HedP1i4Qw02DPd+a3RWxagWytdAHtlkrx0/+0rmAwIzkE/SMuthRsnoS0+4YU92DQ8A4zY9/LVyG9VLj9F5OP/ma10dur7TfVvMddctAbuht94ZRDCj50MErT1Zok+qFP59XRLcKjDRH557LBGCtjXRXt4uuL56IWMzBDOSYehS7tbYOkt0iO7srZ+Y5xmLNguUi+5HVBzd4IZ4gJ8AguEz4P8/dfwO+nSb5zD82bb6R+sQKaBtVTLWBQGi/0w7om4UpssP0gLkKu7mFDCxPQrgn1A8NpvMdQ7KQvYCWJSFmELi1ALg+JBFco
x-ms-exchange-antispam-messagedata: 2F3JeTa5T8wSpN9xEhMoaFslrRnwUXzdLOdnpmlK+vsgPA/qg486orZDCeG+4FKdRC29swqOf0CIB4mVdBTC4h0TTxaHcr+gwKgNZH1KSrhVyrYv0qK0tBEBXKJLJLMMzYtM8YLd+mezcojq/w/TJQ==
x-ms-exchange-transport-forked: True
Content-ID: <C71D27A5CDBB8849A01AB6970F676569@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: c39b6653-5cb5-46e2-7048-08d7a4922716
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 08:06:32.7614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vfgtHayPNMFksAn55MMOeUCe6mDhG84NdB7VzKqy2c/QIoehvpmBNmCDMcAh+vR6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_000641_205433_4861D817 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.127 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-29 00:10, Colin Ian King wrote:
> On 28/01/2020 21:45, Peter Rosin wrote:
>> On 2020-01-27 13:08, Colin Ian King wrote:
>>> On 27/01/2020 12:05, Dan Carpenter wrote:
>>>> On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
>>>>> On 27. 01. 20 11:23, Colin King wrote:
>>>>>> From: Colin Ian King <colin.king@canonical.com>
>>>>>>
>>>>>> There is a statement that is indented one level too deeply, remove
>>>>>> the extraneous tab.
>>>>>>
>>>>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>>>>>> ---
>>>>>> V2: fix type in commit message
>>>>>> ---
>>>>>>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
>>>>>> index b17d30c9ab40..90c1c362394d 100644
>>>>>> --- a/drivers/i2c/busses/i2c-xiic.c
>>>>>> +++ b/drivers/i2c/busses/i2c-xiic.c
>>>>>> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>>>>>>  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>>>>>>  		if (time_after(jiffies, timeout)) {
>>>>>>  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
>>>>>> -				return -ETIMEDOUT;
>>>>>> +			return -ETIMEDOUT;
>>>>>>  		}
>>>>>>  	}
>>>>>>  
>>>>>>
>>>>>
>>>>> As was suggested by Peter you should also add Fixes: <sha1> ("patch
>>>>> subject")
>>>>>
>>>>
>>>> It's not really a bugfix, it's just a cleanup.
>>>
>>> I'm surprised i wasn't asked for a bug number too.
>>
>> Very funny.
> 
> Apologies for being flippant. I didn't mean to offend. My bad #1.

Apology accepted, no hard feelings. Don't worry about it, and sorry on my
part for a possible overreaction!

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
