Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F3B199A06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK8Y7vUTFQeNTa87KaUBEgc853lRwaSblZOvgT5Iohw=; b=ckd85ZfAEqkPYc
	rNSjPqQalv5npQ6xHBEfaC8tsCTQjMQe2S+gCvV8AAGzbQBxKqvbDe698K97TeWK4W7OUblZ2yWL5
	7AADmpDLynoyb/uprrz4LSCShptT6mK0m3v6ycS5kbLfadAOjbLvqmCgQX2uUkBBAjoawP8TF1ruv
	VjkY0RqxoyhMoRtD8hg+GP270+P8BiSOMLBzjX9faYxE0gZ6TCENptnT2PYCC9a+sX0UB+no2g2pJ
	72RaQR3uDr76TYA1moOsKciSS7Ex44OPKhCxvkbiS2bJyM1vBP/bLgHTVHJwa9hNnQmMWxQm0lJHv
	PpHa8mvT6i84SpxwKrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ2I-000819-Dn; Tue, 31 Mar 2020 15:42:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1Q-0007e9-1S
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:
 Content-Transfer-Encoding:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:To
 :Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=eLAV6rJTvPK37Qjgr9MT4qBTJmPhi+qYspTzF9BjccM=; b=IaGJD/64EqzJd431z+wTn7ERlI
 TXl4z9p8d9ROacbzgjoExc3M45JOsIm5E+D4Aq4hSgva5TmId3Q+OwWngFpk2yrBkZiemj/gg0nbx
 x03U75G7k3FYPd+pz4VWxVc/Y4nSopEh2dObLVUk/YAzra4vQupU1D+FNwu2pK9a4HVS10/UEtHmo
 E1EXxmBx8XdxkrUZw8ZtQxm20DkfKzDTReUQ3K5uhZ4CFNlLgkTihZ4qmOAYHtg3yfy97Y40f7iZc
 PPQ5uhsb4rp4PjlWh1TCkr8wqJOko/tJbK/RvvhP+meB0QFlJ/rOqLU3Wr6wFTR7z33P/IGtBMdX8
 NmeExNOw==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHMe-0002QA-D5
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 13:55:39 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200331135533euoutp029570bb283c6d23df0872878b7194b33c~BaAlXVjkr0888208882euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 13:55:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200331135533euoutp029570bb283c6d23df0872878b7194b33c~BaAlXVjkr0888208882euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585662933;
 bh=eLAV6rJTvPK37Qjgr9MT4qBTJmPhi+qYspTzF9BjccM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ordyPWYpv8IaNOgwBviRSrViyperps4qnBK8UvIedLJv9UdwQqHmUnJ7Ih5D0DXG0
 2GKxTE7lECSi0FvVeUts1a69dwHh54jQkzwY3mTym0HZnFsFmi+qRY8v1m9N9XClnh
 CqhVFC0qWX2SkEkNJuP3y+FOBcbD3vbFXimP7Vv0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200331135532eucas1p21abe4721e7f75c524f78346b0532676b~BaAlLOw402654426544eucas1p2Q;
 Tue, 31 Mar 2020 13:55:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6F.72.60698.4DB438E5; Tue, 31
 Mar 2020 14:55:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200331135532eucas1p1e64e7b122de756d54bc28abaea41dd08~BaAkuujy62016720167eucas1p17;
 Tue, 31 Mar 2020 13:55:32 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200331135532eusmtrp1d9784225ee78473c7434897f705a0418~BaAkuEui92490124901eusmtrp1u;
 Tue, 31 Mar 2020 13:55:32 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-01-5e834bd4789f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AB.0E.08375.4DB438E5; Tue, 31
 Mar 2020 14:55:32 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200331135531eusmtip2152bcfe35dd0ab3049509c085051f934~BaAkEdcUv2932629326eusmtip2U;
 Tue, 31 Mar 2020 13:55:31 +0000 (GMT)
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Paul Cercueil <paul@crapouillou.net>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
Date: Tue, 31 Mar 2020 15:55:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <X7728Q.UX8A28S31JO92@crapouillou.net>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGczvTmaFaHArKCRrRGoiQCBLETBQVEh9qfNAXjRK2ChMgsjQd
 Vn0QrKA2KASJloLFSImILFqBCBFURBBRKgXZAhoDpizBGtkEl9hxRHn7zjn/Wf6bS2Gyp2I3
 Ki4xmVUnKuPlhARvaF8y7+g7rAnfqV0OYErbusVM3tg0xpjN90nGNNYvZnqbSghGZ24RMeUD
 PSImr8yCM986rmJMdnMbyRQai8igNYoqQxVS3LNcJBSN+lFSYaq8TCgeGs8pZk2bjxIhksBo
 Nj4ulVX77o+UxN59n4updHT6A/McnolMUi2iKKB3Qc6XbVokoWR0BYI378ZxLXKwB3MI6h4z
 QmEWQe+FOXKlodqGC/k7CCayfiIhsCEwmMsQL3KmFfDEGsUPcqG3g3GymeA1GL0kgqGhQcQX
 CNoPtDNagmcpvR9GS6fFPOO0BxjqS0U8r6dDoed5nljQOEFnkXCdA+0Pn/O7SZ4x2h009cWY
 wK4wPM73SuyH9pMw9ar8zwKgD8KkrvMvO8NURx0p8CboupaLCw0aBB+7q0khyLV7Pq9Dgmov
 jHQvE7w1jPaC2iZf4SmCYWYIBHSEwRkn4QZHKGi4gQlpKVzKkQkzPEHfUfNv67O3FiwfyfWr
 nOlXudGvcqP/v/YWwiuRK5vCJcSwnH8im+bDKRO4lMQYn6ikBBOy/6uuXx3zj1DLj1OtiKaQ
 fK00PVATLhMrU7mMhFYEFCZ3kRJHMsNl0mhlxhlWnRShTolnuVa0kcLlrlL/25NhMjpGmcye
 ZlkVq16piigHt0zkk9UZnL81QronvSHixbEtr5v1aaEq92lrcAgetMj1WF+GZRuC5ZFGjb5F
 M7bhrK3kpC1JHTMsCrLuK144pAuosYyUBRwwL1gyvitPVHzIW1R5ehsietnar7sD2YrCKcbV
 w8M0P3HlUxJR2njzON7XfN1WUOtFDJRPZ1vb3dbJcS5W6eeNqTnlb1PUR6pTAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xe7pXvJvjDDbMEbOYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH0+kUmi/7Fl1gsfhzvY7Zo3XuE3WLKkpnsDtwea+at
 YfRYfamdzWPnrLvsHptWdbJ5bF5S7/F5k1wAW5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexsp7PcwFMwQqNp7/wtLAuIm3i5GDQ0LARGLte5Yu
 Ri4OIYGljBLb519k7WLkBIrLSJyc1gBlC0v8udbFBlH0llFi+t7rTCDNwgIeEvufJ4PUiAho
 SCx5uReshlngJ5PExOsL2UASQgIvmCS6JiSA2GwChhJdb7vA4rwCdhJ3578GW8AioCoxb+t8
 JhBbVCBG4ueeLhaIGkGJkzOfgNmcAsYS7yacYwexmQXMJOZtfsgMYctLNG+dDWWLS9x6Mp9p
 AqPQLCTts5C0zELSMgtJywJGllWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMbrt2M/NOxgv
 bQw+xCjAwajEw1th0xwnxJpYVlyZe4hRgoNZSYSXzb8hTog3JbGyKrUoP76oNCe1+BCjKdBz
 E5mlRJPzgekjryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo67k
 l6UaJeIpHScUDq2cYOBdm6H4nvk0y8YojajzxYIH/CJf7Xu4saHu67eoJsHQb+3Tz9xrjGS2
 FbyV3Fxw48FC/pO5W61nvdjx1ZHd67xLEvO5o+zxt61MyrseBPBxbrGt0WlWeij3Q0/knP3y
 zc0/+35HLP9gKXO8nvWp/2KzlvdXF/ivUmIpzkg01GIuKk4EAGng0CvnAgAA
X-CMS-MailID: 20200331135532eucas1p1e64e7b122de756d54bc28abaea41dd08
X-Msg-Generator: CA
X-RootMTR: 20200318142549eucas1p1793027850923ebad20b4691cba676671
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200318142549eucas1p1793027850923ebad20b4691cba676671
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
 <X7728Q.UX8A28S31JO92@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145536_713961_C47A382F 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk9uIDIwMjAtMDMtMzEgMTU6MDksIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4gQ2M6
IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KPgo+IEhpIE1h
cmVrLAo+Cj4gTGUgbWFyLiAzMSBtYXJzIDIwMjAgw6AgNzozNiwgTWFyZWsgU3p5cHJvd3NraSAK
PiA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPiBhIMOpY3JpdCA6Cj4+IEhpIFBhdWwsCj4+Cj4+
IE9uIDIwMjAtMDMtMTggMTU6MjUsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4+Pj4+IMKgICvCoMKg
wqAgfTsKPj4+Pj4gwqAgKwo+Pj4+PiDCoCArwqDCoMKgIHRzcF9yZWc6IHJlZ3VsYXRvci0xIHsK
Pj4+Pj4gwqAgK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
Pj4+Pj4gwqAgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1uYW1lID0gIlRTUF9GSVhFRF9WT0xU
QUdFUyI7Cj4+Pj4+IMKgICvCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDwzMzAwMDAwPjsKPj4+Pj4gwqAgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDMzMDAwMDA+Owo+Pj4+PiDCoCArwqDCoMKgwqDCoMKgwqAgZ3BpbyA9IDwmZ3BsMCAz
IEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+PiDCoCArwqDCoMKgwqDCoMKgwqAgc3RhcnR1cC1kZWxh
eS11cyA9IDw3MDAwMD47Cj4+Pj4+IMKgICvCoMKgwqDCoMKgwqDCoCBlbmFibGUtYWN0aXZlLWhp
Z2g7Cj4+Pj4+IMKgICvCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItYm9vdC1vbjsKPj4+Pj4gwqAg
K8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+Pj4KPj4+PiDCoGFsd2F5cy1v
biBhbmQgYm9vdC1vbiBzaG91bGQgbm90IGJlIG5lZWRlZC4gWW91IGhhdmUgYSBjb25zdW1lciAK
Pj4+PiBmb3IgdGhpcwo+Pj4+IMKgcmVndWxhdG9yLgo+Pj4KPj4+IMKgQWJvdXQgdGhpczogdGhl
IHRvdWNoc2NyZWVuIGRyaXZlciBkb2VzIG5vdCB1c2UgYSByZWd1bGF0b3IsIHNvIEkKPj4+IMKg
YmVsaWV2ZSB0aGF0J3Mgd2h5IHRoZXNlIHByb3BlcnRpZXMgd2VyZSBoZXJlLgo+Pj4KPj4+IMKg
SSBzZW50IHBhdGNoZXMgdXBzdHJlYW0gdG8gYWRkcmVzcyB0aGUgaXNzdWU6Cj4+PiDCoGh0dHBz
Oi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9ZThhZWRjMjktYjUzMDcyYjMtZThhZjU3NjYt
MGNjNDdhMzM2ZmFlLTc1OTU3OWZkNTc2ZDgzODImdT1odHRwczovL2xrbWwub3JnL2xrbWwvMjAy
MC8zLzE1Lzk0IAo+Pj4KPj4+Cj4+PiDCoEkgYmVsaWV2ZSB0aGlzIG1lYW5zIEkgY2Fubm90IG1l
cmdlIHRoZSBpOTEwMCBkZXZpY2V0cmVlIHVudGlsIGl0IGlzCj4+PiDCoGFja2VkLgo+Pgo+PiBP
bmUgbW9yZSBpbmZvcm1hdGlvbiAtIHNpbWlsYXIgY2hhbmdlIGhhcyBiZWVuIGFscmVhZHkgcG9z
dGVkLCBidXQgaXQKPj4gbG9va3MgaXQgZ290IGxvc3QgdGhlbjogaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDU1MDkwMy8KPgo+IEkgd2FzIGF3YXJlIG9mIHRoaXMgcGF0Y2gs
IGJ1dCBkaWRuJ3Qga25vdyBpdCB3YXMgc2VudCB1cHN0cmVhbS4KPgo+IFRoaXMgb3RoZXIgcGF0
Y2ggdXNlcyB0d28gcmVndWxhdG9ycywgdmRkL2F2ZGQgYnV0IGRvZXNuJ3QgZ2l2ZSBhbnkgCj4g
cmVhc29uIHdoeS4KPgpJJ3ZlIGNoZWNrZWQgdGhlIFVuaXZlcnNhbEMyMTAgc2NoZW1hdGljLCB3
aGljaCB1c2VzIHRoZSBzYW1lIAp0b3VjaHNjcmVlbiBjaGlwLiBUaGVyZSBhcmUgMiBzdXBwbGll
cyB0byB0aGUgdG91Y2hzY3JlZW4gY2hpcDogMi44ViBWREQgCmFuZCAzLjNWIEFWREQuIEJvdGgg
YXJlIGVuYWJsZWQgYnkgdGhlIHNhbWUgR1BJTyBwaW4gdGhvdWdoLiBUaGVyZSBpcyAKaG93ZXZl
ciBubyByZXNldCBHUElPIHBpbiB0aGVyZS4KCj4gUGF3ZcWCLCBpcyB0aGF0IHJlYWxseSBuZWVk
ZWQ/Cj4KQmVzdCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQg
SW5zdGl0dXRlIFBvbGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
