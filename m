Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E5B158CDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbTo9BKuZ+9rWTK0Pc5zJT+XpXiNcxc0FODZ8XQHxeA=; b=dTIWD3FOv9S24E
	uJAlR0F6hSLEJPsR6vVXt2Gdb7UxYaBPYRs69VNJsALSUuzVUtWU/F3QBgwZc89RcZ6HPhoWf9Hjn
	xRauQB0u07doTPhpv4za/i3kEgE7gZiUWet3Iq2wvrPZiwTX8IYd+yYtUwSyMbBNFPIUAkR/1Elu/
	FxnqrFRFDp6s28xOzQa1RSbkwhdI+r0lIVn0rc2+NhxKtILvl/qqS7+0pjV2hecoR6M9/k/UlVCct
	Ot0qIzbhTOVWL9sGDtA3xZ2Wvy6W7G4OcxAV2v3+ZAqcChO7c03DCA37nI74PnU4Ijng1dbRPQgXc
	bGamorADGtO9T/X66RjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Syb-0003dz-Da; Tue, 11 Feb 2020 10:41:09 +0000
Received: from mail-bn8nam11on2058.outbound.protection.outlook.com
 ([40.107.236.58] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SyT-0003d8-OX
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:41:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/GY1EviXSUav3c98uuwkiZJUJLafJkKc5YQholUVigdQ8KeEQimt12F3nP7NW6tFpaDhjhjRC4iQWGoqNG0YbgrELQW2gcPjKbEBItek+R6IcqzLDerxchsRUQ+3mH/p1jshfKUuZkfwi3c4GJoofy8jThPpOPhfX2dzNnfn07TEB3aqD/14iw3K5dhBhDsoPzzv/LZmYPdad02JQo+nEFcLtJEX9jSQ7JPJk6OcdQmTDN+edDtM8Hwz5jgdnUVNVhNVinkcFjX+PXoP65ekWiRszmi9CSMnFUpN/WQ/udTi7aPtBlpUvOh79mWDAbjGgGC2A8J4P5OpfeDM7aIOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DmHqtvvKJtk7XtH+7ii+mWxur30gvNKv4wQkI+ShVw=;
 b=YP+uND4taZXNLpuRElOiDTB9AdmcewnqiMpOMEld4cJCNAzTnpAHEvFfhzyqsTTjfynp68K2sq22mTef4hKCYHIG982FavHxassJCoOsBfoGzMrhD00KugAADvNP5FyUDbR2kdPzxD3puCAvpoVqBmNQ9/Cwl+wKaFdPjiDfxMgkcU09r0JGIHVoqAwANZ9E1RSqMHTJpd/8HvAFfCKywoPRyLdtNWAz7l/Tnh4XVo5jrbY/+TZYE2r5u1SvJ4bug4BW4aXAdf66VkWhL7PuT7RYt6CZ9qPB5SNsOSM71p5TlAabk6pmKRiYiO0PnGY1WRxWcHKdnKFRqq2W8Pgd7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DmHqtvvKJtk7XtH+7ii+mWxur30gvNKv4wQkI+ShVw=;
 b=AGu5ubDy4yDMUFpA+Uweuh3DHw/GLJ1SK2QO7nuMV6Do4bjQRwzmcsq0DLIG2yKkl7BVnp2UPh/gJHxyXjwmH/Y92rvFZ5IIW9u0fzQk7+ZVgc0ZEwXqqlVL977fSIqVpVGVvL/kXhAE7JM14eck3ZY9ZS402LZZPqboeLxZjy4=
Received: from CY4PR02CA0029.namprd02.prod.outlook.com (2603:10b6:903:117::15)
 by BY5PR02MB6932.namprd02.prod.outlook.com (2603:10b6:a03:23a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.27; Tue, 11 Feb
 2020 10:40:54 +0000
Received: from CY1NAM02FT034.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by CY4PR02CA0029.outlook.office365.com
 (2603:10b6:903:117::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.24 via Frontend
 Transport; Tue, 11 Feb 2020 10:40:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT034.mail.protection.outlook.com (10.152.75.190) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Tue, 11 Feb 2020 10:40:54 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j1SyL-0007d2-WB; Tue, 11 Feb 2020 02:40:54 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j1SyG-00039I-SZ; Tue, 11 Feb 2020 02:40:48 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j1SyC-00038S-3f; Tue, 11 Feb 2020 02:40:44 -0800
Subject: Re: [PATCH] rtc: zynqmp: Clear alarm interrupt status before
 interrupt enable
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Simek <monstr@monstr.eu>
References: <1576155618-7933-1-git-send-email-srinivas.neeli@xilinx.com>
 <CAHTX3dKSq1oTzkoRv3wK3rhkc1r0rOiQhFKmgsYbtG_uvOfAJg@mail.gmail.com>
 <20200211103939.GD3527@piout.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <49ee656d-0d5e-c97f-f77e-04b1f1a187b4@xilinx.com>
Date: Tue, 11 Feb 2020 11:40:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211103939.GD3527@piout.net>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(376002)(136003)(199004)(189003)(426003)(54906003)(2616005)(316002)(5660300002)(36756003)(2906002)(110136005)(31686004)(478600001)(4326008)(336012)(356004)(186003)(107886003)(6666004)(26005)(70206006)(70586007)(81156014)(44832011)(81166006)(8676002)(66574012)(31696002)(9786002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6932; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c9c2d2d-3d22-4ce5-992b-08d7aededf25
X-MS-TrafficTypeDiagnostic: BY5PR02MB6932:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR02MB6932ED27053BA25B3FC9DF10C6180@BY5PR02MB6932.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0310C78181
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SO1nD3DWvbgmSK22ZlpwEYWUovxcr1ZA7WWfxj3XsUT59d+zwDDIjlsOKpK8i6dx2BIhynN/nHif8IxkLpNngbix02J+e+LLEnRqMe+eQf/JKYi9GETXDSORFtRLvCxNpNCVWYlrIPj2f2ElNmu3CSRuJ19NamkFyoS8XdtkuWB2k3Xb4aWPAu8WkXFIMLqHoKKSZaFxGfNG9hKme/fteVoD92iCroW6M8mRfzztyhJ2xpS0GMi7LW0htLKSdEou4yZVhWDWLz/tCGv75aY8wUeAXvoP57+Y2JB71Z+cPQxwLGRQfnqfDqXVnRvlhb60lebrqLUkPNOuu14Qm0KzhbzHDqoQDVwSFKTogpwPxeH/S+d3jmtmo1YOV+b86px829StNMT41J8c7+iN9eHt/5lfJgtvPGRnThyMNJq7tajfFTKz9j24jx8ZfXYGw5iB
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2020 10:40:54.4237 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9c2d2d-3d22-4ce5-992b-08d7aededf25
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_024101_800856_1C774269 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Srinivas Neeli <srinivas.neeli@xilinx.com>, Srinivas Goud <sgoud@xilinx.com>,
 LKML <linux-kernel@vger.kernel.org>, git <git@xilinx.com>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEuIDAyLiAyMCAxMTozOSwgQWxleGFuZHJlIEJlbGxvbmkgd3JvdGU6Cj4gT24gMTAvMDIv
MjAyMCAxMjo0ODoxNCswMTAwLCBNaWNoYWwgU2ltZWsgd3JvdGU6Cj4+IEhpLAo+Pgo+PiDEjXQg
MTIuIDEyLiAyMDE5IHYgMTQ6MDEgb2Rlc8OtbGF0ZWwgU3Jpbml2YXMgTmVlbGkKPj4gPHNyaW5p
dmFzLm5lZWxpQHhpbGlueC5jb20+IG5hcHNhbDoKPj4+Cj4+PiBGaXggbXVsdGlwbGUgb2NjdXJy
aW5nIGludGVycnVwdHMgZm9yIGFsYXJtIGludGVycnVwdC4gUlRDIG1vZHVsZSBkb2Vzbid0Cj4+
PiBjbGVhciB0aGUgYWxhcm0gaW50ZXJydXB0IHN0YXR1cyBiaXQgaW1tZWRpYXRlbHkgYWZ0ZXIg
dGhlIGludGVycnVwdCBpcwo+Pj4gdHJpZ2dlcmVkLlRoaXMgaXMgZHVlIHRvIHRoZSBzdGlja3kg
bmF0dXJlIG9mIHRoZSBhbGFybSBpbnRlcnJ1cHQgc3RhdHVzCj4+PiByZWdpc3Rlci4gVGhlIGFs
YXJtIGludGVycnVwdCBzdGF0dXMgcmVnaXN0ZXIgY2FuIGJlIGNsZWFyZWQgb25seSBhZnRlcgo+
Pj4gdGhlIHNlY29uZCBjb3VudGVyIG91dHJ1bnMgdGhlIHNldCBhbGFybSB2YWx1ZS4gVG8gZml4
IG11bHRpcGxlIHNwdXJpb3VzCj4+PiBpbnRlcnJ1cHRzLCBkaXNhYmxlIGFsYXJtIGludGVycnVw
dCBpbiB0aGUgaGFuZGxlciBhbmQgY2xlYXIgdGhlIHN0YXR1cwo+Pj4gYml0IGJlZm9yZSBlbmFi
bGluZyB0aGUgYWxhcm0gaW50ZXJydXB0Lgo+Pj4KPj4+IEZpeGVzOiAxMTE0M2MxOWViNTcgKCJy
dGM6IGFkZCB4aWxpbnggenlucW1wIHJ0YyBkcml2ZXIiKQo+Pj4gU2lnbmVkLW9mZi1ieTogU3Jp
bml2YXMgTmVlbGkgPHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2
ZXJzL3J0Yy9ydGMtenlucW1wLmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3J0Yy9ydGMtenlucW1wLmMgYi9kcml2ZXJzL3J0Yy9y
dGMtenlucW1wLmMKPj4+IGluZGV4IDU3ODY4NjZjMDllOS4uZDMxMWUzZWYxZjIxIDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ydGMvcnRjLXp5bnFtcC5jCj4+PiArKysgYi9kcml2ZXJzL3J0Yy9y
dGMtenlucW1wLmMKPj4+IEBAIC0zOCw2ICszOCw4IEBACj4+Pgo+Pj4gICNkZWZpbmUgUlRDX0NB
TElCX0RFRiAgICAgICAgICAweDE5ODIzMwo+Pj4gICNkZWZpbmUgUlRDX0NBTElCX01BU0sgICAg
ICAgICAweDFGRkZGRgo+Pj4gKyNkZWZpbmUgUlRDX0FMUk1fTUFTSyAgICAgICAgICBCSVQoMSkK
Pj4+ICsjZGVmaW5lIFJUQ19NU0VDICAgICAgICAgICAgICAgMTAwMAo+Pj4KPj4+ICBzdHJ1Y3Qg
eGxueF9ydGNfZGV2IHsKPj4+ICAgICAgICAgc3RydWN0IHJ0Y19kZXZpY2UgICAgICAgKnJ0YzsK
Pj4+IEBAIC0xMjQsMTEgKzEyNiwyOCBAQCBzdGF0aWMgaW50IHhsbnhfcnRjX2FsYXJtX2lycV9l
bmFibGUoc3RydWN0IGRldmljZSAqZGV2LCB1MzIgZW5hYmxlZCkKPj4+ICB7Cj4+PiAgICAgICAg
IHN0cnVjdCB4bG54X3J0Y19kZXYgKnhydGNkZXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+
Cj4+Cj4+IGhlcmUgc2hvdWxkbid0IGJlIGVtcHR5IGxpbmUuCj4+Cj4+PiAtICAgICAgIGlmIChl
bmFibGVkKQo+Pj4gKyAgICAgICB1bnNpZ25lZCBpbnQgc3RhdHVzOwo+Pj4gKyAgICAgICB1bG9u
ZyB0aW1lb3V0Owo+Pj4gKwo+Pj4gKyAgICAgICB0aW1lb3V0ID0gamlmZmllcyArIG1zZWNzX3Rv
X2ppZmZpZXMoUlRDX01TRUMpOwo+Pj4gKwo+Pj4gKyAgICAgICBpZiAoZW5hYmxlZCkgewo+Pj4g
KyAgICAgICAgICAgICAgIHdoaWxlICgxKSB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICBz
dGF0dXMgPSByZWFkbCh4cnRjZGV2LT5yZWdfYmFzZSArIFJUQ19JTlRfU1RTKTsKPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGlmICghKChzdGF0dXMgJiBSVENfQUxSTV9NQVNLKSA9PSBSVENf
QUxSTV9NQVNLKSkKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4+
PiArCj4+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAodGltZV9hZnRlcl9lcShqaWZmaWVz
LCB0aW1lb3V0KSkgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJy
KGRldiwgIlRpbWUgb3V0IG9jY3VyLCB3aGlsZSBjbGVhcmluZyBhbGFybSBzdGF0dXMgYml0XG4i
KTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICB3cml0ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdfYmFzZSArIFJUQ19JTlRfU1RTKTsK
Pj4+ICsgICAgICAgICAgICAgICB9Cj4+PiArCj4+PiAgICAgICAgICAgICAgICAgd3JpdGVsKFJU
Q19JTlRfQUxSTSwgeHJ0Y2Rldi0+cmVnX2Jhc2UgKyBSVENfSU5UX0VOKTsKPj4+IC0gICAgICAg
ZWxzZQo+Pj4gKyAgICAgICB9IGVsc2Ugewo+Pj4gICAgICAgICAgICAgICAgIHdyaXRlbChSVENf
SU5UX0FMUk0sIHhydGNkZXYtPnJlZ19iYXNlICsgUlRDX0lOVF9ESVMpOwo+Pj4gLQo+Pj4gKyAg
ICAgICB9Cj4+Cj4+IEFuZCBoZXJlIGl0IHdhcyBnb29kIHRvIGhhdmUgZW1wdHkgbGluZS4KPj4K
Pj4+ICAgICAgICAgcmV0dXJuIDA7Cj4+PiAgfQo+Pj4KPj4+IEBAIC0xODMsOCArMjAyLDggQEAg
c3RhdGljIGlycXJldHVybl90IHhsbnhfcnRjX2ludGVycnVwdChpbnQgaXJxLCB2b2lkICppZCkK
Pj4+ICAgICAgICAgaWYgKCEoc3RhdHVzICYgKFJUQ19JTlRfU0VDIHwgUlRDX0lOVF9BTFJNKSkp
Cj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIElSUV9OT05FOwo+Pj4KPj4+IC0gICAgICAgLyog
Q2xlYXIgUlRDX0lOVF9BTFJNIGludGVycnVwdCBvbmx5ICovCj4+PiAtICAgICAgIHdyaXRlbChS
VENfSU5UX0FMUk0sIHhydGNkZXYtPnJlZ19iYXNlICsgUlRDX0lOVF9TVFMpOwo+Pj4gKyAgICAg
ICAvKiBEaXNhYmxlIFJUQ19JTlRfQUxSTSBpbnRlcnJ1cHQgb25seSAqLwo+Pj4gKyAgICAgICB3
cml0ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdfYmFzZSArIFJUQ19JTlRfRElTKTsKPj4+
Cj4+PiAgICAgICAgIGlmIChzdGF0dXMgJiBSVENfSU5UX0FMUk0pCj4+PiAgICAgICAgICAgICAg
ICAgcnRjX3VwZGF0ZV9pcnEoeHJ0Y2Rldi0+cnRjLCAxLCBSVENfSVJRRiB8IFJUQ19BRik7Cj4+
PiAtLQo+Pj4gMi43LjQKPj4KPj4gT3RoZXIgdGhlbiB0aGVzZSB0d28gYWJvdmUgdGhpbmdzIGxv
b2sgZ29vZC4KPj4KPj4gQWxleGFuZHJlOiBBbnkgaXNzdWUgd2l0aCB0aGlzIHBhdGNoPwo+Pgo+
IAo+IE5vIGlzc3VlLCBJIHdhcyBraW5kIG9mIHdhaXRpbmcgZm9yIHlvdXIgcmV2aWV3LiBJJ2xs
IHRha2UgdGhlIHBhdGNoCj4gb25jZSB5b3VyIGNvbW1lbnRzIGFyZSBhZGRyZXNzZWQuCgpPay4g
VGhhbmtzLApNaWNoYWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
