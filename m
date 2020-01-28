Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDA614C24F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 22:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyPOtEGQfu4pRH1mOldqSpa9P3tcUwCfZQC3UXcCVow=; b=DprJWNTWaNcM1M
	tzdnkoT6zGO/sq1WPC9nq4xlvhyovgpz3rKLOUyFBf/EmMB/EX4amIDJ3wTWR00d8s1M/VCXwdrEb
	czgutLfAkRYtikmV8Te6OoaTFUs6+Fi8tKKd+rfRmzFCJHJNyuYAY4sGFeGpLz2OP7UHaGNpBHlRI
	Z1UVbKvz1XRuf+thTa1CaFtsRjYpuNgyz75oFun5WmVS8AShZqwD2mgBhU+OuJXYVj/SrEDGNH+5A
	EOl72R1Xqr7qDqAwDbDY4dijxMPdLx2j1SbAKo0HHevyRaEkcQFUmHXlznZpxj6Q0WfzP4Smt90Td
	R4VnPnOzMjM6ilLZV61g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYg3-0006y5-5O; Tue, 28 Jan 2020 21:45:43 +0000
Received: from mail-eopbgr150095.outbound.protection.outlook.com
 ([40.107.15.95] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYft-0006wZ-1Q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 21:45:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GhIZaeayxZfPek2QkKKCAP/fDIJYQ2llofP2ohAm81jZEbvGid7h3jkQH1PKWh93q96mLpsgz6vvw3s3OnYWNWgdELJw4c0YWxtbvmLslD6iEKwa1v3Lxi2XWGjf151J9DqyTZy4JZ4DTAXcbGrIXvGe2pq3va0h5n1+kNzph+mavSPEBBv94h652YYePe0oR0A3a/KBbX1MHyolOFrPnAaCfgMZkNFh6SKTVbrz0gUmm4Ez6lWAWKqFKm8A1WCVhiFcC5qieJQn/PSuQefi7F5PswjPNZG9mruPt3QqWEMYwUFid0YUz0GT9WBiuk8QmQeZKu0SjJ0pTpFXWXIkbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=htIqDUmDB/HkjJLnaky6uCfhtrGm0jQ51y4ZfpwlidM=;
 b=deECpXI87GjG+U2Xn9WQspafk9NGrVVaKZIF/0p0yDfmGhmOUM6esnpmUVt91pDMmS+jSMEKzYg6w1fUBNOAp0icZzdA8pk+MvxEek8YMFSUPXIfuCYOMvdskrXQO9YPOD80zyQo65iIHFFSR2cupq5dkzyltZJQ6lSRSrK6z79sYlTGinlPO7aWkmvWGcxNUM0VjVPnORRZpe0v9M1AUNJWC9yqbiYWzw6nsIJ6U9b04DS6eGFZ9y2XDWWEKBvl3uvZbcR6ypxe/Hb34J9eGkYsQmGkiMZ8KJkit1XsmsIrQQGzsM29NHkgb0EQ8a4llOgJhZUbyszcW+OREx22Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=htIqDUmDB/HkjJLnaky6uCfhtrGm0jQ51y4ZfpwlidM=;
 b=dFZhbDjx9xCcBWKmPyCYpM3qeWgIN+IfEl0MXYDUCtT8BShk/3mTb5JraqKBuMvFj/OtnoGCh+hlGPBDFncPr079FBMiUnopI4r1ef6XSNhG+6IGvTD72gsteCA3jb8Vw7RyUS0WkzFIDxa9bGgHJHov7g22+nLTNCk+O2nEWbU=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3306.eurprd02.prod.outlook.com (52.134.70.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 21:45:24 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 21:45:24 +0000
Received: from [192.168.13.3] (213.112.137.122) by
 HE1P189CA0036.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:53::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22 via Frontend Transport; Tue, 28 Jan 2020 21:45:23 +0000
From: Peter Rosin <peda@axentia.se>
To: Colin Ian King <colin.king@canonical.com>, Dan Carpenter
 <dan.carpenter@oracle.com>, Michal Simek <michal.simek@xilinx.com>, Johan
 Hovold <johan@kernel.org>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Topic: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Index: AQHV1PvGmbkS3JsMKku+pbwF3sqcKKf+WLcAgAAReoCAAADJgIACM4iA
Date: Tue, 28 Jan 2020 21:45:24 +0000
Message-ID: <35ed6501-3b26-36a9-d332-d4ed3366ebd8@axentia.se>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
 <20200127120535.GC1847@kadam>
 <89661e5e-7662-81a5-ec36-57367825de5e@canonical.com>
In-Reply-To: <89661e5e-7662-81a5-ec36-57367825de5e@canonical.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [213.112.137.122]
x-clientproxiedby: HE1P189CA0036.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:53::49)
 To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d0b376-f696-4ccf-83a1-08d7a43b618c
x-ms-traffictypediagnostic: DB3PR0202MB3306:
x-microsoft-antispam-prvs: <DB3PR0202MB33064B43FA7EFD46D89FC50FBC0A0@DB3PR0202MB3306.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(376002)(346002)(136003)(396003)(189003)(199004)(86362001)(31696002)(54906003)(66556008)(110136005)(52116002)(26005)(316002)(6486002)(66446008)(66476007)(4326008)(31686004)(66946007)(53546011)(16576012)(2906002)(64756008)(36756003)(186003)(81166006)(16526019)(81156014)(8676002)(956004)(5660300002)(508600001)(2616005)(8936002)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3306;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cx0gO0oEphHe4jvfcR5Vko6CJaKzrkbM0Je6K+qVjBVppbsvCNWsSArKGtG7ECuQ64QiAQgQwaiAh5NJv3/KliJKxRyQud/KOd6owJnbeablr0vRvh81txjYpb5WbZnqtnP9Z+TQ/UjzdNuDrHcmvAXo1fU8r8ReZXWbZ+jDNwOFVFOmvvQmMTicIA2AIeb3jsSYd5CskPH6p4GEcXYfo1yuRI26YouYogd62JLHzRxkgHhWwZOf59ZXSEzJ9ZI4kh/fJSGyK/On5cCwn8iycexYMUVkpBSQMJa5o0+Q7sPGwBlog/+Znb4X7HmIWmbr5K3UflDswrCe3fRKgNN8waA1vyRhDiXOIg74ms6EkJqHCiSGWR3cFk87SWN7HO+D1CHntSqoo2P7BShXtq0tDL8KlsK72gt+mGEdbN8ircnyAp8Z+ADP3FCui7KRb+fA
x-ms-exchange-antispam-messagedata: +RJttpQ7vyqtRIPRZ5vFEsCXU8foIiVpQgGGs13OubyrtZgD7UxxN5/eKaqXiGMOaVIP3PwbD8wNGj89Hii301n2TC5rZOqG9jHJryIVugXwhoR1uDdsmkkBjcKZgRcyJRr7R5jERFjAw+ozlZwqwg==
x-ms-exchange-transport-forked: True
Content-ID: <46710B87C475CD45A9ED51494BE6860C@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d0b376-f696-4ccf-83a1-08d7a43b618c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 21:45:24.4857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nv2YsKb43HlgiZBhN6f0NrX2asVE5+XMbMAlZD88o09hiInjS3H2k+AFT7kVOntI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_134533_280916_9E1BC234 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.95 listed in list.dnswl.org]
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

On 2020-01-27 13:08, Colin Ian King wrote:
> On 27/01/2020 12:05, Dan Carpenter wrote:
>> On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
>>> On 27. 01. 20 11:23, Colin King wrote:
>>>> From: Colin Ian King <colin.king@canonical.com>
>>>>
>>>> There is a statement that is indented one level too deeply, remove
>>>> the extraneous tab.
>>>>
>>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>>>> ---
>>>> V2: fix type in commit message
>>>> ---
>>>>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
>>>> index b17d30c9ab40..90c1c362394d 100644
>>>> --- a/drivers/i2c/busses/i2c-xiic.c
>>>> +++ b/drivers/i2c/busses/i2c-xiic.c
>>>> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>>>>  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>>>>  		if (time_after(jiffies, timeout)) {
>>>>  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
>>>> -				return -ETIMEDOUT;
>>>> +			return -ETIMEDOUT;
>>>>  		}
>>>>  	}
>>>>  
>>>>
>>>
>>> As was suggested by Peter you should also add Fixes: <sha1> ("patch
>>> subject")
>>>
>>
>> It's not really a bugfix, it's just a cleanup.
> 
> I'm surprised i wasn't asked for a bug number too.

Very funny.

I realize that you, the three complainers (Johan, Dan and Colin), together
have almost 10000 commits. So, I feel a bit outranked.

However, this ridicule is unfair.

The problem here is that Colin sent a v2, ignoring my suggestion to add
a fixes-tag without mentioning that my suggestion was in fact ignored
(and why). That is a sure way to invite someone else to point out what
seemed like an omission. Which happened. And then this farce ensued.

So, Colin, take a long look in the mirror and direct your sarcasm in
whatever direction you feel appropriate.

I also maintain that noone writes code like this on purpose (at least
not without some ulterior motive). This is the kind of stuff that cause
problems and wastes time later when someone mis-reads the code. You three
people, with all those commits, should know that. My point is that this
is more than just cleanup and is indeed fixing a bug. Claiming otherwise
is just silly. The compiler is not the only consumer of the code.

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
