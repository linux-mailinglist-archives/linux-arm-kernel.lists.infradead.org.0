Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3FD1FEAFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IFZgm2kBu2rAaJrP8Kp4CjrKwuraBiGGqIsWlHQiqOU=; b=DlsPgpVQpWw9Ui
	6IYTLV2lK4ZomFPpfNH3JlhjiHpAe3FZt8qIoH70QGb1RdBuTxtCaNycgtinbiSkgmLpyOMfdEaxE
	iQXM4w6iNV+/17VmxJvsvvUU8nVLfnCtiJCyEDvyn3LMAGf8AXfFCo+rQUq3wY/QiHK/SvMr03gY4
	u9iBEv8fRUUIbwGQh2fvlxXeZVrvyiZpWdE6OrSAo0sLMkEZU2XvI1xOmpQe83rhnvoZhPC0cWVRE
	SkhQLAAqIvkFgCY3vY8f7MWtuzk9W7+5Dgf7BrQY/6Im6yQKrmVsVap2EryjoDe92FeuF+h3r9wTn
	g3cQX91QB+tEAFV1opvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnBZ-0005tW-7O; Thu, 18 Jun 2020 05:34:01 +0000
Received: from mail-bn7nam10on2060.outbound.protection.outlook.com
 ([40.107.92.60] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnB1-0005bn-31
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:33:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdGUY19cAGjNJx1Gv1r8nDP/W9dBhHkQ72537DtKyTVLV6FG4R3Wz2DYjJz257xw/7vL4vmDNeououXNW9aP2ftqMjaUTWGm0qiC7nacLmribDZITqZJxpu8tRvSBOcMBKSwSX5D8JbW5/CkBSGZq7gerIAJqdsPfGNUFmwwV43OUT56dY3BdNED2Np4qLi+5MLEQvgawSS5n3gqANzvq2QwVRKYzPUdBYt1j7frQoAbhFYULXY53VuxtK3GcZqRFqzVgTguQWXNyH8RU80g1B5yU0TDqsLVzF8dMjl+HVJIxeLnvzx124HTZCPN6vLNx5LcEX8mNbPKI/s8Ti7O4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1JKdLvuFWGbWcDnaSblc3TL3E/EtBWWBWxcYWgYBow=;
 b=OzL63MDzIM6Si0covgFoFYT/x1Ih1x4DkGXxq2NiRrDhiCZsFjzqsvYJm0C2nP7FQ4NzHBxj+DCba0ec7HDVjFevnGpYIdk8bdB3wJUdXa9gnZOne6Jk7imeeXGqVSQJj3C+4M2kyjP1z26cLl+3i/2br9ZHBLQEfFR+PMw5+v3bzp8Ie+wbSDwEn5Ij3iQj422fnWqcEwxXUa1QGdscUzKTpCUdjFEK5aZLYo8nIr5C5Hzc9jhAC9yKDUJxWcM7VdpFV7SzfcjdVgG7RVQyff0aDSmxuwVP3QL3QkT+gp/qk6WCgiEZRhNWWoG46En2vstGqNdLLH5ZtXGdiANJdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=ideasonboard.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1JKdLvuFWGbWcDnaSblc3TL3E/EtBWWBWxcYWgYBow=;
 b=MgZvumWWM+lcsshhzy4ZDc6HGKglYc293VzixJkxLPyjCjUzmrNWM8MgmOG3jgaF0HOgaFiYT5dvML2lAvlTXjS5R9I1tXkWVUzWO3TdtQRlrgp5oKOs9oM/h0XSZj9PiKcCOm+u5A7qZBnqjDGrFdpmxUqFoN9Xy2oLJUKv8To=
Received: from SN4PR0801CA0012.namprd08.prod.outlook.com
 (2603:10b6:803:29::22) by BN6PR02MB3153.namprd02.prod.outlook.com
 (2603:10b6:405:67::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.29; Thu, 18 Jun
 2020 05:33:22 +0000
Received: from SN1NAM02FT037.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:29:cafe::ad) by SN4PR0801CA0012.outlook.office365.com
 (2603:10b6:803:29::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Thu, 18 Jun 2020 05:33:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT037.mail.protection.outlook.com (10.152.72.89) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Thu, 18 Jun 2020 05:33:22
 +0000
Received: from [149.199.38.66] (port=58918 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jln9s-0006yk-DD; Wed, 17 Jun 2020 22:32:16 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jlnAv-0003RZ-Na; Wed, 17 Jun 2020 22:33:21 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jlnAl-0003Ok-27; Wed, 17 Jun 2020 22:33:11 -0700
From: Vishal Sagar <vishal.sagar@xilinx.com>
To: hyunk@xilinx.com, laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl,
 mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michals@xilinx.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, joe@perches.com
Subject: [PATCH v3 0/3] Add support for Xilinx UHD-SDI Receiver subsystem
Date: Thu, 18 Jun 2020 11:03:01 +0530
Message-Id: <20200618053304.14551-1-vishal.sagar@xilinx.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(346002)(396003)(39860400002)(46966005)(426003)(2616005)(36756003)(1076003)(336012)(478600001)(44832011)(7696005)(186003)(2906002)(7416002)(26005)(9786002)(5660300002)(8676002)(8936002)(107886003)(70586007)(70206006)(83380400001)(81166007)(4326008)(82310400002)(316002)(47076004)(6666004)(82740400003)(356005)(921003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea3f7d86-1fba-40aa-0293-08d813491d76
X-MS-TrafficTypeDiagnostic: BN6PR02MB3153:
X-Microsoft-Antispam-PRVS: <BN6PR02MB3153309548A334287D7EB260A79B0@BN6PR02MB3153.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cK8SOUrB0laenpSfnMLesAVf+BMxp9QDTTPBBnh1HK1TAv+NBrI6BQi3vd/5fmss1cwrUPB4AFYHxfuX1s2aIndOIAzwU7cATlDqE3biJXGQCwJRXhJkEO3CADf/9aI4B5xwgXZGHaLjK++ajoiAxCt3HZhNvupAoLOGILQT15hzsPpctzQ0pob5EjpqLsgEF0SoA1E64hSk6SVmc32o3e5KG3OcmFR+qC1m3A3Acmtstr+EHJwSsq7WlTRqLlsJ2Qc4h5pakSqd01HjqZCHBg1g0rOkiy5N0zVs/9b/8/sUbXwQKPBX1+wCtnejO82HfpRZ9KKtkpA2M/WWkhi/W867BiKyEr3qdOh4K43IS4z6AtokVAvSf+8PzC5tnFxHePWjiRB/vGp9Coe08kAT6ohSl88k73XS4X5WPmzAFf0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 05:33:22.0588 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3f7d86-1fba-40aa-0293-08d813491d76
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB3153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_223327_127082_B07B2C56 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.60 listed in wl.mailspike.net]
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
Cc: sandipk@xilinx.com, dineshk@xilinx.com,
 Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WGlsaW54IFNNUFRFIFVIRC1TREkgUmVjZWl2ZXIgU3Vic3lzdGVtCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KClRoZSBTTVBURSBVSEQtU0RJIFJlY2VpdmVyIChSWCkg
U3Vic3lzdGVtIGFsbG93cyB5b3UgdG8gcXVpY2tseSBjcmVhdGUKc3lzdGVtcyBiYXNlZCBvbiBT
TVBURSBTREkgcHJvdG9jb2xzLiBJdCByZWNlaXZlcyB1bmFsaWduZWQgbmF0aXZlIFNESQpzdHJl
YW1zIGZyb20gdGhlIFNESSBHVCBQSFkgYW5kIG91dHB1dHMgYW4gQVhJNC1TdHJlYW0gdmlkZW8g
c3RyZWFtLApuYXRpdmUgdmlkZW8sIG9yIG5hdGl2ZSBTREkgdXNpbmcgWGlsaW54IHRyYW5zY2Vp
dmVycyBhcyB0aGUgcGh5c2ljYWwKbGF5ZXIuCgogICAgICAgICAgICAgICAgU01QVEUgVUhELVNE
SSBSeCBTdWJzeXN0ZW0gQVhJNC1TdHJlYW0gQXJjaGl0ZWN0dXJlCgogICAgICAgICAgKz09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSsK
CSAgfCAgICAgICAgICAgTmF0aXZlIFNESSAgICAgICAgICAgTmF0aXZlIFZpZGVvICAgICAgICAg
ICAgICAgIHwKU0RJCSAgfCAgICs9PT09PT09PT0rICAgfCAgICs9PT09PT09PT09PT0rICB8ICAg
Kz09PT09PT09PT09PT0rICAgIHxBWEk0ClN0cmVhbQkgIHwgICB8ICBTTVBURSAgfCAgIFYgICB8
ICAgU0RJIFJ4ICAgfCAgViAgIHwgVmlkZW8gSW4gICAgfCAgICB8U3RyZWFtCi0tLS0tLS0tLT58
LS0+fCBVSEQtU0RJIHwtLS0tLS0+fCAgICB0byAgICAgIHwtLS0tLT58ICAgdG8gICAgICAgIHwt
LS0+fC0tLS0tLS0+CgkgIHwgICB8ICAgUlggICAgfCAgICAgICB8ICBOYXRpdmUgICAgfCAgICAg
IHwgQVhJNC1TdHJlYW0gfCAgICB8CgkgIHwgICArPT09PT09PT09KyAgICAgICB8VmlkZW8gQnJp
ZGdlfCAgICAgICs9PT09PT09PT09PT09KyAgICB8CgkgIHwgICAgICB8ICBeICAgICAgICAgICAr
PT09PT09PT09PT09KyAgICAgICAgICAgICAgICAgICAgICAgICB8CiAgIDwtLS0tLS18LS0tLS0t
KyAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApz
ZGlfcnhfaXJxfCAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKCSAgKz09PT09Kz09PSs9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PSsKICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4gICAgICAgICAgICAgIF4KICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgIHwKICAgICAgICAgICAgICAg
ICBzX2F4aV9hY2xrICAgICAgICAgICAgICAgICAgIHNkaV9yeF9jbGsgICB2aWRlb19vdXRfY2xr
CgoKVGhlIHN1YnN5c3RlbSBjb25zaXN0cyBvZiB0aGUgZm9sbG93aW5nIHN1YmNvcmVzOgotIFNN
UFRFIFVIRC1TREkgKFJYKQotIFNESSBSWCB0byBWaWRlbyBCcmlkZ2UKLSBWaWRlbyBJbiB0byBB
WEk0LVN0cmVhbQoKQXQgZGVzaWduIHRpbWUsIHRoaXMgc3Vic3lzdGVtIGNhbiBiZSBjb25maWd1
cmVkIGluIDNHYnBzLCA2R2JwcyBvcgoxMkdicHMgbW9kZS4gSXQgY2FuIGFsc28gYmUgY29uZmln
dXJlZCB0byBvdXRwdXQKLSBTREkgTmF0aXZlIHN0cmVhbQotIE5hdGl2ZSBWaWRlbwotIEFYSTQt
U3RyZWFtCgpUaGlzIGRyaXZlciBvbmx5IHN1cHBvcnRzIHRoZSBBWEk0LVN0cmVhbSBjb25maWd1
cmF0aW9uIGFzIHRoZXJlIGlzIGEKY29ycmVzcG9uZGluZyBtZWRpYSBidXMgZm9ybWF0IGZvciBZ
VVYgNDIyIDEwLzEyIGJpdHMgcGVyIGNvbXBvbmVudC4KClRob3VnaCB0aGUgY29yZSBhbHNvIHN1
cHBvcnRzIFJCRy9ZVVY0NDQvWVVWNDIwIDEwLzEyIGJpdHMgcGVyIGNvbXBvbmVudCwKdGhlc2Ug
YXJlIG5vdCBzdXBwb3J0ZWQgaW4gZHJpdmVyIGR1ZSB0byBsYWNrIG9mIGNvcnJlc3BvbmRpbmcg
bWVkaWEgYnVzCmZvcm1hdCBjdXJyZW50bHkuCgpUaGUgU0RJIGNvcmUgaGFzIGRldGVjdGlvbiBt
b2RlcyB3aGVyZSBpbiBpdCBjYW4gYmUgY29uZmlndXJlZCB0byBkZXRlY3QKb25lIG9yIG1vcmUg
bW9kZXMgZnJvbSBTRCAoU3RhbmRhcmQgRGVmaW5pdGlvbiksIEhEIChIaWdoIERlZmluaXRpb24p
LAozR0EsIDNHQiwgNkcgYW5kIDEyRyBtb2Rlcy4gV2hlbiB0aGUgY29yZSBoYXMgZGV0ZWN0ZWQg
dGhlIGZvcm1hdCwgaXQKZ2VuZXJhdGVzIGEgdmlkZW8gbG9jay4gSW4gY2FzZSB0aGUgc291cmNl
IGlzIHJlbW92ZWQgb3IgdGhlcmUgaXMgZGF0YQpjb3JydXB0aW9uLCB0aGUgdmlkZW8gbWF5IHVu
bG9jay4gVGhpcyBpcyBpbnRpbWF0ZWQgdG8gdGhlIGFwcGxpY2F0aW9uCnZpYSBhIFY0TDIgZXZl
bnQuIE90aGVyIGV2ZW50cyB3aGljaCBhcHBsaWNhdGlvbiBjYW4gc3Vic2NyaWJlIGFyZSBmb3IK
b3ZlcmZsb3cgYW5kIHVuZGVyZmxvdyBvZiB0aGUgdmlkZW8gYnJpZGdlcy4KClRoZSBkcml2ZXIg
Z2l2ZXMgb3V0IHRoZSBzdHJlYW0gcHJvcGVydGllcyBsaWtlIHdpZHRoLCBoZWlnaHQsIGNvbG9y
Zm9ybWF0LApmcmFtZSBpbnRlcnZhbCBhbmQgcHJvZ3Jlc3NpdmUvaW50ZXJsYWNlZCBiYXNlZCBv
biB0aGUgU1QzNTIgcGFja2V0IGluIFNESQpzdHJlYW0uIElmIHRoZSBTVDM1MiBwYWNrZXQgaXMg
YWJzZW50LCB0aGVuIHRoZSB2YWx1ZXMgZGV0ZWN0ZWQgYnkgdGhlClNNUFRFIFVIRC1TREkgUngg
Y29yZSBhcmUgdXNlZC4KClRoZSBTREkgY29yZSBkZXRlY3Rpb24gbW9kZXMgYW5kIGRldGVjdGVk
IG1vZGUsIGVycm9ycywgZXRjIGFyZSBhbGwKYWNjZXNzaWJsZSB2aWEgdjRsIGNvbnRyb2xzLiBU
aGlzIGRyaXZlciBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBPbW5pdGVrClVsdHJhNEsgSEQsIFBoYWJy
aXggUXggYW5kIEJsYWNrbWFnaWMgU0RJLUhETUkgY29udmVydG9ycy4KCnYyCjEvMgotIENvbnZl
cnRlZCB0byB5YW1sIGZvcm1hdAotIFJlbW92ZWQgcmVmZXJlbmNlcyB0byB4bG54LHZpZGVvKgot
IEZpeGVkIGFzIHBlciBTYWthcmkgQWlsdXMgYW5kIFJvYiBIZXJyaW5nJ3MgY29tbWVudHMKCjIv
MgotIEFkZGVkIERWIHRpbWluZyBzdXBwb3J0IGJhc2VkIG9uIEhhbnMgVmVya3VpbMWbIGZlZWRi
YWNrCi0gTW9yZSBkb2N1bWVudGF0aW9uIHRvIGN1c3RvbSB2NGwgY29udHJvbHMgYW5kIGV2ZW50
cwotIEZpeGVkIEh5dW7FmyBjb21tZW50cwotIEFkZGVkIG1hY3JvIGZvciBtYXNraW5nIGFuZCBz
aGlmdGluZyBhcyBwZXIgSm9lIFBlcmNoZXMgY29tbWVudHMKLSBVcGRhdGVkIHRvIGxhdGVzdCBh
cyBwZXIgWGlsaW54IGdpdGh1YiByZXBvIGRyaXZlciBsaWtlCiAgYWRkaW5nIG5ldyBEViB0aW1p
bmdzIG5vdCBpbiBtYWlubGluZSB5ZXQgdXB0aWxsIDAzLzIxLzIwCgpWaXNoYWwgU2FnYXIgKDMp
OgogIHY0bDItZHYtdGltaW5nczogQWRkIHRpbWluZ3MgZm9yIDE5MjB4MTA4MFA0OCBhbmQgNEtQ
NDgKICBtZWRpYTogZHQtYmluZGluZ3M6IG1lZGlhOiB4aWxpbng6IEFkZCBYaWxpbnggVUhELVNE
SSBSZWNlaXZlcgogICAgU3Vic3lzdGVtCiAgbWVkaWE6IHY0bDogeGlsaW54OiBBZGQgWGlsaW54
IFVIRC1TREkgUnggU3Vic3lzdGVtIGRyaXZlcgoKIC4uLi9iaW5kaW5ncy9tZWRpYS94aWxpbngv
eGxueCxzZGlyeHNzLnlhbWwgICB8ICAxMzIgKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS94aWxp
bngvS2NvbmZpZyAgICAgICAgIHwgICAxMSArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3hpbGlu
eC9NYWtlZmlsZSAgICAgICAgfCAgICAxICsKIC4uLi9tZWRpYS9wbGF0Zm9ybS94aWxpbngveGls
aW54LXNkaXJ4c3MuYyAgICB8IDIxMjEgKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvZHQtYmlu
ZGluZ3MvbWVkaWEveGlsaW54LXNkaS5oICAgICAgICB8ICAgMjAgKwogaW5jbHVkZS91YXBpL2xp
bnV4L3Y0bDItY29udHJvbHMuaCAgICAgICAgICAgIHwgICAgNiArCiBpbmNsdWRlL3VhcGkvbGlu
dXgvdjRsMi1kdi10aW1pbmdzLmggICAgICAgICAgfCAgIDMxICstCiBpbmNsdWRlL3VhcGkvbGlu
dXgveGlsaW54LXNkaXJ4c3MuaCAgICAgICAgICAgfCAgMjgzICsrKwogOCBmaWxlcyBjaGFuZ2Vk
LCAyNjA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEveGlsaW54L3hsbngsc2Rpcnhz
cy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS94aWxpbngv
eGlsaW54LXNkaXJ4c3MuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mv
bWVkaWEveGlsaW54LXNkaS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS91YXBpL2xpbnV4
L3hpbGlueC1zZGlyeHNzLmgKCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
