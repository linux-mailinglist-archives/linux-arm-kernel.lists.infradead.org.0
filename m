Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EA97C4C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V701tWK7tWkxYz3gZADTor2OzUVF0qOE1IHW/YL08Z4=; b=jBi1w9He/k69bQgFSyldR+K2bY
	XpKmb4Eans/5kpytH2J2JelFijh4NXvJGR13/42U3qr3QAodbElAKuGfZofrgsFkrBpUGhScbHF/p
	r9dprlPo5EEkO3A9D84l+mGDITC37X4+M7QtZOERK8iZi5vaobHk1qk1Yc4eAniQ14tJUboJN38rs
	rBTcMT+rzuOwkYtEQgEu9UYYE9ooShwqekKbRcu8y6sU5TTnFNFzWoK0ZM+S8gupGbECfTd77HoA2
	FJtxjW1e/097WO/84aYxO+VRlu1EiMO+22xqQQsxrBgWXfIUSO68tN05pdM48l3bkYZLF6xAPfqC7
	kQavnT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspUg-0004Q3-6d; Wed, 31 Jul 2019 14:22:18 +0000
Received: from mail-eopbgr810087.outbound.protection.outlook.com
 ([40.107.81.87] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspUK-0003uo-0F
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:21:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9w0DR6kbQZw7o6vhQCCkezcXTByJkyvzmpzNb00InnMrPtOV/3pjhj6p0qkreMDTXtoB1a+n6Fj2CVLDAjfN4C42bOvDJEgvaZ7auW6JhZBMLvsMU8KQFpO+PZFM+/4sudNOBydwt+vJ82+qGdGzdoy6jM6JbxTk1+Ci//faedDfAlAB13bU0zMp5mSGILaYw8PzdXPpSTxmTaC7fOw+wFYaUUDHVzc1isWnAq7barBE/4+DJIDj3AAyEjc5aOTOkKUxgIjaQ17l4z+cDUyT/lviMY7fIDG/rdibLsDAD5BZu+a54Vjn/bnuBnpH/a3y3z4KlgeglYepYroVTcTlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xuc7nMtsOHKN1fSsmKu6JYkIM6fxecETTtn6dneZuT4=;
 b=fwXOBfeMwW1/fN7BPd3/p2wKNsdFDdzVrvOdIygBVm3T7ssTFhX7kIXoci1hw9gnWBGeTKHiIYiFvSj9mTan53jFTkPtlQj+ynJb0TTW2psmc4xfHj0nbFB81no+/S4h/8EaBHirZ/j1wCXNBHyUX/dtLqQw0w0YLdZKn7uj9blPv9aN07OqLf0vwElJAUpgBrB+Ql3y4vlnlAGVYab8DXoo1rDnQB+Nwc9zyD7PL1v+M8vx1JUpU1XB0FxPLTEQiJUbSPUzxjmDqBo3uJN4lMTswbTql0CAjeKDEw6a/3P1195nBQqPrSEPRzgMgBn2gc+W4y2DA3OAw1NAohzhNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xuc7nMtsOHKN1fSsmKu6JYkIM6fxecETTtn6dneZuT4=;
 b=oL1OUoYbJEbTSNwGQbkOmCTPk8GQrV86T3ALDZeLoi0GfEosnfxxS5mwdlVVuGDIwMfpAQvZVJplDgJFuXXqnvIR6AssCMgDEm2G6Jz2jBgwlVX3vLLblRAn3AHopDi683AW3EX/nm216YnGf4i6eVuA9lRhTeNv3qd+sxtxXN4=
Received: from DM6PR02CA0020.namprd02.prod.outlook.com (2603:10b6:5:1c::33) by
 SN6PR02MB4768.namprd02.prod.outlook.com (2603:10b6:805:90::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 14:21:54 +0000
Received: from BL2NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by DM6PR02CA0020.outlook.office365.com
 (2603:10b6:5:1c::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.16 via Frontend
 Transport; Wed, 31 Jul 2019 14:21:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT008.mail.protection.outlook.com (10.152.76.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2115.10
 via Frontend Transport; Wed, 31 Jul 2019 14:21:53 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hspUF-00007h-QE; Wed, 31 Jul 2019 07:21:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hspUA-0001nF-O8; Wed, 31 Jul 2019 07:21:46 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x6VELatv030283; 
 Wed, 31 Jul 2019 07:21:36 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hspTz-0001mf-US; Wed, 31 Jul 2019 07:21:36 -0700
Subject: Re: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
To: Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190709172841.13769-1-nishkadg.linux@gmail.com>
 <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
 <6a5306bd-946d-383f-0b42-f17675c24218@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <c0be80c9-16ef-fe03-ae3b-a7d3d1a2ede8@xilinx.com>
Date: Wed, 31 Jul 2019 16:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6a5306bd-946d-383f-0b42-f17675c24218@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(2980300002)(189003)(199004)(8936002)(70586007)(31696002)(36756003)(229853002)(446003)(14444005)(426003)(65826007)(11346002)(478600001)(47776003)(336012)(305945005)(50466002)(44832011)(126002)(476003)(486006)(2616005)(58126008)(110136005)(65806001)(316002)(65956001)(356004)(36386004)(106002)(81166006)(5660300002)(26005)(63266004)(53546011)(64126003)(52146003)(8676002)(186003)(81156014)(23676004)(2486003)(6246003)(2870700001)(9786002)(70206006)(15650500001)(31686004)(76176011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4768; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac43783c-3db8-4527-2639-08d715c26f57
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB4768; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4768:
X-Microsoft-Antispam-PRVS: <SN6PR02MB47686428574BF7EABCB9D935C6DF0@SN6PR02MB4768.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 011579F31F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 4gjmQrn0k49pBxD/QGYhwjP9BlEc0nrK9lx3N/rmSgrqCue81ml9lDCCm2Oiy1BPkZQaYACUaoZz56cxLuwgcTihxrURZgYHrK9Dh79JBMWYtBCwB1iKzquH9V5hs21XTko9qm/Tc+NFweL7jEfEhHR/X3oETghvNlUdfUHiedl0oGw3sjAOeR0RuNj4jy8HDuzcF7ACVBI3LdSmVAHUK6oFeDZNUpGg7Hj7d+zwHLWqB+sC7HdLltq4Smvi2JfcgImAYRx3kfloU6i6XLs6okFMLnNVJNl0C1exAyJFX2tVaWZFgas1z7No2k2eve/9ppsZPQ0r9xIo1Yis3F+HtAe/oHArY92RhLXyG2TU3O0KaPj5uFfIq8Avof3ZxkUKgOyK6DB16B9mnDoYwj/owpwsdEkeK7NyfPMqKp4wkKs=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2019 14:21:53.0224 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ac43783c-3db8-4527-2639-08d715c26f57
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4768
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_072156_095914_006D7887 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.87 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEuIDA3LiAxOSAxNTowNiwgTmlzaGthIERhc2d1cHRhIHdyb3RlOgo+IE9uIDMxLzA3LzE5
IDI6MDEgUE0sIE1pY2hhbCBTaW1layB3cm90ZToKPj4gT24gMDkuIDA3LiAxOSAxOToyOCwgTmlz
aGthIERhc2d1cHRhIHdyb3RlOgo+Pj4gRWFjaCBpdGVyYXRpb24gb2YgZm9yX2VhY2hfYXZhaWxh
YmxlX2NoaWxkX29mX25vZGUgcHV0cyB0aGUgcHJldmlvdXMKPj4+IG5vZGUsIGJ1dCBpbiB0aGUg
Y2FzZSBvZiBhIGdvdG8gZnJvbSB0aGUgbWlkZGxlIG9mIHRoZSBsb29wLCB0aGVyZSBpcwo+Pj4g
bm8gcHV0LCB0aHVzIGNhdXNpbmcgYSBtZW1vcnkgbGVhay4gSGVuY2UgYWRkIGFuIG9mX25vZGVf
cHV0IGJlZm9yZSB0aGUKPj4+IGdvdG8uCj4+PiBJc3N1ZSBmb3VuZCB3aXRoIENvY2NpbmVsbGUu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTmlzaGthIERhc2d1cHRhIDxuaXNoa2FkZy5saW51eEBn
bWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxi
b3guYyB8IDEgKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxib3guYwo+Pj4gYi9k
cml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94LmMKPj4+IGluZGV4IDg2ODg3YzlhMzQ5
YS4uYmQ4MGQ0YzEwZWMyIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tYWlsYm94L3p5bnFtcC1p
cGktbWFpbGJveC5jCj4+PiArKysgYi9kcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94
LmMKPj4+IEBAIC02NjEsNiArNjYxLDcgQEAgc3RhdGljIGludCB6eW5xbXBfaXBpX3Byb2JlKHN0
cnVjdAo+Pj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChyZXQpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiZmFp
bGVkIHRvIHByb2JlIHN1YmRldi5cbiIpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0ID0gLUVJTlZBTDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KG5j
KTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZnJlZV9tYm94X2RldjsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWJveCsrOwo+Pj4K
Pj4KPj4gUGF0Y2ggaXMgZ29vZCBidXQgd2hlbiB5b3UgYXJlIHNheWluZyB0aGF0IHRoaXMgd2Fz
IGZvdW5kIGJ5IENvY2NpbmVsbGUKPj4gdGhlbiBpdCBzaG91bGQgYmUgYWRkZWQgYXMgc2NyaXB0
IHRvIGtlcm5lbCB0byBkZXRlY3QgaXQuCj4gCj4gVGhpcyBwYXJ0aWN1bGFyIHBhdGNoIHdhcyBz
dWdnZXN0ZWQgYnkgYSBzY3JpcHQgSSBkaWQgbm90IHdyaXRlIG15c2VsZjsKPiBzb21lb25lIGVs
c2Ugd3JvdGUgaXQgYW5kIHNlbnQgaXQgdG8gbWUuIEhvdyBzaG91bGQgSSBwcm9jZWVkIGluIHRo
aXMgY2FzZT8KCllvdSBjYW4gYXNrIGhpbSB0byBzdWJtaXQgaXQgdG8ga2VybmVsLgpPciB5b3Ug
Y2FuIHRha2UgaXQsIGtlZXAgaGlzIGF1dGhvcnNoaXAgYW5kIHNlbmQgaXQgdG86CgouL3Njcmlw
dHMvZ2V0X21haW50YWluZXIucGwgLWYgc2NyaXB0cy9jb2NjaW5lbGxlLwpKdWxpYSBMYXdhbGwg
PEp1bGlhLkxhd2FsbEBsaXA2LmZyPiAoc3VwcG9ydGVyOkNPQ0NJTkVMTEUvU2VtYW50aWMKUGF0
Y2hlcyAoU21QTCkpCkdpbGxlcyBNdWxsZXIgPEdpbGxlcy5NdWxsZXJAbGlwNi5mcj4gKHN1cHBv
cnRlcjpDT0NDSU5FTExFL1NlbWFudGljClBhdGNoZXMgKFNtUEwpKQpOaWNvbGFzIFBhbGl4IDxu
aWNvbGFzLnBhbGl4QGltYWcuZnI+IChzdXBwb3J0ZXI6Q09DQ0lORUxMRS9TZW1hbnRpYwpQYXRj
aGVzIChTbVBMKSkKTWljaGFsIE1hcmVrIDxtaWNoYWwubGttbEBtYXJrb3ZpLm5ldD4gKHN1cHBv
cnRlcjpDT0NDSU5FTExFL1NlbWFudGljClBhdGNoZXMgKFNtUEwpKQpjb2NjaUBzeXN0ZW1lLmxp
cDYuZnIgKG1vZGVyYXRlZCBsaXN0OkNPQ0NJTkVMTEUvU2VtYW50aWMgUGF0Y2hlcyAoU21QTCkp
CmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcgKG9wZW4gbGlzdCkKClRoYW5rcywKTWljaGFs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
