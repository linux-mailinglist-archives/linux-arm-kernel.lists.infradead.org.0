Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D437EBD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/HMkLcnPsVayTVBYDRrrN/AidYsp8N4RoT/FbsJOZiw=; b=edHQ2/i9l96LXciv/3jWCAuxmf
	PbLbt9ElP2jA6MkY6MMHPvVaHVhLsyFkT2dk8hiAp/qst5kTjNSnXeIkFpLMRxrM/TzpVTNSSFe6V
	0BkUnHxmTG46GFVgFTpoX6MVGX+w9dKA/ZKz9zmO4M2eRJRHB0n911FVJmHe/EHLg2exvwZhQpbwx
	7ENmoc7YnC0mlWgx9dSbXqAIAZi1kqIqJImITqs4w+xTmA32/5LGzTorzUwF52aZthHqd3ZxWFg/Y
	7+aXZr0yI3BA8Q7yfiRy+6ArRvINyQRwGVNMoevtYJeOlCZmXzCWjrlG/sp7mMwNjmamcDNbVSn2k
	vAjVmZFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htPrr-0002bx-FM; Fri, 02 Aug 2019 05:12:39 +0000
Received: from mail-eopbgr770082.outbound.protection.outlook.com
 ([40.107.77.82] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htPrg-0002ba-JG
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:12:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6cC7Cx5t3Yjx1JhhIYepv5kM6P4iarmgs/IRs5j4G3Z6nVfrDprTo1MQE+uJJRmWYrTTh6nyzB+yfzV8zM7aGjrY3B2YcaAqVliPDxp0xXmeeT93g9TkkjtG3JDWRsmaILK4kNArrTGM5CPo2l40iUlmIIQkJYnRkMHfk4oldg77essZpEJzrlavPjgi8YpnoTueh/JiA7bxC0A1foXHTJwbPoOPtu8oixNX4zP/o0bd82D6/KIRrBaojRmd/W0k3un76HplTWfEsCYpjbSoCXzemcaY89+cvbKHIv8RsZedZtH2guXAWe/GqVzNrQ8AVH5PCFGXORnqvgk0f46zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ao9XcZcu7u/pjBNiC4k+Js0RzR0XJSJvise8m6ZqM4=;
 b=SGt7yobqLrb3J47avXdp3HNhbMRZ3JDvxQYL9NMB/al0gs0oWGPlKk449mXaSRYXo3wkWjDiSz8B42+idSgwMQ1WB9Vu9rBX1Hw6BpQuec+nuPopCEptF6F2wQKLvNgcEaVFRUHoMbX50k5T0dTrwN5hsetL0KTvagBTLwH4pVzUYOp+FaGZWQmUtlz8+xemW+/marbQy8JA8e6Dtfu17tp/TPVw7xTA6+w2nAp8BN6feFt8rhb9PFox92szk7B8mEzmAjk2FB3F5AInnQk8HurF96V1UG5CdSyoZeYrTOId19PVQPjqq2+RqzbNJ6P7gRR4Rm6iOIwFawgyr5QLLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ao9XcZcu7u/pjBNiC4k+Js0RzR0XJSJvise8m6ZqM4=;
 b=D0AIvI4S6i8gAwzHRnikcnYPCvnGdeM4jT2qupgfOKZ3JhgLuzgsf68SBvrGviaKQCBU25Jk/+jDXRrt2IDZlzClyVpqw9jbBdOwo16mOCuIVH3n8AY6HW8a4atCRoJxpRwvTnEKAoJC9tIvEnDGSCniG9BALG3yk//vfJQ7b3U=
Received: from MWHPR02CA0043.namprd02.prod.outlook.com (2603:10b6:301:60::32)
 by DM5PR02MB2684.namprd02.prod.outlook.com (2603:10b6:3:106::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Fri, 2 Aug
 2019 05:12:24 +0000
Received: from CY1NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::205) by MWHPR02CA0043.outlook.office365.com
 (2603:10b6:301:60::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.17 via Frontend
 Transport; Fri, 2 Aug 2019 05:12:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT014.mail.protection.outlook.com (10.152.75.142) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2136.14
 via Frontend Transport; Fri, 2 Aug 2019 05:12:23 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1htPra-0001O0-So; Thu, 01 Aug 2019 22:12:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1htPrV-0007ky-Oi; Thu, 01 Aug 2019 22:12:17 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x725CAjT026871; 
 Thu, 1 Aug 2019 22:12:10 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1htPrN-0007jq-RG; Thu, 01 Aug 2019 22:12:10 -0700
Subject: Re: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
To: Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190709172841.13769-1-nishkadg.linux@gmail.com>
 <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
 <6a5306bd-946d-383f-0b42-f17675c24218@gmail.com>
 <c0be80c9-16ef-fe03-ae3b-a7d3d1a2ede8@xilinx.com>
 <ab6db31d-ff16-5a32-f097-347daa6b98fc@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <51e9925b-507c-9d26-bd58-24b49bf652b1@xilinx.com>
Date: Fri, 2 Aug 2019 07:12:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ab6db31d-ff16-5a32-f097-347daa6b98fc@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(396003)(376002)(136003)(2980300002)(199004)(189003)(106002)(305945005)(110136005)(5660300002)(316002)(31686004)(65956001)(63266004)(50466002)(186003)(2486003)(64126003)(52146003)(47776003)(26005)(31696002)(53546011)(126002)(446003)(11346002)(336012)(8936002)(23676004)(2616005)(476003)(426003)(44832011)(70206006)(486006)(58126008)(70586007)(76176011)(81156014)(8676002)(81166006)(65806001)(14444005)(6246003)(36386004)(356004)(65826007)(36756003)(2870700001)(15650500001)(9786002)(229853002)(478600001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2684; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be990ebe-5ebf-4d17-e114-08d7170800cb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM5PR02MB2684; 
X-MS-TrafficTypeDiagnostic: DM5PR02MB2684:
X-Microsoft-Antispam-PRVS: <DM5PR02MB26840776A96FE2F7854580DBC6D90@DM5PR02MB2684.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 011787B9DD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: m5nbKnJ3qV0tpqfXyNNLIWqN4+REwUDKHs8WMNq9U0TzGjryXoug/+6muGu4iwGssib2ESv35CyUGjxJiLRSzwgmUyhKCaQggvcJ4TI+pPW8K47J7KIqeBHUOvAbyJXGFgOxqeEe92SAwYTUwNfOCp8Hb3XnMRs5NjoDp/J/dN4O8VC7gudROS1d3F6pW7A2BMygeEhHdT+AFKG8S/E9Y/TcNJLPcE2mkER5hvru+z1FdLo73v5glGwUC6EqhzkkHswcAXNVXxDfgLL3gbJlaGWJkl666NEONVpZTaeczcFOALOD89oLs2XaEjux4Q+OeXqHy/tCpXLUlW+5rybLjccHRu6h3g85q+6fhMBmJZmgKr5yWwdZcJkvVwuHMPG0FbP4mL7e2pT9PVL3kS/2kQM5qaEYsFS82RJP2P9TgME=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2019 05:12:23.4358 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be990ebe-5ebf-4d17-e114-08d7170800cb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2684
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_221228_640340_DA9B5BC5 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIuIDA4LiAxOSA2OjU5LCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6Cj4gT24gMzEvMDcvMTkg
Nzo1MSBQTSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+PiBPbiAzMS4gMDcuIDE5IDE1OjA2LCBOaXNo
a2EgRGFzZ3VwdGEgd3JvdGU6Cj4+PiBPbiAzMS8wNy8xOSAyOjAxIFBNLCBNaWNoYWwgU2ltZWsg
d3JvdGU6Cj4+Pj4gT24gMDkuIDA3LiAxOSAxOToyOCwgTmlzaGthIERhc2d1cHRhIHdyb3RlOgo+
Pj4+PiBFYWNoIGl0ZXJhdGlvbiBvZiBmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZSBw
dXRzIHRoZSBwcmV2aW91cwo+Pj4+PiBub2RlLCBidXQgaW4gdGhlIGNhc2Ugb2YgYSBnb3RvIGZy
b20gdGhlIG1pZGRsZSBvZiB0aGUgbG9vcCwgdGhlcmUgaXMKPj4+Pj4gbm8gcHV0LCB0aHVzIGNh
dXNpbmcgYSBtZW1vcnkgbGVhay4gSGVuY2UgYWRkIGFuIG9mX25vZGVfcHV0IGJlZm9yZQo+Pj4+
PiB0aGUKPj4+Pj4gZ290by4KPj4+Pj4gSXNzdWUgZm91bmQgd2l0aCBDb2NjaW5lbGxlLgo+Pj4+
Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2EgRGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdt
YWlsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+IMKgwqAgZHJpdmVycy9tYWlsYm94L3p5bnFtcC1pcGkt
bWFpbGJveC5jIHwgMSArCj4+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
Cj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWls
Ym94LmMKPj4+Pj4gYi9kcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94LmMKPj4+Pj4g
aW5kZXggODY4ODdjOWEzNDlhLi5iZDgwZDRjMTBlYzIgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZl
cnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxib3guYwo+Pj4+PiArKysgYi9kcml2ZXJzL21haWxi
b3gvenlucW1wLWlwaS1tYWlsYm94LmMKPj4+Pj4gQEAgLTY2MSw2ICs2NjEsNyBAQCBzdGF0aWMg
aW50IHp5bnFtcF9pcGlfcHJvYmUoc3RydWN0Cj4+Pj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikK
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkgewo+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHByb2JlIHN1YmRldi5cbiIp
Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FSU5WQUw7Cj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KG5jKTsKPj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGZyZWVfbWJveF9kZXY7Cj4+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWJveCsrOwo+Pj4+Pgo+Pj4+
Cj4+Pj4gUGF0Y2ggaXMgZ29vZCBidXQgd2hlbiB5b3UgYXJlIHNheWluZyB0aGF0IHRoaXMgd2Fz
IGZvdW5kIGJ5IENvY2NpbmVsbGUKPj4+PiB0aGVuIGl0IHNob3VsZCBiZSBhZGRlZCBhcyBzY3Jp
cHQgdG8ga2VybmVsIHRvIGRldGVjdCBpdC4KPj4+Cj4+PiBUaGlzIHBhcnRpY3VsYXIgcGF0Y2gg
d2FzIHN1Z2dlc3RlZCBieSBhIHNjcmlwdCBJIGRpZCBub3Qgd3JpdGUgbXlzZWxmOwo+Pj4gc29t
ZW9uZSBlbHNlIHdyb3RlIGl0IGFuZCBzZW50IGl0IHRvIG1lLiBIb3cgc2hvdWxkIEkgcHJvY2Vl
ZCBpbiB0aGlzCj4+PiBjYXNlPwo+Pgo+PiBZb3UgY2FuIGFzayBoaW0gdG8gc3VibWl0IGl0IHRv
IGtlcm5lbC4KPj4gT3IgeW91IGNhbiB0YWtlIGl0LCBrZWVwIGhpcyBhdXRob3JzaGlwIGFuZCBz
ZW5kIGl0IHRvOgo+IAo+IEkgaGF2ZSBhc2tlZCBoZXIgdG8gc3VibWl0IHRoaXMgc2NyaXB0LCB0
aGFuayB5b3UuIFdpbGwgSSBuZWVkIHRvCj4gcmVzdWJtaXQgdGhpcyBwYXRjaCwgaG93ZXZlcj8K
Ckkgd2lsbCBsZXQgSmFzc2kgdG8gZGVjaWRlLgoKVGhhbmtzLApNaWNoYWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
