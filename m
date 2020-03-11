Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC7A1810B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPc+Q66QKOogpT4Pu6CFuRiTuK7lc4PeyqRPyAf8U0U=; b=s5tj/vbnTLkVSZsFhapwHDBcR
	mW9SqXnBD2Ln+hweJru7q0bRg72H4TYCapbyUn6OMIrmiJjamSmZqBnvDlNab4xMKwWsHE4qV0bGv
	h5IzH6NowbOZpl61Jl76ZgnBMMaUJIw5ymbjnpnTSPvYMDj6tI2azYjO89YKW+XF9MPpCMGTqCkBt
	+OCpr0TxviJVuzljFU0w23AwzfmyRlB6hD8W8fDl9Up/Xsix470T4hLYtYWIxH37C62a3RYnaLgJo
	5lWsWrWQBWKdDkua8FkK53a7c2WcP2V4Qtm47ysbwl4nuNAdSSKQbhEupeDtQ1BfPtRhtA/TtZukP
	L/L2NiTHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuuJ-0004o2-0P; Wed, 11 Mar 2020 06:31:55 +0000
Received: from mail-co1nam11on2137.outbound.protection.outlook.com
 ([40.107.220.137] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuuB-0004ni-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:31:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HDgXapLxg0zrpd0lryGC9UfM42oU3zK5VbK6RVjVfD8H2i1jUKpg6AbR/FB/i+JCFmtGjrwVHSZcDBkJv0fqOIdFj95wa0gEYeYZsGQ2yc5DyXmLsvYqJh7np2PmVKv0qX7gg8ZtzVlHabeX7Rf9twOcYO+mlpzrnzteazYvIssp/0CNsxqFECNhm8r2FWGj3Z8pG6ObFbLnTsMQpXWtzpUxBCAlJBVbQ2sbipDjfNIAg0nzIREX1OfLU/aTl5rRNVCKEK7sa/QojYggxDT1BBpbWWu3ETvYIsQJMpLO5WAKrYZJ3BjWrh/72iS5wJpBbokG4O1RHv5W+Y5/CYgysQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eCkHuTtuAB7yCIUvijeIwLHa0VxHEr37XKHhx1Esa7U=;
 b=jwcFAi0GkWhNQ/bgzREesK5X325iL3vV7CzfeolPrxIQ5VxS5HlgFw/mJ/aP7u5EDr8r+yZoCLj+4BnQvwuslkRey3VBScNMvD8C3qansNrzeOg0ZbVZuP2rUhqpUWwaCU3l2vuPY0yIrH8XPPW4xsnk8RwKMIQ/P9UEZegvBWwquNj+I0gz5aoQ+UQPKXXkT6aZbNe5LUF31rO2dawFaW8J+A8Un7mzOxqedC2ruZf5vJ1eLBNLpQQjjEj13Z8hZXm9/HmxYbu5LrcFMZgKlnVJCYXYT/bxgbsB6tv5yYK4Y5wG0hR3x5gcQ62hXR45j+m7nOvf4SIxCXe6Fr54hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eCkHuTtuAB7yCIUvijeIwLHa0VxHEr37XKHhx1Esa7U=;
 b=iKp/BvxeMF8H7yRMsusZqiveADugnOzIocaLeVxEmXLw5mrH+mTVDddxsxiSq9rWehOhk51jIeIvjeJym82vJJ6Uhn70vifBeuUttB5taX0vhDag77+NaWsBQZ6CeHmxKBR9fhWITZadww1MF1jnSqWrXqCNK0lyS5cyHu3o2LE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from BYAPR01MB5494.prod.exchangelabs.com (2603:10b6:a03:127::30) by
 BYAPR01MB3736.prod.exchangelabs.com (2603:10b6:a02:8d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 06:31:44 +0000
Received: from BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb]) by BYAPR01MB5494.prod.exchangelabs.com
 ([fe80::a979:b2e2:fdaf:1ccb%6]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 06:31:44 +0000
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
From: Hoan Tran <hoan@os.amperecomputing.com>
To: Will Deacon <will@kernel.org>
References: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200206102340.GA17074@willie-the-truck>
 <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
 <32a35685-ff3e-9e5c-f6bb-960dd6f3d1d3@os.amperecomputing.com>
Message-ID: <4d90f400-272c-56a4-9250-d8e238ed78c9@os.amperecomputing.com>
Date: Tue, 10 Mar 2020 23:31:38 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
In-Reply-To: <32a35685-ff3e-9e5c-f6bb-960dd6f3d1d3@os.amperecomputing.com>
Content-Language: en-US
X-ClientProxiedBy: CY4PR1701CA0014.namprd17.prod.outlook.com
 (2603:10b6:910:5e::24) To BYAPR01MB5494.prod.exchangelabs.com
 (2603:10b6:a03:127::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.138] (67.161.31.237) by
 CY4PR1701CA0014.namprd17.prod.outlook.com (2603:10b6:910:5e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Wed, 11 Mar 2020 06:31:41 +0000
X-Originating-IP: [67.161.31.237]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 54d3d8b5-7e54-4460-b40f-08d7c585dd62
X-MS-TrafficTypeDiagnostic: BYAPR01MB3736:
X-Microsoft-Antispam-PRVS: <BYAPR01MB37363369A0BD9FEC7080FE54F1FC0@BYAPR01MB3736.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(199004)(81166006)(186003)(966005)(26005)(31696002)(16576012)(16526019)(316002)(6486002)(31686004)(86362001)(52116002)(107886003)(2616005)(956004)(5660300002)(8936002)(53546011)(6666004)(2906002)(66946007)(66476007)(8676002)(66556008)(4326008)(478600001)(6916009)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB3736;
 H:BYAPR01MB5494.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6agdBnKhgkrFI7Cg/1KNbJOeSJaDTLkfmWlp6zAZ/gKWbflltqe+iDDvy3u+eIX+HgnoFPsCXVMkf0h5K56dKLva2rkMoiIuIlj/OYppZ3p71koblmB88Gc8uFN2kX09Js/ccaLTDJqyRHfr00Rf7mon61U+PrasFBMqSI/PpnBC0QueLFGHYRorQGpnlTAxli+xkIaeo4sWNej2jK7rqb3YqSptRS4IUDAYhPZfxCAyMvUff5hyepxYvbgf7ZmMZ40n9me8d3WP1T7Y2jLQ6Ftjv3Ys8PhkXpLvhWzjadiuxcaXtVbheDqRavCGKxNhRt11p0XTxysGtqOWiPxc7oSxqVt56qkWUTJktbf/VDEEZIOBvhZAZckm16m2mGTdKUwWc1NQui4Bh54QFFt8lfB2MTZNUg0gQmmrzHD+WqH0XAkNkLIeI+Lt4LYeu2oCdu3Ak1R8KXuWJ0rvypaJ3ytboIp3KpU5XKFsotBn2tLwmh5nlxsqLEbRp42MDIVV/ZGIgqu0Uwm3Id6XCE7Mgg==
X-MS-Exchange-AntiSpam-MessageData: usQYdefEjH3XOIq+/4BQB+hLVDSvkDlMKWpoijJlir9M9tIQVyWaZhyu9upwYT9iCEKWiuApPj/K0DzJf7KAVFxXcjxplsf/xhNXPfW3AiTq3lZBT9TfIYaICFSnnZ+VvtHEw+V10PMWT7aHbY3tYA==
X-MS-Exchange-Transport-Forked: True
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d3d8b5-7e54-4460-b40f-08d7c585dd62
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 06:31:43.7936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RQFqhx9YXLV+dwfggihaPUBnrIJWul/Ptq0uKw+8yEPbF1AN9Lkb7IiPQxEf9GXnKyuRlFF1cZtwYhfwbh/4YQHCNu/EEZ6clfA03tgM9cs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB3736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_233147_124397_B7F589E4 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.137 listed in list.dnswl.org]
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

SGkgV2lsbCBhbmQgQWxsLAoKQW55IGNoYW5jZSB5b3UgaGF2ZSB0aW1lIHRvIHRha2UgYSBsb29r
LgoKVGhhbmtzIGFuZCByZWdhcmRzCkhvYW4KCk9uIDIvMjUvMjAgMzoyMCBQTSwgSG9hbiBUcmFu
IHdyb3RlOgo+IEhpIFdpbGwsCj4gCj4gRG8geW91IGhhdmUgYW55IGNvbW1lbnRzPwo+IAo+IFRo
YW5rcwo+IEhvYW4KPiAKPiBPbiAyLzYvMjAgMTI6MDEgUE0sIEhvYW4gVHJhbiB3cm90ZToKPj4g
SGkgV2lsbCwKPj4KPj4gT24gMi82LzIwIDI6MjMgQU0sIFdpbGwgRGVhY29uIHdyb3RlOgo+Pj4g
T24gTW9uLCBGZWIgMDMsIDIwMjAgYXQgMTE6NTU6MTRBTSAtMDgwMCwgSG9hbiBUcmFuIHdyb3Rl
Ogo+Pj4+IFNvbWUgTlVNQSBub2RlcyBoYXZlIG1lbW9yeSByYW5nZXMgdGhhdCBzcGFuIG90aGVy
IG5vZGVzLgo+Pj4+IEV2ZW4gdGhvdWdoIGEgcGZuIGlzIHZhbGlkIGFuZCBiZXR3ZWVuIGEgbm9k
ZSdzIHN0YXJ0IGFuZCBlbmQgcGZucywKPj4+PiBpdCBtYXkgbm90IHJlc2lkZSBvbiB0aGF0IG5v
ZGUuCj4+Pj4KPj4+PiBUaGlzIHBhdGNoIGVuYWJsZXMgTk9ERVNfU1BBTl9PVEhFUl9OT0RFUyBj
b25maWcgZm9yIE5VTUEgdG8gc3VwcG9ydAo+Pj4+IHRoaXMgdHlwZSBvZiBOVU1BIGxheW91dC4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEhvYW4gVHJhbiA8SG9hbkBvcy5hbXBlcmVjb21wdXRp
bmcuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGFyY2gvYXJtNjQvS2NvbmZpZyB8IDcgKysrKysrKwo+
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L0tjb25maWcgYi9hcmNoL2FybTY0L0tjb25maWcKPj4+PiBpbmRleCBl
Njg4ZGZhLi45MzlkMjhmIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZwo+Pj4+
ICsrKyBiL2FyY2gvYXJtNjQvS2NvbmZpZwo+Pj4+IEBAIC05NTksNiArOTU5LDEzIEBAIGNvbmZp
ZyBORUVEX1BFUl9DUFVfRU1CRURfRklSU1RfQ0hVTksKPj4+PiDCoCBjb25maWcgSE9MRVNfSU5f
Wk9ORQo+Pj4+IMKgwqDCoMKgwqAgZGVmX2Jvb2wgeQo+Pj4+ICsjIFNvbWUgTlVNQSBub2RlcyBo
YXZlIG1lbW9yeSByYW5nZXMgdGhhdCBzcGFuIG90aGVyIG5vZGVzLgo+Pj4+ICsjIEV2ZW4gdGhv
dWdoIGEgcGZuIGlzIHZhbGlkIGFuZCBiZXR3ZWVuIGEgbm9kZSdzIHN0YXJ0IGFuZCBlbmQgcGZu
cywKPj4+PiArIyBpdCBtYXkgbm90IHJlc2lkZSBvbiB0aGF0IG5vZGUuCj4+Pj4gK2NvbmZpZyBO
T0RFU19TUEFOX09USEVSX05PREVTCj4+Pj4gK8KgwqDCoCBkZWZfYm9vbCB5Cj4+Pj4gK8KgwqDC
oCBkZXBlbmRzIG9uIEFDUElfTlVNQQo+Pj4+ICsKPj4+Cj4+PiBJIHRob3VnaHQgd2UgYWdyZWVk
IHRvIGRvIHRoaXMgaW4gdGhlIGNvcmUgY29kZT8KPj4+Cj4+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzE1NjI4ODc1MjgtNTg5Ni0xLWdpdC1zZW5kLWVtYWlsLUhvYW5Ab3MuYW1wZXJl
Y29tcHV0aW5nLmNvbSAKPj4+Cj4+Cj4+IFllcywgYnV0IGl0IGxvb2tzIGxpa2UgVGhvbWFzIGRp
ZG4ndCBhZ3JlZSB0byBhcHBseSB0aGlzIHBhdGNoIGludG8geDg2Lgo+Pgo+PiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9sa21sL2FscGluZS5ERUIuMi4yMS4xOTA3MTUyMDQyMTEwLjE3NjdAbmFu
b3MudGVjLmxpbnV0cm9uaXguZGUvIAo+Pgo+Pgo+PiBSZWdhcmRzCj4+IEhvYW4KPj4KPj4+Cj4+
PiBXaWxsCj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
