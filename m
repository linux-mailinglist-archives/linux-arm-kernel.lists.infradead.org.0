Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32B7BD81F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtYBbLWqd5O2Bt03sPBlyXJ0TjGK8FhbaJ3RnWN/5Cs=; b=G1uA+9nNFFxE2r
	Fg3Kuf5sCV5+7dk773CHwT/0jlWir2zJeCc3BV5/TKSiJNiSpJ+SCVOGu/C2RB0b8yjh0rrjzolCc
	cvGG1Rsahiqjvs0kW1IHdT7beCsbF3tM5EhtdxXnUP/oVi4pj5BAD23jHzp90QLkwgSvtgRSHEuE6
	LAzvd4EdBVKOlDSOA82EFgLDI1ItyP1O/wDKCkIbV8e3OtspBd0Mqrnx3mIog655tl2cXlHa0LzOt
	dD+VI+6KBXBzwQ4HtpQiaPBahgqZXSHSJJY7KPXQl4UHtJPhsXzVZDxQ2+RERdjAFZTO8eq0WEccd
	iA75d2luQrq5JiY7RZsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0Tn-0007bA-5j; Wed, 25 Sep 2019 06:08:47 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0TU-0007aO-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:08:31 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190925060819epoutp025b52781b3dd0e2463c8ade660e9977e3~HmW_HzF_-2418924189epoutp02m
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 06:08:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190925060819epoutp025b52781b3dd0e2463c8ade660e9977e3~HmW_HzF_-2418924189epoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569391699;
 bh=NVSqgS2sD3/bkGbAWvXS1ICQ4/XfwFVNzH6vZ3uBpAc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=tdtrMAQTO/h3zjIB+p1CA0FYyYtK9Kl++wjI5TPba9KyRgdqqXU/OFwL5qEadtCr5
 5k7ykNtjAi3yRCxrReY/RTVcJM37Ch3F5pvsgUIVLk+2L6Qe0jD2vR/9EVEJEYqTGt
 35q7b7nfIi2iJ7WUf4yUuavzQEjAnzvTuCOEjoVQ=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190925060819epcas1p3852244ec3df9ed08372c2464adbb60fe~HmW9y2g_A1302913029epcas1p3C;
 Wed, 25 Sep 2019 06:08:19 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.153]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46dSKX5hCDzMqYkh; Wed, 25 Sep
 2019 06:08:16 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 3E.AE.04144.0540B8D5; Wed, 25 Sep 2019 15:08:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925060816epcas1p2a22fe3c6cd996269b95f40e030fccdc2~HmW7EXp2f2871028710epcas1p2t;
 Wed, 25 Sep 2019 06:08:16 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190925060816epsmtrp2ff6b0a96c92f9122ba56859a55ac5639~HmW7DhQr43029130291epsmtrp2g;
 Wed, 25 Sep 2019 06:08:16 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-e8-5d8b0450b28c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 72.5B.04081.0540B8D5; Wed, 25 Sep 2019 15:08:16 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925060815epsmtip277b765775c4a29f81a5abf1c2c6e3577~HmW6l-Lsz0925809258epsmtip2D;
 Wed, 25 Sep 2019 06:08:15 +0000 (GMT)
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <0cceb46a-fca1-62ae-c2cc-fb0f9b9bd132@samsung.com>
Date: Wed, 25 Sep 2019 15:12:39 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c06ca89f2b40e0282f19727b95da5e5b0158d7e3.camel@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmgW4AS3esQd9ELYv781oZLTbOWM9q
 8fKQpsX8I+dYLa58fc9mMX3vJjaLSfcnsFicP7+B3WLF3Y+sFpseX2O1uLxrDpvF594jjBYz
 zu9jslh75C67xe3GFWwWMya/ZHMQ8Ni0qpPN4861PWwe97uPM3lsXlLvsfHdDiaPvi2rGD0+
 b5ILYI/KtslITUxJLVJIzUvOT8nMS7dV8g6Od443NTMw1DW0tDBXUshLzE21VXLxCdB1y8wB
 ul1JoSwxpxQoFJBYXKykb2dTlF9akqqQkV9cYquUWpCSU2BZoFecmFtcmpeul5yfa2VoYGBk
 ClSYkJ1xcsc0xoJNxhXvXjxha2CcodXFyMkhIWAicef1LMYuRi4OIYEdjBL7F81gh3A+MUpM
 WvkIKvONUaLj4xzmLkYOsJbPPckQ8b2MEq+XPIAqes8o8WJNKzPIXGGBcIm5rx+wgiREBP4z
 SpxethLMYQYZ9XXeBhaQKjYBLYn9L26wgdj8AooSV388ZgSxeQXsJI5c/QVWwyKgKvHrwWQw
 W1QgQuLTg8OsEDWCEidnPmEBOYlTwFPiRjPYGGYBcYlbT+YzQdjyEs1bZzOD7JUQOMYucX7K
 VyaIr10kWnumsEPYwhKvjm+BsqUkPr/bywZhV0usPHmEDaK5g1Fiy/4LrBAJY4n9SyczgSxm
 FtCUWL9LHyKsKLHz91xGCJtXomHjb3aII/gk3n3tYYUEHa9ER5sQRImyxOUHd5kmMCrPQvLN
 LCQvzELywiyEZQsYWVYxiqUWFOempxYbFhgiR/cmRnDC1jLdwTjlnM8hRgEORiUeXgfWrlgh
 1sSy4srcQ4wSHMxKIryzZIBCvCmJlVWpRfnxRaU5qcWHGE2BgT2RWUo0OR+YTfJK4g1NjYyN
 jS1MDM1MDQ2VxHk90htihQTSE0tSs1NTC1KLYPqYODilGhjlxL6n9fdz7z8gtuHLZ029/Iq3
 FqEHgpa9/39L30Ru2b2UD7wXZq/d9bn1xSGbevOLN/bNTblX7tIyL83xTVvQjjebG+ymyi58
 9EBussyf1+s18tdt89Vz8lrisXvGi5UH17nPbt+XJ9F8a2KA5FYb562cahd3S68Jm3FQsJNh
 zVUbjdrNd0UnKbEUZyQaajEXFScCACZmiSDuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCIsWRmVeSWpSXmKPExsWy7bCSvG4AS3eswfOlLBb357UyWmycsZ7V
 4uUhTYv5R86xWlz5+p7NYvreTWwWk+5PYLE4f34Du8WKux9ZLTY9vsZqcXnXHDaLz71HGC1m
 nN/HZLH2yF12i9uNK9gsZkx+yeYg4LFpVSebx51re9g87ncfZ/LYvKTeY+O7HUwefVtWMXp8
 3iQXwB7FZZOSmpNZllqkb5fAlXFyxzTGgk3GFe9ePGFrYJyh1cXIwSEhYCLxuSe5i5GLQ0hg
 N6PEjnOHmboYOYHikhLTLh5lhqgRljh8uBgkLCTwllFi9R09EFtYIFxi7usHrCC9IgL/GSUe
 th1jBHGYBb4xSvR9XsYGMXUrk8T0H2dZQFrYBLQk9r+4wQZi8wsoSlz98ZgRxOYVsJM4cvUX
 WA2LgKrErweTwWxRgQiJwztmQdUISpyc+YQF5CJOAU+JG81gY5gF1CX+zLvEDGGLS9x6Mp8J
 wpaXaN46m3kCo/AsJN2zkLTMQtIyC0nLAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5
 uZsYwXGrpbmD8fKS+EOMAhyMSjy8DqxdsUKsiWXFlbmHGCU4mJVEeGfJAIV4UxIrq1KL8uOL
 SnNSiw8xSnOwKInzPs07FikkkJ5YkpqdmlqQWgSTZeLglGpgZDkxeeOmDV7bzR5qvvbaliT1
 hMtUbo1Ol8DdFwpbtHbvd3nG7CGq+nb+wqgs4aYf85cUno6XvjAnrP7WgdulBS58k1u/HFjD
 JJe7WrG0WsIwX+nfuYtHRDlidv9/8uy+PefB31knj0zJ3/3+5eXNMw72WWf+YGm0LxPydv42
 8888Zd2/88N9LymxFGckGmoxFxUnAgAKosEA1wIAAA==
X-CMS-MailID: 20190925060816epcas1p2a22fe3c6cd996269b95f40e030fccdc2
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
 <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
 <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
 <c06ca89f2b40e0282f19727b95da5e5b0158d7e3.camel@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_230829_014244_95D2A78C 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjUuIOyYpO2bhCAyOjQ3LCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBI
aSwKPiAKPiBPbiBGcmksIDIwMTktMDktMjAgYXQgMTE6MTQgKzA5MDAsIENoYW53b28gQ2hvaSB3
cm90ZToKPj4gSGkgQXJ0dXIsCj4+Cj4+IEkgdHJpZWQgdG8ganVzdCBidWlsZCB0aGlzIHBhdGNo
IG9uIG1haW5saW5lIGtlcm5lbCBvciBsaW51eC1uZXh0Lgo+PiBCdXQsIHdoZW4gSSBhcHBsaWVk
IHRoZW0sIG1lcmdlIGNvbmZsaWN0IGhhcHBlbnMuIFlvdSBkaWRuJ3QgZGV2ZWxvcAo+PiB0aGVt
IG9uIGxhdGVzdCB2ZXJzaW9uLiBQbGVhc2UgcmViYXNlIHRoZW0gYmFzZWQgb24gbGF0ZXN0IG1h
aW5saW5lIGtlcm5lbC4KPiAKPiBJIGRldmVsb3BlZCBvbiB0b3Agb2YgbmV4dC0yMDE5MDkxOCBv
biB3aGljaCBJIGFwcGxpZWQKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEx
MTQ5NDk3LyBhcyBJIG1lbnRpb25lZCBpbiB0aGUgY292ZXIKPiBsZXR0ZXIuIFRoZSBkZXZfcG1f
cW9zIHBhdGNoZXMgYW5kIG15IFJGQyBoYXZlIGp1c3QgY2xlYW5seSByZWJhc2VkIHRvZ2V0aGVy
IG9uCj4gdG9wIG9mIG5leHQtMjAxOTA5MjAuIENvdWxkIHlvdSBjaGVjayBpZiB5b3UgaGF2ZSB0
aGUgZGV2X3BtX3FvcyBwYXRjaGVzICh2NSwKPiB0aGUgdmVyc2lvbiBudW1iZXIgaXMgbWlzc2lu
ZyBpbiB0aGlzIG9uZTsgbGluayBhYm92ZSkgYW5kIGlmIHNvLCB3aGVyZSBkb2VzIHRoZQo+IGNv
bmZsaWN0IGFwcGVhcj8KCkkgZmFjZWQgb24gdGhlIG1lcmdlIGNvbmZsaWN0IG9mIGRyaXZlcnMv
ZGV2ZnJlcS9leHlub3MtYnVzLmMuCkkgdGhpbmsgdGhhdCBJdCBpcyBub3QgcmVsYXRlZCB0byB0
byBkZXZfcG1fcW9zIHBhdGNoLgoKTWF5YmUsIEthbWlsJ3MgcGF0Y2hlc1sxXSBjaGFuZ2VkIHRo
ZSBtYW55IHRoaW5ncyBvZiBleHlub3MtYnVzLmMKSWYgeW91ciB0ZXN0IGJyYW5jaCBkb2Vzbid0
IGNvbnRhaW4gZm9sbG93aW5nIHBhdGNoZXMsIAp5b3UgbmVlZCB0byByZWJhc2UgeW91ciBwYXRj
aGVzIGJhc2VkIG9uIGxhdGVzdCBtYWlubGluZSBrZXJuZWwgCmZyb20gTGludXMgVG9ydmFsZC4K
WzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwODM2NjMvCi0gW1JFU0VO
RCBQQVRDSCB2NSAwLzRdIGFkZCBjb3VwbGVkIHJlZ3VsYXRvcnMgZm9yIEV4eW5vczU0MjIvNTgw
MAoKVG9kYXksIEkgdHJpZWQgdG8gYXBwbHkgdGhlc2UgcGF0Y2ggYWdhaW4gYmFzZWQgb24gbGF0
ZXN0IG1haW5saW5lIGtlcm5lbC4KVGhlIG1lcmdlIGNvbmZsaWN0IGhhcHBlbiBzdGlsbC4KCi0g
bWVyZ2UgY29uZmxpY3QgbG9nCkFwcGx5aW5nOiBkZXZmcmVxOiBleHlub3MtYnVzOiBFeHRyYWN0
IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KCkKZXJyb3I6IHBhdGNoIGZhaWxlZDogZHJpdmVycy9k
ZXZmcmVxL2V4eW5vcy1idXMuYzozMzQKZXJyb3I6IGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmM6IHBhdGNoIGRvZXMgbm90IGFwcGx5ClBhdGNoIGZhaWxlZCBhdCAwMDAxIGRldmZyZXE6IGV4
eW5vcy1idXM6IEV4dHJhY3QgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoKQoKCj4gCj4+IE9uIDE5
LiA5LiAyMC4g7Jik7KCEIDEwOjA3LCBDaGFud29vIENob2kgd3JvdGU6Cj4+PiBIaSBBcnR1ciwK
Pj4+Cj4+PiBPbiB2MSwgSSBtZW50aW9uZWQgdGhhdCB3ZSBuZWVkIHRvIGRpc2N1c3MgaG93IHRv
IGNoYW5nZQo+Pj4gdGhlIHYyIGZvciB0aGlzLiBCdXQsIEkgaGF2ZSBub3QgcmVjZWl2ZWQgYW55
IHJlcGx5IGZyb20geW91IG9uIHYxLgo+Pj4gQW5kLCB3aXRob3V0IHlvdXIgcmVwbHkgZnJvbSB2
MSwgeW91IGp1c3Qgc2VuZCB2Mi4KPj4+Cj4+PiBJIHRoaW5rIHRoYXQgaXQgaXMgbm90IHByb3Bl
ciBkZXZlbG9wbWVudCBzZXF1ZW5jZS4KPj4+IEkgaGF2ZSBzcGVudCBtYW55IHRpbWVzIHRvIHJl
dmlldyB5b3VyIHBhdGNoZXMKPj4+IGFuZCBhbHNvIEknbGwgcmV2aWV3IHlvdXIgcGF0Y2hlcy4g
WW91IGhhdmUgdG8gdGFrZSBjYXJlCj4+PiB0aGUgcmVwbHkgb2YgcmV2aWV3ZXIgYW5kIGFuZCBr
ZWVwIHRoZSBiYXNpYyBydWxlCj4+PiBvZiBtYWlsaW5nIGNvbnRyaWJ1dGlvbiBmb3IgZGlzY3Vz
c2lvbi4KPj4+Cj4+PiBPbiAxOS4gOS4gMTkuIOyYpO2bhCAxMToyMiwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4+Pj4gVGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsy
XSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPj4+PiBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVy
LiBFeHRlbmRpbmcgdGhlIGRldmZyZXEgZHJpdmVyIHdpdGggaW50ZXJjb25uZWN0Cj4+Pj4gY2Fw
YWJpbGl0aWVzIHN0YXJ0ZWQgYXMgYSByZXNwb25zZSB0byB0aGUgaXNzdWUgcmVmZXJlbmNlZCBp
biBbM10uIFRoZQo+Pj4+IHBhdGNoZXMgY2FuIGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2lj
YWwgZ3JvdXBzOgo+Pj4+Cj4+Pj4gKGEpIFJlZmFjdG9yaW5nIHRoZSBleGlzdGluZyBkZXZmcmVx
IGRyaXZlciBpbiBvcmRlciB0byBpbXByb3ZlIHJlYWRhYmlsaXR5Cj4+Pj4gYW5kIGFjY29tbW9k
YXRlIGZvciBhZGRpbmcgbmV3IGNvZGUgKHBhdGNoZXMgMDEtLTA0LzExKS4KPj4+Pgo+Pj4+IChi
KSBUd2Vha2luZyB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yayB0byBzdXBwb3J0IHRoZSBleHlu
b3MtYnVzIHVzZSBjYXNlCj4+Pj4gKHBhdGNoZXMgMDUtLTA3LzExKS4gRXhwb3J0aW5nIG9mX2lj
Y19nZXRfZnJvbV9wcm92aWRlcigpIGFsbG93cyB1cyB0bwo+Pj4+IGF2b2lkIGhhcmRjb2Rpbmcg
ZXZlcnkgc2luZ2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9yIGRyaXZlciBzb3VyY2UsIGFuZAo+
Pj4+IHJlbGF4aW5nIHRoZSByZXF1aXJlbWVudCBjb250YWluZWQgaW4gdGhhdCBmdW5jdGlvbiBy
ZW1vdmVzIHRoZSBuZWVkIHRvCj4+Pj4gcHJvdmlkZSBkdW1teSBub2RlIElEcyBpbiB0aGUgRFQu
IEFkanVzdGluZyB0aGUgbG9naWMgaW4KPj4+PiBhcHBseV9jb25zdHJhaW50cygpIChkcml2ZXJz
L2ludGVyY29ubmVjdC9jb3JlLmMpIGFjY291bnRzIGZvciB0aGUgZmFjdAo+Pj4+IHRoYXQgZXZl
cnkgYnVzIGlzIGEgc2VwYXJhdGUgZW50aXR5IGFuZCB0aGVyZWZvcmUgYSBzZXBhcmF0ZSBpbnRl
cmNvbm5lY3QKPj4+PiBwcm92aWRlciwgYWxiZWl0IGNvbnN0aXR1dGluZyBhIHBhcnQgb2YgYSBs
YXJnZXIgaGllcmFyY2h5Lgo+Pj4+Cj4+Pj4gKGMpIEltcGxlbWVudGluZyBpbnRlcmNvbm5lY3Qg
cHJvdmlkZXJzIGluIHRoZSBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyCj4+Pj4gYW5kIGFkZGlu
ZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQgcGxhdGZvcm0sIG5hbWVs
eQo+Pj4+IEV4eW5vczQ0MTIgKHBhdGNoZXMgMDgtLTA5LzExKS4gRHVlIHRvIHRoZSBmYWN0IHRo
YXQgdGhpcyBhaW1zIHRvIGJlIGEKPj4+PiBnZW5lcmljIGRyaXZlciBmb3IgdmFyaW91cyBFeHlu
b3MgU29Dcywgbm9kZSBJRHMgYXJlIGdlbmVyYXRlZCBkeW5hbWljYWxseQo+Pj4+IHJhdGhlciB0
aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBh
cHByb2FjaCwKPj4+PiBidXQgZGVwZW5kcyBvbiBjaGFuZ2VzIGRlc2NyaWJlZCBpbiAoYikuCj4+
Pj4KPj4+PiAoZCkgSW1wbGVtZW50aW5nIGEgc2FtcGxlIGludGVyY29ubmVjdCBjb25zdW1lciBm
b3IgZXh5bm9zLW1peGVyIHRhcmdldGVkCj4+Pj4gYXQgdGhlIGlzc3VlIHJlZmVyZW5jZWQgaW4g
WzNdLCBhZ2FpbiB3aXRoIERUIGluZm8gb25seSBmb3IgRXh5bm9zNDQxMgo+Pj4+IChwYXRjaGVz
IDEwLS0xMS8xMSkuCj4+Pj4KPj4+PiBJbnRlZ3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNv
bm5lY3QgZnVuY3Rpb25hbGl0aWVzIGlzIGFjaGlldmVkIGJ5Cj4+Pj4gdXNpbmcgZGV2X3BtX3Fv
c18qKCkgQVBJWzVdLiBBbGwgbmV3IGNvZGUgd29ya3MgZXF1YWxseSB3ZWxsIHdoZW4KPj4+PiBD
T05GSUdfSU5URVJDT05ORUNUIGlzICduJyAoYXMgaW4gZXh5bm9zX2RlZmNvbmZpZykgaW4gd2hp
Y2ggY2FzZSBhbGwKPj4+PiBpbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9ucyBhcmUgbm8tb3BzLgo+
Pj4+Cj4+Pj4gVGhpcyBwYXRjaHNldCBkZXBlbmRzIG9uIFs1XS4KPj4+Pgo+Pj4+IC0tLSBDaGFu
Z2VzIHNpbmNlIHYxIFs2XToKPj4+PiAqIFJlYmFzZSBvbiBbNF0gKGNvdXBsZWQgcmVndWxhdG9y
cykuCj4+Pj4gKiBSZWJhc2Ugb24gWzVdIChkZXZfcG1fcW9zIGZvciBkZXZmcmVxKS4KPj4+PiAq
IFVzZSBkZXZfcG1fcW9zXyooKSBBUElbNV0gaW5zdGVhZCBvZiBvdmVycmlkaW5nIGZyZXF1ZW5j
eSBpbgo+Pj4+ICAgZXh5bm9zX2J1c190YXJnZXQoKS4KPj4+PiAqIFVzZSBJRFIgZm9yIG5vZGUg
SUQgYWxsb2NhdGlvbi4KPj4+PiAqIEF2b2lkIGdvdG8gaW4gZnVuY3Rpb25zIGV4dHJhY3RlZCBp
biBwYXRjaGVzIDAxICYgMDIgKGNmLiBwYXRjaCAwNCkuCj4+Pj4gKiBSZXZlcnNlIG9yZGVyIG9m
IG11bHRpcGxpY2F0aW9uIGFuZCBkaXZpc2lvbiBpbgo+Pj4+ICAgbWl4ZXJfc2V0X21lbW9yeV9i
YW5kd2lkdGgoKSAocGF0Y2ggMTEpIHRvIGF2b2lkIGludGVnZXIgb3ZlcmZsb3cuCj4+Pj4KPj4+
PiAtLS0KPj4+PiBBcnR1ciDFmndpZ2/FhAo+Pj4+IFNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xh
bmQKPj4+PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4+Pj4KPj4+PiAtLS0KPj4+PiBSZWZlcmVuY2Vz
Ogo+Pj4+IFsxXSBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QucnN0Cj4+
Pj4gWzJdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcmNvbm5lY3QvaW50
ZXJjb25uZWN0LnR4dAo+Pj4+IFszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwODYxNzU3LyAob3JpZ2luYWwgaXNzdWUpCj4+Pj4gWzRdIGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvY292ZXIvMTEwODM2NjMvIChjb3VwbGVkIHJlZ3VsYXRvcnM7IG1lcmdlZCkKPj4+
PiBbNV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTE0OTQ5Ny8gKGRldl9w
bV9xb3MgZm9yIGRldmZyZXEpCj4+Pj4gWzZdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
Y292ZXIvMTEwNTQ0MTcvICh2MSBvZiB0aGlzIFJGQykKPj4+Pgo+Pj4+IEFydHVyIMWad2lnb8WE
ICgxMCk6Cj4+Pj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBFeHRyYWN0IGV4eW5vc19idXNfcHJv
ZmlsZV9pbml0KCkKPj4+PiAgIGRldmZyZXE6IGV4eW5vcy1idXM6IEV4dHJhY3QgZXh5bm9zX2J1
c19wcm9maWxlX2luaXRfcGFzc2l2ZSgpCj4+Pj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBDaGFu
Z2UgZ290by1iYXNlZCBsb2dpYyB0byBpZi1lbHNlIGxvZ2ljCj4+Pj4gICBkZXZmcmVxOiBleHlu
b3MtYnVzOiBDbGVhbiB1cCBjb2RlCj4+Pj4gICBpbnRlcmNvbm5lY3Q6IEV4cG9ydCBvZl9pY2Nf
Z2V0X2Zyb21fcHJvdmlkZXIoKQo+Pj4+ICAgaW50ZXJjb25uZWN0OiBSZWxheCByZXF1aXJlbWVu
dCBpbiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKQo+Pj4+ICAgaW50ZXJjb25uZWN0OiBSZWxh
eCBjb25kaXRpb24gaW4gYXBwbHlfY29uc3RyYWludHMoKQo+Pj4+ICAgYXJtOiBkdHM6IGV4eW5v
czogQWRkIHBhcmVudHMgYW5kICNpbnRlcmNvbm5lY3QtY2VsbHMgdG8gRXh5bm9zNDQxMgo+Pj4+
ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQWRkIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRv
IGV4eW5vcy1idXMKPj4+PiAgIGFybTogZHRzOiBleHlub3M6IEFkZCBpbnRlcmNvbm5lY3RzIHRv
IEV4eW5vczQ0MTIgbWl4ZXIKPj4+Pgo+Pj4+IE1hcmVrIFN6eXByb3dza2kgKDEpOgo+Pj4+ICAg
ZHJtOiBleHlub3M6IG1peGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKPj4+Pgo+Pj4+ICAu
Li4vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgICAgfCAgIDEgKwo+Pj4+
ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAgMTAgKwo+
Pj4+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jICAgICAgICAgICAgICAgICAgfCAzMTkg
KysrKysrKysrKysrKy0tLS0tCj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21p
eGVyLmMgICAgICAgICB8ICA3MSArKystCj4+Pj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUu
YyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQo+Pj4+ICBpbmNsdWRlL2xpbnV4L2ludGVyY29u
bmVjdC1wcm92aWRlci5oICAgICAgICAgfCAgIDYgKwo+Pj4+ICA2IGZpbGVzIGNoYW5nZWQsIDMy
NyBpbnNlcnRpb25zKCspLCA5MiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4KPj4+Cj4+Cj4+CgoKLS0g
CkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
