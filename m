Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0212E1CA4E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HykWF5zPVa2b1hueqcQgJS1FYS+nSYHU0xXOhFmlRWA=; b=IhSFfXe9HluZVC
	RNN5Ev2ggFdrhcMV+0AYTjsQDbf2b2xQ6/JboZtqzxGP9CpgyY8VE+P1LWdprctG/dX6hswEkflve
	2BTPY1AZnXLh4PG21IiwKu1oBZJKLIp29zEmtOnExFTnKSZBk5WF4xxBQu/HCBGsqXWCQkBmsdxUb
	SVi0HARCExPgCKByFIoENDd8AjlJ0S7i2EL1utqbzvcnGDxiPiCnok+c4cAasReXjN8EADI6tQizv
	RUTgadwJXC+BsnwG6J2pkr4HFdeNlXXo6qggDpfxkIWVIfLWY4/sqqVpvISncKGheMU/YbvK8Bf8C
	4xf5Lqq+gHz+VkJruBEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxBL-00071j-VX; Fri, 08 May 2020 07:12:28 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxBA-000713-MX
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:12:19 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200508071212euoutp02b67c741a65bdb1f0c5c9a0355311c32b~M-BRe_AV51529115291euoutp02J
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 May 2020 07:12:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200508071212euoutp02b67c741a65bdb1f0c5c9a0355311c32b~M-BRe_AV51529115291euoutp02J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588921933;
 bh=MNq8IaWUA6Un4kt7IMAiklPWVR3gf64K43Fn6O07vqs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Vb8aluHNEw2JqOy80I0E6I6Y8ywULeo5y2fJruM/YjEqktoHKqHrnSgLkcX3ZM422
 hpdrckhVsKQQwiMlZOpS+xX2P8OSoQKM8KJZYhOQPPi13GsmPGLQQIhEuIc5nCCTH5
 7kpq//KUDt40Ys1jXlI0DUiDRUPooFwT17sxiUYA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200508071212eucas1p2f160f406bc38d49c40a526e2f90073cd~M-BRGg3qQ0835408354eucas1p2O;
 Fri,  8 May 2020 07:12:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 03.30.60679.C4605BE5; Fri,  8
 May 2020 08:12:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200508071211eucas1p2c0d71295772b61cd59ea323234374fca~M-BQi3KsU0800008000eucas1p2K;
 Fri,  8 May 2020 07:12:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200508071211eusmtrp1807089cd64cf7c196d7a64f6e784733b~M-BQiFdOl0512605126eusmtrp1M;
 Fri,  8 May 2020 07:12:11 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-24-5eb5064cdf42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BC.FD.08375.B4605BE5; Fri,  8
 May 2020 08:12:11 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200508071211eusmtip2934bd81bad65ddd62f2c0e1050abb486~M-BPtk_EY1877618776eusmtip2B;
 Fri,  8 May 2020 07:12:11 +0000 (GMT)
Subject: Re: [PATCH v3 02/25] drm: core: fix common struct sg_table related
 issues
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <b887c355-14db-ad37-0e93-733ff2249967@samsung.com>
Date: Fri, 8 May 2020 09:12:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200505110950.GA19067@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRjlt/vwOr1xnco+rQzWA4zStIgLhhkU3D8iKvpDhGyrbirqlN20
 llT2QG1O8YFlS8o0MtdjtelKS8yVDbGWqZTrZaVJWqalDiqz3K6W/51zvvPxnQMfhcm+EsFU
 kno/r1GrUhSkFLc++uFYuZmsj19VXruQLXC0Sdhb5SaC/WMtxtjuiRGSrb3aKmErm6PY8e73
 Etbc95xguxorSPbit3qczTl1mWBbRvsJtu5LMRFDc9fOX0Nck6sS58zGUyR32/WO4M63beN6
 8+0SznLpKPdqqg/jSntqEHfXmU1yhXVGxFnas7gxc8hWOk66bi+fkpTJa8KjldLEp84JIj03
 6OD1gWNkNioK1CFvCpg1MFmYi+uQlJIxVxDc+/2ZFMk4gvFei5dIxhA0teYRsyv5v5ol4qAG
 galzdIaMILg41IC7Xf7MDqjvtEvcOIBRwMehJ8htwpjnGFgH7R4TyUSAblhHujHNRENtaZmX
 G+PMEtDn6T16ILMT2qstSPT4QdvZ/uldivJmVoDjwRa3jDGL4ET9OUzEcnjZf8ETCJgyClx3
 K2ZibwTD2/wZ7A9D9jovES+A9lI9Li6cQPDecd1LJHoEXcfLkeiKgteOn6T7MsaEgqkxXJQ3
 wJT+i0cGZh70DPuJIeZBifUMJso05OXIRPcyMNhv/Dvb0tGJFSGFYU4zw5w6hjl1DP/vViLc
 iOR8hpCawAuRav5AmKBKFTLUCWF70lLNaPoL26fs43dQ4+RuG2IopPCl2W+WeBmhyhS0qTYE
 FKYIoIsP1sXL6L0q7SFek7ZLk5HCCzY0n8IVcnp11eBOGZOg2s8n83w6r5mdSijv4Gxkit2W
 pFRlbapufDbQlD3WrYvxvRn3wq4xFcTyIRlEQOYFPrljwsdAFJwMehhWdfRD4Jte463Y49IK
 I2/6xFdFhn62pssrHy9uKFnqZM8duTfqdK0RDhu024tCt0+sXzZVczuGPukTpRS+r40+fX/f
 VWXQggBSm9g6/DpOaXtrVOBCoipiOaYRVH8BbttRxYEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42I5/e/4PV1vtq1xBq0nzSx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWSz8uJXFoq1zGavFwQ9PWC22
 vJnI6sDrsWbeGkaPvd8WsHhsWtXJ5rH92wNWj3knAz3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9
 s4HNo2/LKkaPzaerPT5vkgvgjdKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV
 0rezSUnNySxLLdK3S9DLOH/zK2tBu2TF2meNbA2ME0S7GDk5JARMJLp/72fqYuTiEBJYyijx
 8uQiNoiEjMTJaQ2sELawxJ9rXWwQRW8ZJW61XgJLCAuESGy9dJwJxBYRUJJ4+uosI0gRs8AN
 Zolvm3vZITo+MUm8uLWaHaSKTcBQouttF9gKXgE7iZWTp4LFWQRUJHo6esDiogKxEquvtTJC
 1AhKnJz5hKWLkYODU0BH4txhP5Aws4CZxLzND5khbHmJ5q2zoWxxiVtP5jNNYBSahaR7FpKW
 WUhaZiFpWcDIsopRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMw9rcd+7l5B+OljcGHGAU4GJV4
 eC0+bo4TYk0sK67MPcQowcGsJMI7sWJLnBBvSmJlVWpRfnxRaU5q8SFGU6DfJjJLiSbnA9NS
 Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRvHpq6P2dSa8OVjH
 Vnnx/YGs1ZcMdwq/K7n9/U7He6XK9JWHT8tsYp7h8JBf8sbi5spdx4KuXOOyr5Xa2tR+VPzt
 87f72QXfNKjcbvS+wG+wXdhJXto6fGJ81+6q3St3/X+9d+1X1Z0qoo/t8vKMnYqbt3IrLJCK
 i961PECs8mq0SuPMHqmKuUosxRmJhlrMRcWJAMJUTm8TAwAA
X-CMS-MailID: 20200508071211eucas1p2c0d71295772b61cd59ea323234374fca
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
 <20200505110950.GA19067@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_001216_941900_CB43BF71 
X-CRM114-Status: GOOD (  16.42  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKT24gMDUuMDUuMjAyMCAxMzowOSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMTI6NTE6NThQTSArMDIwMCwgTWFyZWsgU3p5
cHJvd3NraSB3cm90ZToKPj4gT24gMDUuMDUuMjAyMCAxMjoxNSwgQ2hyaXN0b3BoIEhlbGx3aWcg
d3JvdGU6Cj4+Pj4gLQkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm5l
bnRzLCAwKQo+Pj4+ICsJCWZvcl9lYWNoX3NnX3BhZ2Uoc3QtPnNnbCwgJnNnX2l0ZXIsIHN0LT5v
cmlnX25lbnRzLCAwKQo+Pj4gV291bGQgaXQgbWFrZSBzZW5zZSB0byBhbHNvIGFkZCBhIGZvcl9l
YWNoX3NndGFibGVfcGFnZSBoZWxwZXIgdGhhdAo+Pj4gaGlkZXMgdGhlIHVzZSBvZiBvcmlnX25l
bnRzPyAgVG8gYmUgdXNlZCBsaWtlOgo+Pj4KPj4+IAkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHN0
LCAmc2dfaXRlciwgMCkgewo+PiBXZSB3b3VsZCBuZWVkIHR3byBoZWxwZXJzOgo+Pgo+PiBmb3Jf
ZWFjaF9zZ3RhYmxlX2NwdV9wYWdlKCkgYW5kIGZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2UoKS4K
Pj4KPj4gSSBjb25zaWRlcmVkIHRoZW0sIGJ1dCB0aGVuIEkgZm91bmQgdGhhdCB0aGVyZSBhcmUg
YWxyZWFkeQo+PiBmb3JfZWFjaF9zZ19wYWdlKCksIGZvcl9lYWNoX3NnX2RtYV9wYWdlKCkgYW5k
IHZhcmlvdXMgc3BlY2lhbCBpdGVyYXRvcnMKPj4gbGlrZSBzZ19wYWdlX2l0ZXIsIHNnX2RtYV9w
YWdlX2l0ZXIgYW5kIHNnX21hcHBpbmdfaXRlci4gVG9vIGJhZCB0aGF0Cj4+IHRoZXkgYXJlIGFs
bW9zdCBub3QgdXNlZCwgYXQgbGVhc3QgaW4gdGhlIERSTSBzdWJzeXN0ZW0uIEkgd29uZGVyIGlm
IGl0Cj4+IG1ha2Ugc2Vuc2UgdG8gYXBwbHkgdGhlbSBvciBzaW1wbHkgcHJvdmlkZSB0aGUgdHdv
IGFib3ZlIG1lbnRpb25lZAo+PiB3cmFwcGVycz8KPiBOb25lIG9mIHRoZSBoZWxwZXJzIGhlbHBz
IHdpdGggcGFzc2luZyB0aGUgcmlnaHQgcGFyYW1ldGVycyBmcm9tIHRoZQo+IHNnX3RhYmxlLiAg
U28gaW4gZG91YmUgd2UnZCBuZWVkIHdyYXBwZXJzIGZvciBhbGwgb2YgdGhlIGFib3ZlLCBvcgo+
IG5vbmUuLgoKSSd2ZSBwbGF5ZWQgYSBiaXQgd2l0aCB0aGUgY29kZSBhbmQgdGhlIGV4aXN0aW5n
IHNjYXR0ZXJsaXN0IGl0ZXJhdG9ycyAtIApmb3JfZWFjaF9zZ19wYWdlKCkgYW5kIGZvcl9lYWNo
X3NnX2RtYV9wYWdlKCkuIEkndmUgZm91bmQgdGhlbSBxdWl0ZSBoYW5keSEKClRoZSBiaWdnZXN0
IGFkdmFudGFnZSBvZiB0aGVtIGlzIHRoYXQgdGhleSBhbHdheXMgaXRlcmF0ZSBvdmVyIApzY2F0
dGVybGlzdCBpbiBQQUdFX1NJWkUgdW5pdHMsIHdoYXQgc2hvdWxkIG1ha2UgdGhlIGNvZGUgbXVj
aCBlYXNpZXIgdG8gCnVuZGVyc3RhbmQuIEhlcmUgaXMgZXhhbXBsZSBvZiB0aGVpciBhcHBsaWNh
dGlvbiB0byB0aGUgZnVuY3Rpb24gdGhhdCAKc3RhcnRlZCB0aGlzIHRocmVhZDoKCmludCBkcm1f
cHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyhzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgc3RydWN0
IHBhZ2UgCioqcGFnZXMsCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2FkZHJfdCAqYWRkcnMsIGludCBt
YXhfZW50cmllcykKewogwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgZG1h
X2l0ZXI7CiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgc2dfcGFnZV9pdGVyIHBhZ2VfaXRlcjsKCiDC
oMKgwqDCoMKgwqDCoCBpZiAoYWRkcnMpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Zm9yX2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsICZkbWFfaXRlciwgMCkKIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKmFkZHJzKysgPSBzZ19wYWdlX2l0
ZXJfZG1hX2FkZHJlc3MoJmRtYV9pdGVyKTsKIMKgwqDCoMKgwqDCoMKgIGlmIChwYWdlcykKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9zZ3RhYmxlX3BhZ2Uoc2d0LCAm
cGFnZV9pdGVyLCAwKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqcGFnZXMrKyA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZwYWdlX2l0ZXIpOwogwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIDA7Cn0KCkFmdGVyIGFwcGx5aW5nIHRob3NlIGl0ZXJhdG9ycyB3aGVyZSBw
b3NzaWJsZSAodGhleSBjYW4gYmUgdXNlZCBvbmx5IGZvciAKcmVhZGluZyB0aGUgc2NhdHRlcmxp
c3QpLCB3ZSB3b3VsZCBqdXN0IG5lZWQgdG8gYWRkIDIgdHJpdmlhbCB3cmFwcGVycyAKdG8gdXNl
IHRoZW0gd2l0aCBzZ190YWJsZSBvYmplY3RzOgoKI2RlZmluZSBmb3JfZWFjaF9zZ3RhYmxlX3Bh
Z2Uoc2d0LCBwaXRlciwgcGdvZmZzZXQpwqDCoMKgIFwKIMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9z
Z19wYWdlKHNndC0+c2dsLCBwaXRlciwgc2d0LT5vcmlnX25lbnRzLCBwZ29mZnNldCkKCiNkZWZp
bmUgZm9yX2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsIGRtYV9pdGVyLCBwZ29mZnNldCnCoMKg
wqDCoCBcCiDCoMKgwqDCoMKgwqAgZm9yX2VhY2hfc2dfZG1hX3BhZ2Uoc2d0LT5zZ2wsIGRtYV9p
dGVyLCBzZ3QtPm5lbnRzLCBwZ29mZnNldCkKClRoZW4gd2Ugd291bGQganVzdCBuZWVkIG9uZSBt
b3JlIGhlbHBlciB0byBjb25zdHJ1Y3Qgc2NhdHRlcmxpc3QsIGFzIHRoZSAKYWJvdmUgdHdvIGFy
ZSByZWFkLW9ubHkgZG9uJ3QgYWxsb3cgdG8gbW9kaWZ5IHNjYXR0ZXJsaXN0OgoKI2RlZmluZSBm
b3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFwKIMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+b3JpZ19u
ZW50cywgaSkKCldpdGggdGhlIGFib3ZlIDMgaGVscGVycyB3ZSBjYW4gcHJvYmFibHkgZ2V0IHJp
ZCBvZiBhbGwgaW5zdGFuY2VzIG9mIApzZ190YWJsZS0+e25lbnRzLG9yaWdfbmVudHN9IGZyb20g
dGhlIERSTSBjb2RlLiBJIHdpbGwgcHJlcGFyZSBwYXRjaGVzIHNvb24uCgpCZXN0IHJlZ2FyZHMK
LS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
