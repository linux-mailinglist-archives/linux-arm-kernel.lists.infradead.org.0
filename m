Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870704C3AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 00:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2bbzWV6JqSZrFTP4zMGKCAPIGRCK9IzEbIFrZlKYf0=; b=Mt7D5aCC5AToGN
	vPiIwsZz5bVYM0FPGIQNzfCaA9x10bzR9VwRxCZPIJXBB1Mbjx7ZtyhETUzn0SeqqcKogL8dt1O3h
	7l+jfeIzZE3sq58FuZ9pWrZRZ4f+oz2qiZrypgUIicjj1BwCWLbVCjbUy7ytZDjtyWqxsvIQoqyvm
	9yryb4K0/KGUvulUl1X57BXyp/Cz04TExXmfRAsG1YgjQYdbJsYR/wqXyuTw460RR2ZcDz8Uo11Bk
	Ee2SikjcADmqbXcGZMp6wQC3Ow6/QGvHJImI5KA3RQ98OmhP851a5czj7IKI0Mx1uAo36d9MghRt2
	mSkd8m7pnQgf4qUnofJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdj8n-0005fg-No; Wed, 19 Jun 2019 22:33:17 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdj8e-0005ey-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 22:33:09 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x5JMQYfq010356;
 Wed, 19 Jun 2019 15:32:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=5JRfY6IAs61MAa/z2JPZ2R7kQHhNH3FbQBo5vBJHFXo=;
 b=gFiu/ghPun3dca0kecrT2yE0UrGZW+7WF6RwmA7QAD0Lh4gTAzApYwC1VWDvg467Pql4
 FdvQ9H871rdSPKNkGL97zWmRUqTUoPGpCPgPo4E9/fIMRrjtjnPNdN+eZFz8vkQocf7j
 FDaUoEVEfK8ZApnL/zSvj2Jzf+0+TKXttbw= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0089730.ppops.net with ESMTP id 2t7s8xh25y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 19 Jun 2019 15:32:45 -0700
Received: from ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) by
 ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Jun 2019 15:32:43 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Jun 2019 15:32:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5JRfY6IAs61MAa/z2JPZ2R7kQHhNH3FbQBo5vBJHFXo=;
 b=MMSr3wjiJqzyOP+0XrZQ1q9sGmCSAqGYnzLfrvEVHUFWtseSPdjaOXCyU1h35s2r3I35o0fIfmJCW0TpghmzGay/0CoBcmh807eHrqebKy7pNX38gr4OlDSvPnUu2MGbB5ECtWI/dNTivlTqGQFFgcA1rD3Sdlyq4Ufb/TtEh0Y=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1454.namprd15.prod.outlook.com (10.173.235.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Wed, 19 Jun 2019 22:32:42 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 22:32:42 +0000
From: Tao Ren <taoren@fb.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuIcteG+E70PmUey9PLXreYJ5KajfUSAgAASwwA=
Date: Wed, 19 Jun 2019 22:32:42 +0000
Message-ID: <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
In-Reply-To: <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR02CA0034.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::47) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::3:2141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed9c44b7-e67a-482a-b909-08d6f5060ae2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1454; 
x-ms-traffictypediagnostic: MWHPR15MB1454:
x-microsoft-antispam-prvs: <MWHPR15MB1454A9550E09D75CAD496527B2E50@MWHPR15MB1454.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(346002)(39860400002)(136003)(366004)(189003)(199004)(256004)(58126008)(5660300002)(73956011)(25786009)(316002)(54906003)(476003)(305945005)(76176011)(6916009)(81166006)(186003)(7736002)(446003)(6486002)(8936002)(68736007)(11346002)(229853002)(36756003)(81156014)(64126003)(52116002)(4326008)(6436002)(478600001)(2906002)(99286004)(14454004)(6116002)(65826007)(53546011)(6506007)(6512007)(46003)(386003)(66446008)(486006)(65956001)(6246003)(7416002)(64756008)(65806001)(66946007)(66556008)(31696002)(71190400001)(53936002)(31686004)(66476007)(71200400001)(102836004)(2616005)(8676002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1454;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Xw4pntFvQtrt9M+1t7gOdMqqrrsTemfi39bL3c7j55gcojkwn/Bxf8X9+B9Y3QLKPpIDcEY1Zo9WUjGRXEm7apthyVOXKkqTQMgd59Q8+kIEfNkFzWyBlLpzjrzogZCHoky/EgyWrwBwhbYDCDyg4RSIBSnhk6TKAPQMUoIQLtp2l41ggP8WZHokc5+n9Tic4/INiYO238rIC8LMvct4YqO8m8BSsDLLadbotRb6ra+/4HXzYuakl0g5j/pEyUt97Km5y9H9DaX0fNPVS25hhv8xeonWfKjZMXRe1Wu29QKzhoaD2Wokvq2/a8N+ZtFtaUx5+0qzZsP4n/7FxP7AdE7d1sQYzN4qdLrkS0VZatLjTPJBp1Nq5yhhhCxjS0SxBBx6iBYIxgo6zdyJlz7tjV+sR5Gjbacf6GJske1avhU=
Content-ID: <7A954D46C2698146AB155AC71B775D65@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9c44b7-e67a-482a-b909-08d6f5060ae2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 22:32:42.5317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1454
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906190184
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_153308_406542_4E3610AA 
X-CRM114-Status: GOOD (  22.44  )
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
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/19/19 2:25 PM, Brendan Higgins wrote:
> On Wed, Jun 19, 2019 at 2:00 PM Tao Ren <taoren@fb.com> wrote:
>>
>> Some intermittent I2C transaction failures are observed on Facebook CMM and
>> Minipack (ast2500) BMC platforms, because slave devices (such as CPLD, BIC
>> and etc.) NACK the address byte sometimes. The issue can be resolved by
>> increasing base clock divisor which affects ASPEED I2C Controller's base
>> clock and other AC timing parameters.
>>
>> This patch allows to customize ASPEED I2C Controller's base clock divisor
>> in device tree.
> 
> First off, are you sure you actually need this?
> 
> You should be able to achieve an effectively equivalent result by just
> lowering the `bus-frequency` property specified in the DT. The
> `bus-frequency` property ultimately determines all the register
> values, and you should be able to set it to whatever you want by
> refering to the Aspeed documentation.
> 
> Nevertheless, the code that determines the correct dividers from the
> frequency is based on the tables in the Aspeed documentation. I don't
> think the equation makes sense when the base_clk_divisor is fixed; I
> mean it will probably just set the other divisor to max or min
> depending on the values chosen. I think if someone really wants to
> program this parameter manually, they probably want to set the other
> parameters manually too.
Thank you for the quick response, Brendan.

Aspeed I2C bus frequency is defined by 3 parameters (base_clk_divisor, clk_high_width, clk_low_width), and I choose base_clk_divisor because it controls all the Aspeed I2C timings (such as setup time and hold time). Once base_clk_divisor is decided (either by the current logic in i2c-aspeed driver or manually set in device tree), clk_high_width and clk_low_width will be calculated by i2c-aspeed driver to meet the specified I2C bus speed.

For example, by setting I2C bus frequency to 100KHz on AST2500 platform, (base_clock_divisor, clk_high_width, clk_low_width) is set to (3, 15, 14) by our driver. But some slave devices (on CMM i2c-8 and Minipack i2c-0) NACK byte transactions with the default timing setting: the issue can be resolved by setting base_clk_divisor to 4, and (clk_high_width, clk_low_width) will be set to (7, 7) by our i2c-aspeed driver to achieve similar I2C bus speed.

Not sure if my answer helps to address your concerns, but kindly let me know if you have further questions/suggestions.


Thanks,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
