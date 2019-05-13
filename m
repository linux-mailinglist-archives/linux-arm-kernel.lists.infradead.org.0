Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD01BF72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 00:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/TVM/hlNBPxLZ1Ncar/SwF5sfmlvy9vmqKl6r+19/0=; b=BmU4tyLk6eb6Fz
	hVPijpAbrOjkTKMJSnhIAe1Zixuzd3Pd+C+Pm3FUVMJRfttV12/qZPdp7GhGAegvjxrmUiwm4Fhu+
	QVzUiUitqiW2lDSdnfp8rFlQZwCjB0+BZI/hPVn657q1BnL6rZ9cVnpoxVaY5MVFmaY4cHINUKCwC
	K/bIKz3AXOk//Tbfw0IHnM+t1qOSQLtxcWLkK9ZTyyS1sFYsna429mHhnMoJ2hBrmDsEejgdeWvSe
	UH/C7c2LgYlHEGUBsnXW68IVTOzplrTwr0BLVj47RHHThqCLJukS9jlRYA2eQqEybR2WQbLu8fC0N
	7hoLs7NUT7MYxLKXBpIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJPK-0001X3-2V; Mon, 13 May 2019 22:26:54 +0000
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJPC-0001WS-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 22:26:47 +0000
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
 by mx0a-002e3701.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DMQXXT004060; Mon, 13 May 2019 22:26:33 GMT
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
 by mx0a-002e3701.pphosted.com with ESMTP id 2sfcw79wxf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2019 22:26:33 +0000
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com
 [16.193.72.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by g2t2354.austin.hpe.com (Postfix) with ESMTPS id 50CFC81;
 Mon, 13 May 2019 22:26:32 +0000 (UTC)
Received: from G9W8676.americas.hpqcorp.net (16.220.49.23) by
 G1W8106.americas.hpqcorp.net (16.193.72.61) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 13 May 2019 22:26:31 +0000
Received: from G9W9209.americas.hpqcorp.net (2002:10dc:429c::10dc:429c) by
 G9W8676.americas.hpqcorp.net (2002:10dc:3117::10dc:3117) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Mon, 13 May 2019 22:26:30 +0000
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (15.241.52.13) by
 G9W9209.americas.hpqcorp.net (16.220.66.156) with Microsoft SMTP
 Server (TLS)
 id 15.0.1367.3 via Frontend Transport; Mon, 13 May 2019 22:26:31 +0000
Received: from DF4PR8401MB0601.NAMPRD84.PROD.OUTLOOK.COM (10.169.84.9) by
 DF4PR8401MB1193.NAMPRD84.PROD.OUTLOOK.COM (10.169.92.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 22:26:30 +0000
Received: from DF4PR8401MB0601.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::f0d9:104c:cc02:ecc9]) by DF4PR8401MB0601.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::f0d9:104c:cc02:ecc9%10]) with mapi id 15.20.1878.024; Mon, 13 May
 2019 22:26:30 +0000
From: "Kani, Toshi" <toshi.kani@hpe.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 1/2] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Thread-Topic: [PATCH V3 1/2] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Thread-Index: AQHVBiJHPf8OzupKLkK42fmk5iIjc6ZpqIUA
Date: Mon, 13 May 2019 22:26:30 +0000
Message-ID: <f56ab0da9e9f20a7c4c019e629052d0e1aa2ffff.camel@hpe.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
 <1557377177-20695-2-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1557377177-20695-2-git-send-email-anshuman.khandual@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.219.163.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0b0cfad-6be8-44bb-5595-08d6d7f20c00
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DF4PR8401MB1193; 
x-ms-traffictypediagnostic: DF4PR8401MB1193:
x-microsoft-antispam-prvs: <DF4PR8401MB1193A8B052B371F32F125877820F0@DF4PR8401MB1193.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(136003)(366004)(346002)(39860400002)(199004)(189003)(36756003)(6116002)(186003)(305945005)(7736002)(2906002)(5660300002)(6506007)(102836004)(26005)(66066001)(8676002)(14454004)(110136005)(118296001)(8936002)(81156014)(81166006)(54906003)(86362001)(71200400001)(476003)(446003)(11346002)(316002)(486006)(71190400001)(76116006)(2616005)(2201001)(25786009)(66556008)(64756008)(66446008)(6246003)(229853002)(66476007)(73956011)(66946007)(256004)(68736007)(2501003)(4326008)(6512007)(3846002)(99286004)(478600001)(53936002)(76176011)(6436002)(6486002)(14583001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DF4PR8401MB1193;
 H:DF4PR8401MB0601.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U94EnbKDpOInV46Uq62YHYSwJcAX4jRX/AYXTzXyz15yPLdvmW5hC146a01gh4VtrljNs6gzLSijHxPyL1aUNrWYI55hslDvqFxswkEW7f0EkhutGRYJ23aS5raJoboDHSYyCtmA3HXfW1y0MnQ38imxlIS8g+lEt4rjW6RBPvql4ndYu95LlFXy6lxdIFUafrWN8qe1+jJH0E02rp6R3F1WRhc964EE9hgJg1pb4iZEYY4Nmg/Aty0cdI0HNTvybmqa1qbJZcnfMmTHMQ0wlU7r17KXHXfH9x3Abie1KVISeR5gmoWbOVFDKvDMaPu8a4NqG2J/ZUEHww/hW/QIKraO62F7ywZyak5H3wiPnNvC5hNeUq1ONBQrA8uZesEWgFd6kJ3yXmRj30+96H6PyfNkQHUq8h+kIoPsQ0IsUQw=
Content-ID: <35470E155100F04188EE8F12E1958374@NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b0cfad-6be8-44bb-5595-08d6d7f20c00
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 22:26:30.1838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB1193
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_152646_380052_8DF1BEE8 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.147.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.147.86 listed in wl.mailspike.net]
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

On Thu, 2019-05-09 at 10:16 +0530, Anshuman Khandual wrote:
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
>  lib/ioremap.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/lib/ioremap.c b/lib/ioremap.c
> index 063213685563..8b5c8dda857d 100644
> --- a/lib/ioremap.c
> +++ b/lib/ioremap.c
> @@ -86,6 +86,9 @@ static int ioremap_try_huge_pmd(pmd_t *pmd, unsigned long addr,
>  	if ((end - addr) != PMD_SIZE)
>  		return 0;
>  
> +	if (!IS_ALIGNED(addr, PMD_SIZE))
> +		return 0;
> +
>  	if (!IS_ALIGNED(phys_addr, PMD_SIZE))
>  		return 0;
>  
> @@ -126,6 +129,9 @@ static int ioremap_try_huge_pud(pud_t *pud, unsigned long addr,
>  	if ((end - addr) != PUD_SIZE)
>  		return 0;
>  
> +	if (!IS_ALIGNED(addr, PUD_SIZE))
> +		return 0;
> +
>  	if (!IS_ALIGNED(phys_addr, PUD_SIZE))
>  		return 0;

Not sure if we have such case today, but I agree that it is prudent to
have such checks.  Is there any reason not to add this check to p4d for
consistency?

Thanks,
-Toshi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
