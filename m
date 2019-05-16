Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F4020ECE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zjYPbQSy7HQr+Z8m63BkhqqJDBJMCpucOBWPlTEqcE=; b=tugsUZe3zLJijZ
	rMA2JREJnJrZGUWqQtGjtZ+pIeIpT9ZaR5KzyZQPwaysZtWhVHB8bwpZe238C7UQtMfeNeXwtnoYZ
	Z98uGxcdYOanUkLFFap8K5FLD3EfiPH8R/2DzbfpWULA5BD4jruOSymlEDkItBjlY4XlaqL+VPocL
	rA7SOogDVGImu3uGj5ncZPyeNocZ9NcPyso0m431tsVhCuT5ZPbZXxOHkHYaW/fdgVGoywSYBtL1a
	k2ON8HdD/QN1YTY4LrLF+W/VcsPKeRCDp0M62O94McJ2Zp94BDHy+P/hKJZIANyeFoAVRZYvuotcN
	p49FWPh6nYuyWlXvgXhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLHi-000081-JC; Thu, 16 May 2019 18:39:18 +0000
Received: from mx0b-002e3701.pphosted.com ([148.163.143.35])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLHZ-00006g-Eu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:39:11 +0000
Received: from pps.filterd (m0150244.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4GIWE41001842; Thu, 16 May 2019 18:38:56 GMT
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
 by mx0b-002e3701.pphosted.com with ESMTP id 2sha5q9p2q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 May 2019 18:38:55 +0000
Received: from G2W6311.americas.hpqcorp.net (g2w6311.austin.hp.com
 [16.197.64.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by g2t2354.austin.hpe.com (Postfix) with ESMTPS id C95A3C3;
 Thu, 16 May 2019 18:38:53 +0000 (UTC)
Received: from G9W8677.americas.hpqcorp.net (16.220.49.24) by
 G2W6311.americas.hpqcorp.net (16.197.64.53) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 16 May 2019 18:38:53 +0000
Received: from G9W9209.americas.hpqcorp.net (2002:10dc:429c::10dc:429c) by
 G9W8677.americas.hpqcorp.net (2002:10dc:3118::10dc:3118) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Thu, 16 May 2019 18:38:53 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.241.52.13) by
 G9W9209.americas.hpqcorp.net (16.220.66.156) with Microsoft SMTP
 Server (TLS)
 id 15.0.1367.3 via Frontend Transport; Thu, 16 May 2019 18:38:53 +0000
Received: from TU4PR8401MB0607.NAMPRD84.PROD.OUTLOOK.COM (10.169.44.19) by
 TU4PR8401MB1134.NAMPRD84.PROD.OUTLOOK.COM (10.169.48.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 18:38:51 +0000
Received: from TU4PR8401MB0607.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e801:598b:4d87:7d6b]) by TU4PR8401MB0607.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e801:598b:4d87:7d6b%6]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 18:38:51 +0000
From: "Kani, Toshi" <toshi.kani@hpe.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>
Subject: Re: [PATCH V4] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Thread-Topic: [PATCH V4] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Thread-Index: AQHVCsb1po3qOFZtEEG+LlOmCwssnqZuFpkA
Date: Thu, 16 May 2019 18:38:51 +0000
Message-ID: <e796e434eef10fbade2597f69be63ceeac32b2cd.camel@hpe.com>
References: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
 <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.219.163.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f3471c7-f213-4e41-adad-08d6da2dbdcb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:TU4PR8401MB1134; 
x-ms-traffictypediagnostic: TU4PR8401MB1134:
x-microsoft-antispam-prvs: <TU4PR8401MB113418AC8CDBBF0C131EA8AE820A0@TU4PR8401MB1134.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(346002)(136003)(366004)(376002)(51914003)(199004)(189003)(446003)(11346002)(6486002)(8676002)(81156014)(81166006)(3846002)(6116002)(71190400001)(71200400001)(229853002)(4744005)(305945005)(73956011)(7736002)(2616005)(66946007)(66446008)(64756008)(66556008)(66476007)(99286004)(76116006)(476003)(8936002)(316002)(6436002)(54906003)(68736007)(110136005)(486006)(2906002)(6512007)(66066001)(25786009)(76176011)(6506007)(2501003)(5660300002)(256004)(36756003)(118296001)(14444005)(6246003)(478600001)(186003)(102836004)(53936002)(14454004)(86362001)(2201001)(4326008)(26005)(14583001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB1134;
 H:TU4PR8401MB0607.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qQk0BoaS+/Of/Tc5GPEqDaywQu7IIuMJcSk68Eot6CTdzl+jHTKCAdSgWIPMHkAWz3KxE8MQoSNpXUs3vWXenwzz1RdK3SSTcRfyfYWsnWkR0KHkpm6aO7PCQ2FCVmsSvvV4CK+n2tWioAtOegxtaCDnxO7bpvGx7bZ+AhBg9IngJsLBOb7xx65/+L9E/52/qUPi8cMK+t4yeSwOFoWMhIdPXpMbPikyQHOK11d1CqRyaXBJRgalJHsP6/b3PPab+taG3HI8NR0fiWSwF/Rz89vCmxyMhWwGCPomYrTDSupiAXdSsAWjU40aDSGoRv5auRSi28iAYEJZ6MgwzWY1bmp8XThup9IGF5/x54lIIu/pUtDeNte8Uz4ncupeJ6bfOoXtQxwYGqPGwA+La2WjVSyOHyJFRKqxIFcLbgnbgPg=
Content-ID: <B909AB302DB5BC46AAA96D9F1BC612BA@NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f3471c7-f213-4e41-adad-08d6da2dbdcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 18:38:51.0738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1134
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-16_15:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905160116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_113909_625346_2D2AAA31 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.143.35 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-15 at 08:05 +0530, Anshuman Khandual wrote:
> Virtual address alignment is essential in ensuring correct clearing for all
> intermediate level pgtable entries and freeing associated pgtable pages. An
> unaligned address can end up randomly freeing pgtable page that potentially
> still contains valid mappings. Hence also check it's alignment along with
> existing phys_addr check.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Toshi Kani <toshi.kani@hpe.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Chintan Pandya <cpandya@codeaurora.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> ---
> Changes in V4:
> 
> - Added similar check for ioremap_try_huge_p4d() as per Toshi Kani

Thanks for the update. It looks good to me.

Reviewed-by: Toshi Kani <toshi.kani@hpe.com>

-Toshi
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
