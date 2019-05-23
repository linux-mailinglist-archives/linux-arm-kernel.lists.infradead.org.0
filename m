Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E9E284DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 19:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyiOuASsXPPXNo+HNYn8byBVPuMUCUTD0+wQL48latA=; b=aPcisDAdfOIhRB
	MQh4oBaPW5fHJPi/LbSpgA0yI+rIMCBxPIKJbE8cRsPUvlZlrCcmdh25RpVknw30qItUO1TtmzquS
	mslFag3fYDAJw4ajlXdsDIO7TrGCEeysJ+NTFEaWFHJaPF6WouhhLGELCbNpF4Zj/v+y503lK/LJ9
	TIs8y09r8JCqjncTLmY2ujbnaHLgo6xg5WrPuy67IaLK/T8necPSi5XJE+7U2MIZtSTYgQfnfBdzW
	2AtFuN6Gxtuxj7VbFP4SiZLZCPr52iD8s76VOVWjfKs2j7nBAlGxxvafzM/1PhjQDmiNpi1DcnudI
	LyrCFKrERDQY6NtT5c3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTrSp-0004FG-T1; Thu, 23 May 2019 17:25:11 +0000
Received: from mail-eopbgr00041.outbound.protection.outlook.com ([40.107.0.41]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTrSf-0003vs-32
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 17:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J8wk3axRcofJU6ok/pWR27a5nb5ggUShxHLNcMX3vps=;
 b=OnL3Sz/mKG0lgevhfyhD3gwtzFXqzzOnlsD1iW12Tkd5HrrRnsm+FTMb4X0bbCp0nqjdIV09pRclABOTpkiydrHDhQ7bMoX2Ag085/RJGuPRoXQMBQeFd3i4JZJYc947yt/0L6Sth2//1Chd+oC0LvZFNPDGukpW1Tksbdk+yjOo1Qi7Tza0fNiKbazRkz1e+ptSiy3xAiX51bFQmnTifhMjILnO6raEyl+P16YOsAWTD0/UTn0R/sav+wYPrE3znqrmfnsEQ7vjhVYcbvYJ25LzWW+MO8rnUMFeSMCulugujc7RtznAOVMSI4/TOSRycdvyd22SS96IAwfgs5JIsA==
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com (20.176.214.210) by
 AM0PR03MB3538.eurprd03.prod.outlook.com (52.134.80.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 17:24:57 +0000
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a]) by AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a%3]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 17:24:57 +0000
From: Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Topic: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Index: AQHVEVn2U05P8CKPx0+q1JYvuEenTaZ48eYAgAAERwA=
Date: Thu, 23 May 2019 17:24:56 +0000
Message-ID: <877eah84nr.fsf@epam.com>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
 <20190523170938.GC4224@e107155-lin>
In-Reply-To: <20190523170938.GC4224@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Volodymyr_Babchuk@epam.com; 
x-originating-ip: [85.223.209.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce5af6ac-c988-4821-aa76-08d6dfa393b3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:AM0PR03MB3538; 
x-ms-traffictypediagnostic: AM0PR03MB3538:
x-microsoft-antispam-prvs: <AM0PR03MB35386A23C82FD6C09E3527FFE6010@AM0PR03MB3538.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(346002)(39860400002)(396003)(189003)(199004)(36756003)(6506007)(446003)(2616005)(72206003)(11346002)(25786009)(316002)(486006)(14454004)(186003)(86362001)(7736002)(71200400001)(305945005)(71190400001)(55236004)(5660300002)(102836004)(99286004)(2906002)(4744005)(76176011)(6246003)(4326008)(54906003)(6512007)(53936002)(229853002)(508600001)(66066001)(256004)(3846002)(6116002)(26005)(81156014)(66476007)(6916009)(73956011)(76116006)(6486002)(8936002)(66446008)(66556008)(6436002)(64756008)(80792005)(66946007)(81166006)(8676002)(68736007)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR03MB3538;
 H:AM0PR03MB4148.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: epam.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1No+QT6wopdUwh54m4lwCZFfBOQKV0PChUWeFK+DxpRdXrhfsWer7RLHbiHJht0qXB7Jo2Vz4jcm4TyUgL2kgOcp/+eLqMJANnONDQ7KeU6Qlazbbo9qTd1qNu041VFqae8NZPq3Es0mrJYyQ9mTtnkDen10VxF4Rz8Cmbblpbzm6AeMyLktTyw52ZXfLYn4Qron8naYm1pcKjJWllMfVImtIROcsFDuCux/nsk/Wm67RmFxSmx07x3q86lR9DRc1X4RYVfRuu5IqYNKBLI2fgLbXxlO6iUE/6TGHimOemLq1v1ReGJHADxpd5tgd7+yigDbvI1G3y0dS+9mptsExdfyawvzK1bqsWK+1iqPcfrgTbUhuS2RWP09Qed1YsIzUmqbI+RvN1DeP4k+1yB8/dqUlF/PiZaS3dQme9adinE=
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5af6ac-c988-4821-aa76-08d6dfa393b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 17:24:56.8463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB3538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_102501_452502_BB8AA0BC 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "trivial@kernel.org" <trivial@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Sudeep Holla writes:

> On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
>> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com

I accidentally deleted ending ">" symbol in the line above, so "git
send-email" decided to move that line from headers to the message body.

>> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
>> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
>> need is the ARM DEN 0056A - "ARM System Control and Management
>> Interface Platform Design Document".
>>
>
> Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
> Applied now.
It happens all the time. I also did stupid mistake in my patch file. It
is described above. Could you please ensure that this line will be not
in the resulting commit message? Thank you.

-- 
Best regards,Volodymyr Babchuk
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
