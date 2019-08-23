Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510B09AA77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqrfPMarBdIskCwCYy5/OxMzY8ciDpClFNiHBAYHqcg=; b=AlfhO9kiksgvG4
	BVi6mm5mFjadmEsiFDyiJV4nHaRWqcSrQZb1tA9SfM2rgKWHe05tYu2mKzTLAHZ6lOFOuIy3mz5zq
	/Ac2+1K97iZgD6yDVwR4MwGjS/dm9JyZvcBMDHLe6tYKrRCndUshIqqwP4Dzbz262Q+SYwhfXayU3
	//MCkoozcVGQE0pKWT4fM0ojFGWb4zMIwNc12vplo7mYYwc+iAvw1GS1xvsRc9TxEFXABOG5LXjKY
	KVYk13bmEBkiaI53Dfk6yvn2NHrjz1bV14o7rdQyUWxnhr29hBFMvkVyXL/sV54HX76SRJbPgM8oc
	q/hBRkBoDghQf29wtlGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i154E-0005u9-O3; Fri, 23 Aug 2019 08:37:06 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1542-0005tQ-4z
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:36:55 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190823083651epoutp029061b1848caf8bc0ec6d9002d6886ee8~9gGO7eHpF1600916009epoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 08:36:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190823083651epoutp029061b1848caf8bc0ec6d9002d6886ee8~9gGO7eHpF1600916009epoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566549411;
 bh=Jh//ZjETIZTIB0Hr14rzwCtVt6hIjQpqxhpEd0T8eto=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ujnotxYEDsQ5nReZtP09QQgvji6a8V9sfjvHV2JunFcM77/iLlXiipZsjUP6uq6ov
 CFqrgDzBXVjoUw8Lf2lCtPZeCXw19lXw93S6ua5Qmc2JTbPXodw6rI9BOz3YNQ/+G6
 WuzKDs7q5HMR2KHjWoVLbJGJR474PspSmNXyKG6Q=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190823083650epcas1p10bc3830c11cd73b0dda8827841bfb295~9gGOJa83L0136601366epcas1p11;
 Fri, 23 Aug 2019 08:36:50 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46FFB809VvzMqYlm; Fri, 23 Aug
 2019 08:36:48 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 6A.43.04088.F95AF5D5; Fri, 23 Aug 2019 17:36:47 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190823083647epcas1p123579a604cbfd68557c4576248280400~9gGLMiNDS2827528275epcas1p11;
 Fri, 23 Aug 2019 08:36:47 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190823083647epsmtrp157f6213bc1729fb4206c027152d7a160~9gGLLvIo20080200802epsmtrp1G;
 Fri, 23 Aug 2019 08:36:47 +0000 (GMT)
X-AuditID: b6c32a35-85dff70000000ff8-61-5d5fa59fb07d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.FC.03638.F95AF5D5; Fri, 23 Aug 2019 17:36:47 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190823083646epsmtip2ee3fd334328a0e60877f3f55599c3313~9gGK4MYot1724517245epsmtip2k;
 Fri, 23 Aug 2019 08:36:46 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>, Viresh Kumar
 <viresh.kumar@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <c03f5a54-4c7c-f574-55ba-d84b6b160a06@samsung.com>
Date: Fri, 23 Aug 2019 17:40:40 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70231FF65C1A50FD6830D88FEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEJsWRmVeSWpSXmKPExsWy7bCmru78pfGxBv3dFhaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8Xn3iOMFrcbV7BZrD53kM2i69BfNouN
 Xz0ceD3e32hl91iwqdRj06pONo871/aweWxeUu+x8d0OJo+D7/YwefRtWcXo8XmTXABnVLZN
 RmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZgaGuoaWFuZJCXmJuqq2Si0+ArltmDtDRSgpliTml
 QKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwCywK94sTc4tK8dL3k/FwrQwMDI1OgwoTsjM6e
 ucwFUyQrek69YmxgvCzSxcjJISFgIjH533f2LkYuDiGBHYwSLz8vYoZwPjFKfN5ynQ3C+cYo
 sfXyfhaYlv8z3jNCJPYySjw9+JUVJCEk8J5R4vfiwC5GDg5hgUCJ2bvSQMIiAuESN5ZOBVvB
 LDCbRWL6oqNMIAk2AS2J/S9usIHY/AKKEld/PGYE6eUVsJPYNtsGJMwioCrRuOUd2F5RgQiJ
 Tw8Og63iFRCUODnzCVicUyBWYt2rB4wgNrOAuMStJ/OZIGx5ieats8G+kRDYxS7x79EFVogH
 XICGzoSyhSVeHd/CDmFLSbzsb4OyqyVWnjzCBtHcwSixZT9Ms7HE/qWTmUAOZRbQlFi/Sx8i
 rCix8/dcRgibV6Jh4292iCP4JN597WEFKQeJd7QJQZQoS1x+cJdpAqPyLCTvzELywiwkL8xC
 WLaAkWUVo1hqQXFuemqxYYEhcmRvYgSnZy3THYxTzvkcYhTgYFTi4T3RFRcrxJpYVlyZe4hR
 goNZSYS3bCJQiDclsbIqtSg/vqg0J7X4EKMpMLQnMkuJJucDc0deSbyhqZGxsbGFiaGZqaGh
 kjjvwh8WsUIC6YklqdmpqQWpRTB9TBycUg2MmTs2PHnJbDfRXzOnenvsVImaudLyzJZ7spJP
 TVyzo3H/RIEvCY33BRh/nLu8btuKpW+zJ6/IaHz1LPyPyZW26wk3f9XpVO57tu7+6QWHi0Rf
 xJas81bIPPzodXHJ/JteDYaxvvKHDh8JfMAVM2VqyIeu98Gqsv9nZ3bYvLFOn1mpOZU1yuf+
 HiWW4oxEQy3mouJEABrMdsDlAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLIsWRmVeSWpSXmKPExsWy7bCSvO78pfGxBt92slkcOraV3eLr6VOM
 Fi8PaVpM37uJzeL8+Q3sFmeb3rBbrLj7kdVi0+NrrBafe48wWtxuXMFmsfrcQTaLrkN/2Sw2
 fvVw4PV4f6OV3WPBplKPTas62TzuXNvD5rF5Sb3Hxnc7mDwOvtvD5NG3ZRWjx+dNcgGcUVw2
 Kak5mWWpRfp2CVwZnT1zmQumSFb0nHrF2MB4WaSLkZNDQsBE4v+M94xdjFwcQgK7GSUO317H
 BJGQlJh28ShzFyMHkC0scfhwMUTNW0aJ21ens4DEhQUCJWbvSgMpFxEIlzj69Q8zSA2zwFwW
 iQWfJkMN/cUiMWXBTTaQKjYBLYn9L26A2fwCihJXfzxmBBnEK2AnsW22DUiYRUBVonHLOxYQ
 W1QgQuLwjlmMIDavgKDEyZlPwOKcArES6149AIszC6hL/Jl3iRnCFpe49WQ+E4QtL9G8dTbz
 BEbhWUjaZyFpmYWkZRaSlgWMLKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS83M3MYIjVUtr
 B+OJE/GHGAU4GJV4eAs64mKFWBPLiitzDzFKcDArifCWTQQK8aYkVlalFuXHF5XmpBYfYpTm
 YFES55XPPxYpJJCeWJKanZpakFoEk2Xi4JRqYGwyaAm370u/6/9McU+G7SxmwdNNN1Pj4qsX
 vti/+aGymVpHy72/G/4c6ri79W2vbXSOi1bZirW7Wf79nHLeyvSqlN3LtniLLw8r13W+nnz/
 /7Yrr5i32X+T5VurtUH9+D/fr73P07fOqLEy0d9oFxQt7djebLQ/58Tu6HSVyaq806vf+0za
 YqjEUpyRaKjFXFScCADLlrbs0AIAAA==
X-CMS-MailID: 20190823083647epcas1p123579a604cbfd68557c4576248280400
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1@epcas4p3.samsung.com>
 <af14021b98254032e856397b54329756c1cc59c0.1566314535.git.leonard.crestez@nxp.com>
 <e2ba9b0d-1930-0d2a-c262-72f0f85c86d0@samsung.com>
 <VI1PR04MB7023A7AC7DDE349BF6D2D2C9EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <921d9eb8-aa38-6e67-ac2e-55e01bf630f5@samsung.com>
 <VI1PR04MB7023D551332373BE98CA60E8EEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <4bdc0742-42ab-1ab6-4868-409eb9738cd8@samsung.com>
 <VI1PR04MB70231FF65C1A50FD6830D88FEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013654_435310_721BF555 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDIyLiDsmKTtm4QgOToyNCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDIy
LjA4LjIwMTkgMTQ6MDYsIENoYW53b28gQ2hvaSB3cm90ZToKPj4gT24gMTkuIDguIDIyLiDsmKTt
m4QgNzo1OCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4gT24gOC8yMi8yMDE5IDE6MDMgUE0s
IENoYW53b28gQ2hvaSB3cm90ZToKPj4+PiBUaGlzIHBhdGNoIGRvZXNuJ3QgY2hlY2sgdGhlIHJh
bmdlIG9mIGlucHV0IHZhbHVlCj4+Pj4gd2l0aCB0aGUgc3VwcG9ydGVkIGZyZXF1ZW5jaWVzIG9m
IGRldmZyZXEgZGV2aWNlLgo+Pj4+Cj4+Pj4gRm9yIGV4YW1wbGUsCj4+Pj4gVGhlIGRldmZyZXEw
IGRldmljZSBoYXMgdGhlIGZvbGxvd2luZyBhdmFpbGFibGUgZnJlcXVlbmNpZXMKPj4+PiAxMDAw
MDAwMDAgMjAwMDAwMDAwIDMwMDAwMDAwMAo+Pj4+Cj4+Pj4gYW5kIHRoZW4gdXNlciBlbnRlcnMg
dGhlIDUwMDAwMDAwMCBhcyBmb2xsb3dpbmc6Cj4+Pj4gZWNobyA1MDAwMDAwMDAgPiAvc3lzL2Ns
YXNzL2RldmZyZXEvZGV2ZnJlcTAvbWluX2ZyZXEKPj4+Pgo+Pj4+IEluIHJlc3VsdCwgZ2V0X2Vm
ZmVjdGl2ZV9taW5fZnJlcSgpIHdpbGwgcmV0dXJuIHRoZSA1MDAwMDAwMDAuCj4+Pj4gSXQgaXMg
d3JvbmcgdmFsdWUuIGl0IHNob3cgdGhlIHVuc3VwcG9ydGVkIGZyZXF1ZW5jeSB0aHJvdWdoCj4+
Pj4gbWluX2ZyZXEgc3lzZnMgcGF0aC4KPj4+Cj4+PiBUaHJvdWdoIGRldl9wbV9xb3MgZGV2aWNl
cyBjYW4gYWxzbyBhc2sgZm9yIGEgZnJlcSBoaWdoZXIgdGhhbiB0aGUKPj4+IG1heGltdW0gT1BQ
IGFuZCB1bmxpa2Ugc3lzZnMgdGhlcmUgaXMgbm8gd2F5IHRvIHJlamVjdCBzdWNoIHJlcXVlc3Rz
LAo+Pj4gaW5zdGVhZCBQTSBxb3MgY2xhaW1zIGl0J3MgYmFzZWQgb24gImJlc3QgZWZmb3J0Ii4K
Pj4+Cj4+PiBUaGVyZSBhcmUgbWFueSByZXF1ZXN0cyBpbiB0aGUga2VybmVsIGZvciAiUE1fUU9T
X0NQVV9ETUFfTEFURU5DWSAwIiBhbmQKPj4+IEkgdGhpbmsgdGhhdCBERVZfUE1fUU9TX01JTl9G
UkVRVUVOQ1ksIE1BWF9TMzIgaXMgYSByZWFzb25hYmxlIHdheSBmb3IgYQo+Pj4gZGV2aWNlIHRv
IHJlcXVlc3QgIm1heCBwZXJmb3JtYW5jZSIgZnJvbSBkZXZmcmVxLgo+Pj4KPj4+IFJlamVjdGlu
ZyBtaW4gPiBtYXggaXMgY29tcGxpY2F0ZWQgKHdoYXQgaGFwcGVucyB0byByZWplY3RlZCByZXF1
ZXN0cwo+Pj4gd2hlbiBtYXggZ29lcyBiYWNrIHVwPykgYW5kIEkgdGhpbmsgaXQncyBiZXR0ZXIg
dG8ganVzdCBzdGljayB3aXRoIGEKPj4+ICJtYXggb3ZlcnJpZGVzIG1pbiIgcG9saWN5IHNpbmNl
IGl0IGNhbiBhbHJlYWR5IGRlYWwgd2l0aCBjb25mbGljdHMuCj4+Pgo+Pj4gRG8geW91IGhhdmUg
YSB1c2VjYXNlIGZvciByZWplY3Rpbmcgb3V0LW9mLXJhbmdlIG1pbl9mcmVxIGZyb20KPj4+IHVz
ZXJzcGFjZT8gY3B1ZnJlcSBhbHNvIGFjY2VwdHMgYXJiaXRyYXJ5IG1pbi9tYXggdmFsdWVzIGFu
ZCBoYW5kbGVzIHRoZW0uCj4+Cj4+IEkgZG9uJ3QgbWVhbiB0aGUgcmVqZWN0aW5nIHdoZW4gdXNl
ciBlbnRlciB0aGUgb3V0LW9mLXJhbmdlIGZyZXF1ZW5jeS4KPj4gQXMgSSBjb21tZW50ZWQsIHVz
ZXIgY2FuIGVudGVyIHRoZSB2YWx1ZSB0aGV5IHdhbnQuIEJ1dCwgd2Ugc2hvdWxkCj4+IGNoZWNr
IHRoZSByYW5nZSBvZiBpbnB1dCBiZWNhdXNlIGRldmZyZXEgaGF2ZSB0byBzaG93IHRoZSBjb3Jy
ZWN0IHN1cHBvcnRlZAo+PiBmcmVxdWVuY3kgdGhyb3VnaCBzeXNmcy4KPiAKPiBXZSBjYW4gYXZv
aWQgc2hvd2luZyBhbiBvdXQtb2YtcmFuZ2UgdmFsdWUgaW4gbWluX2ZyZXEgYnkgcHJpbnRpbmcg
Cj4gbWluKG1pbl9mcmVxLCBtYXhfZnJlcSkuCgpZb3UgY2FuIGNoZWNrIHRoZSByYW5nZSBvZiBm
cmVxdWVuY3kgaW4gdGhlIGdldF9taW5fZnJlcSgpL2dldF9tYXhfZnJlcSgpLgpJIHdhbnQgdG8g
cmV0dXJuIHRoZSBtZWFuaW5nZnVsIGZyZXF1ZW5jeSBmcm9tIGdldF9taW5fZnJlcSgpL2dldF9t
YXhfZnJlcSgpLgoKRXZlcnlvbmUgZXhwZWN0cyBnZXRfbWluX2ZyZXEoKS9nZXRfbWF4X2ZyZXEo
KSBmdW5jdGlvbnMgd2lsbCByZXR1bnJuCnRoZSBzdXBwb3J0ZWQgbWluL21heCBmcmVxdWVuY3ku
IElmIGdldF9taW5fZnJlcSgpL2dldF9tYXhfZnJlcSgpCnJldHVybiB0aGUgb3VyLW9mLXJhbmdl
IGZyZXF1ZW5jeSwgaXQgaXMgbm90IG5pY2UgYW5kIGNhdXNlIHRoZSBjb25mdXNpb24Kd2h5IHRo
ZXNlIGZ1bmN0aW9ucyByZXR1cm4gdGhlIG91dC1vZi1yYW5nZSBmcmVxdWVuY3kuLgoKQWxzbywg
aWYgd2UgZG9uJ3QgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZiBkZXZfcG1fcW9zX3JlYWRfdmFs
dWUoKSwKdGhlIG91dC1vZi1yYW5nZSBmcmVxdWVuY3kgb2YgZGV2X3BtX3Fvc19yZWFkX3ZhbHVl
KCkgd291bGQgYmUgdXNlZApvbiBtdWx0aXBsZSBwb2ludCBvZiBkZXZmcmVxLmMuIEkgdGhpbmsg
dGhhdCBpdCBpcyBub3QgZ29vZC4KCj4gCj4gVGhlIG1heF9mcmVxIHZhbHVlIGZyb20gcG1fcW9z
IGNhbiBzdGlsbCBiZSBiZXR3ZWVuIE9QUHMgc28gbWF5YmUgcHJpbnQgCj4gZGV2ZnJlcV9yZWNv
bW1lbmRlZF9vcHAobWF4X2ZyZXEsIERFVkZSRVFfRkxBR19MRUFTVF9VUFBFUl9CT1VORCkuCj4g
Cj4+PiBJbiB0aGVvcnkgcG1fcW9zIGNvdWxkIGJlIGV4dGVuZGVkIHRvIGRpZmZlcmVudGlhdGUg
YmV0d2VlbiAic29mdCIKPj4+IHJlcXVlc3RzIChjdXJyZW50IGJlaGF2aW9yKSBhbmQgImhhcmQi
IHJlcXVlc3RzIHdoaWNoIHJldHVybiBlcnJvcnMgaWYKPj4+IHRoZXkgY2FuJ3QgYmUgZ3VhcmFu
dGVlZCBidXQgdGhpcyBpcyBmYXIgb3V0IG9mIHNjb3BlLgo+Pgo+PiBJIHRoaW5rIHRoYXQgeW91
IGFncmVlZCB0aGUgbGltaXRhdGlvbiBvZiBkZXZfcG1fcW9zIHdoZW4gZW50ZXJpbmcKPj4gb3Ig
cmVxdWVzdGluZyB0aGUgdW5zdXBwb3J0ZWQgZnJlcXVlbmN5Lgo+IAo+IFllcywgImJlc3QgZWZm
b3J0IHFvcyIgaXMgYWNjZXB0YWJsZSBmb3Igbm93Lgo+IAoKQW5kIHBsZWFzZSBkb24ndCByZW1v
dmUgdGhlIG15IHByZXZpb3VzIGNvbW1lbnQuCkp1c3QgcmVwbHkgeW91ciBvcGluaW9uIHdpdGhv
dXQgYW55IHJlbW92YWwuCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBF
bGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
