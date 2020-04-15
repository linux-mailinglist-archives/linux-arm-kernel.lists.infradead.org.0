Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCD41A9AF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhmkNcJVwv2yIag0rBsI5xriaNKVFpbtxnZ7XMMJFdY=; b=JTQepFtZkxuvBg
	xEsxBplG7amZIk+UECuKEjiYBuqet7aip+bnsVDq3Y24mUivCyFBmTJWyEYJZSnsLfLS3jjcOPhm5
	2wskbxg7WgkCyfAxWz+SwBcjSLfXPPUUqLbQX35yClhM93G2pisPJqC6ojg6BdBtt0IcsG7iMv/l0
	GbeySs4/S7R3b8FpvbEmXk8MDZpAB9HiXUx5LlTtID+jw8OP4kDo6//YxKz1CnFQeDUv1jpXmEJBJ
	UcvXOQYZqhelVsfLTiL1ueJ+D4e5ol1LCK1Nb2PqBoyFG2ynL6RSm07xBEpxvqFdL3rXQEt9QPv47
	rdCCAoNF1xXUwcDA3HKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfSw-0000WL-Jn; Wed, 15 Apr 2020 10:40:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfSn-0000NY-5P
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:40:15 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200415104011euoutp0228b51f7a269f1c0222bebc464361b178~F_BS0Nr7g1671316713euoutp02H
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:40:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200415104011euoutp0228b51f7a269f1c0222bebc464361b178~F_BS0Nr7g1671316713euoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586947211;
 bh=ilbWDGWbaRmexJKmcC9EJmUzad9wnDBQcm71APgXbnk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=qdwRsKTSNMK1fAZXMy5zYYLm50MlaZ/u/e/tTTHag0EDTTg02uhHDLQWhwt/AIi1v
 pukbWAo6DDMEg4veEhwcyZuiZvTV2WwAA8oql3nGwWVmSyal8zmuobqReRSJl9a1Qn
 DEIdcR7gnv/HZbkUFZb5xbssMTxpYEX7q1XoNS70=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200415104011eucas1p237a10ec69b125ca05daa8bfa24607cd2~F_BSiSR-B0638006380eucas1p2G;
 Wed, 15 Apr 2020 10:40:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F4.66.60679.B84E69E5; Wed, 15
 Apr 2020 11:40:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122~F_BSNbnvX2212922129eucas1p1F;
 Wed, 15 Apr 2020 10:40:10 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200415104010eusmtrp284c0e1fa3491e3a5d7df659fc36fcdcc~F_BSMVzis0073600736eusmtrp2y;
 Wed, 15 Apr 2020 10:40:10 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-7b-5e96e48b1b50
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 79.23.07950.A84E69E5; Wed, 15
 Apr 2020 11:40:10 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200415104009eusmtip14f72f942ba7857a4c5f586d41e0a2cc9~F_BRLVgds1086210862eusmtip1I;
 Wed, 15 Apr 2020 10:40:09 +0000 (GMT)
Subject: Re: [RFC 0/8] Stop monitoring disabled devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <dc999149-d168-0b86-0559-7660e0fdec77@samsung.com>
Date: Wed, 15 Apr 2020 12:40:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <aeec2ce8-8fb9-9353-f3dd-36a476ceeb3b@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTZxjG8507uOrnAeWNSkYaNREzYcPoF3UGMpeczET3z9QQL3RyhmS0
 mh7A6R+bGwpY5wUnt0o2EFNajIAFkXKpE6ZlkRXES7yA0lFdcRadqBMjKIcjkf+ePM/7+97n
 TT6BFt3cLCHVlC6bTYY0PRfK1F8a7vzogL9gc2z2BZ442kcZ8r93mCK2/rsMOVr0hia/DkWS
 ks69DLGUxRLf9bUke6iIIb7fPyO3fmyiSEkgk9R6f2ZJZb6LIS5fkCMV7sOIOPtvsMTyykGT
 oYN/IHKpdCbp6tpITjUHaNJxuZslft8hjoycczIkUBdBWvZdoUmtM5+OnyM19J5EUp3jFiXZ
 n8ZILmsvL9Xao6Xy5gFKclbu56SeG82cNOj1jvknf5D+e+TnpQeFbZR05EmQk84MNlDS4ZFY
 6eXVR+yXYYmhK5LltNRM2RyzMil0m7to7o6L+LuSe4XsHtSgs6AQAfBicJy30RYUKojYjqDJ
 /oRSAxE/Q/CyI00LhhD09bfTE0TZtcZ3RAWCY/sHOI0IIrAHNqk6DC+F4522cT8cx8FwfZBX
 ARq/4OH++X8YNeDwMsjLqUSq1uGVUPzT87FXBYHB86A2a5pqz8Ab4GlfG6uNTIc/i/3jaAhO
 gH+7u3hV0zgCbvt/ozT9IWSdPT5eDvCBELhZUExprVfBtb1NrKbD4KGnjtf0HHjjUmEVqEIw
 kht4R59DUPHLKKdNLYce7ytObUfjBVDdGKPZCXCxo4pXbcBT4WZwulZiKhytL6Q1Wwe52aI2
 PR9qbDXcxFqLy0EfQXrrpNOsk86xTjrH+n5vKWIqUYScoRhTZOUTk7xzkWIwKhmmlEVbtxud
 aOxXXx71PGtAja+/bkVYQPoPdFHV+ZtF1pCp7DK2IhBofbiu2jhm6ZINu3bL5u1bzBlpstKK
 ZguMPkIXd2Jgk4hTDOnyt7K8QzZPpJQQMmsP2j1i7Lggjya618d9PqUndfX1aVH+Y1VW0ZP1
 ouyLb5JbHnYnPfZFpeftG2aXD65jok8Hvkoqt4t1kUX9oscUl/N6yhXm70/L18U0r6ox3NMV
 5PN385Z1KbY1iUu2bpgbn+PpQ21rZvz1+GB7fGxp+Iry503u7/2R7Z47BQsTelvoXD2jbDN8
 HE2bFcNbHona49EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRiH+XbOzqa1Ok3NDzWLUQlF07mtfYtaVhQnsuyCUdlt6EEtt9k5
 U7KC1MzqkJmVtyWmdNNVRNNslkmpqVEsL2UoWYojFS9YFqZ4aUsD/3v4vb+HlxdeISZu5HsJ
 o/VGmtFrYySEK/5usq59FWfPOhzwqN4fFddP4mjENspD97q+4uhazhSG8ocXobwPKTjiCgNQ
 56cQlDqcg6POV5tQa9ILHsrriUcltst8ZM4sx1F55wCB7lemA2TpauEjbqwYQ8NpNQDVFixE
 DQ0H0YOKHgy9f9fER/bOKwSaeGbBUU+pJ3p5vhFDJZZMLMiHsrbfAVRpcSuPKvrpT5Wb2gVU
 SdEK6nZFL4+ymC8R1JeWCoIatNkc+Z2z1I9+u4D6nl3No64ODRDUk0Erj0qfCKD+NPfzd7od
 kK5lDHFGekmUgTWuk4TJUKBUpkbSQIVaKpOrDq0JVEr8NWsj6JjoeJrx1xyVRlXmLI19Q57M
 +5bNTwRWEQdchJBUwMKPzzEOuArF5F0Aa7L6CQ4IHQMfWPc4frrjBsdbOGK60wdg9+AU3zlw
 I1Xw5od7hJPdSTkcLRsQOEsY+UcAr3T9mjHuA2h5MPLPIMg1MOOCGThZRGpgbvJvzLkNJ5fB
 knPznbEHuQ9WW00zlQXwba4dd7ILuQH2NTUInIyRfnA8vwmbZk/YZr/Fm+bF8NzTm9hVIDbN
 0k2zFNMsxTRLKQC4GbjTcawuUscGSlmtjo3TR0rDDToLcLxTWe1oqRVwg3uqACkEkrmi+oeZ
 h8V8bTyboKsCUIhJ3EWPdY5IFKFNOEUzhiNMXAzNVgGl47YMzMsj3OB4Tr3xiEwpUyG1TCVX
 yVcjiafoIvn6oJiM1Brp4zQdSzP/PZ7QxSsRZFwOHWhL0+d694d4DgWEZjHbolZiY/vXf05I
 3Rqs2cs2zHu4N/V6h+8ThZpI37JjpGNzgbpXHs5tjvY+U6dU7G/bjd9W+DG+Sbn4dltdiPvz
 7aLTOcneldY5J7RcypaMG081x8K8d3klhprVk2kbK1OS8aEg340jG5rnLu+epwyW4GyUVrYC
 Y1jtX4N//AhkAwAA
X-CMS-MailID: 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122
X-Msg-Generator: CA
X-RootMTR: 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122
References: <20200407174926.23971-1-andrzej.p@collabora.com>
 <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <aeec2ce8-8fb9-9353-f3dd-36a476ceeb3b@collabora.com>
 <CGME20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_034013_433205_5FDED483 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDQvOS8yMCAxOjEwIFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4gSGkgRGFu
aWVsLAo+IAo+IFcgZG5pdSAwOS4wNC4yMDIwIG/CoDEyOjI5LCBEYW5pZWwgTGV6Y2FubyBwaXN6
ZToKPj4gT24gMDcvMDQvMjAyMCAxOTo0OSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+
Pj4gVGhlIGN1cnJlbnQga2VybmVsIGJlaGF2aW9yIGlzIHRvIGtlZXAgcG9sbGluZyB0aGUgdGhl
cm1hbCB6b25lIGRldmljZXMKPj4+IHJlZ2FyZGxlc3Mgb2YgdGhlaXIgY3VycmVudCBtb2RlLiBU
aGlzIGlzIG5vdCBkZXNpcmVkLCBhcyBhbGwgc3VjaCAiZGlzYWJsZWQiCj4+PiBkZXZpY2VzIGFy
ZSBtZWFudCB0byBiZSBoYW5kbGVkIGJ5IHVzZXJzcGFjZSw+IHNvIHBvbGxpbmcgdGhlbSBtYWtl
cyBubyBzZW5zZS4KPj4KPj4gVGhhbmtzIGZvciBwcm9wb3NpbmcgdGhlc2UgY2hhbmdlcy4KPj4K
Pj4gSSd2ZSBiZWVuIChxdWlja2x5KSB0aHJvdWdoIHRoZSBzZXJpZXMgYW5kIHRoZSBkZXNjcmlw
dGlvbiBiZWxvdy4gSSBoYXZlCj4+IHRoZSBmZWVsaW5nIHRoZSBzZXJpZXMgbWFrZXMgbW9yZSBj
b21wbGV4IHdoaWxlIHRoZSBjdXJyZW50IGNvZGUgd2hpY2gKPj4gd291bGQgZGVzZXJ2ZSBhIGNs
ZWFudXAuCj4+Cj4+IFdoeSBub3QgZmlyc3Q6Cj4+Cj4+IMKgIC0gQWRkIGEgJ21vZGUnIGZpZWxk
IGluIHRoZSB0aGVybWFsIHpvbmUgZGV2aWNlCj4+IMKgIC0gS2lsbCBhbGwgc2V0L2dldF9tb2Rl
IGNhbGxiYWNrcyBpbiB0aGUgZHJpdmVycyB3aGljaCBhcmUgZHVwbGljYXRlZCBjb2RlLgo+PiDC
oCAtIEFkZCBhIGZ1bmN0aW9uOgo+Pgo+PiDCoCBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUgdGhl
cm1hbF96b25lX2dldF9tb2RlKCAqdHopCj4+IMKgIHsKPj4gwqDCoMKgwqAuLi4KPj4gwqDCoMKg
wqBpZiAodHotPm9wcy0+Z2V0X21vZGUpCj4+IMKgwqDCoMKgwqDCoMKgIHJldHVybiB0ei0+b3Bz
LT5nZXRfbW9kZSgpOwo+Pgo+PiDCoMKgwqDCoHJldHVybiB0ei0+bW9kZTsKPj4gwqAgfQo+Pgo+
Pgo+PiDCoCBpbnQgdGhlcm1hbF96b25lX3NldF9tb2RlKC4uKnR6LCBlbnVtIHRoZXJtYWxfZGV2
aWNlX21vZGUgbW9kZSkKPj4gwqAgewo+PiDCoMKgwqDCoC4uLgo+PiDCoMKgwqDCoGlmICh0ei0+
b3BzLT5zZXRfbW9kZSkKPj4gwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHR6LT5vcHMtPnNldF9tb2Rl
KHR6LCBtb2RlKTsKPj4KPj4gwqDCoMKgwqB0ei0+bW9kZSA9IG1vZGU7Cj4+Cj4+IMKgwqDCoMKg
cmV0dXJuIDA7Cj4+IMKgIH0KPj4KPj4gwqAgc3RhdGljIGlubGluZSB0aGVybWFsX3pvbmVfZW5h
YmxlKC4uLiAqdHopCj4+IMKgIHsKPj4gwqDCoMKgwqB0aGVybWFsX3pvbmVfc2V0X21vZGUodHos
IFRIRVJNQUxfREVWSUNFX0VOQUJMRUQpOwo+PiDCoCB9Cj4+Cj4+IMKgIHN0YXRpYyBpbmxpbmUg
dGhlcm1hbF96b25lX2Rpc2FibGUoLi4uICp0eikgewo+PiDCoMKgwqDCoHRoZXJtYWxfem9uZV9z
ZXRfbW9kZSh0eiwgVEhFUk1BTF9ERVZJQ0VfRElTQUJMRUQpOwo+PiDCoCB9Cj4+Cj4+IEFuZCB0
aGVuIHdoZW4gdGhlIGNvZGUgaXMgY29uc29saWRhdGVkLCB1c2UgdGhlIG1vZGUgdG8gZW5hYmxl
L2Rpc2FibGUKPj4gdGhlIHBvbGxpbmcgYW5kIGNvbnRpbnVlIGtpbGxpbmcgdGhlIGR1cGxpY2F0
ZWQgY29kZSBpbiBvZi10aGVybWFsLmMgYW5kCj4+IGFueXdoZXJlIGVsc2UuCj4+Cj4+Cj4gCj4g
VGhhbmtzIGZvciBmZWVkYmFjay4KPiAKPiBBbnlvbmUgZWxzZT8KClllcy4gOikKClBsZWFzZSB0
YWtlIGEgbG9vayBhdCB0aGUgZm9sbG93aW5nIHBhdGNoc2V0ICh3aGljaCBJJ20gcmV2aXZpbmcg
Y3VycmVudGx5KToKCglodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOC8xMC8xNy85MjYKCkl0IG92
ZXJsYXBzIHBhcnRpYWxseSB3aXRoIHlvdXIgd29yayBzbyB3ZSBuZWVkIHRvIGNvb3JkaW5hdGUg
b3VyIGVmZm9ydHMuCgpCZXN0IHJlZ2FyZHMsCi0tCkJhcnRsb21pZWogWm9sbmllcmtpZXdpY3oK
U2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
