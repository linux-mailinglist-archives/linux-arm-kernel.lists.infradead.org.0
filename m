Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAC61657FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 07:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNxYzs2NzsnmgewyY2Mv+eXusQd++KYnVoriC1OUg1U=; b=HSW4BFCG8T4rBT
	GhXhn6r+rmU78OH90sOF9Ad2Le7zQQ1BA7g7FxCRf3xK9Or7c5JvfQijUu0TC3vssyqZAv2F0AOZS
	ojxFPN+RLDdMbNk0T/uSuCXGs97Q7pp4JPmgRcGCgWlijiGyPahGRe5Jz6ZzVgLVdbtvLC6Upk1Sh
	+Am87B3wz9xrrnyiMo5Py82XkAknOabrMP7WyXAXyVbdEK87OP5x5tEsbh8Eg0PxmeDkUG2J7Ptdk
	2DsHTaplmTv1qei5fOgDarunCdBHzj6E+3XrfIYVjhTrJRouWq+UHCdLSmkGhx0V6/WvrIZSAREgI
	f0g18xtBwdsY6IORiOKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ff4-00059h-6k; Thu, 20 Feb 2020 06:50:14 +0000
Received: from mail-bn8nam12on2059.outbound.protection.outlook.com
 ([40.107.237.59] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fep-00059K-Cu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 06:50:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTIjvXa+HPp/ZZuON0b/rv8SOCGO/AXJ88LR7lLpHpQgwRu8QVr0b7kdkQufxAdyK80mNdBWsIvYxMxiYHrMkHW5n7yxDGGaocejW513elcKUHy2jYAbYEM15uBSMkAeqZmC54Q2wU7WCAZXb+YF0jMH6qd1DNw4aMSxfWdxTp7aMzm44wd320dxwYupNizzwzGd4KRDc2hmdIZ6aBN7PCCo1f5sFr2dSsnXPOpC5SjWRiW6EDXGlhQ7Mieaey+76Hcm/Wfa02rs4YjlLA9qJm86uuEQRV5HPqa1SmGN6zoIB1C6rXOFLM+heSQCHalj0Pkpd31vwdAdPEbBVGWjcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXLgZpHCEkMlKmPNIY7+T33KTM2AwgvQZWiEu5zQDjE=;
 b=EXCriE83QcG0poO9q78SYNcBDoQ687jD1nRDF2SMECViVmS0dbrpJLdqkU2C36j4yKjza0vnoLLHJeMuOQNGzo+zFBno3ZgXE9kTlZiEbXQUaQUNZ70HricSkMEwXSyH4ne9a6Rd6z+CFTrwlt/jMspqC5Z5pfjVQRd4Sqwwie6Vb62QCbeBHme+y8eRYGn3iPBMBP0IYvRwjD42/h4mjIfsn4rv4EXF0T2dVEWx5kKcWso72Au+2x/WBcPzvYuchGYaLF7aDRmEO4wKEcCM9lFTLgV4P6FRJbWCqpWH71r+39FkvR5U36Ct6jFdARV6JQVo3/wqSXjQGK4WdvWxeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXLgZpHCEkMlKmPNIY7+T33KTM2AwgvQZWiEu5zQDjE=;
 b=mBcYNJ8pMpwaKodHmKGKI37g1lWl2mNxkb38PFLYpEziPYvnpe4pX0g7a6EFEjoaxS9utl5p4SdQmOIx+oEb6DGUu6mzpfLeV/HLanSVvpzbH1ws2e2ICE7aGvI1pHIeXCpQlhnIrzPQfAONXWJah2+pQEonhSA8s/fGyDTO/Dg=
Received: from SN4PR0201CA0055.namprd02.prod.outlook.com
 (2603:10b6:803:20::17) by SN6PR02MB5485.namprd02.prod.outlook.com
 (2603:10b6:805:ed::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23; Thu, 20 Feb
 2020 06:49:56 +0000
Received: from SN1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by SN4PR0201CA0055.outlook.office365.com
 (2603:10b6:803:20::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.31 via Frontend
 Transport; Thu, 20 Feb 2020 06:49:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT038.mail.protection.outlook.com (10.152.72.69) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Thu, 20 Feb 2020 06:49:55 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j4fel-0006Oy-AT; Wed, 19 Feb 2020 22:49:55 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j4feg-00039T-7L; Wed, 19 Feb 2020 22:49:50 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01K6nlGV018675; 
 Wed, 19 Feb 2020 22:49:47 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j4fed-000392-08; Wed, 19 Feb 2020 22:49:47 -0800
Subject: Re: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
To: =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <dachaac@gmail.com>,
 Mike Looijmans <mike.looijmans@topic.nl>, robh+dt@kernel.org,
 michal.simek@xilinx.com, mark.rutland@arm.com, devicetree@vger.kernel.org
References: <20200219122036.24575-1-mike.looijmans@topic.nl>
 <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <882048d4-9095-1555-935a-335bb96869f2@xilinx.com>
Date: Thu, 20 Feb 2020 07:49:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39830400003)(346002)(136003)(376002)(396003)(199004)(189003)(44832011)(2906002)(426003)(336012)(2616005)(31686004)(5660300002)(66574012)(70206006)(70586007)(478600001)(9786002)(36756003)(8676002)(81156014)(81166006)(356004)(6666004)(8936002)(110136005)(31696002)(316002)(186003)(4326008)(26005)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5485; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa530cda-d640-40de-6dbf-08d7b5d11869
X-MS-TrafficTypeDiagnostic: SN6PR02MB5485:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5485F04514AAE25AACCFEC47C6130@SN6PR02MB5485.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 031996B7EF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j66AKZPnIY0e537u+osR+QKndfBTlvflqNe821xOscL+Ac/idSB0bDfiKarkFWsDEVLWudlISrxhxEWFhBWF2Tsdr0zMnQuVcB1j7daLwl2CguN66RS2yQRAOmxLe3WoGUDYpvlQOIqN21jubUheoAVN+6c/s6xvA/Gz1W/NWNqeN0qY4m6gJ8SZlxgKaKAtKQv3narvPEFgL6753Gh3UxzJfO5JbS/Mt7Q5Dez5FEstVJ6pUc/Aw5xpdlqUEpH7moTvELdQ24Y0L44hSbkA7PeubQVcFtmOz0Bu+Ma4loj7M1hCX4aqJiehJuQyCJzX4DcgifCXrOBOqlNufZnDpR5qmkxPV7RnU0P3PDxQnB0oUiRJl0XbB9q6svCK9U88xSDcIPr2xth2PILQDbuAsh5ksK5wyb83Sm96WC1eFRsT2ISy6l2OFqBAFthjVj9LMbouRuJ8+MoUxhkBfQFdaSWrrZYU2HSycw8/MIOdeTnSHt/fzKZFTo1M8xJwNyZs
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 06:49:55.7098 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa530cda-d640-40de-6dbf-08d7b5d11869
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_224959_442080_84665D35 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.59 listed in list.dnswl.org]
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

T24gMTkuIDAyLiAyMCAxOToyMywgVmVzYSBKw6TDpHNrZWzDpGluZW4gd3JvdGU6Cj4gSGkgTWlr
ZSwKPiAKPiBPbiAxOS4yLjIwMjAgMTQuMjAsIE1pa2UgTG9vaWptYW5zIHdyb3RlOgo+PiBBZGQg
Ym9vdG1vZGUgb3ZlcnJpZGUgc3VwcG9ydCBmb3IgWnlucU1QIGRldmljZXMuIEFsbG93cyBvbmUg
dG8gc2VsZWN0Cj4+IGEgYm9vdCBkZXZpY2UgYnkgcnVubmluZyAicmVib290IHFzcGkzMiIgZm9y
IGV4YW1wbGUuIEFjdGl2YXRlIGNvbmZpZwo+PiBpdGVtIENPTkZJR19TWVNDT05fUkVCT09UX01P
REUgdG8gbWFrZSB0aGlzIHdvcmsuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pa2UgTG9vaWptYW5z
IDxtaWtlLmxvb2lqbWFuc0B0b3BpYy5ubD4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMveGlsaW54L3p5bnFtcC5kdHNpIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMveGlsaW54L3p5bnFtcC5kdHNpCj4+IGluZGV4IDI2ZDkyNmViMTQzMS4uNGMzOGQ3N2VjYmJh
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+PiBAQCAtMjQ2
LDYgKzI0NiwzMCBAQAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgfTsKPj4gwqAgK8KgwqDCoMKgwqDCoMKgIC8qIENsb2NrIGFuZCBSZXNldCBj
b250cm9sIHJlZ2lzdGVycyBmb3IgTFBEICovCj4+ICvCoMKgwqDCoMKgwqDCoCBscGRfYXBiOiBh
cGJAZmY1ZTAwMDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInN5
c2NvbiIsICJzaW1wbGUtbWZkIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4
MCAweGZmNWUwMDAwIDB4MCAweDQwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlYm9v
dC1tb2RlIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0g
InN5c2Nvbi1yZWJvb3QtbW9kZSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
b2Zmc2V0ID0gPDB4MjAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXNr
ID0gPDB4ZjEwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogQml0KDgp
IGlzIHRoZSAiZm9yY2UgdXNlciIgYml0ICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbW9kZS1ub3JtYWwgPSA8MHgwMDAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBtb2RlLXBzanRhZyA9IDwweDAxMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG1vZGUtcXNwaTI0ID0gPDB4MTEwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbW9kZS1xc3BpMzIgPSA8MHgyMTAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBtb2RlLXNkMMKgwqDCoCA9IDwweDMxMDA+Owo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtbmFuZMKgwqAgPSA8MHg0MTAwPjsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXNkMcKgwqDCoCA9IDwweDYxMDA+Owo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtZW1tY8KgwqAgPSA8MHg2MTAwPjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXVzYjDCoMKgID0gPDB4NzEwMD47
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1wanRhZzAgPSA8MHg4MTAw
PjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXBqdGFnMSA9IDwweDkx
MDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtc2QxbHPCoCA9IDww
eGUxMDA+Owo+IAo+IFRoaXMga2luZGEgbG9va3MgYSBiaXQgbWlzdXNlIG9mIHJlYm9vdCBtb2Rl
IHN1cHBvcnQuCj4gCj4gVXN1YWxseSB5b3UgYXJlIHNpZ25hbCB3aXRoIHJlYm9vdC1tb2RlIHRo
YXQgeW91IHdhbnQgdG8gZG8gZmFjdG9yeQo+IHJlc2V0LCBlbnRlciByZWNvdmVyeSBtb2RlIG9y
IHN1Y2ggdGhpbmdzLgo+IAo+IE5vdyB0aGlzIHNpZ25hbGluZyBoZXJlIGlzIHRlbGxpbmcgdGhh
dCB0aGlzIGlzIHVzZWQgZm9yIHNlbGVjdGluZyBmcm9tCj4gd2hhdCBkZXZpY2UgdG8gYm9vdCBm
cm9tLgo+IAo+IEFub3RoZXIgcHJvYmxlbSBpcyB0aGF0IHRoaXMgbm93IG1vZGlmaWVzIGFsbCBY
aWxpbnggWnlucSBNUFNvQ3Mgd2hpY2gKPiBpcyBraW5kYSB3cm9uZy4gVGhpcyBiZWhhdmlvciBz
aG91bGQgcmVhbGx5IGJlIHByb2R1Y3QvYm9hcmQgc3BlY2lmaWMKPiBhbmQgbm90IGNvbW1vbiBm
b3IgYWxsIGJvYXJkcyAtLSB1bmRvaW5nIHRoaXMgaW4gcHJvZHVjdC9ib2FyZCBpcwo+IHNvbWV3
aGF0IGN1bWJlcnNvbWUuIE5vdyB0aGlzIGNoYW5nZSBoaWphY2tzIHRoZSAicmVib290IDxhcmc+
IiB3aXRoCj4gdGhpcyBiZWhhdmlvciB3aGljaCBpcyBub3Qgc28gbmljZS4KCkFub3RoZXIgcmVh
c29uIGlzIHRoYXQgb24gYXJtNjQgdGhlc2UgcmVncyBzaG91bG5kJ3QgYmUgYWNjZXNzZWQgYnkg
bm9uCnNlY3VyZSBzb2Z0d2FyZSBhbmQgeW91IHNob3VsZCBzZXR1cCBwcm90ZWN0aW9uIG5vdCB0
byBlbmFibGUgaXQuCgpJZiB0aGlzIGZ1bmN0aW9uYWxpdHkgaXMgdXNlZnVsIGZvciB5b3VyIGRl
c2lnbiBwbGVhc2Uga2VlcCBpdCBpbiB5b3VyCmJvYXJkIGR0cyBmaWxlLgoKVGhhbmtzLApNaWNo
YWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
