Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335A41BF409
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1ca8HroX5Udvbaii1ev7nsNoNwfu4PP5A2erKcZ3as=; b=X4oukkUE9gXQtu
	STnx4JiriWauVMBUmJdGpuEL4CNMw91p5oTLsxJ442we6vovIecGRccoMBadpfc3XPsU5Joop95Bz
	YDLJcYx+UNHFa9J4XO6p1MPPjTcEtA1HnH/Dt2xFYGciUroViuBJRTXFqZOdK9SRe8zyptMS0KhrT
	OjBmdWbwBv2uEqDv30U2ipm+YBrUzm0vk+yIw9mRxMsD6p0ADvUXco0N+o7FLr+KV6LBOxv76AAbb
	eeQaze8OoYtk8s6Wp3+jU/s6Kyog1zlJNnMnsH0fOW9rNV0KTMpZgbd+xEGRxKDAUfnYB4NsQSfMA
	yedxacpO+iqWnkZ5F0lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5Mr-00072A-C6; Thu, 30 Apr 2020 09:20:29 +0000
Received: from mail-dm6nam10on2052.outbound.protection.outlook.com
 ([40.107.93.52] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5MY-0005vZ-9K
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNnfnr/hsGy8YYDbXPIGimkguobrVA52LTPf8nzLCwaTS0RnX2MUcm0iiFTPJM7vGlPt4GcVWcdy40MOLotn1Dy9rgrgiFj+xYuwL4eUbjDBLBwoWR4OyYcReKTa6h8piTAzn9JFEeOk2Xm2r0IIfy+LMnA91ETkOwiL+2DxPL32XbDYwU/AqBzFkMZIFKvv7DTu5tTaunzO4/GDMOOwfvEyzi3UHP1ra+hAAIrHMZYZt4PPNDGgkyNQMT0TQ3SEVRXzMKaJB4SJ0ImROfC12GhafZqIZRXUGKkUSngPvobF3adCsLupa6Uezgt5P9aJ33ryYWKx0nMSBMr5uFVukw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qn8YLC8oJATqL3feUX5n0c7fiLFXsd5y0X7y0W+GMGg=;
 b=XkCW+BI8ETs6OhvQZ/G/KunT4x7TV8++aqDI5KqtgjyHzcvxdoKQEEQfBJ00J2NXpNKmCzor0gtOGR+btyKsUwgq7c3mZKfZ8DSh1uHbhsF5MVeQ2lW9Uw+M9awK6A2tiV/u0a0hMJGfnqHPSjOwbZ/gx+J1ypzYhCHLjl1+vqJ8YJ1PdEee6p00G4qlLXf7rA2hmrh+UC9LmBoGD7XSVkrlfQvk5acapVrKixhrNOvj0qtBIRcGORe9HWF73s0VZv2tI+Yzfd9PUHDKTEy7pHqpC9EF0GbFFWvG1o6q16/yWf7yEX/uajMQPjV/jhq9kxmZ7ORuSDXnbG1Jlnj1ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=armlinux.org.uk smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qn8YLC8oJATqL3feUX5n0c7fiLFXsd5y0X7y0W+GMGg=;
 b=fAK1nlvQQBrDh4Py3CgDum2fzfi+mhANQedKeNZrGkdZ5FVu1ZBu6m5zvw9QE3EKzn4n7aczrVUDpbIicZptw0aqchl2/ZQxMAzzYv35hsQFLsvDq183hFRthNqhldvqlTHhTkXZ4SBP0gndINuYKmaT0IP232c+IZ3NMds0Fbo=
Received: from SN4PR0401CA0042.namprd04.prod.outlook.com
 (2603:10b6:803:2a::28) by BN8PR02MB5858.namprd02.prod.outlook.com
 (2603:10b6:408:bc::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 09:20:06 +0000
Received: from SN1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2a:cafe::5) by SN4PR0401CA0042.outlook.office365.com
 (2603:10b6:803:2a::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Thu, 30 Apr 2020 09:20:06 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; armlinux.org.uk; dkim=none (message not signed)
 header.d=none;armlinux.org.uk; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT057.mail.protection.outlook.com (10.152.73.105) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Thu, 30 Apr 2020 09:20:05
 +0000
Received: from [149.199.38.66] (port=58982 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jU5MM-0007I8-Td; Thu, 30 Apr 2020 02:19:58 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jU5MS-00031A-SF; Thu, 30 Apr 2020 02:20:04 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jU5MN-0002iU-Mj; Thu, 30 Apr 2020 02:19:59 -0700
Subject: Re: [PATCH] ZYNQ: platsmp: Return -ENOMEM after a failed ioremap()
 call in zynq_cpun_start()
To: Markus Elfring <Markus.Elfring@web.de>, Xu Wang <vulab@iscas.ac.cn>,
 linux-arm-kernel@lists.infradead.org
References: <9cf516c9-3a29-fb39-8943-49c906b3eea7@web.de>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <f07532ca-0bf3-7e1b-2d53-6f5555d5e451@xilinx.com>
Date: Thu, 30 Apr 2020 11:19:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9cf516c9-3a29-fb39-8943-49c906b3eea7@web.de>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(46966005)(2616005)(336012)(8676002)(47076004)(31686004)(44832011)(9786002)(966005)(8936002)(110136005)(54906003)(356005)(81166007)(107886003)(4326008)(82310400002)(70206006)(4744005)(70586007)(5660300002)(316002)(31696002)(426003)(26005)(186003)(82740400003)(36756003)(478600001)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5794fec-66e4-4872-bd3f-08d7ece7ab6b
X-MS-TrafficTypeDiagnostic: BN8PR02MB5858:
X-Microsoft-Antispam-PRVS: <BN8PR02MB5858792A555BBBCDF518722AC6AA0@BN8PR02MB5858.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0389EDA07F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NTIE4SRgQp5xY9HqULyDJ/dJNvUiFm8j6nrlO03W7Jkeu6qhUPCa+TdvtwfOoT1dAg/NckaBB+qkygPk3acoWjINxNzrL5hbIygte7RVB2TtNmqsrjOIJA597GtwiJ2LlcuRGX3U+Wsr4ZJUkCrSFxrnzEScGlKkGvv3UiTuz0M1PE0VjsjKfNXTzagyk8oGcDytWSY9uQ/40rR7i7/q8rBqmWYZeOgD8KC8/LhP3ZmqVx2wt1AffmQA+u3zZzIVnBaHiAtaDKWSV6jcQ4v5i1dpUJ5+3MyHS8N87LBkAhlIk7HPh84cyV3er9CLdtOScr8z8juSgFtqfMaFOZ7uWYyIMu4It7JC8WMPihUL25TxaJ5nkdgRM8NORfI8wXo/66E01nl2sm3pndNmPpvlWFEKBU+uN8bl3l8p36+gnU1yd/u2A40xj6jVSd57RghlEQw85ZH6893F/NajZWuqdBahXBqwHU7hbOmoXmYBzSFRTjbUxrMeVNPBt8PjhzLuXh/NRmGxin8+GODD1fJPsPjuSq+8sy5L9pBAFmK/M0/S6SnNGIlz3Gf8uKgN9mm7MD93Pmn3wLiwNYjUTsK4Tw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 09:20:05.3699 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b5794fec-66e4-4872-bd3f-08d7ece7ab6b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5858
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_022010_358836_C03390E6 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.52 listed in wl.mailspike.net]
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
Cc: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAuIDA0LiAyMCAxMTowMCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IEluIGlvcmVtYXAg
d2Ugc2hvdWxkIHJldHVybiAtRU5PTUVNIHdoZW4gaXQgcmVwb3J0cyBhbgo+PiBtZW1vcnkgYWxs
b2NhdGlvbiBmYWlsdXJlLgo+IAo+IEkgc3VnZ2VzdCB0byBpbXByb3ZlIHRoaXMgY2hhbmdlIGRl
c2NyaXB0aW9uLgo+IAo+IFdpbGwgdGhlIHRhZyDigJxGaXhlc+KAnSBiZSByZWxldmFudCBiZWNh
dXNlIG9mIHRoZSBhZGp1c3RlZCBlcnJvciBjb2RlPwo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50
YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPTFkMmNjNWFjNmY2NjY4Y2Mx
NTIxNmQ1MTA1MTEwM2M2MTQ2N2Q3ZTgjbjE4MwoKSSBkb24ndCB0aGluayB0aGlzIHdhcyBmb3Vu
ZCBieSBiaXNlY3Rpb24gYmVjYXVzZSBhcm0gc21wIGNvZGUgY2FyZXMKb25seSBhYm91dCAwIC0g
c3VjY2VzcyBhbmQgITAuIEkgd291bGQgZXhwZWN0IGFueSBzdGF0aWMgcHJvZ3JhbQphbmFseXNp
cyB0b29sIGxpa2UgY29jY2luZWxsZS4KCldvdWxkIGJlIGdvb2QgdG8gcmV3cml0ZSB0aGF0IGNv
bW1pdCBtZXNzYWdlIGFuZCBzaW1wbHkgc2F5IHRoYXQKZmFpbHVyZXMgZnJvbSBpb3JlbWFwcyBy
ZXR1cm5zIC1FTk9NRU0uCgpUaGFua3MsCk1pY2hhbAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
