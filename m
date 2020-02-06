Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489ED1540EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 10:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSXLmZjWclwDcf7RBSV1pqeU564FUZKsE3TgaMfq+jU=; b=cFk2bmryZB8UIF
	71yuX/ex/ufnJb0sdWUmdMc+1Z2uyDmwh8K/b1AXTkJa+YBs9Cdsh0M/bNmU7XdocJ05eYq19MHOM
	HpAI0wYWFQc/7HtHkX0afwXaZfGNTxyL0iVHviSSZSFBdaBKXYXIMlTpjXcDBfTnJzdhiplgLcD6J
	9H5tB+KoucB4Y7SnsUzDLq8dqTBlkX+cjsRi1uimlghkBlNa26QK2DY7Y/dow4EeC2jGc/A1du63v
	owYTDnujPg69w2KAFAcOWyemoTJcxINf2WGNmCBwjXQi1t6gSm+NOXAzfGkv3D9pO1BNYTD/p2mcG
	aux5ZZUb4p3WcrDd3OAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdCY-0004D6-9m; Thu, 06 Feb 2020 09:11:58 +0000
Received: from mail-bl2nam02on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::609]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdCQ-0004C8-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 09:11:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5J7Ok0whV+08aBc4WC0l/cpI0EG1ib2ZdGmEYf3PKIL17qSoy6hhJtk6tGRiykYU8oXnQdRZllzWvlMWrtfTkM3XPH+iF5j3sJueCAyFIP7oTest/5FIfTK/RAo5rblUaAQWDJI5wRBqB1qcMp4CjnjgH+sx7yEjI90a62ykO7qAZwYI7qhJM2Nz2JpYm8B1Ozy9bQMUKARj4QpYbpSQn3zUrjVuzGBPEGEptP7wiF5WezwCrU8lfGufW2A2LJ7VpaE7P9hqgWaLfY9OF0punNqxUYY3X2OPKgQNgSBS9x5GS34z7Bg2qjqLiumjBFLoT2hZYnAZbZhqKwK0JXrgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XuNGITOrAnDqzF3iFEprbrV2RXUArio7lBKdelGtOsM=;
 b=dnr/5J/wjpCIzAzCVX1GDBo7FBNIhgt+KlF6QX/1vYSuldsc4kNFVshW0knXwge+WoR+Z1Srlhd7tmFrvaf9WKVlaIh/VpOvUBATYbf/xeeRdSvZXryHb23ivp1tr4lHE6KYlvZZj+gWCX6EinLj7/Q0NqtcnGUmAni0diFyhaLlK0/jLZLyNDHpMXZQlqlU1FCZ+Qhr+YGiSqYV6ScOQw/BXjuJgpV8kRaKYQVtlP5qLJDLo+H/a+8cvWCqTxACp5AHSl6GhqRRALWPIeJZOmtoRf+HJZ5qyF2XVu0q6OyDbD+KMrSOj5dIY6Teg+Xx3BACSCnG69vc3QF3EKi9tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XuNGITOrAnDqzF3iFEprbrV2RXUArio7lBKdelGtOsM=;
 b=AinhnYuTnl9evYaqLJ64nxZ5RbKuKDRMPi+O4JxGrtxr4tsilRqNFD7WSghvYwlQbRJGlms/aaVEM7VwptxxpNcfjRqr86t3MtfTvXu9K0lQ25GYldTU3K6cMzf6cGQv5ZFyAMeohJ97AxEXHKhc7kwt6tfhnB+CBKxzDHrTijc=
Received: from DM6PR02CA0084.namprd02.prod.outlook.com (2603:10b6:5:1f4::25)
 by BY5PR02MB6470.namprd02.prod.outlook.com (2603:10b6:a03:1dd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Thu, 6 Feb
 2020 09:11:43 +0000
Received: from SN1NAM02FT027.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by DM6PR02CA0084.outlook.office365.com
 (2603:10b6:5:1f4::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Thu, 6 Feb 2020 09:11:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT027.mail.protection.outlook.com (10.152.72.99) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Thu, 6 Feb 2020 09:11:42 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izdCI-0007Dm-1v; Thu, 06 Feb 2020 01:11:42 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izdCC-0006F2-UQ; Thu, 06 Feb 2020 01:11:36 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1izdC8-0006DN-9G; Thu, 06 Feb 2020 01:11:32 -0800
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
To: Marc Zyngier <maz@kernel.org>, Michal Simek <michal.simek@xilinx.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <b8e7b9120bc6cd306bda3347cde117ff@kernel.org>
 <3d6077c1-2b13-acc6-e8f4-3d1ab23dc159@xilinx.com>
 <8b5c5b5d601856ddc3f4388e267c4cd0@kernel.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <575c6350-139b-65b9-f9e2-2633656baa85@xilinx.com>
Date: Thu, 6 Feb 2020 10:11:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8b5c5b5d601856ddc3f4388e267c4cd0@kernel.org>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(36756003)(2906002)(356004)(31686004)(478600001)(6666004)(81156014)(8676002)(8936002)(107886003)(5660300002)(81166006)(31696002)(336012)(186003)(426003)(26005)(2616005)(44832011)(4326008)(70206006)(9786002)(53546011)(70586007)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6470; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05478bff-8aae-475f-5c0f-08d7aae49535
X-MS-TrafficTypeDiagnostic: BY5PR02MB6470:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6470CE7B9321C50D1053B224C61D0@BY5PR02MB6470.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0305463112
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Is0n11EU6BJpvr2wd6luzAEvnT7Nm6n2TAlrG1HAGVwpi7Tl6HakGOpTxUfPmcip9Jp63XkEtMXK8iQkS1mEKX396p4AHykd/y58A7NpeLWe3mCSxDO0LyS+Iud4DSQaNsuhsIilUlYV3M6oN4H4dPYKJnSb4akBsTq7qn88IkGiQgczLd/bBdNIhOi0tzuuhKixKzVRpwPqu9yDpbT907VAkTQGFTHrkFnOehuNJsoo3dQvpKOn5TSFWtoJiUIn1YWpZ7lEBndw25rULSE8nPmSrPrCpXtqti5lN16QvJx+W032hSWXSruw1WJj9/C7rcJEpI5W+aJu2xlkUV19maYG+EeDDjXMoNbtxUjLyzQrsBB5XTlyVSdK3D/uAPLCAmWPLWoZ0UiWaJMVQcQrBydzzfZziwmAAd5LfmhSD4jIyYYvm9KCOKbz+MJwUc6J
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 09:11:42.7310 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 05478bff-8aae-475f-5c0f-08d7aae49535
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6470
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_011150_534612_981AA3F7 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jason@lakedaemon.net, Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>,
 anirudha.sarangi@xilinx.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 siva.durga.paladugu@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYuIDAyLiAyMCAxMDowOSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjAtMDItMDYg
MDc6MDYsIE1pY2hhbCBTaW1layB3cm90ZToKPj4gT24gMDUuIDAyLiAyMCAxNzo1MywgTWFyYyBa
eW5naWVyIHdyb3RlOgo+Pj4gT24gMjAyMC0wMi0wNSAxNDowNSwgTXViaW4gVXNtYW4gU2F5eWVk
IHdyb3RlOgo+IAo+IFsuLi5dCj4gCj4+Pj4gwqB1bnNpZ25lZCBpbnQgeGludGNfZ2V0X2lycSh2
b2lkKQo+Pj4+IMKgewo+Pj4+IC3CoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGh3aXJxLCBpcnEg
PSAtMTsKPj4+PiArwqDCoMKgwqDCoMKgIGludCBod2lycSwgaXJxID0gLTE7Cj4+Pj4KPj4+PiAt
wqDCoMKgwqDCoMKgIGh3aXJxID0geGludGNfcmVhZChJVlIpOwo+Pj4+ICvCoMKgwqDCoMKgwqAg
aHdpcnEgPSB4aW50Y19yZWFkKHByaW1hcnlfaW50Yy0+YmFzZSArIElWUik7Cj4+Pj4gwqDCoMKg
wqDCoMKgwqAgaWYgKGh3aXJxICE9IC0xVSkKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpcnEgPSBpcnFfZmluZF9tYXBwaW5nKHhpbnRjX2lycWMtPnJvb3RfZG9tYWluLCBod2ly
cSk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXJxID0gaXJxX2ZpbmRfbWFw
cGluZyhwcmltYXJ5X2ludGMtPnJvb3RfZG9tYWluLAo+Pj4+IGh3aXJxKTsKPj4+Pgo+Pj4+IMKg
wqDCoMKgwqDCoMKgIHByX2RlYnVnKCJpcnEteGlsaW54OiBod2lycT0lZCwgaXJxPSVkXG4iLCBo
d2lycSwgaXJxKTsKPj4+Cj4+PiBJIGhhdmUgdGhlIHVnbHkgZmVlbGluZyBJJ20gcmVhZGluZyB0
aGUgc2FtZSBjb2RlIHR3aWNlLi4uIFN1cmVseSB5b3UKPj4+IGNhbgo+Pj4gbWFrZSB0aGVzZSB0
d28gZnVuY3Rpb25zIGNvbW1vbiBjb2RlLgo+Pgo+PiBJIGhhdmUgc29tZSBxdWVzdGlvbnMgcmVn
YXJkaW5nIHRoaXMuCj4+IEkgaGF2ZSB1cGRhdGVkIG9uZSBwYXRjaHNldCB3aGljaCBpcyBhZGRp
bmcgc3VwcG9ydCBmb3IgTWljcm9ibGF6ZSBTTVAuCj4+IEFuZCB3aGVuIEkgd2FzIGxvb2tpbmcg
YXQgY3VycmVudCB3aXJpbmcgb2YgdGhpcyBkcml2ZXIgSSBoYXZlIGRlY2lkZWQKPj4gdG8gY2hh
bmdlIGl0Lgo+Pgo+PiBJIGhhdmUgZW5hYmxlZMKgIEdFTkVSSUNfSVJRX01VTFRJX0hBTkRMRVIg
YW5kIEhBTkRMRV9ET01BSU5fSVJRLgo+PiBUaGlzIGRyaXZlciBjYWxscyBzZXRfaGFuZGxlX2ly
cSh4aWxfaW50Y19oYW5kbGVfaXJxKQo+PiBhbmQgTUIgZG9fSVJRKCkgY2FsbCBoYW5kbGVfYXJj
aF9pcnEoKQo+PiBhbmQgSVJRIHJvdXRpbmUgaGVyZSBpcyB1c2luZyBoYW5kbGVfZG9tYWluX2ly
cSgpLgo+Pgo+PiBJIHdvdWxkIGV4cGVjdCB0aGF0IHRoaXMgY2hhaW5lZCBJUlEgaGFuZGxlciBj
YW4gYWxzbyB1c2UKPj4gaGFuZGxlX2RvbWFpbl9pcnEoKS4KPj4KPj4gSXMgdGhhdCBjb3JyZWN0
IHVuZGVyc3RhbmRpbmc/Cj4gCj4gaGFuZGxlX2RvbWFpbl9pcnEoKSBpbXBsaWVzIHRoYXQgeW91
IGhhdmUgYSBzZXQgb2YgcHRfcmVncywgcmVwcmVzZW50aW5nCj4gdGhlIGNvbnRleHQgeW91IGlu
dGVycnVwdGVkLiBZb3UgY2FuJ3QgZmFrZSB0aGF0IHVwLCBzbyBJIGNhbid0IHNlZSBob3cKPiB5
b3UgdXNlIGl0IGluIGEgY2hhaW5lZCBjb250ZXh0LgoKb2suIFdoYXQncyB5b3VyIHJlY29tbWVu
ZGF0aW9uIGZvciBjaGFpbmVkIGNvbnRyb2xsZXI/IEp1c3QgZ28gd2l0aAppcnFfZmluZF9tYXBw
aW5nPwoKPiAKPiBbLi4uXQo+IAo+Pj4+ICvCoMKgwqDCoMKgwqAgaW50Y19kZXYtPm5hbWUgPSBp
bnRjLT5mdWxsX25hbWU7Cj4+Pgo+Pj4gTm8uIFRoZSB3b3JsZCBkb2Vzbid0IG5lZWQgdG8gc2Vl
IHRoZSBPRiBwYXRoIG9mIHlvdXIgaW50ZXJydXB0Cj4+PiBjb250cm9sbGVyIGluIC9wcm9jL2Nw
dWluZm8uCj4+PiBUaGUgbmFtZSB0aGF0IHdhcyB0aGVyZSBiZWZvcmUgd2FzIHBlcmZlY3RseSBk
ZXNjcmlwdGl2ZSwgcGxlYXNlIHN0aWNrCj4+PiB0byBpdC4KPj4KPj4gSXQgc2hvdWxkIGJlIHNo
b3dpbmcgbmFtZSBsaWtlIGludGVycnVwdC1jb250cm9sbGVyQDQxODAwMDAwLgo+PiBEbyB5b3Ug
dGhpbmsgdGhhdCB3ZSByZWFsbHkgc2hvdWxkIHN0aWNrIHdpdGgganVzdCBmaXhlZCBuYW1lPwo+
PiBUaGVyZSBjb3VsZCBiZSBtdWx0aXBsZSBpbnN0YW5jZXMgaW4gdGhlIHN5c3RlbSBhbmQgeW91
IHdpbGwgaGF2ZSBubwo+PiBpZGVhIGhvdyB0aGV5IGFyZSBjb25uZWN0ZWQuCj4gCj4gV2hhdCBp
cyB0aGF0IHVzZWQgZm9yPyBEZWJ1Z2dpbmcuIFdlIGhhdmUgYSB3aG9sZSBpbmZyYXN0cnVjdHVy
ZSBmb3IgdGhhdAo+IChHRU5FUklDX0lSUV9ERUJVR0ZTKSwgd2hpY2ggaXMgdGhlIHJpZ2h0IHRv
b2wgZm9yIHRoZSBqb2IuIElmIGl0IG5lZWRzCj4gaW1wcm92ZW1lbnQsIHBsZWFzZSBsZXQgbWUg
a25vdyB3aGF0IGlzIG1pc3NpbmcuCgpMZXQgbWUgdGFrZSBhIGxvb2suCgo+IEFsc28sIGFueXRo
aW5nIGluIC9wcm9jIGlzIEFCSSwgc28gd2UgZG9uJ3QgY2hhbmdlIGl0IHJhbmRvbWx5LgoKb2su
CgpUaGFua3MsCk1pY2hhbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
