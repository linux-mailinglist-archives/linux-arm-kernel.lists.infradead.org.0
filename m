Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1124C8C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiosFphn102+YN9DsbOmrr16jkrUIjqknFKHzKDuX3E=; b=W8yJV9fKPg9tYN
	fWeT+5lAz4HknnomTPW1lPqpN97tanVVikOCzqsGhIafx2OM+rPp65avX3R45NPM5/bvG5w7BkE4W
	hA6cvBnno4cXa5C6Trv9aU2AP4mxZjOG0DrQa6AKcBSgDxD/4YzNkitEhvgypcc/jYlwu4heOt7wQ
	DvITv+AQ+OIJuMrW1mrElPz1Jl2y3I3u5zcGn3mk1QHZCvVxc1IHXq6P6cqytYvRwRnb8T79E7Wxl
	3Uw4M9T7N6IFdZfjy/bX/zCGUiSRe3uVfKf1ZqcH9Emh+X+n99tt5c8iz7obDAcA7ZnCWepU5eSMQ
	5H3hhz/osWX20/Sx7Qdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrxX-0001pi-IW; Thu, 20 Jun 2019 07:58:15 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrxF-0001n5-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:57:59 +0000
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5K7sGkw003449; Thu, 20 Jun 2019 00:57:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=9mkV/NXUlt5XrPBELpS9BUgAgmSBEIgeZ78tpFg4D8g=;
 b=TK0DuIcncbX4hCoc220+X8fE4Rk7WMy1WwIxKt/NqlI6+VNraUZ/RLOqDyPWlLoOwAol
 huTG89ggOmQHzOUSlENfEYd39VjxvTlDogYQDZ37HvndgtZKCfKJ/fmP4xjjsOcPQ+9c
 OZWsLO9nqcbzw0UcyfRp3jpZoL/k3qHq0rY= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2t7wrj1e0v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Jun 2019 00:57:45 -0700
Received: from ash-exhub101.TheFacebook.com (2620:10d:c0a8:82::e) by
 ash-exhub103.TheFacebook.com (2620:10d:c0a8:82::c) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Jun 2019 00:57:42 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.173) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 20 Jun 2019 00:57:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9mkV/NXUlt5XrPBELpS9BUgAgmSBEIgeZ78tpFg4D8g=;
 b=Fqvf/dZs2srXY3Y5NWnR4BA+klCeGwUbih0QAxa28Hq/alntVGAmlWxvkGoedN8CxA+v15YXFQwbfw+XMZJY4neX4+OhOLDW/VW8cYBRYk7dAm7e7RGSj9yGY+WE9qDweP3CJ7OrkFiofnFYTf05iBmQOE7nS4d+qYbeuKBk37A=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1775.namprd15.prod.outlook.com (10.174.255.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 07:57:26 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 07:57:26 +0000
From: Tao Ren <taoren@fb.com>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Brendan Higgins
 <brendanhiggins@google.com>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuIcteG+E70PmUey9PLXreYJ5KajfUSAgAASwwCAAJYbgIAAB62A
Date: Thu, 20 Jun 2019 07:57:26 +0000
Message-ID: <bdd53adb-6987-1b91-adde-298839b2c066@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
 <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
In-Reply-To: <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:301:3b::35) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:75c6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06c8c78d-992c-4a14-a670-08d6f554ef72
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR15MB1775; 
x-ms-traffictypediagnostic: MWHPR15MB1775:
x-microsoft-antispam-prvs: <MWHPR15MB1775F4F4CD54490AF0A8399EB2E40@MWHPR15MB1775.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(396003)(39860400002)(366004)(346002)(189003)(199004)(86362001)(58126008)(46003)(68736007)(478600001)(486006)(14454004)(4744005)(476003)(2616005)(64126003)(71200400001)(71190400001)(7416002)(2906002)(8676002)(81156014)(81166006)(110136005)(316002)(54906003)(66476007)(6116002)(229853002)(305945005)(73956011)(66946007)(53546011)(64756008)(6512007)(66446008)(186003)(7736002)(65826007)(25786009)(256004)(6486002)(53936002)(76176011)(99286004)(31696002)(66556008)(65956001)(65806001)(102836004)(5660300002)(31686004)(8936002)(446003)(11346002)(52116002)(6246003)(6506007)(386003)(6436002)(36756003)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1775;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fUAlk6DiJy6sWXQQgz6L6rxwIm5bWzYAwrm6K8boPqaWJ9ogUwzwQt037iYrBaV1LU4rgFjQpdIBrUfgrPog+/y2+Za1IhvLBZNC3dVt7r7bBFI4KpyaO11cTMqCmQ8atn3ZwEY80YqjSQnZ6HbMT6P3Wj9qbFLHoZBiCQFshXS6hsCUKtUskhaaH7Jabz9j1XfrG1jLOy59s6dVB8mgLeUZ/2ulwJV8VVlTDIyLOP4heKGkGJok0OxXyDw7RN/AoutH4ZCfrCTqeozLwu1Mo/9xDzw//ZLo+n39x2NNXqOCElj8Llzflu0Ip27zOsM5KJLjf3A04hz+i7Ac43W9hlLqNUV/IsH75Auo3JOD+lgFvkIg23z7MzmGYj7FfwGu7dCYYvqd15/zz7OZnf1/Wulfdqo2smx2ZJNSagqCGek=
Content-ID: <0FB3EA1C925D3F45868E5B7441BA38C2@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 06c8c78d-992c-4a14-a670-08d6f554ef72
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 07:57:26.6463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1775
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906200061
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_005758_011142_D92BC64F 
X-CRM114-Status: GOOD (  15.87  )
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

On 6/20/19 12:29 AM, Ryan Chen wrote:
> Hello Tao,
> 	Our recommend about clk divider setting is follow the datasheet clock setting table for clock divisor. 
> 
> Ryan  

Thanks Ryan for the response. Could you also share some recommendations/hints on how to solve the intermittent i2c transaction failures on Facebook AST2500 BMC platforms?

BTW, the patch is not aimed at modifying the existing formula of calculating clock settings in i2c-aspeed driver: people still get the recommended settings by default. The goal of the patch is to allow people to customize clock settings in case the default/recommended one doesn't work.


Cheers, 

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
