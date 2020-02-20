Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EEA16581D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oGalT23kb9YD3wvffttSVIqPM5oKuDAsRDXUZ+2U4I=; b=bHYq7r8KiVYHxd
	qEBmv7HKaODalXU59ULmUGwriGU6Q9HqagF5enjZiSr4j2iCPV1TsTJsHUJGfnrZSXFdP0tLGEryJ
	mtDoEUi9WIw70bmDmi4l4abIFJ5wR3tGAC5TNDzjDtzNbsMt3ZzxjMP2gZ9m2eJV9CZTOPj/cVdry
	ShhjrX15KI8SKwfFeVz5Tyf/GJ8N+pAriJuciiH7bFGwPYxDxFlSiYEwNhzbksgDqY8xQJ37XIP+M
	YUUP2o30FtA3BOMS/t7lzO0ON6XrwyCIif/X8qyW287dV1C3N6Y4EDBFg5QzWrLXn3EVwfPr5sNs3
	B7QeZ5Yh4qvKu1BqHyXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fqW-00034Y-B5; Thu, 20 Feb 2020 07:02:04 +0000
Received: from mail-bn8nam11on2073.outbound.protection.outlook.com
 ([40.107.236.73] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fqM-00034E-8q
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 07:01:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PonjCXFeVjEhTxviIbjPkwwyfRNp6BqAJBEWi9a5JY3oyr9tf+S2Zw2WPhAujUaEX3TT3iTUiH/oMRWXHPFiXdkoS8OuWjFf1zYVGV3h+X8Y0S70l3B0msnuyw7WXiwOAcLhlZX25FmQNyJ22pcmep60rrV0N/tjG18MKzxE5Oj5QMMrEmVwD3e2LrVVKTfnkznSbUjW3ZwpwBM+d44Zc8XjsaTin+G0EbdDrrWl+RgPZU/Iqq44kVnLHL+jURQxUrtcmKLJfyo/DAzF9gk7kkqtLp0W512vWskz8W43T5BpnX0x64q4S+KNVRh/u4XlBG9HydADOKYyNqQCMsQxXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVYeoOaTVSIDHX0IHThUXVneFW7KUV18IHFRWbzwEO4=;
 b=Gx59AMbxhKItVFN37CaW83JLSwM10oPcMYBOGht2wrtawdasoafFymY6Uua0fzRYdgBk99Ga4FhEq/uMGFspQ1QQ34T4UlKYFFjHpXAHer0ib3oR9wOL9URLW4QB56h4IxSK60GUXQqIx5rmylnmcL7vBBLX4PSXXZ+CVAPvtp0kPNxPbvvc+sI2SDGn79F4eWkD2hDqJK8rK1h06pUuKdc2y4cVDiMZO0I/PNF5/FUFW60Bw5V81OC4FkdhB60qcbsznK3pLkRo7dNFOk3RI2yZs/mk2WkLc+yY67g2zBxrZDNF8n234/SheX/Bs8po05hs86udujP+qzSxljhw+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oVYeoOaTVSIDHX0IHThUXVneFW7KUV18IHFRWbzwEO4=;
 b=M9H/AKuF1CkF2zgpKLkTRgBnyomW67KlQZqBPJL9B6bvIwIryw8ZoHrdZMJGAkZxQ47+R8+6O+eDhn2CMCm3fNckvW/9PQgDqQ/0VDPjYjyJqck8giHHWDmY2eAjYrJvN7Xzrvo7Fg9JSZ/4aiRQKc/nl9wGY6pWlQc4QHHc1Ss=
Received: from BYAPR02CA0031.namprd02.prod.outlook.com (2603:10b6:a02:ee::44)
 by MWHPR02MB2831.namprd02.prod.outlook.com (2603:10b6:300:106::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Thu, 20 Feb
 2020 07:01:50 +0000
Received: from SN1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by BYAPR02CA0031.outlook.office365.com
 (2603:10b6:a02:ee::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.29 via Frontend
 Transport; Thu, 20 Feb 2020 07:01:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT028.mail.protection.outlook.com (10.152.72.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Thu, 20 Feb 2020 07:01:49 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j4fqH-0006qJ-6d; Wed, 19 Feb 2020 23:01:49 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j4fqC-00009A-3S; Wed, 19 Feb 2020 23:01:44 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j4fqA-00007s-Ch; Wed, 19 Feb 2020 23:01:42 -0800
Subject: Re: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
To: Mike Looijmans <mike.looijmans@topic.nl>,
 =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <dachaac@gmail.com>,
 robh+dt@kernel.org, michal.simek@xilinx.com, mark.rutland@arm.com,
 devicetree@vger.kernel.org
References: <20200219122036.24575-1-mike.looijmans@topic.nl>
 <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
 <85a5807e-1d66-867f-1d83-36e8a054a511@topic.nl>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <f2592ed7-9f1b-9a23-a6bd-ed8773a7873e@xilinx.com>
Date: Thu, 20 Feb 2020 08:01:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <85a5807e-1d66-867f-1d83-36e8a054a511@topic.nl>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39840400004)(396003)(199004)(189003)(8676002)(53546011)(478600001)(81166006)(70206006)(4326008)(31686004)(6666004)(356004)(2906002)(81156014)(8936002)(66574012)(2616005)(5660300002)(316002)(110136005)(9786002)(336012)(426003)(70586007)(44832011)(26005)(31696002)(36756003)(186003)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2831; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6f6677a-53ef-433f-0ae0-08d7b5d2c1ec
X-MS-TrafficTypeDiagnostic: MWHPR02MB2831:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2831B47687FE6CE08495F34EC6130@MWHPR02MB2831.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 031996B7EF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d62MM8XrNEi9IG1FZ8wUpTCe/pFpsHIYKFMOKy4vTxjK1Ykk2UEKTFHmqrZGQcMZtjFegHwtGcxgxgXAkWJesuZkIn9TaEmzWSeU5fPgq2L1xAEP4f5KE1Ogxespplsg1Kzoh9BN5vNfpMgb+QxRiBnOI79rYXwcU0EcNGLayKmLnSYrBxHZ9MLwQ0uqYoXjw/LRotWhSUqrvUyaeNXXZrX7cLoYg2W6BuEzumHCiyqWcrM5V8XkIU+FbkBh2gQBSCGizdMGFkLngN2yIwicqztFP6yec/aN+TaxYbgS2Y3sTDm/AhFi7BmeyVJ7EcjgohPZ6g6+iPhXR3/V2zgLlJ6NhGlW7a/bXsRUN7xIszsha0A02rZEWB6MEjpl/4juH9N2aH+oUH1kfCE1IvWHBWAcZvtkPifQ0im610V8rmcw5oiNHDVSF1E7Vf5ShRufzrKRb9+voYiVlNJy3VR+MzffL1pktcaaYIa7ws0KmzQNT+KrTTYw5ERw4rnTp5l+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 07:01:49.5964 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f6677a-53ef-433f-0ae0-08d7b5d2c1ec
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2831
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_230154_315523_641C21C4 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: rajan.vaja@xilinx.com, nava.manne@xilinx.com, m.tretter@pengutronix.de,
 linux-kernel@vger.kernel.org, manish.narani@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAuIDAyLiAyMCA3OjU2LCBNaWtlIExvb2lqbWFucyB3cm90ZToKPiBPbiAxOS0wMi0yMDIw
IDE5OjIzLCBWZXNhIErDpMOkc2tlbMOkaW5lbiB3cm90ZToKPj4gSGkgTWlrZSwKPj4KPj4gT24g
MTkuMi4yMDIwIDE0LjIwLCBNaWtlIExvb2lqbWFucyB3cm90ZToKPj4+IEFkZCBib290bW9kZSBv
dmVycmlkZSBzdXBwb3J0IGZvciBaeW5xTVAgZGV2aWNlcy4gQWxsb3dzIG9uZSB0byBzZWxlY3QK
Pj4+IGEgYm9vdCBkZXZpY2UgYnkgcnVubmluZyAicmVib290IHFzcGkzMiIgZm9yIGV4YW1wbGUu
IEFjdGl2YXRlIGNvbmZpZwo+Pj4gaXRlbSBDT05GSUdfU1lTQ09OX1JFQk9PVF9NT0RFIHRvIG1h
a2UgdGhpcyB3b3JrLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1pa2UgTG9vaWptYW5zIDxtaWtl
Lmxvb2lqbWFuc0B0b3BpYy5ubD4KPj4+IC0tLQo+Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy94
aWxpbngvenlucW1wLmR0c2kgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKPj4+IMKgIDEg
ZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMveGlsaW54L3p5bnFtcC5kdHNpCj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMveGlsaW54L3p5bnFtcC5kdHNpCj4+PiBpbmRleCAyNmQ5MjZlYjE0MzEuLjRjMzhkNzdlY2Ji
YSAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMveGlsaW54L3p5bnFtcC5kdHNp
Cj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+Pj4gQEAg
LTI0Niw2ICsyNDYsMzAgQEAKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBDbG9jayBhbmQgUmVz
ZXQgY29udHJvbCByZWdpc3RlcnMgZm9yIExQRCAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGxwZF9h
cGI6IGFwYkBmZjVlMDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxl
ID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDAgMHhmZjVlMDAwMCAweDAgMHg0MDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVib290LW1vZGUgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInN5c2Nvbi1yZWJvb3QtbW9kZSI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG9mZnNldCA9IDwweDIwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG1hc2sgPSA8MHhmMTAwPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLyogQml0KDgpIGlzIHRoZSAiZm9yY2UgdXNlciIgYml0ICovCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtbm9ybWFsID0gPDB4MDAwMD47Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtcHNqdGFnID0gPDB4MDEwMD47Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtcXNwaTI0ID0gPDB4MTEwMD47Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtcXNwaTMyID0gPDB4MjEwMD47Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtc2QwwqDCoMKgID0gPDB4MzEwMD47
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtbmFuZMKgwqAgPSA8MHg0
MTAwPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1zZDHCoMKgwqAg
PSA8MHg2MTAwPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1lbW1j
wqDCoCA9IDwweDYxMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2Rl
LXVzYjDCoMKgID0gPDB4NzEwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG1vZGUtcGp0YWcwID0gPDB4ODEwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG1vZGUtcGp0YWcxID0gPDB4OTEwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG1vZGUtc2QxbHPCoCA9IDwweGUxMDA+Owo+Pgo+PiBUaGlzIGtpbmRhIGxvb2tzIGEg
Yml0IG1pc3VzZSBvZiByZWJvb3QgbW9kZSBzdXBwb3J0Lgo+Pgo+PiBVc3VhbGx5IHlvdSBhcmUg
c2lnbmFsIHdpdGggcmVib290LW1vZGUgdGhhdCB5b3Ugd2FudCB0byBkbyBmYWN0b3J5Cj4+IHJl
c2V0LCBlbnRlciByZWNvdmVyeSBtb2RlIG9yIHN1Y2ggdGhpbmdzLgo+Pgo+PiBOb3cgdGhpcyBz
aWduYWxpbmcgaGVyZSBpcyB0ZWxsaW5nIHRoYXQgdGhpcyBpcyB1c2VkIGZvciBzZWxlY3RpbmcK
Pj4gZnJvbSB3aGF0IGRldmljZSB0byBib290IGZyb20uCj4gCj4gT24gdGhlIFp5bnFNUCB0aGlz
IGlzIHRoZSBvbmx5IHdheSB0byBjb21tdW5pY2F0ZSB3aXRoIHRoZSBST00uCj4gCj4+IEFub3Ro
ZXIgcHJvYmxlbSBpcyB0aGF0IHRoaXMgbm93IG1vZGlmaWVzIGFsbCBYaWxpbnggWnlucSBNUFNv
Q3Mgd2hpY2gKPj4gaXMga2luZGEgd3JvbmcuIFRoaXMgYmVoYXZpb3Igc2hvdWxkIHJlYWxseSBi
ZSBwcm9kdWN0L2JvYXJkIHNwZWNpZmljCj4+IGFuZCBub3QgY29tbW9uIGZvciBhbGwgYm9hcmRz
IC0tIHVuZG9pbmcgdGhpcyBpbiBwcm9kdWN0L2JvYXJkIGlzCj4+IHNvbWV3aGF0IGN1bWJlcnNv
bWUuIAo+IAo+IFRoZSBib290IG1vZGUgc2V0dGluZyBpcyBpbiB0aGUgU09DLCBhbmQgaXMgbm90
IGJvYXJkIHNwZWNpZmljLiBUaGUgUk9NCj4gaW50ZXJwcmV0cyB0aGlzIGZpZWxkLiBUaGUgb25s
eSBib2FyZCBzcGVjaWZpYyB0aGluZyBpcyB0aGF0IHlvdSBtYXkgbm90Cj4gYWN0dWFsbHkgaGF2
ZSBhIE5BTkQgY2hpcCBhdHRhY2hlZCB0byBpdC4KPiAKPiBNeSBpZGVhIHdhcyB0aGF0IGEgYm9h
cmQgY291bGQgZWFzaWx5IGFkZCBzYXkgJ21vZGUtcmVjb3Zlcnk9PDB4MjEwMD47Jwo+IHRvIG1h
a2UgdGhlIFFQU0kgYm9vdCB0aGUgbWV0aG9kIG9mIHJlY292ZXJ5LiBUaGUgYm9vdGxvYWRlciBh
bHNvIGhhcwo+IGFjY2VzcyB0byB0aGlzIHJlZ2lzdGVyLCBzbyBpdCBjYW4gc2VlIHRoYXQgdGhl
cmUgd2FzIGEgYm9vdCBtb2RlCj4gb3ZlcnJpZGUgaW4gZWZmZWN0Lgo+IAo+PiBOb3cgdGhpcyBj
aGFuZ2UgaGlqYWNrcyB0aGUgInJlYm9vdCA8YXJnPiIgd2l0aCB0aGlzIGJlaGF2aW9yIHdoaWNo
IGlzCj4+IG5vdCBzbyBuaWNlLgo+IAo+IElmIGFueW9uZSBoYXMgYSBiZXR0ZXIgc3VnZ2VzdGlv
biBhcyB0byB3aGVyZSB0aGlzIHNob3VsZCBnbywgSSdkIGJlCj4gbW9yZSB0aGFuIGhhcHB5IHRv
IGhlYXIgYWJvdXQgaXQuIEl0J3MgdGhlIG9ubHkgaW50ZXJmYWNlIHRoYXQgSSBjb3VsZAo+IGZp
bmQgaW4gdGhlIGtlcm5lbCB0byBhdHRhY2ggYSBib290bW9kZSBvdmVycmlkZSB0by4KCklJUkMg
YXMgdGhlIHBhcnQgb2YgUFNDSSAxLjEgc3BlYyBpcyBTWVNURU1fUkVTRVQyIHdoZXJlIHlvdSBj
YW4gZGV2aWNlCnJlc2V0X3R5cGUuIElJUkMgdGhhdCAwIGFzIHdhcm0gcmVzZXQgd2FzIGNvbWlu
ZyBiYXNlZCBvbiBkaXNjdXNzaW9uCndpdGggWGlsaW54IChhbmQgbWF5YmUgb3RoZXJzKSBhbmQg
SSB0aGluayB0aGlzIGlzIHdoYXQgWGlsaW54IGlzIHN0aWxsCnVzaW5nLiBCdXQgZGlkbid0IHRy
YWNrIGl0IGlmIHRoYXQgd2FzIHJlYWxseSBpbXBsZW1lbnRlZCBvciBub3QuCgpUaGFua3MsCk1p
Y2hhbAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
