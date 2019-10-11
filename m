Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2F9D3E89
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OnzBKRwE1jlugFLFRwDo+NnyC+MjXZikUGiJBtFlXQ=; b=Y9sau1MMvZIBcM
	blsbp0CHGYMQPyY+ZAgmEJjSiIIJNke2bwsuQnj++YffXL/rpLdX6bJe6HDRQWkPHJZVsbqRb7Tx8
	OpzOIlyCwlG+m5OEXiJ5euly1y8C9ySFfQFckBm+XST99C10tgN8i4+flcb6eo49m2ZO10mCYfZBJ
	f9cIjfz1Ic4MVNb90s80VauTr0Dk7tS61m8KRDK8Hc4hjN5u8MS61V61mhWZ58/xK8moSxlGfkINZ
	BnOKXWTox83Ox/YoonqkxVv0Wpm5xC7OBfPQRJQDT8lyNWiIu0pK1a3EvLfPcPp7eDd/Wk8wmwTfM
	xKUUcLZBsaqHreLlfojA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItBQ-0004Bi-69; Fri, 11 Oct 2019 11:34:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItBF-0004BE-7R
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:33:59 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191011113355euoutp020a7a06f5b0535d198c48327347133092~MlH0YB4YT0484004840euoutp02v
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 11:33:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191011113355euoutp020a7a06f5b0535d198c48327347133092~MlH0YB4YT0484004840euoutp02v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570793635;
 bh=4ZYRzf6XeFviC24JG3kc+6eo4xAoGOrUhYOqB4a0MZc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=AXVdnsFS+UnP18yoy2NrwZ4s+czvJHklYPMz9cA3QL1qSh3DFSTF0py5ncO4lIroR
 ePxxM5LCUVBNmx84kXEgV+30KVU54eWpJp8vQS4KiWhknyvDN7mPuGCJ0SoP1K/BuC
 ejyGLdWpZogtAEgIebD29Q4xZCjNQ8aY14ggSaL4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191011113354eucas1p14d4a819a030bba87cbecc0a6f4bb24f2~MlH0BB75m1526815268eucas1p16;
 Fri, 11 Oct 2019 11:33:54 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 7A.62.04374.2A860AD5; Fri, 11
 Oct 2019 12:33:54 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191011113354eucas1p219e79f62d780540027a1350ea3a016ea~MlHzrtVVx0387903879eucas1p2G;
 Fri, 11 Oct 2019 11:33:54 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191011113354eusmtrp2deb37900f27cecd2eded4d8c644dd6ba~MlHzrEwdA0746607466eusmtrp2g;
 Fri, 11 Oct 2019 11:33:54 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-93-5da068a2d7ba
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 64.A3.04117.2A860AD5; Fri, 11
 Oct 2019 12:33:54 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191011113353eusmtip1e76cf8e6c1eea71f16851db13000461b~MlHzEpiRd3093230932eusmtip15;
 Fri, 11 Oct 2019 11:33:53 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Chanwoo Choi <cw00.choi@samsung.com>, k.konieczny@partner.samsung.com
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
Date: Fri, 11 Oct 2019 13:33:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRmVeSWpSXmKPExsWy7djP87qLMhbEGrycrWKxccZ6VovrX56z
 WvTt+89o0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XtxhVsDtwem1Z1
 snlsXlLvcfDdHiaPvi2rGD0+b5ILYI3isklJzcksSy3St0vgyjg8dSNjwSq5it73P5gbGM9L
 dDFyckgImEjcuPGSrYuRi0NIYAWjxIFd/cwQzhdGibXt5xkhnM+MEg93nWOEaWlb+YcJIrEc
 qOrWWmaQhJDAW0aJZf8sQWxhgWyJb6eXgcVFBDwl/n6YwwLSwCxwm0mi99MvFpAEm4ChRNfb
 LjYQm1fATmLp7k9MIDaLgKpE65Hf7CC2qECsxL0fx5khagQlTs58AtbLKWAv8aPpEFg9s4C8
 RPPW2cwQtrjErSfzwa6TELjELnH+wmaos10kWk/1M0HYwhKvjm9hh7BlJP7vhGloBvrz3Fp2
 CKeHUeJy0wyobmuJw8cvsnYxcgCt0JRYv0sfIuwo8fb+ZUaQsIQAn8SNt4IQR/BJTNo2nRki
 zCvR0SYEUa0mMev4Ori1By9cYp7AqDQLyWuzkLwzC8k7sxD2LmBkWcUonlpanJueWmycl1qu
 V5yYW1yal66XnJ+7iRGYrE7/O/51B+O+P0mHGAU4GJV4eGfIz48VYk0sK67MPcQowcGsJMK7
 aNacWCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2MR7pr
 3gXpBere2WKZKzPtmfUeGclLe032i4Vob+gqm23w1c1vIbfF/xl/fEM8Iy60C5d+tWwU1fnd
 p2d+w/WCXOb7PaVNyg4lO5/pn/hfeEXwh0WE1MNOK4+HF69Uy16Ouhl0lL3nAdcK265ZUa4J
 TckVzyb8itbcwMDMHpAlpG7Vt6z8d6ASS3FGoqEWc1FxIgAnZEJLUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsVy+t/xu7qLMhbEGrzZxWexccZ6VovrX56z
 WvTt+89o0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XtxhVsDtwem1Z1
 snlsXlLvcfDdHiaPvi2rGD0+b5ILYI3SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaP
 tTIyVdK3s0lJzcksSy3St0vQyzg8dSNjwSq5it73P5gbGM9LdDFyckgImEi0rfzD1MXIxSEk
 sJRRYtqhZ0wQCRmJk9MaWCFsYYk/17rYIIpeM0r8XT2JHSQhLJAt8e30MmYQW0TAU+Lvhzks
 IEXMAneZJNZ9+wA19iyjxIN5MxlBqtgEDCW63oKM4uTgFbCTWLr7E9g6FgFVidYjv4GmcnCI
 CsRKbNprBlEiKHFy5hMWEJtTwF7iR9MhsHJmATOJeZsfMkPY8hLNW2dD2eISt57MZ5rAKDQL
 SfssJC2zkLTMQtKygJFlFaNIamlxbnpusZFecWJucWleul5yfu4mRmB0bjv2c8sOxq53wYcY
 BTgYlXh4Z8jPjxViTSwrrsw9xCjBwawkwrto1pxYId6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYS
 Tc4HJo68knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mh082Vy59
 HWMUWpPRlPXXqMqwNW6vVfM8h0OTGLkj7KMiN//wl6uKvr9q6YdFWT3zTYvY5KSC7yzJNvEM
 OVP36vnju0qmh9ZZNW2ZbqnlNpfz+0G+26w+/TKR7VWMXr5PSo88MfZTlxHZXDNn1rlDoSn/
 zZxP6Mr8YDL5aX7YNf2q8lW2a8+VWIozEg21mIuKEwF9HHsT5AIAAA==
X-CMS-MailID: 20191011113354eucas1p219e79f62d780540027a1350ea3a016ea
X-Msg-Generator: CA
X-RootMTR: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_043357_473971_F725CA67 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDEwLjEwLjIwMTkgMDQ6NTAsIENoYW53b28gQ2hvaSB3cm90ZToKPiBP
biAyMDE564WEIDEw7JuUIDA47J28IDIyOjQ5LCBrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcu
Y29tIHdyb3RlOgo+PiBDb21taXQgNDI5NGE3NzliZDhkICgiUE0gLyBkZXZmcmVxOiBleHlub3Mt
YnVzOiBDb252ZXJ0IHRvIHVzZQo+PiBkZXZfcG1fb3BwX3NldF9yYXRlKCkiKSBpbnRyb2R1Y2Vk
IGVycm9yczoKPj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1
c193Y29yZSAoIDg0MDAwIEtIeiB+IDQwMDAwMCBLSHopCj4+IGV4eW5vcy1idXM6IG5ldyBidXMg
ZGV2aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNfbm9jICggNjcwMDAgS0h6IH4gMTAwMDAwIEtIeikK
Pj4gZXh5bm9zLWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19mc3lzX2Fw
YiAoMTAwMDAwIEtIeiB+IDIwMDAwMCBLSHopCj4+IC4uLgo+PiBleHlub3MtYnVzIHNvYzpidXNf
d2NvcmU6IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZv
ciBmcmVxIDUzMjAwMDAwMCAoLTM0KQo+PiBleHlub3MtYnVzIHNvYzpidXNfbm9jOiBkZXZfcG1f
b3BwX3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAxMTEwMDAw
MDAgKC0zNCkKPj4gZXh5bm9zLWJ1cyBzb2M6YnVzX2ZzeXNfYXBiOiBkZXZfcG1fb3BwX3NldF9y
YXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAyMjIwMDAwMDAgKC0zNCkK
Pj4KPj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29ycmVjdCBQTEwgYXNzaWduZWQgdG8gY2xvY2sg
c291cmNlLCB3aGljaCByZXN1bHRzCj4+IGluIGNsb2NrIHJhdGUgb3V0c2lkZSBvZiBPUFAgcmFu
Z2UuIEFkZCB3b3JrYXJvdW5kIGZvciB0aGlzIGluCj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSBi
eSBhZGp1c3RpbmcgY2xvY2sgcmF0ZSB0byB0aG9zZSBwcmVzZW50IGluIE9QUC4KPiBJZiB0aGUg
Y2xvY2sgY2F1c2VkIHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0IHRoZSBpbml0aWFsIGNsb2NrIG9u
IERldmljZVRyZWUKPiB3aXRoIGFzc2lnbmVkLWNsb2NrLSogcHJvcGVydGllcy4gQmVjYXVzZSB0
aGUgcHJvYmUgdGltZSBvZiBjbG9jayBkcml2ZXIKPiBpcyBlYXJseSB0aGFuIHRoZSBhbnkgZGV2
aWNlIGRyaXZlcnMuCj4KPiBJdCBpcyBub3QgcHJvcGVyIHRvIGZpeCB0aGUgY2xvY2sgaXNzdWUg
b24gb3RoZXIgZGV2aWNlIGRyaXZlci4KPiBJIHRoaW5rIHlvdSBjYW4gZml4IGl0IGJ5IHVzaW5n
IHRoZSBzdXBwb3J0ZWQgY2xvY2sgcHJvcGVydGllcy4KClRoaXMgaXNzdWUgaXMgYWJvdXQgc29t
ZXRoaW5nIGNvbXBsZXRlbHkgZGlmZmVyZW50LiBUaGUgT1BQcyBkZWZpbmVkIGluIApEVCBjYW5u
b3QgYmUgYXBwbGllZCwgYmVjYXVzZSBpdCBpcyBub3QgcG9zc2libGUgdG8gZGVyaXZlIHRoZSBu
ZWVkZWQgCmNsb2NrIHJhdGUgZnJvbSB0aGUgYm9vdGxvYWRlci1jb25maWd1cmVkIGNsb2NrIHRv
cG9sb2d5IChtYWlubHkgZHVlIHRvIApsYWNrIG9mIGNvbW1vbiBkaXZpc29yIHZhbHVlcyBmb3Ig
c29tZSBvZiB0aGUgcGFyZW50IGNsb2NrcykuIFNvbWUgdGltZSAKYWdvIEx1a2FzeiB0cmllZCBp
bml0aWFsbHkgdG8gcmVkZWZpbmUgdGhpcyBjbG9jayB0b3BvbG9neSB1c2luZyAKYXNzaWduZWQt
Y2xvY2stcmF0ZXMvcGFyZW50cyBwcm9wZXJ0aWVzIChzZWUgCmh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDE5LzcvMTUvMjc2KSwgYnV0IGl0IGhhcyBsaW1pdGF0aW9ucyBhbmQgc29tZSAKc3VjaCBj
aGFuZ2VzIGhhcyB0byBiZSBkb25lIGluIGJvb3Rsb2FkZXIuIFVudGlsIHRoaXMgaXMgcmVzb2x2
ZWQsIApkZXZmcmVxIHNpbXBseSBjYW5ub3Qgc2V0IHNvbWUgb2YgdGhlIGRlZmluZWQgT1BQcy4K
ClRoaXMgaXNzdWUgd2FzIHRoZXJlIGZyb20gdGhlIGJlZ2lubmluZywgcmVjZW50IEthbWlsJ3Mg
cGF0Y2ggb25seSAKcmV2ZWFsZWQgaXQuIEluIGZhY3QgaXQgd2FzIGV2ZW4gd29yc2UgLSBkZXZm
cmVxIGFuZCBjb21tb24gY2xvY2sgCmZyYW1ld29yayBzaWxlbnRseSBzZXQgbG93ZXIgY2xvY2sg
dGhhbiB0aGUgZ2l2ZW4gT1BQIGRlZmluZWQuCgo+PiBGaXhlczogNDI5NGE3NzliZDhkICgiUE0g
LyBkZXZmcmVxOiBleHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZSBkZXZfcG1fb3BwX3NldF9yYXRl
KCkiKQo+PiBSZXBvcnRlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBLb25pZWN6bnkgPGsua29uaWVjem55QHBhcnRuZXIu
c2Ftc3VuZy5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAx
NCArKysrKysrKysrKy0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4gaW5kZXggYzgzMjY3MzI3M2Ey
Li4zN2JkMzRkNTYyNWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmMKPj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+PiBAQCAtMjQzLDcgKzI0
Myw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wLAo+PiAgIHsKPj4gICAJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4+ICAgCXN0
cnVjdCBkZXZfcG1fb3BwICpvcHA7Cj4+IC0JdW5zaWduZWQgbG9uZyByYXRlOwo+PiArCXVuc2ln
bmVkIGxvbmcgcmF0ZSwgb3BwX3JhdGU7Cj4+ICAgCWludCByZXQ7Cj4+ICAgCj4+ICAgCS8qIEdl
dCB0aGUgY2xvY2sgdG8gcHJvdmlkZSBlYWNoIGJ1cyB3aXRoIHNvdXJjZSBjbG9jayAqLwo+PiBA
QCAtMjY3LDEzICsyNjcsMjEgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcnNlX29mKHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsCj4+ICAgCX0KPj4gICAKPj4gICAJcmF0ZSA9IGNsa19nZXRfcmF0
ZShidXMtPmNsayk7Cj4+IC0KPj4gLQlvcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcChkZXYs
ICZyYXRlLCAwKTsKPj4gKwlvcHBfcmF0ZSA9IHJhdGU7Cj4+ICsJb3BwID0gZGV2ZnJlcV9yZWNv
bW1lbmRlZF9vcHAoZGV2LCAmb3BwX3JhdGUsIDApOwo+PiAgIAlpZiAoSVNfRVJSKG9wcCkpIHsK
Pj4gICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGZpbmQgZGV2X3BtX29wcFxuIik7Cj4+ICAg
CQlyZXQgPSBQVFJfRVJSKG9wcCk7Cj4+ICAgCQlnb3RvIGVycl9vcHA7Cj4+ICAgCX0KPj4gKwkv
Kgo+PiArCSAqIEZJWE1FOiBVLWJvb3QgbGVhdmVzIGNsb2NrIHNvdXJjZSBhdCBpbmNvcnJlY3Qg
UExMLCB0aGlzIHJlc3VsdHMKPj4gKwkgKiBpbiBjbG9jayByYXRlIG91dHNpZGUgZGVmaW5lZCBP
UFAgcmF0ZS4gV29yayBhcm91bmQgdGhpcyBidWcgYnkKPj4gKwkgKiBzZXR0aW5nIGNsb2NrIHJh
dGUgdG8gcmVjb21tZW5kZWQgb25lLgo+PiArCSAqLwo+PiArCWlmIChyYXRlID4gb3BwX3JhdGUp
Cj4+ICsJCWNsa19zZXRfcmF0ZShidXMtPmNsaywgb3BwX3JhdGUpOwo+PiArCj4+ICAgCWJ1cy0+
Y3Vycl9mcmVxID0gZGV2X3BtX29wcF9nZXRfZnJlcShvcHApOwo+PiAgIAlkZXZfcG1fb3BwX3B1
dChvcHApOwo+PiAgIAo+Pgo+CkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhE
ClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
