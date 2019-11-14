Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF2FBFFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 07:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tg/OI+49vQJad5PjhVLe2gbeV4Wn0xfjhcg596Jai9s=; b=YhhyQDHHkz2zmk
	JEHD4c8JUttsCTeUZLAH2L35OSXiiczQnJq4ABJ8WiXo4EyN7viMEwwLr3U1vK61E/4oz0RYDKkrA
	oiDdqkE8ErcdTXXzPC0QKjjt1SM0RFYNeNOhDGZ+naP//pF7E6fT5vVd9BkwcF51oSO+VQEhdPXu2
	kTo+x7KFHzaW/1Q+oJTJ0VbiBl6YGpDUunt1+AJl+pxTLvC903yYjhkhcVHo6ENpm0w/BlUwIvNu/
	cqGTgs/odrXNMC3u8JBxfPX0z/5RDStFwAhplsnSwrdOErFhZYMK1W5bOJTPv0macmsy+b8y4eSiM
	pmJ1bFSwQwFuCRvrEoxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8Co-0003Qr-1R; Thu, 14 Nov 2019 06:02:10 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8Cf-0003Pk-6M
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 06:02:03 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191114060157epoutp021a97598ca92daad1888e4e5ad43a0f8d~W8hrz8no00978909789epoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:01:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191114060157epoutp021a97598ca92daad1888e4e5ad43a0f8d~W8hrz8no00978909789epoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573711317;
 bh=844ttLUpNaaPNiYTmal0WcOkLi3t0g8bvltfaZY1WMc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=VBYQcNJQ1iVNHjtoMtIsf0jCA1BJO3EQRz+CWpVBs2r1VuP4QKMXy3zDqeXRSq1zg
 PNDynsc3i7IWj8txMXkZA8sPR3XcQbHHSUu+hEXXKIAHsetN796T5eIK2eFKsZCnqP
 8r6IBl/eNGiQvLYwCWkc3odzhhZPbqpgvMlTLqJM=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191114060156epcas1p16c31d92b8a67fe418f70844229933091~W8hrbCU_n2708227082epcas1p1W;
 Thu, 14 Nov 2019 06:01:56 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47D9q658vBzMqYkn; Thu, 14 Nov
 2019 06:01:54 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 52.86.04068.2DDECCD5; Thu, 14 Nov 2019 15:01:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191114060153epcas1p439994a9d2b13c795d4c91d3e86d24c24~W8honRn_j2958129581epcas1p4g;
 Thu, 14 Nov 2019 06:01:53 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191114060153epsmtrp269df35d7f834333cbe5b05004f6757af~W8homjPdy0512805128epsmtrp2b;
 Thu, 14 Nov 2019 06:01:53 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-1e-5dccedd259b1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.74.24756.1DDECCD5; Thu, 14 Nov 2019 15:01:53 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191114060153epsmtip1cb6f59fbc93e5ea722e2eda400d1f728~W8hoWvjWh2319423194epsmtip1T;
 Thu, 14 Nov 2019 06:01:53 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: Kamil Konieczny <k.konieczny@samsung.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, k.konieczny@partner.samsung.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9e0a4aa6-46a6-3ca6-42db-11ed55b468dd@samsung.com>
Date: Thu, 14 Nov 2019 15:07:38 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <dd5bc937-e776-f717-1cf3-ee0e17621304@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Ta0gUURTmzuzOjtXWbc06bVHbRJDSqpNtjZE96LWUlFBED8QGHVZzH8PO
 allU2lvLXhrpZiSUWkKpq5mJtmVSLFZGllgRGUpZlpHa0167O0b++84533fP+c69lyY19ZSW
 TrI6BLuVNzPUMEX17eAw/aMP92LDM9+EcBV5ZUru6I0/iCvszVNyxzq6Sa65uVzF3d/zXsW5
 OlqVXEttAcX1ZTciLq/5BsFdbnyh4p5nXKQWjjC6SjMpY+WF3cZbPXWE8WhVKTL2uSbFKDcm
 z0sU+ATBrhOs8baEJKspilm5Jm5xnGF2OKtnI7k5jM7KW4QoZkl0jH5Zktk7HqNL5c0p3lQM
 L0lM2Px5dluKQ9Al2iRHFCOICWYxUgyVeIuUYjWFxtssc9nw8JkGL3FzcuLJvXaxjNtWUp5B
 paNOfRYKoAHPgpy77VQWGkZrcA2Cbnc7IQe9CPK7H5Fy8AVB9rVa4p+kJqcFyYV6BO9enh3U
 f0TwqadL4WMF4mT40lRM+vAYvBOOpTtVPhKJnxOQ3fvDT6JwCLi72igfHoWnwJNvHciH1Xg+
 fM8942+nwNPgleurl0PTQXg9NH3mZcpo8OR3+o8JwAvge+2AyodJPA6edZ4jZDwZ9l4947cA
 OEcFBT/eItnCEnicXz2IA+Hd3SqVjLXQ11NPyXgHXPI0UrL4EIIq90OlXIgAd1EO4RuIxMFQ
 Vhsmp6fA9YGzSG48Eno+H1H6KIDVcOiARqZMhZb2F4NbHA/nD2ZSxxHjHGLHOcSCc4gF5/9m
 hUhRisYKomQxCRIrGobetgv5n25IZA268yC6AWEaMSPUN4PuxWqUfKqUZmlAQJPMGPV0qzel
 TuDTtgt2W5w9xSxIDcjgXfYJUhsUb/N+BKsjjjXMjIiI4Gaxsw0sy4xTLyopitVgE+8QkgVB
 FOz/dAQdoE1HE+qe9q/Q7DcV/Hav1vRXNSm3pgVuXxzd1rg2d3/mwi2t+l/MU3W/OGPTwfrc
 S/s8w5df6ZpWk6abW1HSeidrILB1fHD/zverQtu11y6fJo2Hl55+9bou5mr0vulbO6s9Xyeu
 i00/lXG7YUNG4YW2ioFJHZWndn1b6/mZtOAcUZwqHgkLZRRSIs+GkHaJ/wtmJ1T90AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsWy7bCSnO7Ft2diDTZ8NrTYOGM9q0Xfvv+M
 Fgs+zWC16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFrcbV7A5
 8HhsWtXJ5rF5Sb3HwXd7mDz6tqxi9Pi8SS6ANYrLJiU1J7MstUjfLoErY1JzUcF6i4rlGxrZ
 Ghif6HYxcnJICJhI7Jh8mbGLkYtDSGA3o8TKOefYIBKSEtMuHmXuYuQAsoUlDh8uhqh5yyjx
 p+84E0iNsEC2xLfTy8BqRARqJTq+SIPUMAvcZZJY9+0DE0TDGyaJv28PgA1lE9CS2P/iBpjN
 L6AocfXHY0YQm1fATuLnlNlgQ1kEVCUebvoOViMqECHxfPsNqBpBiZMzn7CA2JwC9hI/d/1m
 B7GZBdQl/sy7xAxhi0vcejKfCcKWl2jeOpt5AqPwLCTts5C0zELSMgtJywJGllWMkqkFxbnp
 ucWGBYZ5qeV6xYm5xaV56XrJ+bmbGMHRp6W5g/HykvhDjAIcjEo8vAdEz8QKsSaWFVfmHmKU
 4GBWEuHVyAMK8aYkVlalFuXHF5XmpBYfYpTmYFES532adyxSSCA9sSQ1OzW1ILUIJsvEwSnV
 wMhgu4O/dV5UyOZU268PF0xrWySRWP527z03Z+sTN07MvTIvPSMs9+2i66EnBFfLPzQ9MV0j
 0TlpT61JX1+v0YwZa9nu+Fg/7BK4v8JNpeD6T6OM1kMFJqceMm/h2ZWflXp6q0Kp0OeUzh3n
 PYMu2zzqWdD/d1v4ysK7M//ce9pxwCzrzgQTx51KLMUZiYZazEXFiQA966KAugIAAA==
X-CMS-MailID: 20191114060153epcas1p439994a9d2b13c795d4c91d3e86d24c24
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
 <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
 <0ce56e65-d989-18f8-af84-2fbd74ba20aa@samsung.com>
 <d742e7be-ca79-ae9e-6cc2-dc1fae08d252@samsung.com>
 <dd5bc937-e776-f717-1cf3-ee0e17621304@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_220201_648533_89D7E672 
X-CRM114-Status: GOOD (  34.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGkgS2FtaWwsCgpPbiAxMS8xNC8xOSAxMjoxMiBBTSwgS2FtaWwgS29uaWVjem55IHdyb3RlOgo+
IEhpIENoYW53b28sCj4gCj4gT24gMTQuMTAuMjAxOSAwODo0NiwgQ2hhbndvbyBDaG9pIHdyb3Rl
Ogo+PiBIaSBNYXJlaywKPj4KPj4gT24gMTkuIDEwLiAxMS4g7Jik7ZuEIDg6MzMsIE1hcmVrIFN6
eXByb3dza2kgd3JvdGU6Cj4+PiBIaSBDaGFud29vLAo+Pj4KPj4+IE9uIDEwLjEwLjIwMTkgMDQ6
NTAsIENoYW53b28gQ2hvaSB3cm90ZToKPj4+PiBPbiAyMDE564WEIDEw7JuUIDA47J28IDIyOjQ5
LCBrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tIHdyb3RlOgo+Pj4+PiBDb21taXQgNDI5
NGE3NzliZDhkICgiUE0gLyBkZXZmcmVxOiBleHlub3MtYnVzOiBDb252ZXJ0IHRvIHVzZQo+Pj4+
PiBkZXZfcG1fb3BwX3NldF9yYXRlKCkiKSBpbnRyb2R1Y2VkIGVycm9yczoKPj4+Pj4gZXh5bm9z
LWJ1czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c193Y29yZSAoIDg0MDAwIEtI
eiB+IDQwMDAwMCBLSHopCj4+Pj4+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2aWNlIHJlZ2lzdGVy
ZWQ6IHNvYzpidXNfbm9jICggNjcwMDAgS0h6IH4gMTAwMDAwIEtIeikKPj4+Pj4gZXh5bm9zLWJ1
czogbmV3IGJ1cyBkZXZpY2UgcmVnaXN0ZXJlZDogc29jOmJ1c19mc3lzX2FwYiAoMTAwMDAwIEtI
eiB+IDIwMDAwMCBLSHopCj4+Pj4+IC4uLgo+Pj4+PiBleHlub3MtYnVzIHNvYzpidXNfd2NvcmU6
IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVx
IDUzMjAwMDAwMCAoLTM0KQo+Pj4+PiBleHlub3MtYnVzIHNvYzpidXNfbm9jOiBkZXZfcG1fb3Bw
X3NldF9yYXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAxMTEwMDAwMDAg
KC0zNCkKPj4+Pj4gZXh5bm9zLWJ1cyBzb2M6YnVzX2ZzeXNfYXBiOiBkZXZfcG1fb3BwX3NldF9y
YXRlOiBmYWlsZWQgdG8gZmluZCBjdXJyZW50IE9QUCBmb3IgZnJlcSAyMjIwMDAwMDAgKC0zNCkK
Pj4+Pj4KPj4+Pj4gVGhleSBhcmUgY2F1c2VkIGJ5IGluY29ycmVjdCBQTEwgYXNzaWduZWQgdG8g
Y2xvY2sgc291cmNlLCB3aGljaCByZXN1bHRzCj4+Pj4+IGluIGNsb2NrIHJhdGUgb3V0c2lkZSBv
ZiBPUFAgcmFuZ2UuIEFkZCB3b3JrYXJvdW5kIGZvciB0aGlzIGluCj4+Pj4+IGV4eW5vc19idXNf
cGFyc2Vfb2YoKSBieSBhZGp1c3RpbmcgY2xvY2sgcmF0ZSB0byB0aG9zZSBwcmVzZW50IGluIE9Q
UC4KPj4+PiBJZiB0aGUgY2xvY2sgY2F1c2VkIHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0IHRoZSBp
bml0aWFsIGNsb2NrIG9uIERldmljZVRyZWUKPj4+PiB3aXRoIGFzc2lnbmVkLWNsb2NrLSogcHJv
cGVydGllcy4gQmVjYXVzZSB0aGUgcHJvYmUgdGltZSBvZiBjbG9jayBkcml2ZXIKPj4+PiBpcyBl
YXJseSB0aGFuIHRoZSBhbnkgZGV2aWNlIGRyaXZlcnMuCj4+Pj4KPj4+PiBJdCBpcyBub3QgcHJv
cGVyIHRvIGZpeCB0aGUgY2xvY2sgaXNzdWUgb24gb3RoZXIgZGV2aWNlIGRyaXZlci4KPj4+PiBJ
IHRoaW5rIHlvdSBjYW4gZml4IGl0IGJ5IHVzaW5nIHRoZSBzdXBwb3J0ZWQgY2xvY2sgcHJvcGVy
dGllcy4KPj4+Cj4+PiBUaGlzIGlzc3VlIGlzIGFib3V0IHNvbWV0aGluZyBjb21wbGV0ZWx5IGRp
ZmZlcmVudC4gVGhlIE9QUHMgZGVmaW5lZCBpbiAKPj4+IERUIGNhbm5vdCBiZSBhcHBsaWVkLCBi
ZWNhdXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkZXJpdmUgdGhlIG5lZWRlZCAKPj4+IGNsb2Nr
IHJhdGUgZnJvbSB0aGUgYm9vdGxvYWRlci1jb25maWd1cmVkIGNsb2NrIHRvcG9sb2d5IChtYWlu
bHkgZHVlIHRvIAo+Pj4gbGFjayBvZiBjb21tb24gZGl2aXNvciB2YWx1ZXMgZm9yIHNvbWUgb2Yg
dGhlIHBhcmVudCBjbG9ja3MpLiBTb21lIHRpbWUgCj4+PiBhZ28gTHVrYXN6IHRyaWVkIGluaXRp
YWxseSB0byByZWRlZmluZSB0aGlzIGNsb2NrIHRvcG9sb2d5IHVzaW5nIAo+Pj4gYXNzaWduZWQt
Y2xvY2stcmF0ZXMvcGFyZW50cyBwcm9wZXJ0aWVzIChzZWUgCj4+PiBodHRwczovL3Byb3RlY3Qy
LmZpcmVleWUuY29tL3VybD9rPTRiODBjMDMwNDQ1OWJjOGUuNGI4MTRiN2YtZjg3ZjFlMWFlZTFh
ODVjMCZ1PWh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzcvMTUvMjc2KSwgYnV0IGl0IGhhcyBs
aW1pdGF0aW9ucyBhbmQgc29tZSAKPj4+IHN1Y2ggY2hhbmdlcyBoYXMgdG8gYmUgZG9uZSBpbiBi
b290bG9hZGVyLiBVbnRpbCB0aGlzIGlzIHJlc29sdmVkLCAKPj4+IGRldmZyZXEgc2ltcGx5IGNh
bm5vdCBzZXQgc29tZSBvZiB0aGUgZGVmaW5lZCBPUFBzLgo+Pgo+PiBBcyB5b3UgbWVudGlvbmVk
LCB0aGUgd3Jvbmcgc2V0dGluZyBpbiBib290bG9hZGVyIGNhdXNlIHRoZSB0aGlzIGlzc3VlLgo+
PiBTbywgdGhpcyBwYXRjaCBjaGFuZ2UgdGhlIHJhdGUgb24gZXh5bm9zLWJ1cy5jIGluIG9yZGVy
IHRvIGZpeAo+PiB0aGUgaXNzdWUgd2l0aCB3b3JrYXJvdW5kIHN0eWxlLiAKPj4KPj4gQnV0LCBh
bHNvLCBpdCBjYW4gYmUgZml4ZWQgYnkgaW5pdGlhbGl6aW5nIHRoZSBjbG9jayByYXRlIG9uIERU
Cj4+IGFsdGhvdWdoIGl0IGlzIG5vdCBmdW5kYW1lbnRhbCBzb2x1dGlvbiBhcyB5b3UgbWVudGlv
bmVkLgo+Pgo+PiBJZiBhYm92ZSB0d28gbWV0aG9kIGFyZSB3b3JrYXJvdW5kIHdheSwgSSB0aGlu
ayB0aGF0IHNldCB0aGUgY2xvY2sKPj4gcmF0ZSBpbiBEVCBpcyBwcm9wZXIuIFRoZSByb2xlIG9m
ICdhc3NpZ25lZC1jbG9jay0qJyBwcm9wZXJ0aWVzCj4+IGlzIGZvciB0aGlzIGNhc2UgaW4gb3Jk
ZXIgdG8gc2V0IHRoZSBpbml0aWFsIGZyZXF1ZW5jeSBvbiBwcm9iZSB0aW1lLgo+IAo+IEkgY2Fu
IGFkZCAnYXNzaWduZWQtY2xvY2stKicgdG8gRFQsIGJ1dCB0aGUgaXNzdWUgaXMgY2F1c2VkIGlu
IG9wcCBwb2ludHMsCj4gc28gdGhlIHdhcm5pbmcgZnJvbSBleHlub3MtYnVzIHdpbGwgc3RpbGwg
YmUgdGhlcmUuCj4gCj4gQmVmb3JlIHRoaXMgZml4LCBkZXZmcmVxIHdpbGwgaXNzdWUgd2Fybmlu
ZyBhbmQgdGhlbiBjaGFuZ2UgY2xvY2sgdG8gbWF4Cj4gZnJlcXVlbmN5IHdpdGhpbiBvcHAgcmFu
Z2UuIFRoaXMgZml4IG1hc2sgd2FybmluZywgYW5kIGFzIE1hcmVrIGFuZAo+IEx1a2FzeiBMdWJh
IHdyb3RlcywgdGhlIHByb3BlciBmaXggd2lsbCBiZSB0byBtYWtlIGNoYW5nZXMgaW4gdS1ib290
Cj4gKGFuZCBjb25uZWN0IHByb3BlciBQTExzIHRvIElQcykuCgpQTEwgY291bGQgYmUgY2hhbmdl
ZCBieSBjbG9jayBkZXZpY2UgZHJpdmVyIGluIHRoZSBsaW51eCBrZXJuZWwuCklmIHlvdSBkb24n
dCBhZGQgdGhlIHN1cHBvcnRlZCBmcmVxdWVuY3kgaW50byBQTEwgZnJlcXVlbmN5IHRhYmxlIApv
ZiBjbG9jayBkZXZpY2UgZHJpdmVyLCB3aWxsIGZhaWwgdG8gY2hhbmdlIHRoZSB3YW50ZWQgZnJl
cXVlbmN5Cm9uIHRoZSBsaW51eCBrZXJuZWwuIEl0IG1lYW5zIHRoYXQgaXQgaXMgbm90IGZpeGVk
IGJ5IG9ubHkgdG91Y2hpbmcKdGhlIGJvb3Rsb2FkZXIuIAoKQXMgeW91IGNvbW1lbnRlZCwgdGhl
IHdyb25nIG9wcCBwb2ludHMgd2hpY2ggYXJlIHNwZWNpZmllZCBvbiBkdApjYXVzZSB0aGlzIGlz
c3VlLiBVc3VhbGx5LCBoYXZlIHRvIGluaXRpYWxpemUgdGhlIGNsb2NrIHJhdGUgb24gZHQKYnkg
dXNpbmcgJ2Fzc2lnbmVkLWNsb2Nrcy0qJyBwcm9wZXJ0eSBhbmQgdGhlbiB1c2UgdGhlIGNsb2Nr
CndpdGggdGhlIHByZWZlcmFibGUgY2xvY2sgcmF0ZS4gSSB0aGluayB0aGF0IHdlIGhhdmUgdG8g
Zml4CnRoZSBmdW5kYW1lbnRhbCBwcm9ibGVtLiAKCldpdGhvdXQgYm9vdGxvYWRlciBwcm9ibGVt
LCB5b3UgY2FuIGZpeCBpdCBieSBpbml0aWFsaXppbmcKdGhlIGNsb2NrIG9uIGR0IHdpdGggJ2Fz
c2lnbmVkLWNsb2Nrcy0qJyBwcm9wZXJ0eS4KCkFzIEkga25ldyB0aGF0IGl0IGlzIGNvcnJlY3Qg
d2F5IGFuZCBJIGFsd2F5cyB0cmllZCB0byBkbyB0aGlzIG1ldGhvZApmb3IgcmVzb2x2aW5nIHRo
ZSBzaW1pbGFyIGNsb2NrIGlzc3VlLgoKTGFzdGx5LCBJIHRoaW5rIHRoYXQgbXkgb3BpbmlvbiBp
cyBtb3JlIHNpbXBsZSBhbmQgY29ycmVjdC4KSXQgY291bGQgZ2l2ZSB0aGUgbW9yZSBjb3JyZWN0
IGluZm9ybWF0aW9uIHRvIGxpbnV4IGtlcm5lbCB1c2VyCndoaWNoIHJlZmVyIHRvIHRoZSBkZXZp
Y2UgdHJlZSBmaWxlLgoKMS4gWW91ciBzdWdnZXN0aW9uIAoJYS4gQWRkIG9wcC10YWJsZSB3aXRo
IHVuc3VwcG9ydGVkIGZyZXF1ZW5jeSBvbiBkdAoJYi4gVHJ5IHRvIGNoYW5nZSB0aGUgY2xvY2sg
cmF0ZSBvbiBleHlub3MtYnVzLmMgYnkgdXNpbmcgdW5zdXBwb3J0ZWQgZnJlcXVlbmN5IGZyb20g
b3BwLXRhYmxlCgljLiBJZiBmYWlsZWQsIHJldHJ5IHRvIGNoYW5nZSB0aGUgY2xvY2sgcmF0ZSBv
biBleHlub3MtYnVzLmMKCjIuIE15IG9waW5pb24KCWEuIEluaXRpYWxpemUgdGhlIFBMTCBvciBh
bnkgY2xvY2sgYnkgdXNpbmcgYXNzaWduZWQtY2xvY2stKiBwcm9wZXJ0eSBvbiBkdAoJICAgYW5k
IGFkZCBvcHAtdGFibGUgd2l0aCBzdXBwb3J0ZWQgZnJlcXVlbmN5IG9uIGR0CgliLiBUcnkgdG8g
Y2hhbmdlIHRoZSBjbG9jayByYXRlIG9uIGV4eW5vcy1idXMuYyBieSB1c2luZyBzdXBwb3J0ZWQg
ZnJlcXVlbmN5IGZyb20gb3BwLXRhYmxlCgo+IAo+IFNlY29uZCBzb2x1dGlvbiB3b3VsZCBiZSB0
byB3cml0ZSBkb3duIG5ldyBPUFAgcG9pbnRzIHdpdGggY3VycmVudGx5IHVzZWQKPiBmcmVxdWVu
Y2llcywgYW5kIHdpdGggbWF4IG9uZSBmb3IgNTMyIE1Iei4KPiAKPj4gSSB0aGluayB0aGF0IHRo
ZSBwcmV2aW91cyBwYXRjaFsxXSBvZiBLYW1pbCBLb25pZWN6bnkgaXMgbWlzc2luZwo+PiB0aGUg
cGF0Y2hlcyB3aGljaCBpbml0aWFsaXplIHRoZSBjbG9jayByYXRlIG9uIERUIGZpbGUuCj4+IFsx
XSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxk
cy9saW51eC5naXQvY29tbWl0Lz9pZD00Mjk0YTc3OWJkOGRmZjZjNjVlN2U4NWZmZTdhMWVhMjM2
ZTkyYTY4Cj4+Cj4+Pgo+Pj4gVGhpcyBpc3N1ZSB3YXMgdGhlcmUgZnJvbSB0aGUgYmVnaW5uaW5n
LCByZWNlbnQgS2FtaWwncyBwYXRjaCBvbmx5IAo+Pj4gcmV2ZWFsZWQgaXQuIEluIGZhY3QgaXQg
d2FzIGV2ZW4gd29yc2UgLSBkZXZmcmVxIGFuZCBjb21tb24gY2xvY2sgCj4+PiBmcmFtZXdvcmsg
c2lsZW50bHkgc2V0IGxvd2VyIGNsb2NrIHRoYW4gdGhlIGdpdmVuIE9QUCBkZWZpbmVkLgo+Pj4K
Pj4+Pj4gRml4ZXM6IDQyOTRhNzc5YmQ4ZCAoIlBNIC8gZGV2ZnJlcTogZXh5bm9zLWJ1czogQ29u
dmVydCB0byB1c2UgZGV2X3BtX29wcF9zZXRfcmF0ZSgpIikKPj4+Pj4gUmVwb3J0ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPj4+Pj4gU2lnbmVkLW9mZi1ieTog
S2FtaWwgS29uaWVjem55IDxrLmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+Pj4+PiAt
LS0KPj4+Pj4gICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMTQgKysrKysrKysrKyst
LS0KPj4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMg
Yi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4+Pj4+IGluZGV4IGM4MzI2NzMyNzNhMi4u
MzdiZDM0ZDU2MjViIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+Pj4gQEAgLTI0
Myw3ICsyNDMsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcGFyc2Vfb2Yoc3RydWN0IGRldmlj
ZV9ub2RlICpucCwKPj4+Pj4gICB7Cj4+Pj4+ICAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+
ZGV2Owo+Pj4+PiAgIAlzdHJ1Y3QgZGV2X3BtX29wcCAqb3BwOwo+Pj4+PiAtCXVuc2lnbmVkIGxv
bmcgcmF0ZTsKPj4+Pj4gKwl1bnNpZ25lZCBsb25nIHJhdGUsIG9wcF9yYXRlOwo+Pj4+PiAgIAlp
bnQgcmV0Owo+Pj4+PiAgIAo+Pj4+PiAgIAkvKiBHZXQgdGhlIGNsb2NrIHRvIHByb3ZpZGUgZWFj
aCBidXMgd2l0aCBzb3VyY2UgY2xvY2sgKi8KPj4+Pj4gQEAgLTI2NywxMyArMjY3LDIxIEBAIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+
PiAgIAl9Cj4+Pj4+ICAgCj4+Pj4+ICAgCXJhdGUgPSBjbGtfZ2V0X3JhdGUoYnVzLT5jbGspOwo+
Pj4+PiAtCj4+Pj4+IC0Jb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCAmcmF0ZSwg
MCk7Cj4+Pj4+ICsJb3BwX3JhdGUgPSByYXRlOwo+Pj4+PiArCW9wcCA9IGRldmZyZXFfcmVjb21t
ZW5kZWRfb3BwKGRldiwgJm9wcF9yYXRlLCAwKTsKPj4+Pj4gICAJaWYgKElTX0VSUihvcHApKSB7
Cj4+Pj4+ICAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRldl9wbV9vcHBcbiIpOwo+
Pj4+PiAgIAkJcmV0ID0gUFRSX0VSUihvcHApOwo+Pj4+PiAgIAkJZ290byBlcnJfb3BwOwo+Pj4+
PiAgIAl9Cj4+Pj4+ICsJLyoKPj4+Pj4gKwkgKiBGSVhNRTogVS1ib290IGxlYXZlcyBjbG9jayBz
b3VyY2UgYXQgaW5jb3JyZWN0IFBMTCwgdGhpcyByZXN1bHRzCj4+Pj4+ICsJICogaW4gY2xvY2sg
cmF0ZSBvdXRzaWRlIGRlZmluZWQgT1BQIHJhdGUuIFdvcmsgYXJvdW5kIHRoaXMgYnVnIGJ5Cj4+
Pj4+ICsJICogc2V0dGluZyBjbG9jayByYXRlIHRvIHJlY29tbWVuZGVkIG9uZS4KPj4+Pj4gKwkg
Ki8KPj4+Pj4gKwlpZiAocmF0ZSA+IG9wcF9yYXRlKQo+Pj4+PiArCQljbGtfc2V0X3JhdGUoYnVz
LT5jbGssIG9wcF9yYXRlKTsKPj4+Pj4gKwo+Pj4+PiAgIAlidXMtPmN1cnJfZnJlcSA9IGRldl9w
bV9vcHBfZ2V0X2ZyZXEob3BwKTsKPj4+Pj4gICAJZGV2X3BtX29wcF9wdXQob3BwKTsKPj4+Pj4g
ICAKPj4+Pj4KPj4+Pgo+Pj4gQmVzdCByZWdhcmRzCj4+Pgo+Pgo+Pgo+IAoKCi0tIApCZXN0IFJl
Z2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
