Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEDF18A0E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzJvw4+DVmN0QxTg+W1VXRfEM/rxs7bpRRKxRam9DNk=; b=j0Zg5qNX2AN4IS
	WOtMoPvLZfjaA0liWl0BV6gX6x34r6ULLtodFvUFR8VpEM4MUGNnrn7h2ftWCrRQtsci4WX+p7gnu
	1KrvX1Ihv5HwMukKTybUfyrH/PMt7+hF/kI74YS+oj2Pp0m96Ju+a1o+lU8XtYEZNNSRVMwu/eEa4
	WvDgrDHOJ/QDFoGImu0D9KWDrfjUaIz5I11W0RAynQkljh3h8xLU0zSEgLt9dlitgIkJAWxjgNEy4
	BDvIz9jySWmugEi5NuCrYXdtPR1I+Os9dGjc+S/WCg2tfnOhK0pkom1OhZo4aDPdcWSqxdLAa/Ork
	kQe2t8jpYAZwyMAgwdIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEbt6-0000d9-N6; Wed, 18 Mar 2020 16:49:48 +0000
Received: from mail-eopbgr80050.outbound.protection.outlook.com ([40.107.8.50]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEbsj-0000RB-27
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 16:49:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZygiMQlsWkNff6hAicbp6qeVzWWva7hUC9eTS3QWbTtx26h/ajjkbpk3dVtItk54Fc5fP1Mo70BnsB+L05wIlT0NffqDzNtgVsrtNoAEk/U6rHREHbZZWW0MehbDbegBXN8Ii2hIR3834yS4qqx2cL0hKuJI90f9NwDqbTY9cLJ9VxryQ96IdPN8PZJJyGBotelnAnU7k1ETHkyxOlgq7n3oksMSY6kFnpa8snNd32YufJbavOwyYu68/vZSjGjdwuKWDhWuaaZ1rXLG6QsMFWWu+oHitRw/clqx75XLwTiO6X/CEBerOGvOfVKDX7pZ3InGWteVBcs+g8GxH9cPsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7icJXE+P3NcLKQQkxumDttWO3IDuvwgFF6VzEF+ERU=;
 b=l0isT1xOWIsJvIE3rLuoM7c07m7Oge9ninFz+/mWiT+bEXRRQCJVlrVc39af25QmFW8fO2bCNQqKFx2IbtVolto6u1IbyUR2KcsU3QDJlg5J9bX8tcC4RDJMS71XJzcbf6gkYVJs0XK8LFBjxsv+HFs5nxOM5B7a9EFoBchDKNZVOf1GxmKjJWxLL0TEky4fUs7MNaQMQXKRcuzEg5IiL6p42kx2zLiiPK42xIWYbAyluBljQNf4AkICx+FyQVj26fXfhBc2J6mFdBvXnbfWa1z6LIIFBY87/Wpv4vQzZMZF1GIxCrTFbpSEmNGV7ihK0M+rTxbaFilN9xo/3WhBWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7icJXE+P3NcLKQQkxumDttWO3IDuvwgFF6VzEF+ERU=;
 b=s1/WET66FJAzorHh1MeeX/7cQqcLsjYoEpcHDmDyIyGw+Mjr4Fx4AYALU0A/WpX8nizSm5ujDmxH8vfFiBh58yiLYvdtp531FJ/renNM1MJ0g1nuj9n47fOJa4M98RZTHpKTu7+k1ge0y1YGh3qNYJneqFKRTrUQ1zIegUWbeD4=
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com (20.178.82.25) by
 AM0PR06MB4129.eurprd06.prod.outlook.com (52.133.54.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.19; Wed, 18 Mar 2020 16:49:20 +0000
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd]) by AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::3c0c:c6e8:c7b6:cabd%5]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 16:49:20 +0000
From: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Subject: RE: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Topic: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Index: AQHV5mNyTIn2+pYf+Eu7yiopaV9KGKhOcmGAgAAnv5A=
Date: Wed, 18 Mar 2020 16:49:19 +0000
Message-ID: <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
In-Reply-To: <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Enabled=True;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SetDate=2020-03-18T16:49:17.7096272Z;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Name=Restricted;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_ActionId=6a03551a-384e-42f6-b58f-367d6f895fbf;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Extended_MSFT_Method=Automatic;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Enabled=True;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SetDate=2020-03-18T16:49:17.7106244Z;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Name=No Label;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_ActionId=6a03551a-384e-42f6-b58f-367d6f895fbf;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Parent=d5842b46-9b7a-431a-b662-8cc44ff92a4e;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ext-jaakko.laine@vaisala.com; 
x-originating-ip: [2001:14ba:21e9:fc00:4537:b0a7:a50f:840a]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d11a894a-49e3-4f73-4f01-08d7cb5c4de5
x-ms-traffictypediagnostic: AM0PR06MB4129:
x-microsoft-antispam-prvs: <AM0PR06MB41293EF2007910EE6806D148D4F70@AM0PR06MB4129.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(199004)(55016002)(966005)(9686003)(498600001)(8936002)(4326008)(81166006)(6916009)(81156014)(186003)(54906003)(8676002)(7696005)(6506007)(66446008)(71200400001)(76116006)(52536014)(66946007)(64756008)(5660300002)(2906002)(66556008)(86362001)(33656002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR06MB4129;
 H:AM0PR06MB5185.eurprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: vaisala.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JDoy5lpBsp5/ArD20OKQL1KzZak+DI0E6PmY8gY7HWYGnfWGK1Phwkp8vWBkAF95AHgaaa6pcoCYwXBzOKbY1bUvGssdM9JI6upxOL4stXkhv8EQFPa9sRxVE4ITFPNbhva3XqeUkND3oU1BoJvRfxdWpp2V5sI0K2xBB5ooZ3gKtsLWPoNP9R4DTn90jB+5vrpgMMuZ4PEol0ZVzGjqCeAzp395ZiVe2+FEWF0Wxz/3BDq8+HHEWez8u5rjA0CF0SeTpZSt6/FUykBTVhsdzToPgNuF+y617U0juD4wVKZS26UBechKs9pTrpqQ67KeyOAbRyDXRzJa112/hV5YUDlyhXy9teGUjYmn9sFw6kuJddj6z9JcMTlLPWYUILRWrS18+/PKmTO5Kqt14mraf+y6WNaEkENeQdHRBSZC6nOL/RPHPCRDm7gAorPt9GYW46hDpAkXSBep0P/l6wUdGnqo4/yNdrOQcvn9VBYFehwtCm3ScgmueYiz2m+bKhc8TE2hJm9UB1ny5EhA9JxlAg==
x-ms-exchange-antispam-messagedata: e2Ww2PZpr4wEt9++uOQgfNz6l4ZTgKV/Nq/GNKZ9gmLTcoyfXd9ijJgIOWfTJ2gpLV9/XI0b5fNKv5mAEF7M/IGuZr8dsAu4QEB6Bmh/X/yf2sHDWa/dQIN9q9A1KaL2OIbrogXJgz2VTwMYuPIvfcYg4+NZd/8MudtbEwsTODIJoTWJWBx29epD2Amd138aoW5xDMcNfZeg+fFWNm5J3g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11a894a-49e3-4f73-4f01-08d7cb5c4de5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 16:49:19.8968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jz87t8cjIKGpUpwtyMBxFzmt8Jax5vQT/MKy2IBUOBpjeoygkZcwJGKiz4P2I3lK9DMYujBwAAsuwT2wysTFuy/ds7ikjVq9mm/RHP6qvFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB4129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_094925_454402_60A1FE83 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hello,

>> @@ -521,19 +523,26 @@ static int xiic_bus_busy(struct xiic_i2c *i2c)
>>  static int xiic_busy(struct xiic_i2c *i2c)
>>  {
>>         int tries = 3;
>> -       int err;
>> +       int err = 0;
>>
>>         if (i2c->tx_msg)
>>                 return -EBUSY;
>>
>> -       /* for instance if previous transfer was terminated due to TX error
>> -        * it might be that the bus is on it's way to become available
>> -        * give it at most 3 ms to wake
>> +       /* In single master mode bus can only be busy, when in use by this
>> +        * driver. If the register indicates bus being busy for some reason we
>> +        * should ignore it, since bus will never be released and i2c will be
>> +        * stuck forever.
>>          */
>
>the other thing i was thinking how will multithreading .
>Should we have a lock here.
>
>> -       err = xiic_bus_busy(i2c);
>> -       while (err && tries--) {
>> -               msleep(1);
>> +       if (i2c->multimaster) {
>> +               /* for instance if previous transfer was terminated due to TX
>> +                * error it might be that the bus is on it's way to become
>> +                * available give it at most 3 ms to wake
>> +                */
>>                 err = xiic_bus_busy(i2c);
>> +               while (err && tries--) {
>> +                       msleep(1);
>> +                       err = xiic_bus_busy(i2c);
>> +               }
>>         }
>>
>>         return err;

Which resource specifically are you worried about needing locking here?

I don't think this patch introduces any new need for locking. Only new parameter, which wasn't accessed already is i2c->multimaster, which is a constant that is never changed after driver is loaded.
If i2c->multimaster, needed locking i2c->tx_msg would have needed it already before, since it is a parameter in the same struct and can actually get changed by some other thread.
In this section the only variables written to are local to the function. Shared variables are only read from, which seems pretty safe to me if considering this function alone.

However, now that you mention it multiple threads could be checking i2c->tx_msg at the same time inside this function or waiting for xiic_bus_busy(i2c) to not be busy anymore.
Since in "static int xiic_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)" i2c->tx_msg is written with data before any locking, multiple threads could exit "xiic_busy(struct xiic_i2c *i2c)" and write their stuff to i2c->tx_msg, since buffer being empty was checked before anyone had a chance to write to it. If this happens, some data to be transmitted could be lost when i2c->tx_msg gets overwritten multiple times before data gets transmitted. This issue did already exist before, but it looks like it should be fixed to me.

Fixing would need locking here, but the possible msleep(1) -calls inside xiic_busy seem like an issue, so some more changes needed:
// lock here
err = xiic_busy(i2c);
if (err)
              // unlock here
	goto out;
i2c->tx_msg = msgs;
i2c->nmsgs = num;
// unlock here

>> +       i2c->multimaster =
>> +               of_property_read_bool(pdev->dev.of_node, "multi-master");
>> +
>Current will default to mustimaster is 0.
>May be the default should be 1 if not specified.

The multi-master -binding is documented here as boolean and encodes a Boolean by either existing or not existing in device tree.
It is also used in other drivers so I couldn't do much about it missing meaning False.
https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/i2c/i2c.txt
I originally had a custom device tree entry where the default was for multi-master to be enabled before I noticed the pre-existing binding.

Maybe if the multi-master binding was changed from Boolean to for example a string property (multi-master = "ON" / multi-master = "OFF"), code could still just check the existence with "of_property_read_bool()" first, where property missing means "OFF" and property existing means "ON"(like before) if there is no text associated. Xiic driver would then only disable multimaster, if device tree explicitly contains multi-master = "OFF".

This should be able to maintain driver backwards compatibility with old device trees, but requires binding documentation change and all drivers should likely be updated to also accept the new style of multi-master property to be consistent. This is also not as clean as the old Boolean property in my opinion.

Thank you for comments,
Jaakko
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
