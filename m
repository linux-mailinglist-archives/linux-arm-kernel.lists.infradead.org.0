Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2914AF42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 03:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxoYxTpAtITxm0RfmEre5sTCpvjir+EgUBCGGtIFK18=; b=LbfImyetF6JaBk
	RPzfSaNvOkHPOD6i4lBCGDE0Qyqir1hGWuW2cyPfaGFST2+kXCZ+xi4EhFEzyK0Czgct2uH7P9Ysm
	Xio8jX1URSJb5AINigPNF7gYOkrqRqUv5YKQzJTDZT1H592ohGGnj3XHo4s8nyezgZ8R5xXZdDoSr
	vU4pYczb+IUHm04tbM4em5x92w9piafaETKVWVRc2jUwITI53hwPBlKaznvbn7GB5BzaDaAWVbHap
	WT6G//4jxl9mzHN1JeHHW/xoJfjUPttiTgr797nAleZHvhLpeYPLe8bX5bhe88T0JdB49ypYvULjl
	4rctkCh/bO1/1iT2d/vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdP0o-0007Ng-6L; Wed, 19 Jun 2019 01:03:42 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdP0f-0007Mk-5q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 01:03:34 +0000
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5J0vRTU031293; Tue, 18 Jun 2019 18:03:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=facebook;
 bh=lcOwfK8ETlTJM19sU/96XI+6pvU58BB9FCLkC+yB5jw=;
 b=c1ML6KCy7YgNsyB4CDGxNCe2gnAUfx8H9Y8qb1n0S9RFd4fvUbCtl41zbLecWv2aX3f2
 z3SOtuuyWMqZHM9TJR774CrsajZ5suMpxg6+p1+nEcMZlbB4frRS6HoR8PrC246D4AMp
 sPKyxjYAcXArnra73X/zy2KiL85BndfLZxY= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2t77yjrmfc-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 18 Jun 2019 18:03:16 -0700
Received: from prn-hub06.TheFacebook.com (2620:10d:c081:35::130) by
 prn-hub03.TheFacebook.com (2620:10d:c081:35::127) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Tue, 18 Jun 2019 18:03:15 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Tue, 18 Jun 2019 18:03:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lcOwfK8ETlTJM19sU/96XI+6pvU58BB9FCLkC+yB5jw=;
 b=PRpn2xFlfmflARQG3DRDR02iqtEfcX6gJQJtWjWSuztvEU83iisTiSbF/Z4CZEqRtOm65QAcwYe4hNbnG4Xg7eFAN6AFmctlRmQjyDc8rT3ltriSCtqoFLSBxoGzR4BK7grg7FAws/wkkVnctNihyeh/4PpUWPJ2JHrofWfC/tA=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1615.namprd15.prod.outlook.com (10.175.135.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Wed, 19 Jun 2019 01:03:14 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 01:03:14 +0000
From: Tao Ren <taoren@fb.com>
To: Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Joel Stanley <joel@jms.id.au>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
 <openbmc@lists.ozlabs.org>
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook Minipack BMC
Thread-Topic: [PATCH] ARM: dts: aspeed: Add Facebook Minipack BMC
Thread-Index: AQHVJY22ky4K0dgM8Eq+6c9S8hDKi6aiJEwAgAAGH4A=
Date: Wed, 19 Jun 2019 01:03:14 +0000
Message-ID: <9f757278-9d96-b81c-4fc1-21266b68165f@fb.com>
References: <20190618042421.1227372-1-taoren@fb.com>
 <d201fadc-0b8e-48df-8e50-bccd5d5019c7@www.fastmail.com>
In-Reply-To: <d201fadc-0b8e-48df-8e50-bccd5d5019c7@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR18CA0048.namprd18.prod.outlook.com
 (2603:10b6:104:2::16) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:512]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 136361b0-0df0-435a-00eb-08d6f451e806
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1615; 
x-ms-traffictypediagnostic: MWHPR15MB1615:
x-microsoft-antispam-prvs: <MWHPR15MB1615AEC9FFCC9EC233B6762FB2E50@MWHPR15MB1615.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(396003)(136003)(39860400002)(47680400002)(199004)(189003)(8676002)(2906002)(305945005)(102836004)(2201001)(76176011)(316002)(5660300002)(31696002)(86362001)(446003)(65956001)(186003)(6436002)(110136005)(256004)(6486002)(2501003)(81156014)(81166006)(58126008)(229853002)(386003)(8936002)(53546011)(6506007)(65806001)(99286004)(66556008)(6512007)(558084003)(46003)(36756003)(65826007)(11346002)(25786009)(68736007)(66446008)(64756008)(52116002)(66476007)(478600001)(7736002)(71200400001)(486006)(71190400001)(31686004)(14454004)(476003)(53936002)(6116002)(2616005)(73956011)(64126003)(6246003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1615;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BPaOvNrPkASl/nHq3vpQRWL7KRtX8xSxIJg/EdiEQursq9QwNXqZzmPghvW7vGhQM7gnjp11UKCZISYK1WVUBMyGCJ8TArzprWNaclMpeGwEhfsXUtCf5L1TWEW3MPvwsXt/WIOcLtbr5wM5r+Rv1BxyYuw7ySIFawG1RYfo/sFBs0fzdHsb2ZjNZMGHnpHeoRf4n24g0sByQcDgc8HBBDi9z+Sg/tPY5+7ZAmalQ5CMlJLYxa/Nrml43V31jEzIhUQaecabccCLftMQg7X3knptAfWG0uJ4Mt6KAQOP23V32W6YOER/vX5HUbvmRt8j9Xo4PAFUeEF+ItZmgnMCL7KzACKs1VBLFtn7yPJnBBfNa125IMyL1ejYjOASRD/SXmOPMhOCUoPHg8dZCFPYop2BABmbId80xaFc7uiTwGo=
Content-ID: <58C3D7D2AF2D4C4FA7D0685A248A096C@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 136361b0-0df0-435a-00eb-08d6f451e806
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 01:03:14.6163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1615
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=826 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906190006
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_180333_399276_A5E067D9 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 6/18/19 5:41 PM, Andrew Jeffery wrote:
> 
> 
> On Tue, 18 Jun 2019, at 13:54, Tao Ren wrote:
>> Add initial version of device tree for Facebook Minipack ast2500 BMC.
>>
>> Signed-off-by: Tao Ren <taoren@fb.com>
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Thanks a lot for the quick review, Andrew!


Cheers,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
