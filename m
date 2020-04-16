Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586E81ABE40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNETbCfmXAZKgx73XK44nDF/sHB7O79/vJwaC34fy38=; b=qOkfPJJij5TTdK
	gCQjmeiPzKUp2ECwd5Pt6KC8UywG5xx/EIwIPeZg9pUjuz64218mSHaUZGqJDMm7VrwFxtHJNKn5i
	jbbNaIQdZEeEj9FP0MqeGGfGgQSzCfKbtteW6NZ74OTUq2zoFPnJ3+XG3hRYBDa5NhIiJNEAfyjrk
	t4gV9UF/i9YFvx68ZmEZlWymjNoMdPeW6RhBVJaeB95y+JRG3KzMS34sa+cGlfKTu7O9WFWmRUiAv
	jslhvAwNRCjJ8bl9a9DKJJD8JlSXQ/TVztwiUyv6ad+TeRIhxezPvtraBmLATH+pknQVymsOUvhyk
	Es6geu2nCG+wokYfyzvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1yL-0004bz-Hx; Thu, 16 Apr 2020 10:42:17 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1yA-0004au-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:42:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cnEwid3Qog2oTAQsJXjysCWv8qWbuzIFp+JlgvLZB+GWhsbtIZJj7BTVqKa3tGWJ6tbQ8XbZq6nvg9L7sH9kM/AvvcoYewZCRquFp8wH+nMtWITtN1DhaPwjW/5BoNyw4fnM7XgJMPAcYffgib1ChpAXF+v+YXW1Sl6KzIlOFBkGlfhxLXIvW3/B4XG7OXk3LLt7eIVAYn0pczN5+EBuRMx+1J70ZXzWQ1M6Ign/sYLOby9sxlOrZuGACDztWSbYmNK0Zs6wtzTlfqPm03DvIweqmYwTRPh0iLb9AHqBUV/9OWK0kdbPxiau79Ci8Me8FFP2jZpcpKW2FDQ/LCx4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UCHZxiywBcI2vc+aPSE1LvwxbfguLXQQwVJmGbFubA=;
 b=abTJ8ErtxgE5BfEEJuiG9HRXgejeBfWOwPDk9YjYqpnQMiNRkFuhbsQ9kdFz6zba2Yxv89NIuj2Qb0iBIWd9wxlx9KgtzZgZCxXSOOjx0xMEBRUNvBxgOmxXCdNBNckNkFY0cetfNwNoyR8NqxJ4GB1ZmcJO9LcIoVWMxLMxHf7jWUtsk2w8twDABxD1Man6DIy5nACH4m9MWwbxfY4HMAjQ//pI4JTGn19HU5QCJ6yVsw6Em49invziXYow+7+pvPcfv0l6kYiirzJlXqSOIoq9zUvOh4xKRmGwocSqSlPFidocD1yaMAHkEPlgH/dhJTYUWcwD5R+QC8KwCyNdmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UCHZxiywBcI2vc+aPSE1LvwxbfguLXQQwVJmGbFubA=;
 b=Kr+C2UvVHp9V/V+zr2eWwMIo88hnE4+KhefDS3T9MhOFnX7FWu59ASGX0vkH+QJuI4mO4oegInKBt1UKJSLCdy2fBpv9vVknoQr1Eh+QRUpk6EbXXGG2qX8ZOpwjl9ZV82iZdz0O/bpsggGRyploc8A8MHHLus3nWFHjH+Qzejc=
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com (2603:10a6:208:107::25)
 by AM0PR06MB4145.eurprd06.prod.outlook.com (2603:10a6:208:71::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 16 Apr
 2020 10:42:02 +0000
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd]) by AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd%5]) with mapi id 15.20.2900.028; Thu, 16 Apr 2020
 10:42:02 +0000
From: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Subject: RE: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Topic: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Index: AQHV5mNyTIn2+pYf+Eu7yiopaV9KGKhOcmGAgAAnv5CAATwtgIAAAa2ggCwKeCA=
Date: Thu, 16 Apr 2020 10:42:02 +0000
Message-ID: <AM0PR06MB51859B579FED9A4CA9761C79D4D80@AM0PR06MB5185.eurprd06.prod.outlook.com>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <CAKfKVtGSq5rJ0EvZgyg1Rw3=d5Q4ReJUYM7hTSTPP4sXaJyJTw@mail.gmail.com>
 <AM0PR06MB51854C1BD04607231214750ED4F40@AM0PR06MB5185.eurprd06.prod.outlook.com>
In-Reply-To: <AM0PR06MB51854C1BD04607231214750ED4F40@AM0PR06MB5185.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Enabled=True;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SetDate=2020-03-19T10:25:58.2071358Z;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Name=Restricted;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_ActionId=0a9cfefb-3854-4650-a383-5328eaf57882;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Extended_MSFT_Method=Automatic;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Enabled=True;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SetDate=2020-03-19T10:25:58.2080956Z;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Name=No Label;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_ActionId=0a9cfefb-3854-4650-a383-5328eaf57882;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Parent=d5842b46-9b7a-431a-b662-8cc44ff92a4e;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ext-jaakko.laine@vaisala.com; 
x-originating-ip: [2001:14ba:21e9:fc00:a497:c71c:e5a:cb27]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3e0ee4f-ec5a-4351-a4be-08d7e1f2cc46
x-ms-traffictypediagnostic: AM0PR06MB4145:
x-microsoft-antispam-prvs: <AM0PR06MB4145F6F0DD0CBF5AB9E71470D4D80@AM0PR06MB4145.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5185.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(396003)(39850400004)(86362001)(5660300002)(6506007)(52536014)(186003)(4326008)(54906003)(316002)(9686003)(7696005)(55016002)(64756008)(8676002)(66946007)(478600001)(66476007)(33656002)(71200400001)(2906002)(8936002)(81156014)(66446008)(6916009)(66556008)(76116006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: vaisala.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FOMfdd08/12EwimCHrNzlBUrJ9IzJgC60+V+DkurI0KdyqmD1VkAT9qcZ/W0BuhN0pyBo7ynOU+xlCDwkmPwtp4fjdu+L7yoJehyAnvKyIdxp+eHad5akHb08mA+n4czJ0gV4tlfZT7U/XNSo52QZvdMte/24Q8VoQjuKoL6LL0OnQAZadIihRY1GEZTJxa21vnmmSwN4LV8h11bf/XGs5CCg2kqFoe1ZdQUbfvcx/jffBXNmJRIeGweqAAjB6kptJnc7RSlm8R6pL3nqcSxNAj9A3Tz2XlvArv7h0XEhmjMqD8q6XcBfy95ICgH6cD4lxI3HMf/PR11i/qcrbJV5+WzSqSVcnuYVlmv+D6AAohe/omE5/MDcy6GOkKULyYFv0xXEDLSSh5ixHCh0veqyt/t38nRPzHwrAKrrsyNbS9jXsPWZmddQmRJ39AZEuOI
x-ms-exchange-antispam-messagedata: J2DB8Pn1bj56sBFeevmZDu+xG9dfrFtf8BhJVCVbFazTj3mz7WKtNm3rDYBxsWxGauQnSvMeAouc0GROCsmpFzF6wxG5Ccv9vEQIQGN4B1hZ9sxqTvAwjFK1tVj3GIo3a8/mmwM1jw3QK04M5RClB7N0HRpd9L2tN6JSHiqcjs/lw/dLSbpNJh1k4C/EFau2iCLfZnGrAO/x12Zn7bSTbQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e0ee4f-ec5a-4351-a4be-08d7e1f2cc46
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 10:42:02.0592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YYRJPpObfmpuOSSiBPhejoqzvkp3Tusm+IvMJPte5qMhI/A/b/ZXmCxPqanBNiTuhGgfUQFqUYpMFxSmvbYBqyrv0no2010rF5KlkjLOaU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB4145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_034206_965802_5D09CA61 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > >
> > > >the other thing i was thinking how will multithreading .
> > > >Should we have a lock here.
> > > >
> > > >> -       err = xiic_bus_busy(i2c);
> > > >> -       while (err && tries--) {
> > > >> -               msleep(1);
> > > >> +       if (i2c->multimaster) {
> > > >> +               /* for instance if previous transfer was terminated due to TX
> > > >> +                * error it might be that the bus is on it's way to become
> > > >> +                * available give it at most 3 ms to wake
> > > >> +                */
> > > >>                 err = xiic_bus_busy(i2c);
> > > >> +               while (err && tries--) {
> > > >> +                       msleep(1);
> > > >> +                       err = xiic_bus_busy(i2c);
> > > >> +               }
> > > >>         }
> > > >>
> > > >>         return err;
> > >
> > > Which resource specifically are you worried about needing locking here?
> > >
> > Earlier multiple threads on the same processor will wait for bus busy.
> >
> > Now my concern was
> >
> > thread1 -> makes a transaction
> >
> > thread2  -> this will not wait for bus busy and access.

> Since i2c->tx_msg is set before anything is sent to FPGA and only returned to NULL after transaction has finished,
> I think thread2 would already exit with -EBUSY before xiic_bus_busy(i2c) is called because off:
> if (i2c->tx_msg)
>	return -EBUSY;
> in same function.
>
> This is why my understanding is that xiic_bus_busy(i2c) only practically guards against other masters operating on bus.
> In my understanding xiic_bus_busy(i2c) reads the register on FPGA, which can't change state before thread1 is already so far into transmitting its data that FPGA has received something to send and > has reserved the bus. This would leave an interval of time between checking xiic_bus_busy and its register value changing during which thread2 could also check xiic_bus_busy and proceed to transmit at the same time with thread1. (Until hitting a transaction lock later, but only after it has already overwritten the pointer to transmit buffer i2c->tx_msg, and possibly messed up the transmissions for thread1).
>
> Now it seems to me that even with i2c->tx_msg being checked, thread2 could get past it before thread1 has set it to not NULL, since thread performs no locking between checking it and setting it, like I mentioned in previous reply. This issue has apparently already existed for some time though and is probably quite unlikely, since it has been there for some time.

> -Jaakko

Just to update you about the previously mentioned possible multithreading issue, I took some time to try and force the race condition to happen by adding some delay between checking and setting "i2c->tx_msg".
I was planning to fix it in separate patch since the possible issue would have existed already.
I discovered that I am unable to reproduce the threading issue, since the bus is already protected by a mutex in "i2c_transfer()" implemented in "i2c-core-base.c".
I suppose this may have been obvious for someone who has worked longer than me with the kernel i2c -drivers, but it seems that the driver implementations don't have to worry about access from multiple threads, since they are already protected in a more general level.

-Jaakko
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
