Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6810EF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 00:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iuFATyQ1lh77lbdm0Mqpu2kW5R9hrk+IGZGXbgDbaY=; b=Og88JQ0nE21jMC
	TwlmtakYRe1pySYW/aRYCfajWYLe1jw947ZUTG7/NPKh2M61rouhdyK/uuItU26J6SUe2fvdg0w9H
	tCz8ARv+x53dRsPGa+MzDc0uZKBTldDmusk5dv8KyG74SPlxvWeuxqvrXjAh/F+ZrNwAVFf3oOLRM
	Gi5HbC1iewo3rflWukypsOMxi3oe535YKF265fQ5K89j7GWha5JgRdvWYLzavSvPoyjAtee1YyNqS
	odrxUgOGVwFenO8nrbqrPK02u9KIwIfSygSRSi5u/5zFCZe/7JhycTpF+UFD80imnldkC3sC3ax4u
	ovua8bUaR7uxnwLocgPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxdM-0006EN-M3; Wed, 01 May 2019 22:23:24 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxdF-0006E1-M5
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 22:23:19 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x41MIVLC022812;
 Wed, 1 May 2019 15:23:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=MeD0z7nSNAiPX7xglTMuxpGvHQqFrooIDgaIP6EVFPM=;
 b=iOgai+aEsl8rDux6W/GgEUW8s7NcQJ37eW0daxCauNk0uUZQUMdLq9QbrbEjlOHU2mGi
 EHZigX3g9LjqFGlNP35TkMf+7OChz3gjWMPt3npZpacPRBQZUD/KeNwrKtA+/7ffRrTf
 Ms73myFO4BqQd1O4IYHtnLsWJDJxpRpzem0= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0089730.ppops.net with ESMTP id 2s7d0q1k9w-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 01 May 2019 15:23:02 -0700
Received: from ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) by
 ash-exhub101.TheFacebook.com (2620:10d:c0a8:82::e) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 May 2019 15:23:01 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 May 2019 15:23:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeD0z7nSNAiPX7xglTMuxpGvHQqFrooIDgaIP6EVFPM=;
 b=Eze9Cz+z7obd1ewMXFCMKYw/o4/kvnsWkoVzrV9m5G/Qhp8dZ+hRsBgIK+R1iiXB6K7O8nFLbPyFLKiceqBxovGjDWiVFlnXIJz0Q8MWYWkCuY19mPBUy9YIsUCGQ48kI5qKJ4QzvjTobxPGceoD7NFeaQ0Ow5nvoT6kClqOTWU=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1800.namprd15.prod.outlook.com (10.174.52.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 1 May 2019 22:22:59 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9%3]) with mapi id 15.20.1835.010; Wed, 1 May 2019
 22:22:59 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joel Stanley
 <joel@jms.id.au>
Subject: Re: [PATCH v2] misc: aspeed-lpc-ctrl: make parameter optional
Thread-Topic: [PATCH v2] misc: aspeed-lpc-ctrl: make parameter optional
Thread-Index: AQHUrecp120UxlsdUUK9uZiXf1PR66W0eREAgAB5LwCAoXbNgIAADfIAgACQt4A=
Date: Wed, 1 May 2019 22:22:59 +0000
Message-ID: <3CEAC0C9-9B7A-4329-B719-B08A1951F12F@fb.com>
References: <20190116220154.1026171-1-vijaykhemka@fb.com>
 <1547787502.2061444.1637712576.1F1E21B4@webmail.messagingengine.com>
 <DCD8D2E5-DB18-427C-AA8F-18289E9AB0AB@fb.com>
 <CACPK8Xdgv1YVgeykf0grSpR3LXTGa45hoBwZVq+zWgR0anhmTg@mail.gmail.com>
 <20190501064501.GA20816@kroah.com>
In-Reply-To: <20190501064501.GA20816@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::1:4686]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ff9dbae-41a7-4906-70f4-08d6ce839184
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR15MB1800; 
x-ms-traffictypediagnostic: CY4PR15MB1800:
x-microsoft-antispam-prvs: <CY4PR15MB1800916A122AA4DB389F53E0DD3B0@CY4PR15MB1800.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(39860400002)(366004)(396003)(376002)(199004)(189003)(36756003)(6486002)(446003)(99286004)(6436002)(68736007)(256004)(46003)(6116002)(33656002)(486006)(66446008)(186003)(64756008)(66556008)(66476007)(11346002)(476003)(229853002)(76116006)(91956017)(6506007)(2906002)(102836004)(66946007)(73956011)(76176011)(82746002)(2616005)(5660300002)(7736002)(478600001)(316002)(4326008)(305945005)(25786009)(4744005)(86362001)(53936002)(6246003)(14454004)(110136005)(71190400001)(8676002)(8936002)(83716004)(71200400001)(6512007)(81156014)(54906003)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1800;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6YSt5i7TEzPUsr/LcIDVOf7T8iqfpXpaImfaYB32v8fdL+NQfkOpCLQ5GBE1cRt8nTSl+xdAeoZp/zUgdqTGrYCrjrdKbJmE3NFLCISHgnnK7Pnjm486/c5K5dmwGQdsK0imppCr37RFHwAzoo3vFjGMzdOwyOoPpujnlf7+0lrwMfq6IVnUBEcCAShBZSbfWDRzpUQwiksGFlIaJIPETHNV9JnVNa1AjPpL7W9IS630ycu/jnA0nF7u9LPyeeLvD6Rkpovu7Aeq6NLRzx9W+FQdEwftLSkI4lELkWWBoqYlIsrieKQ8LZJ9722uKAZcO9gmBPjMHLCqqJDRh/N62zhkynu5UrR9IL15bXw9lzNXV8+8uoebfRPrmswlnKniEnmWBzZxrB6QtE+P9dtwHJqLB45rUY3KWR/J9hyzhtY=
Content-ID: <35AE8DEDA36D6048987B73B2DAEB4D24@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff9dbae-41a7-4906-70f4-08d6ce839184
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 22:22:59.5666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1800
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-01_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=902 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905010137
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_152317_929262_439D8410 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGV0IG1lIHNlbmQgYm90aCBwYXRjaGVzLg0KDQrvu79PbiA0LzMwLzE5LCAxMTo0NSBQTSwgIkdy
ZWcgS3JvYWgtSGFydG1hbiIgPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToNCg0K
ICAgIE9uIFdlZCwgTWF5IDAxLCAyMDE5IGF0IDA1OjU1OjA3QU0gKzAwMDAsIEpvZWwgU3Rhbmxl
eSB3cm90ZToNCiAgICA+IE9uIEZyaSwgMTggSmFuIDIwMTkgYXQgMjA6MTIsIFZpamF5IEtoZW1r
YSA8dmlqYXlraGVta2FAZmIuY29tPiB3cm90ZToNCiAgICA+ID4NCiAgICA+ID4gSGkgQW5kcmV3
LA0KICAgID4gPiBUaGFua3MgZm9yIHRoaXMgcmV2aWV3LCBJIHdpbGwgaGF2ZSBhIGZvbGxvdyB1
cCBwYXRjaCBmb3IgdGhpcyByZXR1cm4gdmFsdWVzLg0KICAgID4gDQogICAgPiBEaWQgeW91IHNl
bmQgYSBmb2xsb3cgdXAgcGF0Y2ggdG8gZml4IHRoZSByZXR1cm4gdmFsdWVzPw0KICAgID4gDQog
ICAgPiBHcmVnLCBpcyB0aGVyZSBhbnkgcmVhc29uIHdoeSB5b3UgZGlkIG5vdCBtZXJnZSB0aGlz
IG9uZT8gNS4yIHdpbGwNCiAgICA+IGhhdmUgZGV2aWNlIHRyZWVzIHRoYXQgZGVwZW5kIG9uIHRo
aXMgcGF0Y2gncyBiZWhhdmlvci4NCiAgICANCiAgICBObyBpZGVhLCBpZiBpdCBuZWVkcyB0byBi
ZSBhcHBsaWVkLCBwbGVhc2UgcmVzZW5kLg0KICAgIA0KICAgIHRoYW5rcywNCiAgICANCiAgICBn
cmVnIGstaA0KICAgIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
