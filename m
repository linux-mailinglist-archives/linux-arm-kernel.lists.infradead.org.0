Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F5E1E75AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 07:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pQcwqsp3ufUvpSFqznUSRrZGB+zSWmppOjxwK3Bc0AM=; b=dpj5aQlSK+nyN2VY0ufaxP2G9
	OJcrfGkndj8sb0Z15vhRwIi078K2VPPopQJ2DERJocw4ZWhkAd+Z+/Z3gGYw+A4+gJl7RxBWJsuwm
	WkTmaHFpQhZM/ZPbI0+/1yBtJ2pfZaFvdGoJziqCBc+JTLvHGJkFSm1w00kVGNEKEnh2TTd+QH9dg
	WSs7uTS4DOncbcopm3MUaCv4nccLYa/zxRgOquikLSkgNdHqfBEQCmzhxdhdbHRqV9PUQxUTYO6i/
	fuLxPBV3KxaaYsO7exhok+Lm/H8Om15uRhf1/wAniqfiERTQW8Ii1uQzh+QvA6GSxkmzw8bQfILms
	9C0ukraAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeY1F-0007tm-Oz; Fri, 29 May 2020 05:57:25 +0000
Received: from mail-dm6nam10on2070.outbound.protection.outlook.com
 ([40.107.93.70] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeY18-0007tK-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 05:57:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmoBkzwpmR+t7Wgv6TeiY1OZLw3VrIWBFDK6rFW3yAIIJqFZVkgQm8gNLcEox9uncpAUdnnx7mC9zX8snU1SAhMA2eDqUW8XSn1hXg7GvfAB8YywUuKdFyN+zEixb2LuT33DE49Qr1URxffaJzpUZJIKbodfjLK9HhFibqZoPlIHc0TbfrFo5vmMAJ6rrDq/jhAv86988JMuqYwBJOn1K8djePhbOymGUMzLdb07Nse/yzEwZYapp66ZdtucOZvzKlNN3PYLF5rs53KP5r0WPp/ObuqV/+gaK1LaD2Kd6rg4hZOfaSKRKwUZvC7l3XoUAh1+pT3X2UFKaLwr2YyZAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DI3PzH7WGDvXK6XmJ83W6yx2iBhCrAgoVhy//stPaVs=;
 b=j9qB54DdJSFOuwPIZpLSnG4t7zX2TfEJZH0otzLW5cunAvcXuRjvmWDvBdkFrBIxcrpOmvTVpy9Rr8l3v1ZyGc2Ewa5Lh8lWgjcIiP6ijeocP/38kBR9odl9li+2g/3GtQ5NbRSKl8Q+EBLMDMt8Rf1XQ/xgHuvcYgfJ4O6ZN4jHj4ECNr1wZfV8jzZDKaKDnctesuMlwr2jS6NF8vnkjSad1vYvPSgVWyUkY88PM/TBpVl+pAHqsXnGjDgfAYA3Dn6hDMNvbvt5LJEp4DE0WkjQ7LbLFNS053QtGrHq4HJnqsguoc9n9rHPtE9RvfT1e7Qh+x2KgfvpQOXrWf4woQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DI3PzH7WGDvXK6XmJ83W6yx2iBhCrAgoVhy//stPaVs=;
 b=BIQyHVj/IqlDBevbPI72kOnwswpq9SQ6VvOf8wmoh7O+KxvZvzS/Ayby6az62HP4fSqbhWiANyJcu7//EKDEOfCP5M7fLEVbroYHrefvGngFVfylCCwWU6YgVX50jXpO/yN75UrFWnrHQbhcmaX1nc6njSrJ5TK2gZ+mz3Wuk2A=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2747.namprd11.prod.outlook.com (2603:10b6:5:c6::22) by
 DM6PR11MB3756.namprd11.prod.outlook.com (2603:10b6:5:136::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Fri, 29 May 2020 05:57:16 +0000
Received: from DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8]) by DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8%4]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 05:57:16 +0000
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
To: Will Deacon <will@kernel.org>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
 <20200527151928.GC59947@C02TD0UTHF1T.local>
 <cd66a2e4-c953-8b09-b775-d982bb1be47a@windriver.com>
 <20200528075418.GB22156@willie-the-truck>
From: Jiping Ma <Jiping.Ma2@windriver.com>
Message-ID: <f870a6ad-c238-9f6b-f4ad-88fff948a4e5@windriver.com>
Date: Fri, 29 May 2020 13:57:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
In-Reply-To: <20200528075418.GB22156@willie-the-truck>
Content-Language: en-US
X-ClientProxiedBy: HK2PR06CA0009.apcprd06.prod.outlook.com
 (2603:1096:202:2e::21) To DM6PR11MB2747.namprd11.prod.outlook.com
 (2603:10b6:5:c6::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.195] (60.247.85.82) by
 HK2PR06CA0009.apcprd06.prod.outlook.com (2603:1096:202:2e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.18 via Frontend Transport; Fri, 29 May 2020 05:57:12 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9285f58a-8821-485b-b1b3-08d8039523e3
X-MS-TrafficTypeDiagnostic: DM6PR11MB3756:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB3756101297AAF21237452BEDD88F0@DM6PR11MB3756.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ssR5CaCsCtLD6iPfMrrO+Eq38NMS+CR5EGUdLQ6mfb8M3qsV7h7k94ajf4oRd+kAJFozsrsAHKkddkeBzBRL+Y63gYWxAd87kWR/0WApABRrPf1td+Yz+1noxTlvRnJilqhYWj9gcsJUDZnINLPg9T1JT7c76V0O65sqSKFkqcgdSU5FMC9EvsZ7Jl2gTQayzj6EO7K1wJE4E8VPWwjyWEOXBlnhOFLnEbcWid9NCgiMv0nYhGoaq4z+AtJeEVAXkl14INvDC6DCVXwcxP0IYMwDnVzX6JE4sBJ4kBxK2YiKZhkb7cZM9bJdIEeCVx4MA3Jxx/1eC7pQAS3ABcy2L3lQ8GvrpSj3/oiCoUbDrMDHvTaOz5s8KlcLTws5CazbJW9UaeRNrYWs4gP/wl8i737ywAB1KwH/SLFk9dDj9MvJ+z2sSKv0P7p8IQo4z191YBJIYd80wKVUMeJmENVS0g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(376002)(346002)(136003)(39850400004)(4326008)(16576012)(186003)(2906002)(86362001)(478600001)(8936002)(36756003)(6486002)(6916009)(316002)(16526019)(6706004)(66476007)(31686004)(2616005)(66946007)(52116002)(66556008)(26005)(6666004)(31696002)(8676002)(53546011)(956004)(5660300002)(78286006)(15583001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: AQqwNREGuMNLtdiCiqmdsuRIb4uA96rOxcSZS0R0pu+QA7vcVA+0D/Gh6tARPsKFIPy1DsxJEna46FHMQWuMR6U3qHp9BPVm/PvmJ8Tmuq0NdSsskbOLYd0wUYY/x8/SBkw1bLxibJZ5byQgLA4x8p4OszDTPd/1h/OfYn6RKHFh7me3gt8Piaqz4CT26fJig+GniFSDXs7eGHdnvPZzhkzBsEBCIaKZ/Skfb+xuJYDrNrAk2/H706BFC8k8k8DJUkuaXlRVIRfpl7TXUpCwUR7EWxcU3mG0icyGWGIh017FKI5/cTBK8mYILJ/949OnptNu1vGttV3SGHB5iqkfnwaJK3nfONQv0ZnVtMtOrEEEunOkSCuPOyAvIexUIUVaKuWubYFg2EVglJR1UdkH+q96OtKggPFvPhuS7yTvfstbKvRtghPGj3u8uEryaSVtGFADBMhRBvl07/33BQKfDbw92MZnXf6tGY+8FKteOcc=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9285f58a-8821-485b-b1b3-08d8039523e3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 05:57:16.3648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IVjr2kIoezV1HdCuxuK90av9/gJCK+AiJaulvD0INOOgKhKjgWQPUF2QEeHyU35lMliw0L7HoIUzUHVfCwBp3yXOAwV3B135xY16h27iUZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_225718_833746_D1D3E805 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.70 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, zhe.he@windriver.com,
 bruce.ashfield@gmail.com, yue.tao@windriver.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, paul.gortmaker@windriver.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8yOC8yMDIwIDAzOjU0IFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBUaHUsIE1h
eSAyOCwgMjAyMCBhdCAwOTowNjowN0FNICswODAwLCBKaXBpbmcgTWEgd3JvdGU6Cj4+IE9uIDA1
LzI3LzIwMjAgMTE6MTkgUE0sIE1hcmsgUnV0bGFuZCB3cm90ZToKPj4+IE9uIFdlZCwgTWF5IDI3
LCAyMDIwIGF0IDA5OjMzOjAwQU0gKzA4MDAsIEppcGluZyBNYSB3cm90ZToKPj4+PiBPbiAwNS8y
Ni8yMDIwIDA2OjI2IFBNLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgTWF5IDEx
LCAyMDIwIGF0IDEwOjUyOjA3QU0gKzA4MDAsIEppcGluZyBNYSB3cm90ZToKPj4+PiBUaGlzIG1v
ZGlmaWNhdGlvbiBjYW4gbm90IGZpeCBvdXIgaXNzdWUswqAgd2UgbmVlZAo+Pj4+IHBlcmZfcmVn
X2FiaShjdXJyZW50KSA9PSBQRVJGX1NBTVBMRV9SRUdTX0FCSV8zMiB0byBqdWRnZSBpZiBpdCBp
cyAzMi1iaXQKPj4+PiB0YXNrIG9yIG5vdCwKPj4+PiB0aGVuIHJldHVybiB0aGUgY29ycmVjdCBQ
QyB2YWx1ZS4KPj4+IEkgbXVzdCBiZSBtaXNzaW5nIHNvbWV0aGluZyBoZXJlLgo+Pj4KPj4+IFRo
ZSBjb3JlIGNvZGUgcGVyZl9yZWdfYWJpKHRhc2spIGlzIGNhbGxlZCB3aXRoIHRoZSB0YXNrIGJl
aW5nIHNhbXBsZWQsCj4+PiBhbmQgdGhlIHJlZ3MgYXJlIGZyb20gdGhlIHRhc2sgYmVpbmcgc2Ft
cGxlZC4gRm9yIGEgdXNlcnNwYWNlIHNhbXBsZSBmb3IKPj4+IGEgY29tcGF0IHRhc2ssIGNvbXBh
dF91c2VyX21vZGUocmVncykgc2hvdWxkIGJlIGVxdWl2YWxlbnQgdG8gdGhlCj4+PiBpc19jb21w
YXRfdGhyZWFkKHRhc2tfdGhyZWFkX2luZm8odGFzaykpIGNoZWNrLgo+Pj4KPj4+IFdoYXQgYW0g
SSBtaXNzaW5nPwo+PiBUaGlzIGlzc3VlIGNhdXNlZCBieSBQQyB2YWx1ZSBpcyBub3QgY29ycmVj
dC4gcmVncyBhcmUgc2FtcGxlZCBpbiBmdW5jdGlvbgo+PiBwZXJmX291dHB1dF9zYW1wbGVfcmVn
cywgdGhhdCBjYWxsIHBlcmZfcmVnX3ZhbHVlKHJlZ3MsIGJpdCkgdG8gZ2V0IFBDCj4+IHZhbHVl
Lgo+PiBQQyB2YWx1ZSBpcyByZWdzWzE1XSBpbiBwZXJmX3JlZ192YWx1ZSgpIGZ1bmN0aW9uLiBp
dCBzaG91bGQgYmUgcmVnc1szMl0uCj4+Cj4+IHBlcmZfb3V0cHV0X3NhbXBsZV9yZWdzKHN0cnVj
dCBwZXJmX291dHB1dF9oYW5kbGUgKmhhbmRsZSwKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIHU2NCBtYXNrKQo+
PiB7Cj4+ICDCoMKgwqDCoMKgwqDCoCBpbnQgYml0Owo+PiAgwqDCoMKgwqDCoMKgwqAgREVDTEFS
RV9CSVRNQVAoX21hc2ssIDY0KTsKPj4KPj4gIMKgwqDCoMKgwqDCoMKgIGJpdG1hcF9mcm9tX3U2
NChfbWFzaywgbWFzayk7Cj4+ICDCoMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9zZXRfYml0KGJpdCwg
X21hc2ssIHNpemVvZihtYXNrKSAqIEJJVFNfUEVSX0JZVEUpIHsKPj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1NjQgdmFsOwo+Pgo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHZhbCA9IHBlcmZfcmVnX3ZhbHVlKHJlZ3MsIGJpdCk7Cj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcGVyZl9vdXRwdXRfcHV0KGhhbmRsZSwgdmFsKTsKPj4gIMKgwqDC
oMKgwqDCoMKgIH0KPj4gfQo+IFllcywgYnV0IE1hcmsncyBwb2ludCBpcyB0aGF0IGNoZWNraW5n
ICdjb21wYXRfdXNlcl9tb2RlKHJlZ3MpJyBzaG91bGQgYmUKPiBleGFjdGx5IHRoZSBzYW1lIGFz
IGNoZWNraW5nICdwZXJmX3JlZ19hYmkoY3VycmVudCkgPT0gUEVSRl9TQU1QTEVfUkVHU19BQklf
MzInLgo+IEFyZSB5b3Ugc2F5aW5nIHRoYXQncyBub3QgdGhlIGNhc2U/IElmIHNvLCBwbGVhc2Ug
Y2FuIHlvdSBwcm92aWRlIGFuIGV4YW1wbGUKPiBvZiB3aGVuIHRoZXkgYXJlIGRpZmZlcmVudD8K
WWVzLCBjb21wYXRfdXNlcl9tb2RlKHJlZ3MpIGlzIHNhbWUgd2l0aCAncGVyZl9yZWdfYWJpKGN1
cnJlbnQpID09IApQRVJGX1NBTVBMRV9SRUdTX0FCSV8zMicuCkkgdGVzdGVkIGl0LgoKSmlwaW5n
Cj4KPiBMZWF2aW5nIHRoYXQgYXNpZGUgZm9yIGEgc2Vjb25kLCBJIGFsc28gdGhpbmsgaXQncyBy
ZWFzb25hYmxlIHRvIHF1ZXN0aW9uCj4gd2hldGhlciB0aGlzIHdob2xlIGludGVyZmFjZSBpcyBi
dXN0ZWQgb3Igbm90LiBJIGxvb2tlZCBhdCBpdCBsYXN0IG5pZ2h0IGJ1dAo+IHN0cnVnZ2xlZCB0
byB3b3JrIG91dCB3aGF0IGl0J3Mgc3VwcG9zZWQgdG8gZG8uIENvbnNpZGVyIHRoZXNlIHRocmVl
Cj4gc2NlbmFyaW9zLCBhbGwgdW5kZXIgYW4gYXJtNjQga2VybmVsOgo+Cj4gICAgMS4gNjQtYml0
IHBlcmYgKyA2NC1iaXQgYXBwbGljYXRpb24gYmVpbmcgcHJvZmlsZWQKPiAgICAyLiA2NC1iaXQg
cGVyZiArIDMyLWJpdCBhcHBsaWNhdGlvbiBiZWluZyBwcm9maWxlZAo+ICAgIDMuIDMyLWJpdCBw
ZXJmICsgMzItYml0IGFwcGxpY2F0aW9uIGJlaW5nIHByb2ZpbGVkCj4KPiBJdCBsb29rcyBsaWtl
IHRoZSBjdXJyZW50IGNvZGUgaXMgYSBib2RnZSB0byB0cnkgdG8gaGFuZGxlIGJvdGggKDIpIGFu
ZAo+ICgzKSBhdCB0aGUgc2FtZSB0aW1lOgo+Cj4gICAgLSBJbiBjYXNlICgzKSwgdXNlcnNwYWNl
IG9ubHkgYXNrcyBhYm91dCByZWdpc3RlcnMgMC0xNQo+ICAgIC0gSW4gY2FzZSAoMiksIHdlIGZ1
ZGdlIHRoZSBoaWdoZXIgcmVnaXN0ZXJzIHNvIHRoYXQgNjQtYml0IFNQIGFuZCBMUgo+ICAgICAg
aG9sZCB0aGUgMzItYml0IHZhbHVlcyBhcyBhIGJvZGdlIHRvIGFsbG93IGEgNjQtYml0IGR3YXJm
IHVud2luZGVyCj4gICAgICB0byB1bndpbmQgdGhlIHN0YWNrCj4KPiBTbyB0aGUgaWRlYSBiZWhp
bmQgdGhlIHBhdGNoIGxvb2tzIGZpbmUgYmVjYXVzZSBjYXNlICgzKSBpcyBleHBlY3RpbmcgdGhl
IFBDCj4gaW4gcmVnaXN0ZXIgMTUgYW5kIGluc3RlYWQgZ2V0cyAwLCBidXQgdGhlIHRlbXB0YXRp
b24gaXMgdG8gY2xlYW4gdGhpcyB1cCBzbwo+IHRoYXQgY2FzZXMgKDIpIGFuZCAoMykgcmVwb3J0
IHRoZSBzYW1lIGRhdGEgdG8gdXNlcnNwYWNlIChhbG9uZyB0aGUgbGluZXMgb2YKPiBNYXJrJ3Mg
cGF0Y2gpLCBuYW1lbHkgb25seSB0aGUgZmlyc3QgMTYgcmVnaXN0ZXJzIHdpdGggdGhlIFBDIG1v
dmVkIGRvd24uIFdlCj4gY2FuIG9ubHkgZG8gdGhhdCBpZiB0aGUgdW53aW5kZXIgaXMgaGFwcHks
IHdoaWNoIGl0IG1pZ2h0IGJlIGlmIGl0IG9ubHkgZXZlcgo+IGxvb2tzIHVwIGR3YXJmIHJlZ2lz
dGVyIG51bWJlcnMgYmFzZWQgb24gdGhlIHVud2luZCB0YWJsZXMgaW4gdGhlIGJpbmFyeS4KPiBT
b21lYm9keSB3b3VsZCBuZWVkIHRvIGRpZyBpbnRvIHRoYXQuIE90aGVyd2lzZSwgaWYgaXQgZ2Vu
ZXJhdGVzIHVuY29uZGl0aW9uYWwKPiByZWZlcmVuY2VzIHRvIHRoaW5ncyBsaWtlIHJlZ2lzdGVy
IDMwIHRvIGdyYWIgdGhlIGxpbmsgcmVnaXN0ZXIsIHRoZW4gd2UncmUKPiBzdHVjayB3aXRoIHRo
ZSBib2RnZSBhbmQgbmVlZCB0byBzcGVjaWFsLWNhc2UgdGhlIFBDLgo+Cj4gVGhvdWdodHM/Cj4K
PiBXaWxsCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
