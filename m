Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1E116F31A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y53fsmybppwUn/UUub0ec9d+MOnH0jXs+u//jVCe//o=; b=ZAuvqid+2yUCT/lJMsvaROmdz
	6Yzvw8h5MJRqD01kbxYo/7F5T/zYDVAZOE5MBWNaSS58GfU+pI0UGgGazt0RviXzVp7hsF2VfwggP
	jfZQK2d5NDqn2faYU2LKx8fOVJPP5sWcOLIJtBEA39a6TUdgEM8yW1Vl73VbbzgxZsBDtdjjHaSXj
	kN23k5Gvi9HpGqH6uGrwdCUOgcz4gs8vu8EmZNLcywc/iHAl1K7NzndcTHRyfiZYPGd5DIg1aiYJ7
	nzADQCkVhd6lkDa2vG1mty9/ay3aMao4c+Rx/XQ7QeZ19apq7hzpq7R8gkaqwBV9eXOrvX4Vv/yD4
	Ombz7Z9aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6jVw-0006si-JF; Tue, 25 Feb 2020 23:21:20 +0000
Received: from mail-co1nam11on2098.outbound.protection.outlook.com
 ([40.107.220.98] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6jVn-0006rA-4Y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:21:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=frPTy1eZwrZp9/shrmamzDEGjH5KybXFvqqzuguct+b7Gnj+mO1LUREIESQJcRiFkRufRaLSWbEGvymy/WE9wLMKD7ShNyavU3nGsQEZNKRJYZPhACL2uXQ2n6D7+uhHfgGXQI9hJlsuAJsD+QhgHaejbRydX6xGbRXDXkjhKHsX0Ybox4d2O20lJW9A3yGqdcuNb3b8Ja97C/AFpo5sVyMnK3yeW/beTFUupD6GJMews74HpmEQc2+Deaunn/or6WQpbeFtiBgk2M2QgfKuV8w5vwMUuBbEgeaHWvuhTNnCm7QywZl9LTKESqblXeQN4Xc5nFmW2Y07WtUbBH6rLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxvH5j3TGZCWq3GPheR1ntpAz8ujFy2EcIsfKhx1jOQ=;
 b=MBZw8g8r4rURh0iqVawdYk2jjHk3VdddflY0N0x4Bcj8i0aTJDyaWIUJ4ekeKMHMCc9B+mdTzMEmC3LLn8967Tc/nWerrAoWyTxoEV4QRuicWpzOygEXg3p/oI42t888sUMW7C1OsGmR9ejuKkLUCGjjmRnPNCOtvze06Qf2fbzyVIzXvSHtcNHGoWFsZb7MFIGgY66WG6LZpKFvSh6jXFjp6uM0mUqW83rmMEcXgl3x70e0LigSLpMNpUZT9uh6CjMjkB5vcw37Rmkbr/sPc+ISpLBFLU+uqDnk2VuXnfDRbQ56AiXOh9VB05VBbgt1xuFjpURcWbcwqXN4zuIYPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxvH5j3TGZCWq3GPheR1ntpAz8ujFy2EcIsfKhx1jOQ=;
 b=Ie3SKVn3B1OTyicDkCbQyBP34ET6VQkK9eU3vof8M4Gv8kfDCgHayVitA54msL7hh49IXbXVESAdmfj4E9jy2mDLz7BisNbNcWMNy2I4PJsCgQ4d02ieT4bSQgd3Nwp1pgSGggf2HpCoAu9BO2xC118VezHk5h6dIV5JkiScGU0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from SN6PR01MB4094.prod.exchangelabs.com (2603:10b6:805:a4::23) by
 SN6PR01MB5165.prod.exchangelabs.com (2603:10b6:805:c3::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 23:21:03 +0000
Received: from SN6PR01MB4094.prod.exchangelabs.com
 ([fe80::603d:70c0:63c3:9734]) by SN6PR01MB4094.prod.exchangelabs.com
 ([fe80::603d:70c0:63c3:9734%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 23:21:02 +0000
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
From: Hoan Tran <hoan@os.amperecomputing.com>
To: Will Deacon <will@kernel.org>
References: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200206102340.GA17074@willie-the-truck>
 <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
Message-ID: <32a35685-ff3e-9e5c-f6bb-960dd6f3d1d3@os.amperecomputing.com>
Date: Tue, 25 Feb 2020 15:20:59 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
In-Reply-To: <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
Content-Language: en-US
X-ClientProxiedBy: CY4PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:903:99::19) To SN6PR01MB4094.prod.exchangelabs.com
 (2603:10b6:805:a4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.76.34.152] (4.28.12.214) by
 CY4PR13CA0033.namprd13.prod.outlook.com (2603:10b6:903:99::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.9 via Frontend Transport; Tue, 25 Feb 2020 23:21:01 +0000
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a545b3d2-95ad-4918-8189-08d7ba496114
X-MS-TrafficTypeDiagnostic: SN6PR01MB5165:
X-Microsoft-Antispam-PRVS: <SN6PR01MB5165F04AD4BD27B7E5246479F1ED0@SN6PR01MB5165.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(39840400004)(346002)(376002)(366004)(189003)(199004)(316002)(956004)(6486002)(66556008)(52116002)(107886003)(5660300002)(2616005)(81166006)(8676002)(8936002)(66476007)(86362001)(2906002)(31696002)(66946007)(4326008)(31686004)(53546011)(966005)(16576012)(16526019)(81156014)(6916009)(478600001)(26005)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR01MB5165;
 H:SN6PR01MB4094.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HFG/2yMfjKwQ2FKmktNC5vXGLum3Uj90cHeJTARfRD9XB7AGvuOHNLqK4XT/VgAoMqeP0TTaqFQrkhepx8iaiINldWIDtlSxLxygoaJmXVNPzwdtXf+vWhtZL+lPgSLG/FN2bzfD/P5kl2E+ddMgO4oWKn++EtCWUVvqflz8kX7pXioNpXCkuJmcCbREtuDpAXCnWwq3r7h2rnQZ8EmXomvjItbFbtxBKJSjMuxULXcvGLrrX4X9JhBifmxkTKUTHJhG/FTxXdvYOUK54Smtzpi3YD6JKf2qIFnRtzSeprU29Jqpis4qRgxYanoXPCtsgzU7A5GvNNZlP6wexsvpUjTPspKc8o4EguL8OdAeATYXd0bw+OvycAzzy/WP+x/snHUjO4IN84XeIn+Z3hzkGq43xE2YE5I4fHIXzCxK5I0ZCCURu+j3lRZxnvmPjAhZLEjyi4ajI99DYK0ZZpY/hVy0wf0oCOwqc4KfRxvF+m/KDxjDr5Vq7MoZp4jHYrHxRdRquaFGg+izNr3kpqiZgQ==
X-MS-Exchange-AntiSpam-MessageData: jbp0C+4beStZMSbdJgomEvfbZOYPgtTAa8C88JlmBbEF1vCZglFBPD7PXzxiBX375EsOJQZ8dd8HekM0G+iOoV6Zh2vjBFrITgOb5Zoq3ole44Rq2ajep7ilVisxXgTElx7tWKc2pWdkLzg5CohWwQ==
X-MS-Exchange-Transport-Forked: True
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a545b3d2-95ad-4918-8189-08d7ba496114
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 23:21:02.6243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXwHPWSfTt5ToBpBgVo7p4qw2NnLpodkiSyLrA9DpE9DZpP4iAYZz6BgF6IB3LNHS/h+h7oguszHeJ9REfDqqHX/wEWh/HCJ5Cl18CIs5nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB5165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_152111_214597_03F1D67C 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: amperecomputing.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.98 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, patches@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbCwKCkRvIHlvdSBoYXZlIGFueSBjb21tZW50cz8KClRoYW5rcwpIb2FuCgpPbiAyLzYv
MjAgMTI6MDEgUE0sIEhvYW4gVHJhbiB3cm90ZToKPiBIaSBXaWxsLAo+IAo+IE9uIDIvNi8yMCAy
OjIzIEFNLCBXaWxsIERlYWNvbiB3cm90ZToKPj4gT24gTW9uLCBGZWIgMDMsIDIwMjAgYXQgMTE6
NTU6MTRBTSAtMDgwMCwgSG9hbiBUcmFuIHdyb3RlOgo+Pj4gU29tZSBOVU1BIG5vZGVzIGhhdmUg
bWVtb3J5IHJhbmdlcyB0aGF0IHNwYW4gb3RoZXIgbm9kZXMuCj4+PiBFdmVuIHRob3VnaCBhIHBm
biBpcyB2YWxpZCBhbmQgYmV0d2VlbiBhIG5vZGUncyBzdGFydCBhbmQgZW5kIHBmbnMsCj4+PiBp
dCBtYXkgbm90IHJlc2lkZSBvbiB0aGF0IG5vZGUuCj4+Pgo+Pj4gVGhpcyBwYXRjaCBlbmFibGVz
IE5PREVTX1NQQU5fT1RIRVJfTk9ERVMgY29uZmlnIGZvciBOVU1BIHRvIHN1cHBvcnQKPj4+IHRo
aXMgdHlwZSBvZiBOVU1BIGxheW91dC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBIb2FuIFRyYW4g
PEhvYW5Ab3MuYW1wZXJlY29tcHV0aW5nLmNvbT4KPj4+IC0tLQo+Pj4gwqAgYXJjaC9hcm02NC9L
Y29uZmlnIHwgNyArKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvS2NvbmZpZyBiL2FyY2gvYXJtNjQvS2Nv
bmZpZwo+Pj4gaW5kZXggZTY4OGRmYS4uOTM5ZDI4ZiAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
NjQvS2NvbmZpZwo+Pj4gKysrIGIvYXJjaC9hcm02NC9LY29uZmlnCj4+PiBAQCAtOTU5LDYgKzk1
OSwxMyBAQCBjb25maWcgTkVFRF9QRVJfQ1BVX0VNQkVEX0ZJUlNUX0NIVU5LCj4+PiDCoCBjb25m
aWcgSE9MRVNfSU5fWk9ORQo+Pj4gwqDCoMKgwqDCoCBkZWZfYm9vbCB5Cj4+PiArIyBTb21lIE5V
TUEgbm9kZXMgaGF2ZSBtZW1vcnkgcmFuZ2VzIHRoYXQgc3BhbiBvdGhlciBub2Rlcy4KPj4+ICsj
IEV2ZW4gdGhvdWdoIGEgcGZuIGlzIHZhbGlkIGFuZCBiZXR3ZWVuIGEgbm9kZSdzIHN0YXJ0IGFu
ZCBlbmQgcGZucywKPj4+ICsjIGl0IG1heSBub3QgcmVzaWRlIG9uIHRoYXQgbm9kZS4KPj4+ICtj
b25maWcgTk9ERVNfU1BBTl9PVEhFUl9OT0RFUwo+Pj4gK8KgwqDCoCBkZWZfYm9vbCB5Cj4+PiAr
wqDCoMKgIGRlcGVuZHMgb24gQUNQSV9OVU1BCj4+PiArCj4+Cj4+IEkgdGhvdWdodCB3ZSBhZ3Jl
ZWQgdG8gZG8gdGhpcyBpbiB0aGUgY29yZSBjb2RlPwo+Pgo+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzE1NjI4ODc1MjgtNTg5Ni0xLWdpdC1zZW5kLWVtYWlsLUhvYW5Ab3MuYW1wZXJl
Y29tcHV0aW5nLmNvbSAKPj4KPiAKPiBZZXMsIGJ1dCBpdCBsb29rcyBsaWtlIFRob21hcyBkaWRu
J3QgYWdyZWUgdG8gYXBwbHkgdGhpcyBwYXRjaCBpbnRvIHg4Ni4KPiAKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sL2FscGluZS5ERUIuMi4yMS4xOTA3MTUyMDQyMTEwLjE3NjdAbmFub3Mu
dGVjLmxpbnV0cm9uaXguZGUvIAo+IAo+IAo+IFJlZ2FyZHMKPiBIb2FuCj4gCj4+Cj4+IFdpbGwK
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
