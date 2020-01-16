Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330FE13D43D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y5kEfu+1k4WhCBwdie++WUr/EQZvi15Dyc1+p+6UNWc=; b=e9/gunvE+d9sMJ
	/5kwq/k5uRdxiuaUfi73LRWwJZxQDOoZPRkwQgeDS3Zh/2+1vbCHAQstSaaBTlV9QXjo1fsbq73Ev
	1cSCAISUReowwRAhDu+39JA89JnvYw29SrQpcPrREhldCUdj1CMyqwYI8bUsqqITGTefdBL1+bELW
	FS32Lq0J+Ib24ZMpbqvkaZi7RkYWkofNUAXKuVc6aAmq3DOyEVt/8yEt6hoykpxeTTfm/RFyn9jAP
	yTf1OHPwMwnp9l4crGDm7+gAIxEbC0AFx7cQtANCNphQas89I4Ge4RCTyh3ILgfwiZr4FoxFfv9bq
	KE9m1XGGanBC8Am8TFjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iryZo-0007xQ-Rf; Thu, 16 Jan 2020 06:24:20 +0000
Received: from mail-ma1ind01hn2063.outbound.protection.outlook.com
 ([52.103.200.63] helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryZb-0007wb-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:24:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyYHzjh3zclLWmhKPMW68y9pWmfww7IdkO99zkscbn146d76E+a0GtubuuqBSWWnePNT7rrQpT8qMFvK2pS9+x43DM8+7sbyZv73TCOOHUK0U3mT8iiWsMb7lWZayA10I6p1Qjc6fSoCSh78VcBJOyoUoA+90SdTOiqnKfYxZglAsZ2SSsgA8XEzQOyuIKgLjhPkYs9cV+nljFtkylE6bWM6QhFqHPIxgdU867FgIYF90ype4/FacrvG8oZ5DZRBfUiSASBO5HHNUvl8NTPO0L1NyQzt+8fKfETYgtWsl5u2Xpk2ou7xMhqZnxDnsJZafTMd28Hrp8JHtz3mLaPXzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=heLxs4njz+mwzmqz0fU7bwU2wIQUea/2kNgxA4kijNI=;
 b=N9WfSWlBk/mCos9X1r44xeBhbLVNkRny/9+b/uTdsW6yqEPhk7cU/3tl/wdsa+HuiIH8+68fMyIPD4dV3j84EFryHysJcQPCZ9lrF3WHt7pwxWhxpKnnZ7CkL2vGIwwe7FEJJuWvcU0rFl9UZ8m7aUiF10vzzb/AFH352F1fKXwAW1E+0r+XBFTzAxoTn8h1gPODBKZ0KSSbepbWtVgDaznfnGm5vjiR/Bo1pelLw4nL7oRZZauQERc6J7jefRHOsyD4tmspO/FErY/jPbO2cDrtpU/iRwyXqGfuwQLa8yNucHZ8Mco3fhagfru2t/ssOpxniAaSDnnPLB7sc9sMjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oceanedigitaldata.com; dmarc=pass action=none
 header.from=oceanedigitaldata.com; dkim=pass header.d=oceanedigitaldata.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORGFT5553580.onmicrosoft.com;
 s=selector1-NETORGFT5553580-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=heLxs4njz+mwzmqz0fU7bwU2wIQUea/2kNgxA4kijNI=;
 b=ONRNoIeE2ZferVMm2mzI7Lizn7iCSbrwtrQqXZrxzQrR0GKMJET5pozBG8G8QCKimSb+23NF/nSFaVT6EGYaG3kPaO9b3la5g4ccUxW+DMzOK4ysNdYZf7as1y1QD87preGUFN/I0lDCD9XH17YWPXsG8eVEe5ps7RZU8q7Eb6M=
Received: from BM1PR01MB3362.INDPRD01.PROD.OUTLOOK.COM (52.133.239.87) by
 BM1PR01MB3187.INDPRD01.PROD.OUTLOOK.COM (52.133.233.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Thu, 16 Jan 2020 06:24:01 +0000
Received: from BM1PR01MB3362.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7815:ea:4d7e:7f52]) by BM1PR01MB3362.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::7815:ea:4d7e:7f52%7]) with mapi id 15.20.2644.015; Thu, 16 Jan 2020
 06:24:01 +0000
Received: from DESKTOPMPN5UI4 (106.51.17.50) by
 MA1PR01CA0125.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Thu, 16 Jan 2020 06:24:00 +0000
From: Brenda Lane <brenda.lane@oceanedigitaldata.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Visitors List -Embedded World  2020
Thread-Topic: Visitors List -Embedded World  2020
Thread-Index: AdXMNYmJrPEUKZNmR+e/tPmYxzWrdw==
Importance: high
X-Priority: 1
Date: Thu, 16 Jan 2020 06:24:01 +0000
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAMeItoodLbBEhAG+Fnluak7CgAAAEAAAAHnSS08UygNMpYGCHmEIJwUBAAAAAA==@oceanedigitaldata.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0125.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::19) To BM1PR01MB3362.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:76::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=brenda.lane@oceanedigitaldata.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Microsoft Outlook 15.0
x-originating-ip: [106.51.17.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d87ce51-efa0-49d2-5a81-08d79a4cad2d
x-ms-traffictypediagnostic: BM1PR01MB3187:
x-microsoft-antispam-prvs: <BM1PR01MB31875D9549A518D82CDFD6F6EA360@BM1PR01MB3187.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:SPM;
 SFS:(10019020)(366004)(136003)(346002)(396003)(39840400004)(376002)(189003)(199004)(86362001)(44832011)(66556008)(64756008)(8676002)(8936002)(55236004)(66946007)(316002)(66476007)(66446008)(81166006)(81156014)(36756003)(5660300002)(1006002)(508600001)(52116002)(186003)(6496006)(71200400001)(6916009)(956004)(2906002)(2616005)(6486002)(26005)(16526019)(4744005)(32030200002);
 DIR:OUT; SFP:1501; SCL:5; SRVR:BM1PR01MB3187;
 H:BM1PR01MB3362.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: oceanedigitaldata.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YE0pcNiC0Xj/rRdkb1sHkn1nUeNBVQEeFEk7llp8cbGyly07vT6+o5vz02SbBKM4JB2lc8ajtLFtnnXlkXiQU9+sI+uclFGVnzUHB7BDrPa8crh9pBDWaSS80Nwl8k/QfRfdoaZwB1e10c7hNAIlcfeEDGwC1AHcRaCR8ck9YIuhysB05gHoWEdgkS8I0QWXHS5ABPf3txjlIRTA/eh5ypvF+3L5Q3RqH2htwMx0zb55qdas7Zy4xjaiR1po7sSH5rvBiD7rixzPMnnJYzyw6EutEZ/xJ3dJ/Z8sPya2hp5aND+lKjs9rk8AOFJS6skrHd21k9vmQc3llFHv4CpCvM5HUddtiJ47TnSHn6GnQ/WflfD5+K0NEbRa4tqV7ujaYsDjjB+fs1IK0e6WWoGhtf02TKtpC0hRHqLfCP8Ii+QtBXoEapMSiOk8ds4UOifk2HywXszOhZHeW+ZGDXv+ONHIZBJvzaTD8sRJUhSoBuStdupOhgbGtqKNvDcFEScOB/kxm+a+YaakbyJqZIGcyybAkvbDzJgEQ4hERxZHfDVhsm9ELTFB44PuuX8+Dljs9ajPPnGoKM9pMbiAT1vvjh2f7lqopWe08scdZ2lV49OpvjJB5VybLwS88HBqj1Fh8xtU5DEMl+1PvJ84bzZ8SJZ6ENZIWmf3KhV3WYrk6c35xbQ+nEEm0T8NMtSRcaCTsHGhfI65EmNlqYR8zYbvMyT1zZD7jDepGQh3G0SGxoO2BKthnyl865IzpJKO/609v4Tim8hyDdxW8vf9NSbM1Q==
x-ms-exchange-transport-forked: True
Content-ID: <B77302C32D08B446A5B795CA0D7EB0DD@INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: oceanedigitaldata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d87ce51-efa0-49d2-5a81-08d79a4cad2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 06:24:01.1386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4d88f05e-781c-4247-92e4-bd9439b8070f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jLDiAbS7695CTCiXQ5GmueMamqp4SLP+frocyp5o2pTE5NytPvLp8mnbi5SSFsF2d+VgWe5LVjSFH/vtP6s5WFUANBk0nQjGC0EvAZX26YS3Dn5+LiQBtqKnqWwUDH1a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB3187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_222407_476701_E0EA2990 
X-CRM114-Status: UNSURE (   2.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.103.200.63 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.17.50 listed in dnsbl.sorbs.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I hope you're the right person to discuss about Embedded World 2020
Attendees Database.
 
Key Contacts:
                              .	Electronic Systems
                              .	Embedded Technology
                              .	Embedded Systems
                              .	E-mobility
                              .	Distributed Intelligence

Venue: Nuremberg, Germany

Please let me know your thoughts, So that I can send you the Number of
Contacts available and the Cost for it.

Best Regards,
Brenda Lane
B2B Tradeshow Specialist

If you're not interested kindly reply with the subject line "Opt-Out".


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
