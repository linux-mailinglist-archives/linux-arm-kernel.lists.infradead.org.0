Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48893154104
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 10:18:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yft5i863r56kPs3Xa7h5dSnCdkKkMbyNYsqlyM+5KHA=; b=Mq3akEw9dIBned
	v8B0WQIr0u7soKJGIQNSPBlFSODF6rZIgrDZIxPeMMfDmJkvcKBoM0O1r63jqsjLNP1pQSTyOj8TP
	IP8P0NRtTIHdrp9X1a4uknnpwYOIVJCMh97drFb+lVsJ9rruG8dhnPqNm9zrEKc/tdYw2hL8PF+Rc
	Gafg6whGXyyS71WHk6dXcTWXetzFkUm22pVyuUCYuzTmK+QxlZwbwFgEgwU69YMDIu33gF+dYjfh0
	mIgdAkYqCBAyR1Qhwl/0qwmbB5ec1urBxBJElTdvAECnt8zQbEBvcSSP+q0s/CYt3V3eJm+MzLegk
	yXdvfHCvfypRMo6vEijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdIe-0006VQ-RL; Thu, 06 Feb 2020 09:18:16 +0000
Received: from mail-mw2nam10on2046.outbound.protection.outlook.com
 ([40.107.94.46] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdIX-0006V1-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 09:18:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/l8JwFlLFNmte/Of2IxjSkw2rQt+Tg0CVHoHLvpZMKi3NPzK8cACg+GsSprdELuEStnMr3uzgMPSmBKYQCLPRDL/FAbiGCt15Nhi+n8HHFy72UAo3woI6Fr7R1NEZY5Y6sBO42Y30zbcg9yn5G+jQHXJ+HM57R8yL45ztPRtleFZ7xJfSeFJnnOw7rDDH998Su1wBKHjKvvflRk6b1JkFpeperl3Rz5kMzuB5sFldrjBz3Dtyi0UB5FMIDkGawEV3nSAEHd/keZEbeAX1/oWoprC8b+JzRLBBj7ygRbJNri4U8W3viUWd1Ekjynhzny3f1NLQ/UZ/t+QYMMZ42Wgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aPokd5dsqAZdbIC4rBdpU+CCr8n6Fj+eTJCHppteGxE=;
 b=YYsHG1c6WBFz2+pcmhgTS3CYQEw1uroZOS/XVz0X+070dCJJKLbfZQZ4TEBQChT4ImSVzRnbzn46LwKwtUqrTgAlRTjuQdoG0456wU8Fvmgd2yaEYPUlDgv2XtSxkfVR8B+SyWcodnhq1BmqJA9vg8BrwQDJ4gaeOK9LJuwkYuZfgSleKyDCmWDoCaj7gdR+mU//9tluRPYqrLj6/VX0uxeU7RjKH863xFYAAX2V87aXGAyageAsqAmryWonV9Cwwx/3NJBb9fWBKcByy4dmWFOyjBOHNWCNii1BxN5W0UQroFs3/yf9QBgwjfIQyWXkboLmGWH/zcflIBjcgh9Iog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aPokd5dsqAZdbIC4rBdpU+CCr8n6Fj+eTJCHppteGxE=;
 b=W1ogqLyt77oiD1qGV25My2Dv7gCuxGDTMJ39hlH/YB5figRfA1RAEYOYEfQBAnsAkw5vy4DALUhjWvtgTm9FpopS9MmtpLWDXlTt2DH72XIZybO3TimUnujqD35anqNN1EkFA7YbJ5ToyZvD0Jj5lOcPUORFnTF7NqLyhW+2B2U=
Received: from SN4PR0201CA0056.namprd02.prod.outlook.com
 (2603:10b6:803:20::18) by BN6PR02MB2835.namprd02.prod.outlook.com
 (2603:10b6:404:fc::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Thu, 6 Feb
 2020 09:18:05 +0000
Received: from BL2NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by SN4PR0201CA0056.outlook.office365.com
 (2603:10b6:803:20::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.32 via Frontend
 Transport; Thu, 6 Feb 2020 09:18:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT061.mail.protection.outlook.com (10.152.77.7) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Thu, 6 Feb 2020 09:18:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izdIR-0007QB-FY; Thu, 06 Feb 2020 01:18:03 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izdIM-0007fg-Bm; Thu, 06 Feb 2020 01:17:58 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0169HrBO006596; 
 Thu, 6 Feb 2020 01:17:54 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1izdIH-0007ex-N5; Thu, 06 Feb 2020 01:17:53 -0800
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
To: Marc Zyngier <maz@kernel.org>, Michal Simek <michal.simek@xilinx.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <b8e7b9120bc6cd306bda3347cde117ff@kernel.org>
 <3d6077c1-2b13-acc6-e8f4-3d1ab23dc159@xilinx.com>
 <8b5c5b5d601856ddc3f4388e267c4cd0@kernel.org>
 <575c6350-139b-65b9-f9e2-2633656baa85@xilinx.com>
 <a3008824af22411034a6172cf09b450f@kernel.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <37ff3e76-a188-753e-182c-5c30069b8607@xilinx.com>
Date: Thu, 6 Feb 2020 10:17:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <a3008824af22411034a6172cf09b450f@kernel.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(189003)(199004)(8936002)(31686004)(53546011)(70206006)(2616005)(4326008)(478600001)(70586007)(44832011)(5660300002)(426003)(107886003)(36756003)(31696002)(2906002)(9786002)(8676002)(336012)(316002)(110136005)(26005)(186003)(81156014)(356004)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2835; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 804e7aa1-f80b-4417-ff5d-08d7aae578c4
X-MS-TrafficTypeDiagnostic: BN6PR02MB2835:
X-Microsoft-Antispam-PRVS: <BN6PR02MB283502D4AF7444A6461852CFC61D0@BN6PR02MB2835.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0305463112
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TKe/Glzlhyt3mapPA5E3GX4zAYfuMXHQ+Lsrddaw8r5Z+1M90139sKfbU4d+HsthHiDWHD9QscmTnvo1ERltVHd7vaJaqumkjVrON/EMryIDerve5hRL2U7t7GeCj3kLD8gQQbSa+cB2XoMW3dK21NfXUKuLtSFlmntxyYFcQMrBOOqyYa3qpNKWknALKt4tLyrc8egEkkGcrAPyGf8M1vSueQjmlb1FMi0GEEfoBzLPrtvQ+JhERWaaOIaJOC22haV0JxRARlVEMej/wby2mrrh7K58DluneNAtSIBOgyk9TigrLwecNu0Pn1BiMlLrmLmvIji0M9+H7pAB505NycppoK1qwdD6jFhJkIEa6geYNn4k5qwbrXrDRw2ZXFx4+3KSg4jNCHJtPO/+SyT70NUB6nKqEP5YNcX7tfl0fIMNSpX0HN4UIG3+OtyoLcG8
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 09:18:04.4842 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 804e7aa1-f80b-4417-ff5d-08d7aae578c4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_011809_459644_AAF28ED7 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.46 listed in wl.mailspike.net]
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

T24gMDYuIDAyLiAyMCAxMDoxNSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjAtMDItMDYg
MDk6MTEsIE1pY2hhbCBTaW1layB3cm90ZToKPj4gT24gMDYuIDAyLiAyMCAxMDowOSwgTWFyYyBa
eW5naWVyIHdyb3RlOgo+Pj4gT24gMjAyMC0wMi0wNiAwNzowNiwgTWljaGFsIFNpbWVrIHdyb3Rl
Ogo+Pj4+IE9uIDA1LiAwMi4gMjAgMTc6NTMsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+Pj4gT24g
MjAyMC0wMi0wNSAxNDowNSwgTXViaW4gVXNtYW4gU2F5eWVkIHdyb3RlOgo+Pj4KPj4+IFsuLi5d
Cj4+Pgo+Pj4+Pj4gwqB1bnNpZ25lZCBpbnQgeGludGNfZ2V0X2lycSh2b2lkKQo+Pj4+Pj4gwqB7
Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBod2lycSwgaXJxID0gLTE7Cj4+Pj4+
PiArwqDCoMKgwqDCoMKgIGludCBod2lycSwgaXJxID0gLTE7Cj4+Pj4+Pgo+Pj4+Pj4gLcKgwqDC
oMKgwqDCoCBod2lycSA9IHhpbnRjX3JlYWQoSVZSKTsKPj4+Pj4+ICvCoMKgwqDCoMKgwqAgaHdp
cnEgPSB4aW50Y19yZWFkKHByaW1hcnlfaW50Yy0+YmFzZSArIElWUik7Cj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoCBpZiAoaHdpcnEgIT0gLTFVKQo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaXJxID0gaXJxX2ZpbmRfbWFwcGluZyh4aW50Y19pcnFjLT5yb290X2RvbWFpbiwKPj4+
Pj4+IGh3aXJxKTsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlycSA9IGly
cV9maW5kX21hcHBpbmcocHJpbWFyeV9pbnRjLT5yb290X2RvbWFpbiwKPj4+Pj4+IGh3aXJxKTsK
Pj4+Pj4+Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBwcl9kZWJ1ZygiaXJxLXhpbGlueDogaHdpcnE9
JWQsIGlycT0lZFxuIiwgaHdpcnEsIGlycSk7Cj4+Pj4+Cj4+Pj4+IEkgaGF2ZSB0aGUgdWdseSBm
ZWVsaW5nIEknbSByZWFkaW5nIHRoZSBzYW1lIGNvZGUgdHdpY2UuLi4gU3VyZWx5IHlvdQo+Pj4+
PiBjYW4KPj4+Pj4gbWFrZSB0aGVzZSB0d28gZnVuY3Rpb25zIGNvbW1vbiBjb2RlLgo+Pj4+Cj4+
Pj4gSSBoYXZlIHNvbWUgcXVlc3Rpb25zIHJlZ2FyZGluZyB0aGlzLgo+Pj4+IEkgaGF2ZSB1cGRh
dGVkIG9uZSBwYXRjaHNldCB3aGljaCBpcyBhZGRpbmcgc3VwcG9ydCBmb3IgTWljcm9ibGF6ZSBT
TVAuCj4+Pj4gQW5kIHdoZW4gSSB3YXMgbG9va2luZyBhdCBjdXJyZW50IHdpcmluZyBvZiB0aGlz
IGRyaXZlciBJIGhhdmUgZGVjaWRlZAo+Pj4+IHRvIGNoYW5nZSBpdC4KPj4+Pgo+Pj4+IEkgaGF2
ZSBlbmFibGVkwqAgR0VORVJJQ19JUlFfTVVMVElfSEFORExFUiBhbmQgSEFORExFX0RPTUFJTl9J
UlEuCj4+Pj4gVGhpcyBkcml2ZXIgY2FsbHMgc2V0X2hhbmRsZV9pcnEoeGlsX2ludGNfaGFuZGxl
X2lycSkKPj4+PiBhbmQgTUIgZG9fSVJRKCkgY2FsbCBoYW5kbGVfYXJjaF9pcnEoKQo+Pj4+IGFu
ZCBJUlEgcm91dGluZSBoZXJlIGlzIHVzaW5nIGhhbmRsZV9kb21haW5faXJxKCkuCj4+Pj4KPj4+
PiBJIHdvdWxkIGV4cGVjdCB0aGF0IHRoaXMgY2hhaW5lZCBJUlEgaGFuZGxlciBjYW4gYWxzbyB1
c2UKPj4+PiBoYW5kbGVfZG9tYWluX2lycSgpLgo+Pj4+Cj4+Pj4gSXMgdGhhdCBjb3JyZWN0IHVu
ZGVyc3RhbmRpbmc/Cj4+Pgo+Pj4gaGFuZGxlX2RvbWFpbl9pcnEoKSBpbXBsaWVzIHRoYXQgeW91
IGhhdmUgYSBzZXQgb2YgcHRfcmVncywgcmVwcmVzZW50aW5nCj4+PiB0aGUgY29udGV4dCB5b3Ug
aW50ZXJydXB0ZWQuIFlvdSBjYW4ndCBmYWtlIHRoYXQgdXAsIHNvIEkgY2FuJ3Qgc2VlIGhvdwo+
Pj4geW91IHVzZSBpdCBpbiBhIGNoYWluZWQgY29udGV4dC4KPj4KPj4gb2suIFdoYXQncyB5b3Vy
IHJlY29tbWVuZGF0aW9uIGZvciBjaGFpbmVkIGNvbnRyb2xsZXI/IEp1c3QgZ28gd2l0aAo+PiBp
cnFfZmluZF9tYXBwaW5nPwo+IAo+IEZvciBub3csIHllcy4gSSBoYXZlIChkaXN0YW50KSBwbGFu
cyB0byBpbXByb3ZlIHRoaXMuCgpUaGFua3MuCk1pY2hhbAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
