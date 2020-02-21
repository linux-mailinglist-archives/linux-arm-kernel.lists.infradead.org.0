Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD6F167C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8jFFCRz8QV1RsS7+NXP9qU1G6/FKQdAQu+OT+061mA=; b=qyWs7of7olmAEI
	/dCaH175k56lH1/MkeUNJAyiPjqSx4h20eyaVjy4E3mexLXOrmBIz8ssSg172URLEkmsFtXPh8TIV
	Y/4TS5HrM9OSgEoj7nvqL889Gu66/k/CyvuKBcSnzWdN/j4ULD74xtro7/HfMJlS/2AMzd/FfA/jY
	ayh64tAZnuaYxKZQPBm7KVZli/RcwWfT0gqrgWRvcEKuwS1X1D4XCi9UQ0HwGagC+iz7Sf5A5+YXZ
	Aw4yo0IuiHif/1fIZ9LyxVe2MoX1GdrjxuBB8mjuR7GANmxLNkziLQ7ZvB8aE+WMe/5CxfX68k92y
	EQ1gKfv6PWRM+XT7mjPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56p0-0002Re-1l; Fri, 21 Feb 2020 11:50:18 +0000
Received: from mail-eopbgr680061.outbound.protection.outlook.com
 ([40.107.68.61] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56ok-0001tN-6f
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:50:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4Y46LV0svY680H0oTEsS/pFetk/ZxW1Vr4cNWuFeGg+i12KyGZk4hGX/8/60GnHxtrGd9PjtSbeoYzEIkNL/huO2W7g3hWl2HEmLe89jCKgaI/NHyw55IW/RTVyP/Cyu47QK4Ch0nLkd90aRiVCawPAOfZInxa+rJHbJW2fIxpUZqWbO+JlM1A8+3VH43zofXZuphlAFjFBDK8qY5ZqeO+dHtcyAgHlRpE2AmbZrsawjm7fLkA3DcD0+bSXuq2EG73wC8VPiJxlydhAGVnqvkirRKT4iQjxlwPjPjPR8nzJYbV8MJhI3aVfimr/TKeOJAaiGn3TndPDTd/QID1mMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAinLKdeuTbXDLur8W6cCD6Hzl49cfF7F0CwPnMJTi0=;
 b=LvV8vwchlaRc+Srk/f3/tEs1MGHGC0qtm4iNbTEhZHRsvrJyOtjpVvCrGg/0DlzYJCOK3g2Q8xA2njNPhA6RrpM/6zxJCXP0ydkXOuUBg/0ZMvs/uqmdtSICWi9p6JtrwiKHnZtJt9xxRDxBHkB7/cQ1ZswuJCiK8NaYBmAwt2kDqubSVutxq+euPctd2c3KLV+bK6TiPJx/ctMJ70n4T3mTNtjK8UUy/wzusKqiaLx/n0GVUQjzz+XTcKFPcTzYe+b9tZ1DyMP6ADzbY7P2ckL42CR16lxLL08+G/Bln6TlRe0oh15dwTg04tamskQeuJEojJ7Fk7636bbj83nV1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAinLKdeuTbXDLur8W6cCD6Hzl49cfF7F0CwPnMJTi0=;
 b=sQRinuQQvvjOtL29K3V4JIKOaX3KYy/ZbZLUO7iE6fyxs9pjtyhcGT4b4Ubl6iasBaBzjGookM5EWR/ZIcOMwIsooEdmZ9enoAwZIzI/voVdv8k04cqWZhEBGc7WB+2VToAGc/X1KBY0mvCsYus8jdvI0SsUdlYZQYtxIVQtKXA=
Received: from SN4PR0201CA0027.namprd02.prod.outlook.com
 (2603:10b6:803:2e::13) by CH2PR02MB6615.namprd02.prod.outlook.com
 (2603:10b6:610:7b::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22; Fri, 21 Feb
 2020 11:49:59 +0000
Received: from CY1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by SN4PR0201CA0027.outlook.office365.com
 (2603:10b6:803:2e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Fri, 21 Feb 2020 11:49:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT009.mail.protection.outlook.com (10.152.75.12) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Fri, 21 Feb 2020 11:49:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j56og-0002Yo-SW; Fri, 21 Feb 2020 03:49:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j56ob-0007e5-PQ; Fri, 21 Feb 2020 03:49:53 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01LBnjJx011605; 
 Fri, 21 Feb 2020 03:49:45 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j56oT-0007dH-76; Fri, 21 Feb 2020 03:49:45 -0800
Subject: Re: [PATCH 3/3] irqchip: xilinx: Use handle_domain_irq()
To: Marc Zyngier <maz@kernel.org>, Michal Simek <michal.simek@xilinx.com>
References: <cover.1581496793.git.michal.simek@xilinx.com>
 <49c5a093d7ba1f20930c7433ed632e7c9bc7a2cb.1581496793.git.michal.simek@xilinx.com>
 <f028666cf1b1af428ad0564c4f93688b@kernel.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2333cecb-06f5-cd9e-8c11-bb2d16ebbfa2@xilinx.com>
Date: Fri, 21 Feb 2020 12:49:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <f028666cf1b1af428ad0564c4f93688b@kernel.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39850400004)(199004)(189003)(81156014)(2616005)(81166006)(70206006)(2906002)(8936002)(356004)(70586007)(186003)(336012)(316002)(53546011)(426003)(8676002)(6666004)(9786002)(5660300002)(26005)(54906003)(44832011)(31696002)(478600001)(4326008)(31686004)(110136005)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6615; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef999206-d444-4ae7-7556-08d7b6c42dd1
X-MS-TrafficTypeDiagnostic: CH2PR02MB6615:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <CH2PR02MB661511D64F09B1ABB23540D6C6120@CH2PR02MB6615.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0320B28BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JeD44nGu4kx7qV65VWGlJsV2+snTXN2SdoE3EIuAJwJrXddRT+fTp0pQOrFdYNuVnzz6+8SQBFKnhSUJpKXNS7kuKWK3kaggZ+tzcw27dAAdpNc0oYVZU/7nPGEtfg70bcR4EfiLb6qIW2EgSjYXljYphnF+KZK9FXH1z2oIu7mgLpTEFJG+E5rd1ib+0XuG4QJjJ/lgdc7XxX1psAHwRENOf1iYmc+/ZhrsGe+2v24++KZsMApuVUAWsVMQMGITUI1/JzwyS7u85o4aUkT80+zQNtPdPXfPkiDHllMQKbM1zRrhQOELBgkyyvQxtQFyE71XW4wAMp7ddExHUb4A+lGL7OM/TERjUaHGuED2LLX7jtd+TKxGW6SxMvY+ddbaO5TEU2pacjrAVvoHQshWhXCejzNGGIBDrd+JxXI5ZBih24MqWLGfyOfjXGGKHuEt
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 11:49:59.3030 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef999206-d444-4ae7-7556-08d7b6c42dd1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_035002_255962_D11082CA 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>, monstr@monstr.eu,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 git@xilinx.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEuIDAyLiAyMCAxMjo0NiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjAtMDItMTIg
MDg6MzksIE1pY2hhbCBTaW1layB3cm90ZToKPj4gQ2FsbCBnZW5lcmljIGRvbWFpbiBzcGVjaWZp
YyBpcnEgaGFuZGxlciB3aGljaCBkb2VzIHRoZSBtb3N0IG9mIHRoaW5ncwo+PiBzZWxmLiBBbHNv
IGdldCByaWQgb2YgY29uY3VycmVudF9pcnEgY291bnRpbmcgd2hpY2ggaGFzbid0IGJlZW4gZXhw
b3J0ZWQKPj4gYW55d2hlcmUuCj4+IEJhc2VkIG9uIHRoaXMgbG9vcCB3YXMgYWxzbyBvcHRpbWl6
ZWQgYnkgdXNpbmcgZG8vd2hpbGUgbG9vcCBpbnN0ZWFkIG9mCj4+IGdvdG8gbG9vcC4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4KPj4g
UmV2aWV3ZWQtYnk6IFN0ZWZhbiBBc3NlcmhhbGwgPHN0ZWZhbi5hc3NlcmhhbGxAeGlsaW54LmNv
bT4KPj4gLS0tCj4+Cj4+IMKgYXJjaC9taWNyb2JsYXplL0tjb25maWfCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgMSArCj4+IMKgYXJjaC9taWNyb2JsYXplL2tlcm5lbC9pcnEuY8KgwqDCoMKgwqAg
fMKgIDUgLS0tLQo+PiDCoGRyaXZlcnMvaXJxY2hpcC9pcnEteGlsaW54LWludGMuYyB8IDQ0ICsr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAzIGZpbGVzIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9taWNy
b2JsYXplL0tjb25maWcgYi9hcmNoL21pY3JvYmxhemUvS2NvbmZpZwo+PiBpbmRleCAzYTMxNGFh
MmVmYTEuLjI0MmY1OGVjMDg2YiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9taWNyb2JsYXplL0tjb25m
aWcKPj4gKysrIGIvYXJjaC9taWNyb2JsYXplL0tjb25maWcKPj4gQEAgLTQ4LDYgKzQ4LDcgQEAg
Y29uZmlnIE1JQ1JPQkxBWkUKPj4gwqDCoMKgwqAgc2VsZWN0IE1NVV9HQVRIRVJfTk9fUkFOR0Ug
aWYgTU1VCj4+IMKgwqDCoMKgIHNlbGVjdCBTUEFSU0VfSVJRCj4+IMKgwqDCoMKgIHNlbGVjdCBH
RU5FUklDX0lSUV9NVUxUSV9IQU5ETEVSCj4+ICvCoMKgwqAgc2VsZWN0IEhBTkRMRV9ET01BSU5f
SVJRCj4+Cj4+IMKgIyBFbmRpYW5uZXNzIHNlbGVjdGlvbgo+PiDCoGNob2ljZQo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9taWNyb2JsYXplL2tlcm5lbC9pcnEuYyBiL2FyY2gvbWljcm9ibGF6ZS9rZXJu
ZWwvaXJxLmMKPj4gaW5kZXggMWY4Y2I0YzRmNzRmLi4wYjM3ZGRlNjBhMWUgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvbWljcm9ibGF6ZS9rZXJuZWwvaXJxLmMKPj4gKysrIGIvYXJjaC9taWNyb2JsYXpl
L2tlcm5lbC9pcnEuYwo+PiBAQCAtMjIsMTMgKzIyLDggQEAKPj4KPj4gwqB2b2lkIF9faXJxX2Vu
dHJ5IGRvX0lSUShzdHJ1Y3QgcHRfcmVncyAqcmVncykKPj4gwqB7Cj4+IC3CoMKgwqAgc3RydWN0
IHB0X3JlZ3MgKm9sZF9yZWdzID0gc2V0X2lycV9yZWdzKHJlZ3MpOwo+PiDCoMKgwqDCoCB0cmFj
ZV9oYXJkaXJxc19vZmYoKTsKPj4gLQo+PiAtwqDCoMKgIGlycV9lbnRlcigpOwo+PiDCoMKgwqDC
oCBoYW5kbGVfYXJjaF9pcnEocmVncyk7Cj4+IC3CoMKgwqAgaXJxX2V4aXQoKTsKPj4gLcKgwqDC
oCBzZXRfaXJxX3JlZ3Mob2xkX3JlZ3MpOwo+PiDCoMKgwqDCoCB0cmFjZV9oYXJkaXJxc19vbigp
Owo+PiDCoH0KPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9pcnEteGlsaW54LWlu
dGMuYwo+PiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEteGlsaW54LWludGMuYwo+PiBpbmRleCBhZDll
Njc4YzI0YWMuLmZhNDY4ZTYxODc2MiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pcnFjaGlwL2ly
cS14aWxpbngtaW50Yy5jCj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEteGlsaW54LWludGMu
Ywo+PiBAQCAtMTI1LDIwICsxMjUsNiBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHhpbnRjX2dldF9p
cnFfbG9jYWwoc3RydWN0Cj4+IHhpbnRjX2lycV9jaGlwICppcnFjKQo+PiDCoMKgwqDCoCByZXR1
cm4gaXJxOwo+PiDCoH0KPj4KPj4gLXN0YXRpYyB1bnNpZ25lZCBpbnQgeGludGNfZ2V0X2lycSh2
b2lkKQo+PiAtewo+PiAtwqDCoMKgIHUzMiBod2lycTsKPj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQg
aXJxID0gLTE7Cj4+IC0KPj4gLcKgwqDCoCBod2lycSA9IHhpbnRjX3JlYWQocHJpbWFyeV9pbnRj
LCBJVlIpOwo+PiAtwqDCoMKgIGlmIChod2lycSAhPSAtMVUpCj4+IC3CoMKgwqDCoMKgwqDCoCBp
cnEgPSBpcnFfZmluZF9tYXBwaW5nKHByaW1hcnlfaW50Yy0+cm9vdF9kb21haW4sIGh3aXJxKTsK
Pj4gLQo+PiAtwqDCoMKgIHByX2RlYnVnKCJpcnEteGlsaW54OiBod2lycT0lZCwgaXJxPSVkXG4i
LCBod2lycSwgaXJxKTsKPj4gLQo+PiAtwqDCoMKgIHJldHVybiBpcnE7Cj4+IC19Cj4+IC0KPj4g
wqBzdGF0aWMgaW50IHhpbnRjX21hcChzdHJ1Y3QgaXJxX2RvbWFpbiAqZCwgdW5zaWduZWQgaW50
IGlycSwKPj4gaXJxX2h3X251bWJlcl90IGh3KQo+PiDCoHsKPj4gwqDCoMKgwqAgc3RydWN0IHhp
bnRjX2lycV9jaGlwICppcnFjID0gZC0+aG9zdF9kYXRhOwo+PiBAQCAtMTc4LDIzICsxNjQsMjMg
QEAgc3RhdGljIHZvaWQgeGlsX2ludGNfaXJxX2hhbmRsZXIoc3RydWN0IGlycV9kZXNjCj4+ICpk
ZXNjKQo+PiDCoMKgwqDCoCBjaGFpbmVkX2lycV9leGl0KGNoaXAsIGRlc2MpOwo+PiDCoH0KPj4K
Pj4gLXN0YXRpYyB1MzIgY29uY3VycmVudF9pcnE7Cj4+IC0KPj4gwqBzdGF0aWMgdm9pZCB4aWxf
aW50Y19oYW5kbGVfaXJxKHN0cnVjdCBwdF9yZWdzICpyZWdzKQo+PiDCoHsKPj4gLcKgwqDCoCB1
bnNpZ25lZCBpbnQgaXJxOwo+PiAtCj4+IC3CoMKgwqAgaXJxID0geGludGNfZ2V0X2lycSgpOwo+
PiAtbmV4dF9pcnE6Cj4+IC3CoMKgwqAgQlVHX09OKCFpcnEpOwo+PiAtwqDCoMKgIGdlbmVyaWNf
aGFuZGxlX2lycShpcnEpOwo+PiAtCj4+IC3CoMKgwqAgaXJxID0geGludGNfZ2V0X2lycSgpOwo+
PiAtwqDCoMKgIGlmIChpcnEgIT0gLTFVKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBwcl9kZWJ1Zygi
bmV4dCBpcnE6ICVkXG4iLCBpcnEpOwo+PiAtwqDCoMKgwqDCoMKgwqAgKytjb25jdXJyZW50X2ly
cTsKPj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gbmV4dF9pcnE7Cj4+IC3CoMKgwqAgfQo+PiArwqDC
oMKgIHUzMiBod2lycTsKPj4gK8KgwqDCoCBzdHJ1Y3QgeGludGNfaXJxX2NoaXAgKmlycWMgPSBw
cmltYXJ5X2ludGM7Cj4+ICsKPj4gK8KgwqDCoCBkbyB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBod2ly
cSA9IHhpbnRjX3JlYWQoaXJxYywgSVZSKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChod2lycSAh
PSAtMVUpIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IHJldDsKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBoYW5kbGVfZG9tYWluX2lycShpcnFjLT5yb290X2Rv
bWFpbiwgaHdpcnEsIHJlZ3MpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBXQVJOX09OQ0Uo
cmV0LCAiVW5oYW5kbGVkIEhXSVJRICVkXG4iLCBod2lycSk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnRpbnVlOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqDCoMKg
wqDCoCBicmVhazsKPj4gK8KgwqDCoCB9IHdoaWxlICgxKTsKPiAKPiBPSywgc28gdGhpcyB3aGF0
IEkgc3VnZ2VzdGVkIGFscmVhZHkuIEp1c3Qgc3F1YXNoIHRoZSB0d28gcGF0Y2hlcwo+IGluIG9u
ZSwgdGhlcmUgaXMgbm8gcG9pbnQgaW4ga2VlcGluZyB0aGVtIHNlcGFyYXRlLgoKSSBzZW50IGl0
IGV4YWN0bHkgaG93IEkgaGF2ZSBkb25lIGl0IG9yaWdpbmFsbHkuIE5vdCBhIHByb2JsZW0gd2l0
aApzcXVhc2hpbmcgdGhhdCBzdHVmZiB0b2dldGhlci4KClRoYW5rcywKTWljaGFsCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
