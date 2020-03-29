Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221F6196FC0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 21:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBgLfHXTNtWEtanUWSyhXaoOaEBnYjL+63cOZ9izpRk=; b=ukTB9s5SN5p9BY
	SmsQ249CoHS0jkRFrxK7tKZnajyAZAgWOz9583+Q7tJn+Wa/CrjKWWi/vxUis/YRCM+4FTIQnLoTM
	anIKbpalQ79pLXy9YcJzYiGY3QChhkWLHmq0J6UWqj+v6g6YLfpbE90L5T8QGK28vtKzHkvuOxbCv
	7qVyIb3Um6WjZUMHMaDnNa7FgxefLGD7w/pgbXbQp6fLNKG7rXWJ7hS1XZcdkiSXGLJ+Zu99EGW38
	QRA3Ek4Jbwk8qlk1QzRpZYleAfxnLcHesGD49fPrQb3g7rWeLOHRA0+h+hC4FDM7vMMAVLciEA0Yv
	xTDc3sXOlPMpX1QHeMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIdko-00072e-2d; Sun, 29 Mar 2020 19:37:54 +0000
Received: from mail-eopbgr690123.outbound.protection.outlook.com
 ([40.107.69.123] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIdkd-00071a-JJ
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 19:37:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RaZGfuEEbzdEAx20FtiH/xOM7nBGAkbam6uytCyf6o7Um9O+xfq+Fr0ArijekyEDLNI7RXXdnU8tng2AMPPAduqAJ1PteeA0Mz0ftqxXONHDjaIi20YKqtuskDUm+IwYfm5d6yEXq8x7onb/P0U7nbAnRkfVJnMaumPO0UcPDRA6XVItNeN4Uf5g06Eyh4yRC6H+aLsXE8I6dj6M5f9muGWk+t4ghKyydJhqjyP1q/fOtBU18hKCVaESVSh9DBiN3qjdfs0TWCwtVLOPxiHhtABvcgfAZuP85jsphQ1MIGTs5f9G5bxFQGs3jgtDQ53a7xeQOSLYKoLPic0AFiOc/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pjG+Rx7VZ8SE7XN0QGt7/TuazdFi5yMjdC+M/hhLtxI=;
 b=kPtKTZNW8w01tpT+RA1xCuQOuwhUTZEPkrm1zbFQZct1Kw3jZEqTs2+wripm0Tj9Kff7cdsflIoalJXvh3+/KVngH82FJUH7cFHu76Os/u4tcoYPtoBUF4f8nbL8dvlFlc1ezw1HexII1wjMcMSBjmMWB6Tlk7ZnW7QJyRN7QoFm6umAtrh5pv1MZoXHemjP9AJ8GvjBFkm/xaXNFdcgKWyx02xVcHMFSrNhma27jh7vekMYmBTaoUVccvN6j7ORtZ8KxG4QzBmzHX/KQBIlSGXoqu9bE6hV99r5FPvq74OXogZt9is1UpS+2TuCL2xPbOX5o4i84nZvq+np0ua4hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=northeastern.edu; dmarc=pass action=none
 header.from=northeastern.edu; dkim=pass header.d=northeastern.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=northeastern.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pjG+Rx7VZ8SE7XN0QGt7/TuazdFi5yMjdC+M/hhLtxI=;
 b=qNfXtdhVKOqJn0+XDRQD/7Lxp3AJPvcp4+Cfz9+9Kb+pvG4zQCzakwf+l472mIJl+bkATu6OFwlAmB3Rxtnqg5EhaLZeVEBA7g7YggB5kGraDYK3lnUUPBLb1uSSzOIwBfcH1oyOMCHTAfBsr1/yM4q14uaWFLOkusY5zUSxFF4=
Received: from BL0PR06MB4548.namprd06.prod.outlook.com (2603:10b6:208:56::26)
 by BL0PR06MB4722.namprd06.prod.outlook.com (2603:10b6:208:58::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Sun, 29 Mar
 2020 19:37:37 +0000
Received: from BL0PR06MB4548.namprd06.prod.outlook.com
 ([fe80::20f8:a2f2:5ebc:da2]) by BL0PR06MB4548.namprd06.prod.outlook.com
 ([fe80::20f8:a2f2:5ebc:da2%7]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 19:37:37 +0000
From: Changming Liu <liu.changm@northeastern.edu>
To: "joel@jms.id.au" <joel@jms.id.au>, "andrew@aj.id.au" <andrew@aj.id.au>
Subject: [Bug Report] soc/aspeed: integer error in aspeed_p2a_region_acquire
Thread-Topic: [Bug Report] soc/aspeed: integer error in
 aspeed_p2a_region_acquire
Thread-Index: AdYGAIGuDCfrUgheRrujj/e7wCdDjw==
Date: Sun, 29 Mar 2020 19:37:37 +0000
Message-ID: <BL0PR06MB45481A385F546CF5B6855C16E5CA0@BL0PR06MB4548.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=liu.changm@northeastern.edu; 
x-originating-ip: [2601:197:a7f:5cb0:217d:acb0:7278:589d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f00045e6-ec2e-43a5-503e-08d7d418a32a
x-ms-traffictypediagnostic: BL0PR06MB4722:|BL0PR06MB4722:
x-ld-processed: a8eec281-aaa3-4dae-ac9b-9a398b9215e7,ExtFwd
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR06MB47224779080779462552DAB8E5CA0@BL0PR06MB4722.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 035748864E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR06MB4548.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(478600001)(66476007)(66556008)(76116006)(786003)(66446008)(66946007)(4326008)(64756008)(110136005)(75432002)(52536014)(33656002)(5660300002)(186003)(55016002)(81156014)(2906002)(71200400001)(7696005)(8676002)(54906003)(316002)(86362001)(9686003)(81166006)(8936002)(6506007)(70780200001);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: northeastern.edu does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NE6r+zt744gZlLHZDr5BdrS2H5BiynTxq67YL4trPHm6BKfvmJGm68juc0kmQui9m/sPHBBsj87PZCGHQyivQI4t2tFRhiTkmpPVHPnY2wFowhKC/URzjuK3q5bTwZaL98ynQFM5QhlR1BD1gKRHhb8w6pi2D5ePMiTt1F2jSDnUD6Lc9xiOBLvTsUP8aK5zRJYGRVAjj2vcdVFhxXAb7G6r7aJ/eVsITERIjg80fFDX7FidkL23m/aXfEnuDaoucFigGhN6ula+OwdvAbHRnmMPoQX7EW9C+gEE1wccucZU4iusBn6BUtbqnAESnfzSKV/a6LZNOI6Hsk4wERgvlS8HkzdUynAqT6Nx+daj1x3KFOZZurOUbW146c4WMUhH1MKzdkKx2WAnOyTSV/yLZIQueYKDld9LR/b9J377lEBfZo01vHTlGFLq3VyBS4N3dz9U2k4bghFnm9PchT1i/r6uKkcElzmmClmWnrZfe4wRMUH3zFdOitk/+XYJ18aC
x-ms-exchange-antispam-messagedata: o5JSW7Lk3hPlFjKPbTODjBC/ZnnB9IT50kBeW1Giq9wcrGlQGNhjh8psRsqSuqEaFXB6L1Pzof/oWot8687kV7PvdZSYOBeLf8MajLOKEWezlt5ASyTtTliHnQbqEjwfPvHNC7QGmbzQbz8lEaAULL5BO4JMPEbRpV2Ayc0vWMIzbYvcqPryJ02kaDmTmzvFK7mcxWgjkE0Ul1xvE3hJwg==
MIME-Version: 1.0
X-OriginatorOrg: northeastern.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f00045e6-ec2e-43a5-503e-08d7d418a32a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2020 19:37:37.5898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a8eec281-aaa3-4dae-ac9b-9a398b9215e7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9PgAFwcdwKzECzR1gNxGa6y2qVD8d8905grhbxPdVSqllTh5B+sO0LZ0lIue9P0qpSYsAt+hYsXfzgUHehXL2oVh0KbNLbIxXQcaDlGQ+yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_123743_775525_FABAD7F8 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.123 listed in list.dnswl.org]
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
Cc: "yaohway@gmail.com" <yaohway@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "Lu,
 Long" <l.lu@northeastern.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joel and Andrew,

Greetings, I'm a first year PhD student who is interested in the usage of UBSan in the linux kernel, and with some experiments I found that in 
drivers/soc/aspeed/aspeed-p2a-ctrl.c function aspeed_p2a_region_acquire, there is an unsigned integer error which might cause unexpected behavior.

More specifically, the map structure, after the execution of copy_from_user at line 180 in function aspeed_p2a_ioctl, is filled with data from user space.  So the code at line 136 that is

end = map->addr + (map->length - 1);

the subtraction could underflow when map->length equals zero, also, this sum could overflow. As a consequence, the check at line 149 could be bypassed and the following code could be executed.

Although the fact that map->addr is a 64-bit unsigned integer and map->length is 32-bit makes the overflow less likely to happen, it seems doesn't eliminate the possibility entirely. I guess a access_ok could do?

Due to the lack of knowledge of the interaction between this module and the user space, I'm not able to assess if this is security-related problem. I'd appreciate it very much to hear your valuable opinion on why this could not cause any trouble if it's indeed the case, this will help me under linux and UBSAN a lot! and I'm more than happy to provide more information if needed.

Looking forward to your valued response!

Changming Liu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
