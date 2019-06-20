Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8E44C92C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmJ4U8Em2jVUuDXHwXlgW8Br8dxGZMomzvddzpvSORM=; b=hHpMFLxxQsoBRD
	Gj8bgAbOuur3hAEPXK686y3dvbi9RfNmF806bp0MtKwKfm6yDDzB6WQP8lKgQ1kCB9xqhRYndiHUu
	IbyFh+qOUikqqZygrL2PNhvGPm+5fmpEUFH6uSRog45VQoN3w7r2CFYlBZOZunHQKojFo6bYWzYfB
	MHNqTOxf5BC/OnuPmsiqi+qJ5yzq/B1xFttR+Cer9RgGZZvjWdbcikhRNeX8aL681VCfyTFl80gFY
	AOjhn6D8zNwxvwOWr84Yj67zA+mwDgJlXCKClptyKAxPlSKlgWd6pjs64+1M/B1RNB9MK00I0efzj
	dMcWwqyvZKWxqffh92nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsDa-0007oM-0v; Thu, 20 Jun 2019 08:14:50 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsCy-0007Yz-37
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:14:13 +0000
Received: from pps.filterd (m0001255.ppops.net [127.0.0.1])
 by mx0b-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5K8Ck6q022125; Thu, 20 Jun 2019 01:14:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=PTeG8r4X+BCl2HeeRUWzqOvMIOdO8nDfaT9DPMPtAB0=;
 b=lrGKbH6yLNeoxyhlqwU4hgUoVjn4GIbgEycxayszCGXgXLA398iWncusZo6rdMNaqkF0
 iYMsY+dzM4jlkc36APluPK6TIbK70aRv5bq4tagbQfGNRX8tCvPBehsRwuXw1KXLsrS4
 yUdTg3Lu6Ky19B/so2B+ZMOeCF0wjV1zjAY= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0b-00082601.pphosted.com with ESMTP id 2t7rex2qdk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Jun 2019 01:14:03 -0700
Received: from ash-exhub101.TheFacebook.com (2620:10d:c0a8:82::e) by
 ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 01:14:00 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.173) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 20 Jun 2019 01:14:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTeG8r4X+BCl2HeeRUWzqOvMIOdO8nDfaT9DPMPtAB0=;
 b=QwMLrZFoeSnyeoxRlpCVaC6bzlAhxujWICnXQmxYCYwBPpZEN2WTWSrEj3t30zhJs/1g0UtEF4cFHmqWEVkr0DL7zNxSftWnGDCAiFgdsqL4qdktImTdyjgsSCexqhSsghTprsJ0/4EJ6ozvTP+7tqyKR5FWjWoWQPps2V8aBg4=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1422.namprd15.prod.outlook.com (10.173.234.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 08:13:59 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 08:13:59 +0000
From: Tao Ren <taoren@fb.com>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Brendan Higgins
 <brendanhiggins@google.com>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuIcteG+E70PmUey9PLXreYJ5KajfUSAgAASwwCAAJYbgIAAB62AgAABSgCAAANYAA==
Date: Thu, 20 Jun 2019 08:13:59 +0000
Message-ID: <56ff5fa8-091a-2cbc-dfa3-b912cf328695@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
 <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
 <bdd53adb-6987-1b91-adde-298839b2c066@fb.com>
 <195bb56028d04001bbaf835cc17e032e@TWMBX02.aspeed.com>
In-Reply-To: <195bb56028d04001bbaf835cc17e032e@TWMBX02.aspeed.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR2101CA0025.namprd21.prod.outlook.com
 (2603:10b6:302:1::38) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:56ae]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f54f7fd-6526-49d0-91ca-08d6f5573f31
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1422; 
x-ms-traffictypediagnostic: MWHPR15MB1422:
x-microsoft-antispam-prvs: <MWHPR15MB14221E2E6B210AA6FE8F33F8B2E40@MWHPR15MB1422.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(136003)(396003)(189003)(199004)(14454004)(7736002)(305945005)(7416002)(4326008)(14444005)(53546011)(66946007)(66556008)(256004)(6506007)(386003)(31686004)(66446008)(64756008)(66476007)(478600001)(73956011)(6512007)(229853002)(110136005)(25786009)(54906003)(36756003)(58126008)(316002)(31696002)(86362001)(6246003)(71200400001)(71190400001)(65826007)(81156014)(6486002)(81166006)(8936002)(52116002)(446003)(4744005)(476003)(76176011)(6116002)(99286004)(2616005)(11346002)(64126003)(486006)(68736007)(5660300002)(6436002)(46003)(102836004)(65806001)(65956001)(2906002)(186003)(53936002)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1422;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vlpo+x+lsH6HgRrgw7iM35NSF9+4nbtjJgSAsUnjAK8AHdM69/fxMllVl0H1VtB5s6SForlK30ZGgiXfRX6//gm2DaWcMAvx0GyzL4+be/tpMVp0azFLiffhTO1a4k2Y3aAGfPVLrUjy62z9Kq+6dXCP7ZiZ6YYGtJUIDPwXXcvdEVaHvnFWqUUJWbR3cLUKUNssPjDRN3V+jv4w2YQB/K39nockZumTeeFLrUcOGJ96ObVKuvIXCCw4+M1D+TligFf7zSJbEKU0nzIKtf+E3Kgwwu1lPQuOsAM5yJMqpun0XM5ib8bRAr2273GlXSFZ2q+r0AxPzT4GXBEqcQdzwQINuxSyKz9MXtalkWT9ShApP8qZTnDtYSWpBgB0rjw6dgLdICb0th2usrUSs2zxM+x24VTeSw/u5gQEkfaKvz8=
Content-ID: <C26BC355B528F04297AFB94D467A3AFA@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f54f7fd-6526-49d0-91ca-08d6f5573f31
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 08:13:59.4590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1422
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906200064
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_011412_272236_8D5BF4E6 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/20/19 1:01 AM, Ryan Chen wrote:
> Hello Tao,
> 	Let me more clear. When you set (3, 15, 14) the device sometimes response nack. 
> 	but when you set (4, 7, 7), the device always ack. Am I right? 
> Ryan

Hello Ryan,

It's correct. We have seen the problem on 2 Facebook BMC platforms so far. Given the other ~10 Facebook BMC platforms are still running kernel 4.1 (with (4, 7, 7) settings), I'd assume more platforms will be impacted after upgrading to the latest kernel.

Thank you for spending time on this!


Cheers,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
