Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F7318B13F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:26:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nWhlRTOAaeh/AB0wNoaL+EwgUxHVVNR+RdRGzt9dac=; b=TddUbWTxhpPtqO
	6n3Bp99Z4u6srFB8K+8rCqUaZS5SoHrdPFTA6DNx8OZD+zUTAV+x7J4pO9v0+gAZetd1/NG6pOqjY
	iUgBOEFoadebOAV4Et5nXcV1yFUHQwmIhj1n5P+Us9CkEOL2CG8VIc6Q2MANLNo6a/APWgGJLbrIV
	JQVt+2Ut/GTzc2kQ4narQPhq9+y6QhOZe17UGW47PTX+HsaTNuoK8IO170DWoBpAzdAvK5TU5d/gV
	9ZEzxDZ36iZWytG/SXfVeWAMDSbMnU0BQFJOPb5sKvJxbhJNY74jXbEduP9Q9imvSKcJ7LkYkhwki
	Tp7uPBTR7rHdNhQJUpcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsNQ-0006Wt-7n; Thu, 19 Mar 2020 10:26:12 +0000
Received: from mail-eopbgr60061.outbound.protection.outlook.com ([40.107.6.61]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsNH-0006WE-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:26:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LhEsiGHwWELq2zGBV/iFf4ri1YhDUNE9TYKzLEfE2C2MdJ8fCZPS2hAxRqkuPmc9qYYEqQa7qo8WwJL3A538LETMDs/4udVFlzjubX1BKQKp0+n3yY8vG6kZCMnoPFGsCW9W5yZS2KeSYEMg4gKn/d/zTUN0fkakjfNuyIv+zwRkp7ga1JvFNpcbIXzAfiIEQ0m8c+F5n7xFl48aYva0R4R72g3/1t9rq5nYJ4N2sW19a/b5U3NfA8N6EumIWixqRU9vriWPwoQuVV5DUiIAoE/y2GdsUSYjogDna4H7RG7PUPXqljp6NXGpF0N5p0lPXGwJodk4f1nElIkNp+wN+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6YI1T+UiNVuzvBARtgsqH5GfmCRu0CHAFAieJHTmF8=;
 b=WvH9s2gH24BHF6lIp4+MkD91bvK0krSwSJXoEZHnU83r12mj2GZJ/glMPATP4O3TeZFINCQuxMjLUGul+RZIt4xa3SO3mq3P3xmwItPDugU1uqEsElLo97g5rUOvdP4vcuv9fSXdBO4tgWB0VNsrb7xcST0eLyA9d2iWXAhtah8wrrc4lU764uhpY/gvFZbjGm7f2h0SoAL2xBwNU3MoRS9nFmVHcL2SODYBL4guJdLxEQblQpLKKgeCiSgCMSjU6qAACANRPv8yTK9AAgsWKAGSFvDuEYLdwd4pi4CRL5jbA9T3rkKed3weV4/weJA+sDvPgJW7RCM7GTGlkzC6bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6YI1T+UiNVuzvBARtgsqH5GfmCRu0CHAFAieJHTmF8=;
 b=Jxr+5UiBlDM4XO6twgyKZ6lRPyJTwB7S7n4PARtTZwgO7ZTN5PWu3+Nt0US2tiSWYoIpzaiJIqz9/gdJl0HKbzspC9fQHsYVyjuooZk9AlK7udSXl8brmM9fOJxRqhpYF8nF49Q7UL58+/ItGQKkn9shIA41tt+fgBlO1KK7R2E=
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com (20.178.82.25) by
 AM0PR06MB5185.eurprd06.prod.outlook.com (20.178.82.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.19; Thu, 19 Mar 2020 10:26:01 +0000
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd]) by AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd%5]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 10:26:01 +0000
From: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Subject: RE: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Topic: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Index: AQHV5mNyTIn2+pYf+Eu7yiopaV9KGKhOcmGAgAAnv5CAATwtgIAAAa2g
Date: Thu, 19 Mar 2020 10:26:00 +0000
Message-ID: <AM0PR06MB51854C1BD04607231214750ED4F40@AM0PR06MB5185.eurprd06.prod.outlook.com>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <CAKfKVtGSq5rJ0EvZgyg1Rw3=d5Q4ReJUYM7hTSTPP4sXaJyJTw@mail.gmail.com>
In-Reply-To: <CAKfKVtGSq5rJ0EvZgyg1Rw3=d5Q4ReJUYM7hTSTPP4sXaJyJTw@mail.gmail.com>
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
x-originating-ip: [193.143.230.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31687769-e5c5-4b01-fe6e-08d7cbefebe1
x-ms-traffictypediagnostic: AM0PR06MB5185:
x-microsoft-antispam-prvs: <AM0PR06MB5185F95474119FCD0FC636ABD4F40@AM0PR06MB5185.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39850400004)(346002)(366004)(396003)(199004)(186003)(2906002)(86362001)(76116006)(4326008)(66946007)(64756008)(66476007)(66556008)(26005)(6506007)(81156014)(81166006)(8676002)(52536014)(54906003)(8936002)(66446008)(478600001)(6916009)(9686003)(33656002)(316002)(5660300002)(71200400001)(7696005)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR06MB5185;
 H:AM0PR06MB5185.eurprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: vaisala.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xrYCWG5FngfYb1eSOlNWRFxbDa9fxxqh1BMUeUeI54gnzufqX24/rxdcPq5TDnR8caVW1gC2b7RFuY46URJHuxZ9nXzEAs1UBcc2vrP1QiPxFNYtzQ8/xDkgzq5KM3t7hB2gEPZIW5xfJeA1psHfv7OVIui2gR5dG0MsNs8+/Ziv0Xi48je+TeD0VJ9pKzUG74whpnlRfc48gacVHy5115POJFDxZPW5u22NF4DM67aa2OLKkgSck8K28OKM/y9VN4eYFWASdJ0wCtv2yG99JDWM9cMERb93l1DvMVCwAbRfdQ2tGDWXdQMTU0ld6D7URQvlI5asycjWXMUXHklnu7Bq/h/9RR+hUg0keMVFtkxSkrpUIeOQwRcCQv4bS/BG0/JDXOG/3d9LTG0x0w1J/i3lMC8qvTgPGl+l19uou/5yd4fB5yK2sQRn+G/0w1vS
x-ms-exchange-antispam-messagedata: E3vefvcrNfQVESlqU8bUBVgoJCv2sStl6qpsuq3wcwRFyN6O8Z8mY4WQdAE5eAkii1jKe5CqGkWhjzE8FUocMYOcP58F5iSoPdcoEGcJl0XeSyj7BhzYlw/D05nX5iYbO8kLp6adbB7Ful1lYJK7RQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31687769-e5c5-4b01-fe6e-08d7cbefebe1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 10:26:01.0004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M/NYD5Cvq7i7gH9BllCmijUAQe9xcoegrzSvl/b1HSfsVfN0Y3vZYwQLCTwQH2bIbTC9iCGXJCwRa6ldVwZryoE4hZrqvDwxjGnd0VMP9T0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB5185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_032603_505630_AE35F0AC 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> > >
> > >the other thing i was thinking how will multithreading .
> > >Should we have a lock here.
> > >
> > >> -       err = xiic_bus_busy(i2c);
> > >> -       while (err && tries--) {
> > >> -               msleep(1);
> > >> +       if (i2c->multimaster) {
> > >> +               /* for instance if previous transfer was terminated due to TX
> > >> +                * error it might be that the bus is on it's way to become
> > >> +                * available give it at most 3 ms to wake
> > >> +                */
> > >>                 err = xiic_bus_busy(i2c);
> > >> +               while (err && tries--) {
> > >> +                       msleep(1);
> > >> +                       err = xiic_bus_busy(i2c);
> > >> +               }
> > >>         }
> > >>
> > >>         return err;
> >
> > Which resource specifically are you worried about needing locking here?
> >
> Earlier multiple threads on the same processor will wait for bus busy.
>
> Now my concern was
>
> thread1 -> makes a transaction
>
> thread2  -> this will not wait for bus busy and access.

Since i2c->tx_msg is set before anything is sent to FPGA and only returned to NULL after transaction has finished,
I think thread2 would already exit with -EBUSY before xiic_bus_busy(i2c) is called because off:
if (i2c->tx_msg)
	return -EBUSY;
in same function.

This is why my understanding is that xiic_bus_busy(i2c) only practically guards against other masters operating on bus.
In my understanding xiic_bus_busy(i2c) reads the register on FPGA, which can't change state before thread1 is already so far into transmitting its data that FPGA has received something to send and has reserved the bus. This would leave an interval of time between checking xiic_bus_busy and its register value changing during which thread2 could also check xiic_bus_busy and proceed to transmit at the same time with thread1. (Until hitting a transaction lock later, but only after it has already overwritten the pointer to transmit buffer i2c->tx_msg, and possibly messed up the transmissions for thread1).

Now it seems to me that even with i2c->tx_msg being checked, thread2 could get past it before thread1 has set it to not NULL, since thread performs no locking between checking it and setting it, like I mentioned in previous reply. This issue has apparently already existed for some time though and is probably quite unlikely, since it has been there for some time.

-Jaakko
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
