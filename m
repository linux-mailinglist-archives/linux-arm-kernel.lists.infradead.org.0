Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C154BD85D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEFuarphkSj79uD9302do+hM03AV9Xzinae4zYG9MQM=; b=Tpm9gFUHpdoa8M
	21CRD1OYaqqGxew4aPbP04Hue8hnIu+8zSTbUulp2IuXfmhNCHWcBgJZZKj3nfZJ3dSRihIarei9j
	knj/5GNxrL9a7hIW7zm8amnyHQPr0EW/ze2qH5VO8wrpIVlw0oeNCNVo6OaisOQSKbrXtBsCTRilR
	60ABgdKATS7F3Lbbp7kIJygngvm1U8HqA8Q68vo46B6d4GwrkbGEWFmE/UpMsjl3n3/Hz7n67OZSR
	FLeUe00g0e/7GQqw80bNmVvS2xjFw6gdOk7zfBFnF7eupyH2CrgcWgFENZgTlx3Lvk+6mwJh7CCG+
	cY7ktrqvm+6Db0TaNRlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0va-0008Um-7x; Wed, 25 Sep 2019 06:37:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0vM-0008UG-1n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:37:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190925063713euoutp02e7911178c7615be8160712781c6ff5f2~HmwNYPxmq0703007030euoutp026
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 06:37:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190925063713euoutp02e7911178c7615be8160712781c6ff5f2~HmwNYPxmq0703007030euoutp026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569393433;
 bh=PTpIyUHIXTqz2c8IaDFpxmCXnxMUnHqIRiezGA01XFo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=KsiR5q7bZYXZfnIEx6QD3+MbIR9A1IcHObdt5Iu7sN/JxEmlT3BhwkePrM0Npq5Js
 0Xf4icDVroST3RNE84ezy0e/itKDsssmU9ENr/8mNLdkLIxJrCw7aneqAblJC5c9Ab
 Wwjhse5Ya9Gk/8ki1MypfAxJA+aHhDdE2Lg1tUUI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190925063713eucas1p23cbed2b2805d4f73fee77092c55da655~HmwM1RwYs0327503275eucas1p2r;
 Wed, 25 Sep 2019 06:37:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 95.14.04374.91B0B8D5; Wed, 25
 Sep 2019 07:37:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925063712eucas1p2ff9604b97cacc1dbe1d24cbd610fe3f6~HmwMb-_P20418704187eucas1p2c;
 Wed, 25 Sep 2019 06:37:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925063712eusmtrp1c5a77334479134d990a5cdbc969d8dec~HmwMaoLYn1275412754eusmtrp1d;
 Wed, 25 Sep 2019 06:37:12 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-75-5d8b0b196250
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F6.B8.04117.81B0B8D5; Wed, 25
 Sep 2019 07:37:12 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190925063711eusmtip106b3032f7da3c3cb22b42522162f369d~HmwLmlcBK2459024590eusmtip1x;
 Wed, 25 Sep 2019 06:37:11 +0000 (GMT)
Message-ID: <f7387513d3c11cea7a7d35652457c1e7d7fed009.camel@samsung.com>
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 08:37:11 +0200
In-Reply-To: <0cceb46a-fca1-62ae-c2cc-fb0f9b9bd132@samsung.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3Z2zo7LyXEavlZ0GQkVXsr64wMjTQpOEFEgGKXV0pOKl2RH
 LTPLLpraBVNLXZmal3SxdNO8rDKYKytJCdMkFSWzUcOVqYl0oc0zsf+e93nf3/e8L3w0IR8m
 l9MxCUmcKkEZp6Ck4uYXc90+nkuvhG/KHqDxyN1MhHXF9ST+YtyA30+bSVxm6ibxu5lvFC56
 qqdw/kieGJf/KCZxT0+DBNcOT5JYP9ZP4l7DHQpPXTMhXNzTLsJa07AED56vpXBxwRcqSM7q
 NTkUO9T/hGJHrnSK2Maqc6zO2ipirzdpEDulX7VPclC6LZKLi0nhVH7bj0qjKx6PEYmVAafy
 GmtQBirxzUVONDBb4WP1X1EuktJyphaBsV8tFoppBNO9bxzFFAKLOV+0gNQ/qJcIjfsI7mjN
 Dv4zgjz1LbF9SsawcM+aM0+4MaFQahkl7ZpiAuHN4M95wJ2xIvj07DthLwimRgQvKyoo+5SY
 8YK5V6OEXTvZiJtDhZSQ7Q0Tr6/bEmhbgiv8aXWz2wSzGi4+uj3/DjDnaei9OuvYdSeUFvY5
 WDf42tkkEfRK6Cq4KhY0D+NtI6QAZyDQ15gIoREAHZ1vSXsYwWyAeoOfYMsgQ/fL8c4O0FoM
 8yPAuMDAhKuwjwvkNxcRgi2D7Cy5IBVgKHERQIALD/qJPKRQL96i/u8W9WJqOSI0yINL5uOj
 OH5LAnfSl1fG88kJUb4RJ+L1yPbpuv52zrSi9t/HjIihkcJZFkTmhstJZQqfGm9EQBMKd5l6
 pc2SRSpTT3OqE0dUyXEcb0QraLHCQ5a2ZPSQnIlSJnGxHJfIqRa6ItppeQbS3l52NkA9sDEk
 a1dhW2iYf0jfmUkNXl/g6ep/tPyAoSW/uvK4NO1auvWCPNiaHje799xc5No6Rhv2PDSkoMpU
 eniiKHhUt+aSl08ge8McEVQb7dSVXhbrMbGnZrbSqsjR1Xnu7NB+eDi+27L98mRVS+b+Bj/f
 hmbndV3ek2B2WaoQ89HKzRsJFa/8B7RNDNpwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7oS3N2xBkde61rcn9fKaLFxxnpW
 i5eHNC2uf3nOajH/yDlWiytf37NZTN+7ic1i0v0JLBYLPs1gtTh/fgO7xYq7H1ktNj2+xmpx
 edccNovPvUcYLWac38dksfbIXXaL240r2CxmTH7J5iDksWlVJ5vHnWt72Dzudx9n8ti8pN5j
 47sdTB59W1YxenzeJBfAHqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
 k5Kak1mWWqRvl6CXsXD3Y+aCxdYVEzYvY2xgnKnXxcjJISFgIrF+9Xr2LkYuDiGBpYwSy3ad
 ZoJISEh8XH+DFcIWlvhzrYsNougJo8Tic8/YQRK8Ah4Si951gjUIC4RLzH39AKyBTcBe4uzt
 b0wgDSIC7xklPmx/B7aCWWAVk8SBroeMIFUsAqoSP08+YAaxOYE6pt6ZArXiE5PEpesnwUYx
 C2hKtG7/zQ5xh47E21N9LF2MHECrBSX+7hCGKJGXaN46m3kCo+AsJB2zEKpmIalawMi8ilEk
 tbQ4Nz232EivODG3uDQvXS85P3cTIzCKtx37uWUHY9e74EOMAhyMSjy8DqxdsUKsiWXFlbmH
 GCU4mJVEeGfJAIV4UxIrq1KL8uOLSnNSiw8xmgL9M5FZSjQ5H5hg8kriDU0NzS0sDc2NzY3N
 LJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MLosePnDtdbJf9eB5Oyc4ham1VN33TeIKFOs
 Z/503S1EZI7aikv7LQ/5nIi7sem/mF2KRf9j/rle5XtOtmfkHXrFOalEpe5187y+1/Kfuc8c
 UHy4QD6rvYVlgqererhR0QIlZ60Hm8IOnfD7ean43K5bh6OPnbrrqbtvo+EV3oJskzqzjqkB
 k5RYijMSDbWYi4oTAV93TW74AgAA
X-CMS-MailID: 20190925063712eucas1p2ff9604b97cacc1dbe1d24cbd610fe3f6
X-Msg-Generator: CA
X-CPGSPASS: Y
X-RootMTR: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
 <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
 <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
 <c06ca89f2b40e0282f19727b95da5e5b0158d7e3.camel@samsung.com>
 <0cceb46a-fca1-62ae-c2cc-fb0f9b9bd132@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_233716_230653_8E1449A7 
X-CRM114-Status: GOOD (  33.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 a.swigon@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 myungjoo.ham@samsung.com, "cpgs
 \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA5LTI1IGF0IDE1OjEyICswOTAwLCBDaGFud29vIENob2kgd3JvdGU6Cj4g
SGksCj4gCj4gT24gMTkuIDkuIDI1LiDsmKTtm4QgMjo0NywgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6
Cj4gPiBIaSwKPiA+IAo+ID4gT24gRnJpLCAyMDE5LTA5LTIwIGF0IDExOjE0ICswOTAwLCBDaGFu
d29vIENob2kgd3JvdGU6Cj4gPiA+IEhpIEFydHVyLAo+ID4gPiAKPiA+ID4gSSB0cmllZCB0byBq
dXN0IGJ1aWxkIHRoaXMgcGF0Y2ggb24gbWFpbmxpbmUga2VybmVsIG9yIGxpbnV4LW5leHQuCj4g
PiA+IEJ1dCwgd2hlbiBJIGFwcGxpZWQgdGhlbSwgbWVyZ2UgY29uZmxpY3QgaGFwcGVucy4gWW91
IGRpZG4ndCBkZXZlbG9wCj4gPiA+IHRoZW0gb24gbGF0ZXN0IHZlcnNpb24uIFBsZWFzZSByZWJh
c2UgdGhlbSBiYXNlZCBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVsLgo+ID4gCj4gPiBJIGRldmVs
b3BlZCBvbiB0b3Agb2YgbmV4dC0yMDE5MDkxOCBvbiB3aGljaCBJIGFwcGxpZWQKPiA+IGh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExNDk0OTcvIGFzIEkgbWVudGlvbmVkIGlu
IHRoZSBjb3Zlcgo+ID4gbGV0dGVyLiBUaGUgZGV2X3BtX3FvcyBwYXRjaGVzIGFuZCBteSBSRkMg
aGF2ZSBqdXN0IGNsZWFubHkgcmViYXNlZCB0b2dldGhlciBvbgo+ID4gdG9wIG9mIG5leHQtMjAx
OTA5MjAuIENvdWxkIHlvdSBjaGVjayBpZiB5b3UgaGF2ZSB0aGUgZGV2X3BtX3FvcyBwYXRjaGVz
ICh2NSwKPiA+IHRoZSB2ZXJzaW9uIG51bWJlciBpcyBtaXNzaW5nIGluIHRoaXMgb25lOyBsaW5r
IGFib3ZlKSBhbmQgaWYgc28sIHdoZXJlIGRvZXMgdGhlCj4gPiBjb25mbGljdCBhcHBlYXI/Cj4g
Cj4gSSBmYWNlZCBvbiB0aGUgbWVyZ2UgY29uZmxpY3Qgb2YgZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYy4KPiBJIHRoaW5rIHRoYXQgSXQgaXMgbm90IHJlbGF0ZWQgdG8gdG8gZGV2X3BtX3Fv
cyBwYXRjaC4KCkkgdGhpbmsgdGhhdCBpdCBpcyBhY3R1YWxseSByZWxhdGVkIHRvIHRoZSBzcGVj
aWZpYyB2ZXJzaW9uIG9mIGRldl9wbV9xb3MgKHY1KSB0aGF0CkkgdXNlZCBiZWNhdXNlIHBhdGNo
IDA4LzA4IG9mIGRldl9wbV9xb3Mgc2VyaWVzIG1vZGlmaWVzIGV4eW5vc19idXNfcHJvYmUoKSBp
bgpkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIChodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL3BhdGNoLzExMTQ5NTA3LykuCgpJIHdpbGwgcmViYXNlIHRoZSBuZXh0IFJGQyAodjMpIG9u
IGxhdGVzdCBkZXZfcG1fcW9zIHBhdGNoZXMgZnJvbSBMZW9uYXJkIGFuZCB0aGUKbGF0ZXN0IExp
bnV4LW5leHQga2VybmVsLgoKPiBNYXliZSwgS2FtaWwncyBwYXRjaGVzWzFdIGNoYW5nZWQgdGhl
IG1hbnkgdGhpbmdzIG9mIGV4eW5vcy1idXMuYwo+IElmIHlvdXIgdGVzdCBicmFuY2ggZG9lc24n
dCBjb250YWluIGZvbGxvd2luZyBwYXRjaGVzLCAKPiB5b3UgbmVlZCB0byByZWJhc2UgeW91ciBw
YXRjaGVzIGJhc2VkIG9uIGxhdGVzdCBtYWlubGluZSBrZXJuZWwgCj4gZnJvbSBMaW51cyBUb3J2
YWxkLgo+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgzNjYzLwo+
IC0gW1JFU0VORCBQQVRDSCB2NSAwLzRdIGFkZCBjb3VwbGVkIHJlZ3VsYXRvcnMgZm9yIEV4eW5v
czU0MjIvNTgwMAoKWWVzLCByZXF1aXJpbmcgS2FtaWwncyBwYXRjaGVzIGlzIG9uZSBvZiB0aGUg
Y2hhbmdlcyBpbiB0aGlzIFJGQyAodjIpLCBzaW5jZSB0aGV5CmFyZSBhbHJlYWR5IG1lcmdlZC4K
Cj4gVG9kYXksIEkgdHJpZWQgdG8gYXBwbHkgdGhlc2UgcGF0Y2ggYWdhaW4gYmFzZWQgb24gbGF0
ZXN0IG1haW5saW5lIGtlcm5lbC4KPiBUaGUgbWVyZ2UgY29uZmxpY3QgaGFwcGVuIHN0aWxsLgo+
IAo+IC0gbWVyZ2UgY29uZmxpY3QgbG9nCj4gQXBwbHlpbmc6IGRldmZyZXE6IGV4eW5vcy1idXM6
IEV4dHJhY3QgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoKQo+IGVycm9yOiBwYXRjaCBmYWlsZWQ6
IGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmM6MzM0Cj4gZXJyb3I6IGRyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmM6IHBhdGNoIGRvZXMgbm90IGFwcGx5Cj4gUGF0Y2ggZmFpbGVkIGF0IDAw
MDEgZGV2ZnJlcTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgp
Cj4gCj4gCj4gPiAKPiA+ID4gT24gMTkuIDkuIDIwLiDsmKTsoIQgMTA6MDcsIENoYW53b28gQ2hv
aSB3cm90ZToKPiA+ID4gPiBIaSBBcnR1ciwKPiA+ID4gPiAKPiA+ID4gPiBPbiB2MSwgSSBtZW50
aW9uZWQgdGhhdCB3ZSBuZWVkIHRvIGRpc2N1c3MgaG93IHRvIGNoYW5nZQo+ID4gPiA+IHRoZSB2
MiBmb3IgdGhpcy4gQnV0LCBJIGhhdmUgbm90IHJlY2VpdmVkIGFueSByZXBseSBmcm9tIHlvdSBv
biB2MS4KPiA+ID4gPiBBbmQsIHdpdGhvdXQgeW91ciByZXBseSBmcm9tIHYxLCB5b3UganVzdCBz
ZW5kIHYyLgo+ID4gPiA+IAo+ID4gPiA+IEkgdGhpbmsgdGhhdCBpdCBpcyBub3QgcHJvcGVyIGRl
dmVsb3BtZW50IHNlcXVlbmNlLgo+ID4gPiA+IEkgaGF2ZSBzcGVudCBtYW55IHRpbWVzIHRvIHJl
dmlldyB5b3VyIHBhdGNoZXMKPiA+ID4gPiBhbmQgYWxzbyBJJ2xsIHJldmlldyB5b3VyIHBhdGNo
ZXMuIFlvdSBoYXZlIHRvIHRha2UgY2FyZQo+ID4gPiA+IHRoZSByZXBseSBvZiByZXZpZXdlciBh
bmQgYW5kIGtlZXAgdGhlIGJhc2ljIHJ1bGUKPiA+ID4gPiBvZiBtYWlsaW5nIGNvbnRyaWJ1dGlv
biBmb3IgZGlzY3Vzc2lvbi4KPiA+ID4gPiAKPiA+ID4gPiBPbiAxOS4gOS4gMTkuIOyYpO2bhCAx
MToyMiwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiA+ID4gPiBUaGUgZm9sbG93aW5nIHBhdGNo
c2V0IGFkZHMgaW50ZXJjb25uZWN0WzFdWzJdIGZyYW1ld29yayBzdXBwb3J0IHRvIHRoZQo+ID4g
PiA+ID4gZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBkZXZmcmVxIGRy
aXZlciB3aXRoIGludGVyY29ubmVjdAo+ID4gPiA+ID4gY2FwYWJpbGl0aWVzIHN0YXJ0ZWQgYXMg
YSByZXNwb25zZSB0byB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10uIFRoZQo+ID4gPiA+ID4g
cGF0Y2hlcyBjYW4gYmUgc3ViZGl2aWRlZCBpbnRvIGZvdXIgbG9naWNhbCBncm91cHM6Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IChhKSBSZWZhY3RvcmluZyB0aGUgZXhpc3RpbmcgZGV2ZnJlcSBkcml2
ZXIgaW4gb3JkZXIgdG8gaW1wcm92ZSByZWFkYWJpbGl0eQo+ID4gPiA+ID4gYW5kIGFjY29tbW9k
YXRlIGZvciBhZGRpbmcgbmV3IGNvZGUgKHBhdGNoZXMgMDEtLTA0LzExKS4KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gKGIpIFR3ZWFraW5nIHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrIHRvIHN1cHBv
cnQgdGhlIGV4eW5vcy1idXMgdXNlIGNhc2UKPiA+ID4gPiA+IChwYXRjaGVzIDA1LS0wNy8xMSku
IEV4cG9ydGluZyBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKSBhbGxvd3MgdXMgdG8KPiA+ID4g
PiA+IGF2b2lkIGhhcmRjb2RpbmcgZXZlcnkgc2luZ2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9y
IGRyaXZlciBzb3VyY2UsIGFuZAo+ID4gPiA+ID4gcmVsYXhpbmcgdGhlIHJlcXVpcmVtZW50IGNv
bnRhaW5lZCBpbiB0aGF0IGZ1bmN0aW9uIHJlbW92ZXMgdGhlIG5lZWQgdG8KPiA+ID4gPiA+IHBy
b3ZpZGUgZHVtbXkgbm9kZSBJRHMgaW4gdGhlIERULiBBZGp1c3RpbmcgdGhlIGxvZ2ljIGluCj4g
PiA+ID4gPiBhcHBseV9jb25zdHJhaW50cygpIChkcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMp
IGFjY291bnRzIGZvciB0aGUgZmFjdAo+ID4gPiA+ID4gdGhhdCBldmVyeSBidXMgaXMgYSBzZXBh
cmF0ZSBlbnRpdHkgYW5kIHRoZXJlZm9yZSBhIHNlcGFyYXRlIGludGVyY29ubmVjdAo+ID4gPiA+
ID4gcHJvdmlkZXIsIGFsYmVpdCBjb25zdGl0dXRpbmcgYSBwYXJ0IG9mIGEgbGFyZ2VyIGhpZXJh
cmNoeS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gKGMpIEltcGxlbWVudGluZyBpbnRlcmNvbm5lY3Qg
cHJvdmlkZXJzIGluIHRoZSBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyCj4gPiA+ID4gPiBhbmQg
YWRkaW5nIHJlcXVpcmVkIERUIHByb3BlcnRpZXMgZm9yIG9uZSBzZWxlY3RlZCBwbGF0Zm9ybSwg
bmFtZWx5Cj4gPiA+ID4gPiBFeHlub3M0NDEyIChwYXRjaGVzIDA4LS0wOS8xMSkuIER1ZSB0byB0
aGUgZmFjdCB0aGF0IHRoaXMgYWltcyB0byBiZSBhCj4gPiA+ID4gPiBnZW5lcmljIGRyaXZlciBm
b3IgdmFyaW91cyBFeHlub3MgU29Dcywgbm9kZSBJRHMgYXJlIGdlbmVyYXRlZCBkeW5hbWljYWxs
eQo+ID4gPiA+ID4gcmF0aGVyIHRoYW4gaGFyZGNvZGVkLiBUaGlzIGhhcyBiZWVuIGRldGVybWlu
ZWQgdG8gYmUgYSBzaW1wbGVyIGFwcHJvYWNoLAo+ID4gPiA+ID4gYnV0IGRlcGVuZHMgb24gY2hh
bmdlcyBkZXNjcmliZWQgaW4gKGIpLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAoZCkgSW1wbGVtZW50
aW5nIGEgc2FtcGxlIGludGVyY29ubmVjdCBjb25zdW1lciBmb3IgZXh5bm9zLW1peGVyIHRhcmdl
dGVkCj4gPiA+ID4gPiBhdCB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGgg
RFQgaW5mbyBvbmx5IGZvciBFeHlub3M0NDEyCj4gPiA+ID4gPiAocGF0Y2hlcyAxMC0tMTEvMTEp
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJbnRlZ3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNv
bm5lY3QgZnVuY3Rpb25hbGl0aWVzIGlzIGFjaGlldmVkIGJ5Cj4gPiA+ID4gPiB1c2luZyBkZXZf
cG1fcW9zXyooKSBBUElbNV0uIEFsbCBuZXcgY29kZSB3b3JrcyBlcXVhbGx5IHdlbGwgd2hlbgo+
ID4gPiA+ID4gQ09ORklHX0lOVEVSQ09OTkVDVCBpcyAnbicgKGFzIGluIGV4eW5vc19kZWZjb25m
aWcpIGluIHdoaWNoIGNhc2UgYWxsCj4gPiA+ID4gPiBpbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9u
cyBhcmUgbm8tb3BzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGRlcGVuZHMg
b24gWzVdLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLS0gQ2hhbmdlcyBzaW5jZSB2MSBbNl06Cj4g
PiA+ID4gPiAqIFJlYmFzZSBvbiBbNF0gKGNvdXBsZWQgcmVndWxhdG9ycykuCj4gPiA+ID4gPiAq
IFJlYmFzZSBvbiBbNV0gKGRldl9wbV9xb3MgZm9yIGRldmZyZXEpLgo+ID4gPiA+ID4gKiBVc2Ug
ZGV2X3BtX3Fvc18qKCkgQVBJWzVdIGluc3RlYWQgb2Ygb3ZlcnJpZGluZyBmcmVxdWVuY3kgaW4K
PiA+ID4gPiA+ICAgZXh5bm9zX2J1c190YXJnZXQoKS4KPiA+ID4gPiA+ICogVXNlIElEUiBmb3Ig
bm9kZSBJRCBhbGxvY2F0aW9uLgo+ID4gPiA+ID4gKiBBdm9pZCBnb3RvIGluIGZ1bmN0aW9ucyBl
eHRyYWN0ZWQgaW4gcGF0Y2hlcyAwMSAmIDAyIChjZi4gcGF0Y2ggMDQpLgo+ID4gPiA+ID4gKiBS
ZXZlcnNlIG9yZGVyIG9mIG11bHRpcGxpY2F0aW9uIGFuZCBkaXZpc2lvbiBpbgo+ID4gPiA+ID4g
ICBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3aWR0aCgpIChwYXRjaCAxMSkgdG8gYXZvaWQgaW50ZWdl
ciBvdmVyZmxvdy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiBBcnR1ciDFmndp
Z2/FhAo+ID4gPiA+ID4gU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAo+ID4gPiA+ID4gU2Ft
c3VuZyBFbGVjdHJvbmljcwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IFJlZmVy
ZW5jZXM6Cj4gPiA+ID4gPiBbMV0gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25u
ZWN0LnJzdAo+ID4gPiA+ID4gWzJdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
bnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0LnR4dAo+ID4gPiA+ID4gWzNdIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4NjE3NTcvIChvcmlnaW5hbCBpc3N1ZSkKPiA+ID4gPiA+
IFs0XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgzNjYzLyAoY291cGxl
ZCByZWd1bGF0b3JzOyBtZXJnZWQpCj4gPiA+ID4gPiBbNV0gaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9jb3Zlci8xMTE0OTQ5Ny8gKGRldl9wbV9xb3MgZm9yIGRldmZyZXEpCj4gPiA+ID4g
PiBbNl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA1NDQxNy8gKHYxIG9m
IHRoaXMgUkZDKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBBcnR1ciDFmndpZ2/FhCAoMTApOgo+ID4g
PiA+ID4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBFeHRyYWN0IGV4eW5vc19idXNfcHJvZmlsZV9p
bml0KCkKPiA+ID4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVz
X3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkKPiA+ID4gPiA+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czog
Q2hhbmdlIGdvdG8tYmFzZWQgbG9naWMgdG8gaWYtZWxzZSBsb2dpYwo+ID4gPiA+ID4gICBkZXZm
cmVxOiBleHlub3MtYnVzOiBDbGVhbiB1cCBjb2RlCj4gPiA+ID4gPiAgIGludGVyY29ubmVjdDog
RXhwb3J0IG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCj4gPiA+ID4gPiAgIGludGVyY29ubmVj
dDogUmVsYXggcmVxdWlyZW1lbnQgaW4gb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkKPiA+ID4g
PiA+ICAgaW50ZXJjb25uZWN0OiBSZWxheCBjb25kaXRpb24gaW4gYXBwbHlfY29uc3RyYWludHMo
KQo+ID4gPiA+ID4gICBhcm06IGR0czogZXh5bm9zOiBBZGQgcGFyZW50cyBhbmQgI2ludGVyY29u
bmVjdC1jZWxscyB0byBFeHlub3M0NDEyCj4gPiA+ID4gPiAgIGRldmZyZXE6IGV4eW5vcy1idXM6
IEFkZCBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0eSB0byBleHlub3MtYnVzCj4gPiA+ID4gPiAg
IGFybTogZHRzOiBleHlub3M6IEFkZCBpbnRlcmNvbm5lY3RzIHRvIEV4eW5vczQ0MTIgbWl4ZXIK
PiA+ID4gPiA+IAo+ID4gPiA+ID4gTWFyZWsgU3p5cHJvd3NraSAoMSk6Cj4gPiA+ID4gPiAgIGRy
bTogZXh5bm9zOiBtaXhlcjogQWRkIGludGVyY29ubmVjdCBzdXBwb3J0Cj4gPiA+ID4gPiAKPiA+
ID4gPiA+ICAuLi4vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgICAgfCAg
IDEgKwo+ID4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSAgICAgICAg
ICAgICB8ICAxMCArCj4gPiA+ID4gPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyAgICAg
ICAgICAgICAgICAgIHwgMzE5ICsrKysrKysrKysrKystLS0tLQo+ID4gPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgICAgICAgICB8ICA3MSArKystCj4gPiA+ID4g
PiAgZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jICAgICAgICAgICAgICAgICAgIHwgIDEyICst
Cj4gPiA+ID4gPiAgaW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaCAgICAgICAg
IHwgICA2ICsKPiA+ID4gPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDMyNyBpbnNlcnRpb25zKCspLCA5
MiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
