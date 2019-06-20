Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F724C56F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 04:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRRK00ytw+f8zpZoBbtGsZt03LkdLV/8N0ZeOsx/4B4=; b=Ms2LxJpQEnb9VG
	gMWUHm5ngLojmuZhUhy0knp6KgvMpDEHIR8+5BPrAPYhlr2k0cX9Nh8KMaD19lrSyO3iU0fSRuuBg
	Oi+NGirfnpemIkYY/bJdzXiUvk0oHjgIbjjhOyX9lEcRXpZKmrqbSveihkneBKvsR/4GfN3UJtjF0
	D9giWgW4K//3Zk5yKGG2NfFRO8DtteApKnLLE/u/I7rAW1IqZc1c0/GQYlEwF1yRP238IG7E+GfLM
	pW8+DZ/Qv6iAHUncxu22dTAbVuPs1abXUopVsGW2LpP0jzKnLwfhZDltNzmZGtOM545hxwpOH799y
	ha/HPrbEXCnh1bgDA8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdmol-0002ls-Tg; Thu, 20 Jun 2019 02:28:52 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdmoZ-0002lQ-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 02:28:41 +0000
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5K2DA1I000522; Wed, 19 Jun 2019 19:28:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=U7QIe/oedTOCkkD3V2c/L4NT3fkYvZQFGhmGvyB0oy0=;
 b=rOX/9m6lwdo5sFF6ntlgJbg9pK7xDD5NCuAepllr1oQBIs2eRKhrxGIZm1dUs4xgi/qj
 hJwbI7G7Fx3kuM29/u618PVd63pwBINvtFLgZJM4hjt41qJD1Eycvm4xKgc2aZa91Bmd
 Ml3AZ2KMH+HkOqEyWu8flPSmQQ4R0aEwRFg= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2t7wwcgn09-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 19 Jun 2019 19:28:08 -0700
Received: from prn-mbx03.TheFacebook.com (2620:10d:c081:6::17) by
 prn-hub03.TheFacebook.com (2620:10d:c081:35::127) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Wed, 19 Jun 2019 19:28:07 -0700
Received: from prn-hub01.TheFacebook.com (2620:10d:c081:35::125) by
 prn-mbx03.TheFacebook.com (2620:10d:c081:6::17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Wed, 19 Jun 2019 19:28:07 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Jun 2019 19:28:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7QIe/oedTOCkkD3V2c/L4NT3fkYvZQFGhmGvyB0oy0=;
 b=Zg+9Wvx2ZDh8OFUmlhf1eHKzgZdRdbYF5hp4X9BvW6q7Qb8OGjaBOc6YXdFBb30URImUL1ZbsXnRvhb/NrEnIvu+v8ElYkA0P+OO67O0LGpMITTzd4xTmx5ORfP9c3R4e/WI68cXpxqN4qjPAEJGTMUggCOdcte0NrnYSdGJssI=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1342.namprd15.prod.outlook.com (10.175.2.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 02:28:06 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::d51f:8f19:e2b5:3ae8%6]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 02:28:06 +0000
From: Tao Ren <taoren@fb.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Brendan Higgins
 <brendanhiggins@google.com>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuIcteG+E70PmUey9PLXreYJ5KajfUSAgAASwwCAAAhQgIAAOXUA
Date: Thu, 20 Jun 2019 02:28:06 +0000
Message-ID: <aefd4de2-31b4-1332-7cc0-92cc04fea045@fb.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
 <4c8b9ca5e84db7db67ad552d8fdbaa17d11b6432.camel@kernel.crashing.org>
In-Reply-To: <4c8b9ca5e84db7db67ad552d8fdbaa17d11b6432.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:102:2::12) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::3:2141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e7b35a4-cbae-4293-2c53-08d6f526ed1b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1342; 
x-ms-traffictypediagnostic: MWHPR15MB1342:
x-microsoft-antispam-prvs: <MWHPR15MB134285666109EE5373AC1952B2E40@MWHPR15MB1342.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(39860400002)(376002)(366004)(189003)(199004)(256004)(52116002)(8676002)(99286004)(64756008)(36756003)(68736007)(66476007)(66446008)(11346002)(478600001)(6512007)(66556008)(65826007)(25786009)(46003)(53936002)(305945005)(6246003)(53546011)(31686004)(7416002)(4326008)(476003)(14454004)(71190400001)(7736002)(71200400001)(6116002)(2616005)(486006)(14444005)(31696002)(446003)(65956001)(316002)(64126003)(81166006)(66946007)(2906002)(73956011)(102836004)(86362001)(76176011)(6436002)(229853002)(386003)(6506007)(54906003)(8936002)(58126008)(65806001)(110136005)(81156014)(5660300002)(6486002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1342;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: teF2a2zJwfvQAcieCDNmss28ILqu6fJHTLbuBkH+MpEjpkCsKdQ9gO/FkKNzhmad92HmbuH3Am9WbWrnfa8ouL3J78anFTkAogAytEpzX7wkvfC7tkXKnEbZiPCmxT9h56zAExqJU417oZ6hfwiHdsZv9O5NdMPCW9hDBrhrP3CDfTxkjaelZIxXqIoXlsD0d8SikONN7Vk25Fam5mW7mdbS0La8G2oTLNTgDBI/oEx1yRAp20LpAz3oByQnMSzYmkMf3fDeC/TDhZCYMCkDS2rzJyTp7E1TzJVSA7mzWeGjcg6j4JTB51QluvGr7U05fa+zHvN4kE93uPXjI1gJmyB9/O6qYBUpqzwoWwm9mZKcTGAm6rTULUj64ZIPaobLyCl8ipJjtrYOHVnB7gumN6Ly8qJNox+Kov8rW5Y4fTY=
Content-ID: <8840564E23F9E849A053530EEF97466C@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7b35a4-cbae-4293-2c53-08d6f526ed1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 02:28:06.1252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1342
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906200016
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_192839_997056_6BD78198 
X-CRM114-Status: GOOD (  21.75  )
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
 "ryan_chen@aspeedtech.com" <ryan_chen@aspeedtech.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC
 Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/19/19 4:02 PM, Benjamin Herrenschmidt wrote:
> On Wed, 2019-06-19 at 22:32 +0000, Tao Ren wrote:
>> Thank you for the quick response, Brendan.
>>
>> Aspeed I2C bus frequency is defined by 3 parameters
>> (base_clk_divisor, clk_high_width, clk_low_width), and I choose
>> base_clk_divisor because it controls all the Aspeed I2C timings (such
>> as setup time and hold time). Once base_clk_divisor is decided
>> (either by the current logic in i2c-aspeed driver or manually set in
>> device tree), clk_high_width and clk_low_width will be calculated by
>> i2c-aspeed driver to meet the specified I2C bus speed.
>>
>> For example, by setting I2C bus frequency to 100KHz on AST2500
>> platform, (base_clock_divisor, clk_high_width, clk_low_width) is set
>> to (3, 15, 14) by our driver. But some slave devices (on CMM i2c-8
>> and Minipack i2c-0) NACK byte transactions with the default timing
>> setting: the issue can be resolved by setting base_clk_divisor to 4,
>> and (clk_high_width, clk_low_width) will be set to (7, 7) by our i2c-
>> aspeed driver to achieve similar I2C bus speed.
>>
>> Not sure if my answer helps to address your concerns, but kindly let
>> me know if you have further questions/suggestions.
> 
> Did you look at the resulting output on a scope ? I'm curious what
> might be wrong.... 
> 
> CCing Ryan from Aspeed, he might have some idea.
> 
> Could it be that with some specific dividers you have more jitter ?
> Still, i2c devices tend to be rather robust vs crappy clocks unless you
> are massively out of bounds, which makes me wonder whether something
> else might be wrong in your setup.
> 
> Cheers,
> Ben.

I've reached out to hardware team to see if they can provide more inputs (such as protocol decoder output) but so far I don't have such data. I'm suspecting it's caused by I2C timing mainly because:

1) the intermittent i2c transaction failures always happen to slave devices which are furthest away from ASPEED chip.

2) As the i2c-aspeed driver in my kernel 4.1 tree (derived from ASPEED SDK) works properly, and I copied I2CD04 (Clock and AC Timing Control) register value from kernel 4.1 and applied to the latest upstream driver: the transaction failure is fixed :)

Thank you Ben for looking into the issue and involving more experts (Ryan) for discussion. I have been suffering from the problem for several months and I'm looking forward for proper/right solutions.


Cheers,

Tao


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
