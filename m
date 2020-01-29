Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B251314C81C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 10:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boJApY1DICIcRQeY+9jnQuqn5zwWYNdmaJT+cFsXR7o=; b=BhIO7R+hWuhzZu
	TxclwdMRuVavqmmB7fHUI+jIqSUzXLXc6R+oWvKhgXjeBEF7M7AOxntPT0XmmVToHb3EdtyMJSdOz
	5LAFLtRjaoxV9OhtOOSZ01WINr7F/P3S7l2hGNcTkMuwzRBqx1O/m50OXE1wUd32K9ye+0YPK+OIi
	f9Ek8iIzkT0lvKsU52meknPCM7v0MbdR9Z6tc1Uua/K230NZx10C4kcN7jcOOVYk0Rjapr+EwJ8e8
	+/TFS4fdQ7SzTi/zMdHJJa1Odxr6waN9Aww7fkNtRgIoA7NgYfRI4J1yr/Shci0kjizEfqGoaDtiw
	9cpyA4zHHH7L3O3M4C4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwjgp-0000Xs-VO; Wed, 29 Jan 2020 09:31:15 +0000
Received: from mail-am6eur05on2133.outbound.protection.outlook.com
 ([40.107.22.133] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwjgg-0000Wf-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 09:31:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzUH5IJgyDFqcmgpX4/qByscx1qF9xPbjAEoMoZmUNpoii6ha+sjv57QEjPO1tcQWMjfYwTB8lKtiv3w9tvCk/IAhMXcHhzhn1FZn6MXoJnDceK3jUfLhBfF0A5TiVqJ3xdUB+hIHFO+JzilSEhsnV0NT8syv1bZ9T+DbVfnyo38WFKUKPI8WKdrtufybZcgW1vw2HH3n9nJdpHfno11kQCSaT0HOJblqcYhENcOkzX7Fu3NZvjbMJtoYHxbXyla70KRSi39cok428JY8FAvjFAqggUEX1hTz6nopQKjHnndqyKy1zw6yPRem8iQp/vpe0S53747p84PNAUC4/FtdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ltjWNUYv9Za7TBteZ5z5LMm27pUqUpPwrE6oYsvS7sQ=;
 b=mR+mMQ3idZYI6Lr25Te3g3qI768KFMZXNF2TQMTuQq7Apkk9i9Is7NMaOOUZS4JV/ubyDNnnvXQI9DR4hEy59IhkJe1t8xo0FSM52a2+jB+XwO9DaohydYEomL5HZWDmyn36yJi4AqRtwbUuyjF3+Q2ZXdsXGVUlvdnfXIS+qK7vfQxclUKnT6xLU1JK7dJesyTcdBAd638saCfP/LaKzQfRzEKxj7l4Agnfz2kPrIQyC8um3KdRwxjDCrPLmmQiwiXwPVq2LEgjQbfxHjFhHA3q//SH6tscEeRr5jqMgIvAGO9cZ7t9shTAP1zsumqANdRLrxO5/LOTwOI4FgXmAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ltjWNUYv9Za7TBteZ5z5LMm27pUqUpPwrE6oYsvS7sQ=;
 b=Gs6F2kcz3D/DfgxBjzewjgihM9LXxWt8HOEYS8HQVOIkAtXK2jEnW5kKAjgFNhg9KEXqQHiAvwNCGrauYsjKy2wYwEzZFomyM9Z/qShHTtGtGB0E+c1VNZPQcDl302AQwdsB2Xt07VaT8QJK/84aM+p3fW8QhwduyVdqOA+0bps=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3578.eurprd02.prod.outlook.com (52.134.68.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Wed, 29 Jan 2020 09:31:01 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 09:31:01 +0000
Received: from [192.168.13.3] (213.112.137.122) by
 HE1PR05CA0268.eurprd05.prod.outlook.com (2603:10a6:3:fc::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20 via Frontend Transport; Wed, 29 Jan 2020 09:31:00 +0000
From: Peter Rosin <peda@axentia.se>
To: Joe Perches <joe@perches.com>, Colin Ian King <colin.king@canonical.com>, 
 Dan Carpenter <dan.carpenter@oracle.com>, Michal Simek
 <michal.simek@xilinx.com>, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Topic: [PATCH][next][V2] i2c: xiic: fix indentation issue
Thread-Index: AQHV1PvGmbkS3JsMKku+pbwF3sqcKKf+WLcAgAAReoCAAADJgIACM4iAgAAX7YCAAApngIAAotGA
Date: Wed, 29 Jan 2020 09:31:00 +0000
Message-ID: <9cb18fbb-179b-ed17-04ad-af85769b25c0@axentia.se>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
 <20200127120535.GC1847@kadam>
 <89661e5e-7662-81a5-ec36-57367825de5e@canonical.com>
 <35ed6501-3b26-36a9-d332-d4ed3366ebd8@axentia.se>
 <3b287fb5-e344-c13a-2803-09c2958b9b0d@canonical.com>
 <60cd544bfba4251cf656f377c20ccf8b470a92dc.camel@perches.com>
In-Reply-To: <60cd544bfba4251cf656f377c20ccf8b470a92dc.camel@perches.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [213.112.137.122]
x-clientproxiedby: HE1PR05CA0268.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::20) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b390e00a-a57a-4d6d-f9b6-08d7a49df40c
x-ms-traffictypediagnostic: DB3PR0202MB3578:
x-microsoft-antispam-prvs: <DB3PR0202MB357829395EB0C11E94A8110DBC050@DB3PR0202MB3578.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39830400003)(346002)(366004)(376002)(189003)(199004)(8936002)(66446008)(64756008)(66556008)(81166006)(81156014)(8676002)(508600001)(66476007)(66946007)(6486002)(4326008)(31686004)(2616005)(86362001)(956004)(71200400001)(31696002)(2906002)(36756003)(52116002)(316002)(16576012)(26005)(53546011)(110136005)(186003)(54906003)(5660300002)(16526019);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3578;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bh8E8+CdJrqGt5XfAJ3ANZDi9RWUYqgOHIzrg+BLZhv5HxXd+U7kwCjUmZoZMATIyQYyRaRBa68V+R/TgBmyYqQ3icQuiSh54ul2+B4dJrlevTQCmcPNruUHCHTCi7ZEMqcXwOCvP4XuwHp8GPwvykdrpRqfLLsIhlh1phko8P6P/n0X6U7nenH0v6AA0GG4Q1kdji1dYrbP5TbexaEbJCqYWKvS4zlr2rrqw7NdQHK0MALhlBL5eybP7OS5/n2xoAZyxWScQNqReOds46zBqMZ6KvURqENh8/1gh4o5NpMc/yBaKKJ8ZXuY/3nrI47cFwXsy/KSpenHiq4Pkp35ssliwb4/GSHMC99JXoNacsxsUzmTPfpjNJi6yBbz53cS53X0s0YVr2p/S69R4MlZrsl5lordUXwG8Y6oHB/yeflIyhhAosu8Gfc+q5BvhNhB
x-ms-exchange-antispam-messagedata: TKqIV2f5BOTXvMuBcXMuSMCbQEumetMVTUhjYAuybRcSPvHBUN12vIQe/bt3oiMI1b6KNGuqrZQZLBNPTUZV0g7q+3H14RTvL/AHH0ikDDoA/hDjhIhKQEBmEQvUfDe1m4Il0sEN/BNvlbijPFjVzA==
x-ms-exchange-transport-forked: True
Content-ID: <906744DEC9C4064CA29594D64B3FCF31@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: b390e00a-a57a-4d6d-f9b6-08d7a49df40c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 09:31:00.8865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gElm0IaVfOsv01RfdHukLqfw3bLzQN5PUkcRk3d3gzQl/GQ+We7I99Nn44Irgwzn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3578
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_013107_336087_9B89DDBF 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.133 listed in list.dnswl.org]
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

On 2020-01-29 00:48, Joe Perches wrote:
> On Tue, 2020-01-28 at 23:10 +0000, Colin Ian King wrote:
>> On 28/01/2020 21:45, Peter Rosin wrote:
>>> On 2020-01-27 13:08, Colin Ian King wrote:
>>>> On 27/01/2020 12:05, Dan Carpenter wrote:
>>>>> On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
>>>>>> On 27. 01. 20 11:23, Colin King wrote:
>>>>>>> From: Colin Ian King <colin.king@canonical.com>
>>>>>>>
>>>>>>> There is a statement that is indented one level too deeply, remove
>>>>>>> the extraneous tab.
>>>>>>>
>>>>>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>>>>>>> ---
>>>>>>> V2: fix type in commit message
>>>>>>> ---
>>>>>>>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
>>>>>>> index b17d30c9ab40..90c1c362394d 100644
>>>>>>> --- a/drivers/i2c/busses/i2c-xiic.c
>>>>>>> +++ b/drivers/i2c/busses/i2c-xiic.c
>>>>>>> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>>>>>>>  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>>>>>>>  		if (time_after(jiffies, timeout)) {
>>>>>>>  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
>>>>>>> -				return -ETIMEDOUT;
>>>>>>> +			return -ETIMEDOUT;
>>>>>>>  		}
>>>>>>>  	}
>>>>>>>  
>>>>>>>
>>>>>>
>>>>>> As was suggested by Peter you should also add Fixes: <sha1> ("patch
>>>>>> subject")
>>>>>>
>>>>>
>>>>> It's not really a bugfix, it's just a cleanup.
>>>>
>>>> I'm surprised i wasn't asked for a bug number too.
>>>
>>> Very funny.
>>
>> Apologies for being flippant. I didn't mean to offend. My bad #1.
>>
>>> I realize that you, the three complainers (Johan, Dan and Colin), together
>>> have almost 10000 commits. So, I feel a bit outranked.
>>>
>>> However, this ridicule is unfair.

And the 4th heavy-weight steps in, and the grand total is now well past
10000 commits.

> It's not unfair.

Are you saying that it's fair???

> In _no_ sense is a whitespace only change a valid reason
> to use a "Fixes:" tag.
> 
> A whitespace only coding-style issue is _not_ a bug.

Right. That's one opinion. And it seems that many long time contributors agree
that this is the case. So it must be the only acceptable opinion. Or?

In my book coding-style issues is about taste, i.e. if you use spaces or tabs
to indent, and if and when you add a new-line before {. Etc. This fix is about
directly misleading code that noone writes on purpose. Clearly a bug in my
book, and not some meager "style" issue.

> From submitting-patches:
> 
> If your patch fixes a bug in a specific commit, e.g. you found an issue using
> ``git bisect``, please use the 'Fixes:' tag with the first 12 characters of
> the SHA-1 ID, and the one line summary.

You need to read that carefully. Do you see that "e.g." part? This quote states
*one* example of how you can find a bug. It's not some exhaustive list and thus
"proves" nothing what-so-ever.

Besides, reading the git biscet manual reveals that

"In fact, git bisect can be used to find the commit that changed any property
 of your project"

So, if we are being ridiculous, thanks for the support! Below is the proof that
I found a really horrible *bisectable* bug! Looks like a fixes-tag was warranted
after all!!!1!

On a more serious note I challenge you to find anything in Documentation/ that
tells me, without ambiguity, that the patch in question is *not* fixing a bug,
because your quote is clearly not it.

I'm *only* saying that it is not always so damn easy to categorize issues, and
that a mis-step does not warrant ridicule.

Cheers,
Peter


$ cat finder.sh
#! /bin/sh

if grep 'return -ETIMEDOUT;' drivers/i2c/busses/i2c-xiic.c; then
    exit 1
fi
$ git bisect start
$ git bisect bad
$ git bisect good v5.5-rc1
Bisecting: 814 revisions left to test after this (roughly 10 steps)
[0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec] pipe: fix empty pipe check in pipe_write()
$ git bisect run ./finder.sh
running ./finder.sh
Bisecting: 406 revisions left to test after this (roughly 9 steps)
[ca78fdeb00fa656f09afee977750e85da929d259] Merge tag 'drm-fixes-2020-01-03' of git://anongit.freedesktop.org/drm/drm
running ./finder.sh
Bisecting: 210 revisions left to test after this (roughly 8 steps)
[a5f48c7878d2365f6ff7008e9317abbc16f68847] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
running ./finder.sh
Bisecting: 102 revisions left to test after this (roughly 7 steps)
[7da37cd0520e71707a1190022377941b9cec3b0b] Merge tag 'staging-5.5-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging
running ./finder.sh
Bisecting: 52 revisions left to test after this (roughly 6 steps)
[040a3c33623ba4bd11588ab0820281b854a3ffaf] Merge tag 'iommu-fixes-v5.5-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu
running ./finder.sh
Bisecting: 26 revisions left to test after this (roughly 5 steps)
[b3ec946975737b949137fbb1a2db9e7cc5b9ae82] i2c: tegra: Check DMA completion status in addition to left time
running ./finder.sh
Bisecting: 13 revisions left to test after this (roughly 4 steps)
[e8d51e962936bf4527f41db318d53a80006f2bf7] docs: i2c: use the new API in 'writing-clients'
running ./finder.sh
Bisecting: 6 revisions left to test after this (roughly 3 steps)
[4a2d5f663dab6614772d8e28ca190b127ba46d9d] i2c: Enable compile testing for more drivers
running ./finder.sh
                                return -ETIMEDOUT;
Bisecting: 3 revisions left to test after this (roughly 2 steps)
[40b2ec1251c370bc5557568e259d4058c651d405] i2c: highlander: Use proper printk format for size_t
running ./finder.sh
Bisecting: 1 revision left to test after this (roughly 1 step)
[c9d059681b846f5d0a280950ea4dc58495b9b7a9] i2c: xiic: defer the probe if clock is not found
running ./finder.sh
                                return -ETIMEDOUT;
Bisecting: 0 revisions left to test after this (roughly 0 steps)
[b4c119dbc300c7a6ee2da70d5c7ba14747b35142] i2c: xiic: Add timeout to the rx fifo wait loop
running ./finder.sh
                                return -ETIMEDOUT;
b4c119dbc300c7a6ee2da70d5c7ba14747b35142 is the first bad commit
commit b4c119dbc300c7a6ee2da70d5c7ba14747b35142
Author: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Date:   Thu Jan 9 17:07:58 2020 +0530

    i2c: xiic: Add timeout to the rx fifo wait loop

    Add timeout to the rx fifo empty wait loop. Also check for the return
    value for xiic_reinit and pass it to xiic_start_xfer.

    Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
    Signed-off-by: Michal Simek <michal.simek@xilinx.com>
    Signed-off-by: Wolfram Sang <wsa@the-dreams.de>

:040000 040000 ca301fc2df019bb2acd07bddabe4afa492ad8f65 22d719ef351bf4897b465d10630e30e7c5cf665f M      drivers
bisect run success
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
