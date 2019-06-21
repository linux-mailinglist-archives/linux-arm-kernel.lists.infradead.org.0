Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ACF4F0BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 00:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bvkbf6GA33INiMChBgYTvUxTohRZnlYUKzvPmR91sR0=; b=Z4WoVIAMFRxfGn
	daW2W38ek1XVW9Ur/Z+IBeaiIsmfg93VQ0n9mePnTsvvMLq0ds4bfnBljrYl5AplbQY0HcZw6L0I0
	YwuTNF1g1WPtJH9gvI4YjOUHRTeB6bNXnGi4OU0Sva96kn79NK2aNyaS8u5uJJ11oIZjn2lSIX35V
	8C3X4x+1In7th8p0pbdwG92QR+BAG7fEKqZK/MKZzuBFrIgVvgCKbfWd1x9Fj8PZHGm/8ZkkhubBA
	PVMiwQMfqyUhJ76JIt3865Z+tPjAUCSW2+JSkW/oLK6vW48ZLz1ssTqunQas8br10Dbs4gp0Pzfwv
	OzXnvyYmuj0n7hQ828Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heRun-0004t1-EZ; Fri, 21 Jun 2019 22:21:49 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heRuc-0004sS-Np
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 22:21:40 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x5LMJOrx007817;
 Fri, 21 Jun 2019 15:21:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=tjIANEhCUDVKg0jVk2JP2VRHzydhosJyCmitKn3FUR4=;
 b=O8EEIPIGUD+acRYB27TISRPb/23tDSYjBe33oIb5+ZRz5vGM92dEAB7Ut2IUXAQP4Je6
 HKi/nK9jbBgI/shZmuz1lvQv+w/oxHDwuvU2v2Hsa7DbRcve/nB2m6epx4NUZU2CzQLa
 EG3bT81GtHLbRjNfPCvZRPmzNjqOxPeYTCw= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by m0089730.ppops.net with ESMTP id 2t936x117a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 21 Jun 2019 15:21:26 -0700
Received: from prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 21 Jun 2019 15:21:25 -0700
Received: from prn-hub02.TheFacebook.com (2620:10d:c081:35::126) by
 prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 21 Jun 2019 15:21:25 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 21 Jun 2019 15:21:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjIANEhCUDVKg0jVk2JP2VRHzydhosJyCmitKn3FUR4=;
 b=f8KkSwomnAT+0TfDo0im4pjFjPP6gjezLViI2X030hv5zKK+cksmmIvvFzkmAbOHVubo8j4b0poL8MU26gEB8oAmwuxbQlk5mKQIlDUGwYZ+Il3kbT8kUkcvjFO3P95A/HglEJ41NYdIya7IujxjhGo7opMRdbDq2sajY9PlUgs=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1725.namprd15.prod.outlook.com (10.174.255.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 21 Jun 2019 22:21:23 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.2008.014; Fri, 21 Jun 2019
 22:21:23 +0000
From: Tao Ren <taoren@fb.com>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Brendan Higgins
 <brendanhiggins@google.com>
Subject: Re: [Potential Spoof] Re: [PATCH 1/2] i2c: aspeed: allow to customize
 base clock divisor
Thread-Topic: [Potential Spoof] Re: [PATCH 1/2] i2c: aspeed: allow to
 customize base clock divisor
Thread-Index: AQHVJuIcteG+E70PmUey9PLXreYJ5KajfUSAgAASwwCAAJYbgIAAB62AgAABSgCAAANYAIACfxgA
Date: Fri, 21 Jun 2019 22:21:23 +0000
Message-ID: <4b939e17-f364-4e63-f254-17bd531f75e6@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
 <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
 <bdd53adb-6987-1b91-adde-298839b2c066@fb.com>
 <195bb56028d04001bbaf835cc17e032e@TWMBX02.aspeed.com>
 <56ff5fa8-091a-2cbc-dfa3-b912cf328695@fb.com>
In-Reply-To: <56ff5fa8-091a-2cbc-dfa3-b912cf328695@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR16CA0013.namprd16.prod.outlook.com (2603:10b6:907::26)
 To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:fd4a]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0421b61e-ab66-4d58-dad3-08d6f696cb00
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1725; 
x-ms-traffictypediagnostic: MWHPR15MB1725:
x-microsoft-antispam-prvs: <MWHPR15MB17259FF253AEE918E79FDD47B2E70@MWHPR15MB1725.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(136003)(346002)(376002)(366004)(199004)(189003)(68736007)(6116002)(229853002)(52116002)(76176011)(2906002)(99286004)(476003)(186003)(7416002)(446003)(14454004)(102836004)(46003)(53546011)(6506007)(11346002)(486006)(86362001)(2616005)(31696002)(65826007)(478600001)(25786009)(4326008)(6436002)(6486002)(6246003)(386003)(5660300002)(8676002)(71190400001)(65956001)(65806001)(71200400001)(53936002)(66446008)(66556008)(66476007)(66946007)(73956011)(64756008)(81166006)(81156014)(31686004)(7736002)(58126008)(110136005)(54906003)(8936002)(6512007)(14444005)(256004)(316002)(36756003)(64126003)(4744005)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1725;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fn+XIMkxdFpBCFbl1dv7++jkHcfsVChkETw11eXwQXobHxqi0NARJ55Ks0I4JNfEECpFRZbAihbcu3e7kGbZkMZ3SsY8zRnQwCB4jGI4HbK4+3jLxxKNacAHiCovhxo9Q8uXHqyVH7G6xr74+4ZCR/lfxqitkT8Sbi5tQPEA1c5MSNNSokfb38iEeM2tV2NYgi6waPJZ0M37rWEz6wZU6AVHzKehG6O41vsVIxF0PdmnKp1whGJhQGqoxOaCn4KfTHfVjuGVOx8y4t5Vj68R76m32OoUkRNJEB8VwaBngGCbhyNoL4jLW5SGtPYXsGybWTOjz+yOzcKK+ebMkmRJciMzvzez/7m7tkqGCMN/FPsGt9ftaqqplvxmXfBz7zJoJpYs315Qk16gWBDhj6QxRq+GfLi7TxoJHoUFcyZAZqk=
Content-ID: <C8E8C6F9194EF449903DD6E5BB84EF0B@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0421b61e-ab66-4d58-dad3-08d6f696cb00
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 22:21:23.4695 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1725
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_15:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906210170
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_152138_961748_17DB6A00 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
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

On 6/20/19 1:13 AM, Tao Ren wrote:
> On 6/20/19 1:01 AM, Ryan Chen wrote:
>> Hello Tao,
>> 	Let me more clear. When you set (3, 15, 14) the device sometimes response nack. 
>> 	but when you set (4, 7, 7), the device always ack. Am I right? 
>> Ryan
> 
> Hello Ryan,
> 
> It's correct. We have seen the problem on 2 Facebook BMC platforms so far. Given the other ~10 Facebook BMC platforms are still running kernel 4.1 (with (4, 7, 7) settings), I'd assume more platforms will be impacted after upgrading to the latest kernel.
> 
> Thank you for spending time on this!

Just heads up Ryan and I are working with ODM vendors to collect scope output; will update back when we have new findings. Thank you all for spending time on this.


Cheers,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
