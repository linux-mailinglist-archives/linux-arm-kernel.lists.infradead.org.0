Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0D8E0003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0Dvu1/z0lhhU8xrAD6othE8HYAViaIPVNZCn7MCII8=; b=OJifBgAADgny2q
	tKcXJWTHYX+5gYITl/6hJPRJPTwONTazbhsPwBfqspWS5lk04/u24j0jJqgaqrxbBou4NdtYezmaG
	x/1OVvhQMK95tqxurUGvwExzqxf89NBUHULOwB9sRt/HFEhlQAL51HMQimqxvO0fY/0bMhWc9ZcGO
	KUBk40X0b68rHGBrXy+6RIwHAMMLaXOwU5d11cw1I0DKmOVpdUez+G/RBFJnEobkEa0J3IQONmG2e
	zDJVHzwDwJ039ZYoWKysoa9eJrMEMiUGQESGuSqjfSPXCz0+4N3NUGWWRqjPL8Dd/JkFwWbf0mL3C
	ZBYXqYPA5PSDi9T7FnOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMptB-0008DZ-SI; Tue, 22 Oct 2019 08:51:37 +0000
Received: from mail-eopbgr800042.outbound.protection.outlook.com
 ([40.107.80.42] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpt2-0008D1-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:51:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEZnKuWNKG73R/8hQE4UoSS83Zf21pIt75Pgv9zoXJpzSd/VXE7ymf9IYV5bYh0kZF5953uoeU2bahoqtf+fAh3a8OUMhVKdhjPfgvNzs9MPtSeFIDvTXeJf9VM02O+NOR1uzdO59DBGsXFwJRVwlcuEfeNRK0OHXx8KzcPJibjMEU4keocJgmDwr/R4jkTFMEBMxKakZfYRVcD/07wCff4yrjxkDRK88Xjxc9TjghfnJQGjJGT20mmcW4xQqK6UUQPYUDHQytotd+axaIzSKPc+YMvMSq60fhwdNMGvXDHiNrtrZAa+q99I0IQwwbefp2K2IqVghAeEgnZ5QCgrUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56W45nPGUSRM1VFi2Z8YDVEVdGdyBXNSIhTK92cktVw=;
 b=NlegAizUS3apKtMMlHC52WYctT/Ah3n5rXIqJ1z/Iz6puAmQRcjc2Ia+rfw9Wu0FkW6dtsUpy+G+ePsPa8OsoeZsT4rt1cw3T7+NgpUxXr7g+bRxnaPlQK1icoOiz2vw190UI8yKTpg7/qawNVbaTGrY3BTexVYdQCpsR0AfxcLXuI5jTtuq2lfBhF8pbWMUAtJ+m2YaVCD9u4Yq40E/g0qpgB8fmeA8iSXWYZQIi1V6i9tbuZ/2C7mnbtIURzQAVKrThJ02/2wak5AudSz1cLCSWyKQrma8lbb6ezH23c2TOVGJ7g/uaBb9uE5OyKaxmaqXtLRgXt7fN5b8dgU6qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56W45nPGUSRM1VFi2Z8YDVEVdGdyBXNSIhTK92cktVw=;
 b=ECHMqoIawE0FkeOAHbkticeGGhmbF1DWx6+vcTUSq8mWUTiqheZYUxTt3ExYI923gislAh/9et4sKizrT5Xp42TFdAy7wikq5epHOG373fGzx2klm4ZDadUqmLFsIVcX417j/cnIboNUVspER35E+vVjxE/lop/PLtXnoKO2zcM=
Received: from BN7PR02CA0004.namprd02.prod.outlook.com (2603:10b6:408:20::17)
 by BN8PR02MB5955.namprd02.prod.outlook.com (2603:10b6:408:b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Tue, 22 Oct
 2019 08:51:23 +0000
Received: from SN1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by BN7PR02CA0004.outlook.office365.com
 (2603:10b6:408:20::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.23 via Frontend
 Transport; Tue, 22 Oct 2019 08:51:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT028.mail.protection.outlook.com (10.152.72.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Tue, 22 Oct 2019 08:51:23 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iMpsw-0002uh-Tp; Tue, 22 Oct 2019 01:51:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iMpsr-0002P5-RN; Tue, 22 Oct 2019 01:51:17 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iMpso-0002DK-JO; Tue, 22 Oct 2019 01:51:14 -0700
Subject: Re: [PATCH] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
To: Markus Elfring <Markus.Elfring@web.de>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191021201848.4231-1-navid.emamdoost@gmail.com>
 <fb5d5331-9a89-8370-1e61-396dd05f291a@web.de>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
Date: Tue, 22 Oct 2019 10:51:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fb5d5331-9a89-8370-1e61-396dd05f291a@web.de>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(189003)(199004)(36756003)(126002)(23676004)(446003)(44832011)(47776003)(316002)(50466002)(486006)(356004)(426003)(476003)(6666004)(76176011)(2616005)(11346002)(336012)(36386004)(65806001)(54906003)(26005)(229853002)(2486003)(65956001)(8676002)(81156014)(81166006)(31696002)(186003)(7416002)(8936002)(966005)(2870700001)(478600001)(5660300002)(6306002)(106002)(9786002)(6246003)(2906002)(4326008)(110136005)(58126008)(31686004)(305945005)(70586007)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR02MB5955; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2cf784a9-5f70-4fb5-1ecc-08d756cd0445
X-MS-TrafficTypeDiagnostic: BN8PR02MB5955:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <BN8PR02MB5955F28EA42CB7AFD3AEDFB5C6680@BN8PR02MB5955.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 01986AE76B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MzYUZESoncFwqnQ7wPDWbdjjMVjAKIQX27d7J3FltOwQKLfjIgXZdrCMD3t+8vbdh6nkCma5IiSZ3uht2N7OdauivDdXrnGqfWAstujZeGhl8kaE3rLQARl7ZjF9kIlOL6mxbA5xh8oqGsiMF0h+oo/rN8wbqUYJQ+AJs61W7Q8OLAmFuw/8Y2KM047CzvLzU6ao8iJjFKtbEwbV4ffrn/pP/lcoZqo/VYar3KOB9DXEer/CLXuc3NGPhvK4ZAymeBcnCe2kt+9i4bLwDeOZlDyJUtkiqO9uOUWtnLjTtMBhyXucbtzQnTz4aM26MsJ8T1ePuYusf1qSUH4oLcO7A8gl7KVc7Hl7X1vVi7qs06Hd28wpIPsrQtIcHUAXT9/FIErVPW3vXQIJuhQB+93+cGxz/6yzbO3YcJbOQ846pxmejftf9kY2NMBh0eH0ywmOTfGJwbIynhhb9zm6BZINJQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2019 08:51:23.5006 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf784a9-5f70-4fb5-1ecc-08d756cd0445
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_015128_059515_D6C8CBCE 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.42 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, Navid Emamdoost <emamd001@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuIDEwLiAxOSAxMDoyNiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IEluIHRoZSBpbXBl
bGVtZW50YXRpb24gb2YgdHRjX3NldHVwX2Nsb2NrZXZlbnQoKSB0aGUgYWxsb2NhdGVkIG1lbW9y
eQo+PiBmb3IgdHRjY2Ugc2hvdWxkIGJlIHJlbGVhc2VkIGlmIGNsa19ub3RpZmllcl9yZWdpc3Rl
cigpIGZhaWxzLgo+IAo+ICogUGxlYXNlIGF2b2lkIHRoZSBjb3B5aW5nIG9mIHR5cG9zIGZyb20g
cHJldmlvdXMgY2hhbmdlIGRlc2NyaXB0aW9ucy4KPiAKPiAqIFVuZGVyIHdoaWNoIGNpcmN1bXN0
YW5jZXMgd2lsbCBhbiDigJxpbXBlcmF0aXZlIG1vb2TigJ0gbWF0dGVyIGZvciB5b3UgaGVyZT8K
PiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNo
ZXMucnN0P2lkPTdkMTk0YzIxMDBhZDJhNmRkZWQ1NDU4ODdkMDI3NTQ5NDhjYTUyNDEjbjE1MQo+
IAo+IAo+PiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWNhZGVuY2UtdHRjLmMKPj4g
QEAgLTQyNCw2ICs0MjQsNyBAQCBzdGF0aWMgaW50IF9faW5pdCB0dGNfc2V0dXBfY2xvY2tldmVu
dChzdHJ1Y3QgY2xrICpjbGssCj4+ICAJCQkJICAgICZ0dGNjZS0+dHRjLmNsa19yYXRlX2NoYW5n
ZV9uYik7Cj4+ICAJaWYgKGVycikgewo+PiAgCQlwcl93YXJuKCJVbmFibGUgdG8gcmVnaXN0ZXIg
Y2xvY2sgbm90aWZpZXIuXG4iKTsKPj4gKwkJa2ZyZWUodHRjY2UpOwo+PiAgCQlyZXR1cm4gZXJy
Owo+PiAgCX0KPiAKPiBUaGlzIGFkZGl0aW9uIGxvb2tzIGNvcnJlY3QuCj4gQnV0IEkgd291bGQg
cHJlZmVyIHRvIG1vdmUgc3VjaCBleGNlcHRpb24gaGFuZGxpbmcgY29kZSB0byB0aGUgZW5kIG9m
Cj4gdGhpcyBmdW5jdGlvbiBpbXBsZW1lbnRhdGlvbiBzbyB0aGF0IGR1cGxpY2F0ZSBzb3VyY2Ug
Y29kZSB3aWxsIGJlIHJlZHVjZWQuCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9j
ZXNzL2NvZGluZy1zdHlsZS5yc3Q/aWQ9N2QxOTRjMjEwMGFkMmE2ZGRlZDU0NTg4N2QwMjc1NDk0
OGNhNTI0MSNuNDUwCgpKdXN0IGEgbm90ZS4gTWF5YmUgeW91IHNob3VsZCBhbHNvIGNvbnNpZGVy
IHRvIGZpeCB0aGlzIGVycm9yIHBhdGggaW4KdHRjX3NldHVwX2Nsb2Nrc291cmNlKCkgd2hlbiBu
b3RpZmllciBhbHNvIGNhbiBmYWlsIHRoYXQgdGhlcmUgaXMgbm8KbmVlZCB0byBjb250aW51ZSB3
aXRoIGNvZGUgZXhlY3V0aW9uLgoKVGhhbmtzLApNaWNoYWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
