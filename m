Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BB8951BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HDP4APnyS8wISb7iFP8rTtVpu5sEcXzs4ooRJhasps=; b=q8STnwHAPwU6q6
	mWJ0/M3bi3J5Y35Nj61BcIDMOpcDu9pfm8LtNfOz5TO3ZL/AyaVFVQqLIU+lSL+o+MFqdQUrIPaMo
	bsDnKoCofjswNsfuDDk9Gt/lxJsdJNYUjQuZiL14/zPslCWvJ6gOpUQXIbzbbH9Bnhl0vnCCNCoQh
	olyDWIG69A+zjv3qbj8bJlPXjwB29B/q9HS3dIWE/AfFio5KybZ66FT0kJL+xSa4NVUTYpK1loS6/
	MqguN5A+eX31wcBsiZWjwOuFbaQY6SAFbGv53Dah3VW2T3APb2/3w5FUF//ZDnm2l0acz9KLoW6pF
	DVaeadiwO5s88h3YDPyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrGq-0002W7-QI; Mon, 19 Aug 2019 23:41:04 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrG8-0002VA-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:40:23 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190819234016epoutp033b8358fa864626ee5718a9b79fda8ab8~8d14RKmhm3066730667epoutp03a
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 23:40:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190819234016epoutp033b8358fa864626ee5718a9b79fda8ab8~8d14RKmhm3066730667epoutp03a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566258016;
 bh=Fqpk06CqFwNPFsiG31Y8y2XDzS0wpckhbRfAnfTbQcU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=c1PVlFRtcArns1dksUuQ5c4QYtSkr2ccnQGrXoZI7HdhcMNgiS5sGo14vGlr/mtDV
 l50QxIH0df+KGNVTMs3UbO8N1fJp/oWiV8TEWr9N8e63AbniettVmW8g98E3LAEwxV
 CZ+taWyqiv4L+HWEBtoCgbYXrJOxVcOHZEm4GqVY=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190819234015epcas1p12380594e2583e1672cd9ec675a846194~8d13RTAWM0202202022epcas1p1V;
 Mon, 19 Aug 2019 23:40:15 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46C9QM6YrfzMqYky; Mon, 19 Aug
 2019 23:40:11 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.A0.04066.B533B5D5; Tue, 20 Aug 2019 08:40:11 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190819234011epcas1p260fbb46efe0d0d59389fbaf41cb3d039~8d1zkVVb31816518165epcas1p2l;
 Mon, 19 Aug 2019 23:40:11 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190819234011epsmtrp129e8d8586be2e373f6f50864a2ffa363~8d1zjPxQO1289512895epsmtrp1K;
 Mon, 19 Aug 2019 23:40:11 +0000 (GMT)
X-AuditID: b6c32a37-e27ff70000000fe2-ef-5d5b335b3837
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DD.02.03706.B533B5D5; Tue, 20 Aug 2019 08:40:11 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190819234010epsmtip2c4d7913416dac07d2996c6c92cc67707~8d1zP1u510225502255epsmtip23;
 Mon, 19 Aug 2019 23:40:10 +0000 (GMT)
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
To: Leonard Crestez <leonard.crestez@nxp.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "georgi.djakov@linaro.org" <georgi.djakov@linaro.org>, Viresh Kumar
 <viresh.kumar@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <08bd637a-2038-9f64-a189-682427ce5bfb@samsung.com>
Date: Tue, 20 Aug 2019 08:44:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023B5095F706635354C4C50EED70@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIJsWRmVeSWpSXmKPExsWy7bCmrm60cXSswaWXphaHjm1lt3h5SNNi
 /pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG5xq0HGYsXdj6wWmx5fY7W4vGsOm8Xn3iOMFjPO
 72OyWHvkLrvF7cYVbBZzv0xltug69JfNYsbkl2wWG796OAh7LNhU6rFpVSebx51re9g87ncf
 Z/LYvKTeY+O7HUweB9/tYfLo27KK0ePzJrkAzqhsm4zUxJTUIoXUvOT8lMy8dFsl7+B453hT
 MwNDXUNLC3MlhbzE3FRbJRefAF23zBygj5QUyhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqp
 BSk5BZYFesWJucWleel6yfm5VoYGBkamQIUJ2RmNd2eyFKyXrdj87StbA+M8iS5GTg4JAROJ
 R43NrF2MXBxCAjsYJaZ0tDBBOJ8YJQ51rGWEcL4xSvzYcJgVpuXPzFnsEIm9jBItl5ezQDjv
 GSX6m/4wg1QJCyRJLHh0EWywiMBlRomLp9ewgTjMAsfYJJYf/84OUsUmoCWx/8UNNhCbX0BR
 4uqPx4wgNq+AncSF3r1gNSwCqhIvXzwDs0UFIiQ+PYC4g1dAUOLkzCdAqzk4OAViJZ6e1AEJ
 MwuIS9x6Mp8JwpaXaN46mxlkr4TAPXaJHTd2s4PUSwi4SPy64gjxjrDEq+Nb2CFsKYmX/W1Q
 drXEypNH2CB6Oxgltuy/APW/scT+pZOZQOYwC2hKrN+lDxFWlNj5ey4jhM0r0bDxNzvEDXwS
 7772sEKs5ZXoaBOCKFGWuPzgLtMERuVZSJ6ZheSDWUg+mIWwbAEjyypGsdSC4tz01GLDAmPk
 6N7ECE7uWuY7GDec8znEKMDBqMTD6zEtKlaINbGsuDL3EKMEB7OSCG/FHKAQb0piZVVqUX58
 UWlOavEhRlNgWE9klhJNzgdmnrySeENTI2NjYwsTQzNTQ0Mlcd6FPyxihQTSE0tSs1NTC1KL
 YPqYODilGhjnWCrvM/C54nLu76WUQv7nc18Ubl7XuvT9v/CnuqzfeEvTzc9cmfgzU5dLpNin
 9qMDZ/XenBN585XPh+3mEfc/ubC7xkFHbrdZ2BYZaZNX/Pl/7tYsYVy6Mfk75wSl1lSOvLO/
 Vh6xm9th3uYrK/3gd53ptb5PR6bmvQw4MuX2SpaJkf8S+yqVWIozEg21mIuKEwGaOYSaBAQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNIsWRmVeSWpSXmKPExsWy7bCSvG60cXSswfVp7BaHjm1lt3h5SNNi
 /pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG5xq0HGYsXdj6wWmx5fY7W4vGsOm8Xn3iOMFjPO
 72OyWHvkLrvF7cYVbBZzv0xltug69JfNYsbkl2wWG796OAh7LNhU6rFpVSebx51re9g87ncf
 Z/LYvKTeY+O7HUweB9/tYfLo27KK0ePzJrkAzigum5TUnMyy1CJ9uwSujMa7M1kK1stWbP72
 la2BcZ5EFyMnh4SAicSfmbPYuxi5OIQEdjNKHH/6lxkiISkx7eJRIJsDyBaWOHy4GKLmLaPE
 qStf2EBqhAWSJBY8usgKkhARuMwosfXjFhaQBLPAGTaJrcdzIDquMUmsal3NDpJgE9CS2P/i
 Blg3v4CixNUfjxlBbF4BO4kLvXvBalgEVCVevngGZosKREgc3jELqkZQ4uTMJywgF3EKxEo8
 PakDsUtd4s+8S8wQtrjErSfzmSBseYnmrbOZJzAKz0LSPQtJyywkLbOQtCxgZFnFKJlaUJyb
 nltsWGCYl1quV5yYW1yal66XnJ+7iREc5VqaOxgvL4k/xCjAwajEw+sxLSpWiDWxrLgy9xCj
 BAezkghvxRygEG9KYmVValF+fFFpTmrxIUZpDhYlcd6neccihQTSE0tSs1NTC1KLYLJMHJxS
 DYw1/RKB7llvNxu18e11Zvtyu2i3xeXc4rdVlae6+af1+C/i6vcundWn3fNSfmbK+WWyxxRb
 IzI9Xzw32OAxuy7vauNpVsaTfPN/mH78Fnc1Xu+6wy1l63+NCjFPr/BW3GsVWBRtsl52/Y6t
 wbvy3S9UdPwtSzumyHZpH4ucnr/KkviFi0UYNimxFGckGmoxFxUnAgB1K60U7gIAAA==
X-CMS-MailID: 20190819234011epcas1p260fbb46efe0d0d59389fbaf41cb3d039
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
 <5a82bf8a-d925-ba54-a26f-98b64bedc6e1@samsung.com>
 <VI1PR04MB7023B5095F706635354C4C50EED70@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_164021_222288_53CE7236 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "sw0312.kim@samsung.com" <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 "inki.dae@samsung.com" <inki.dae@samsung.com>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIgYW5kIExlb25hcmQsCgpPbiAxOS4gOC4gOS4g7Jik7KCEIDEyOjAwLCBMZW9uYXJk
IENyZXN0ZXogd3JvdGU6Cj4gT24gMjkuMDcuMjAxOSAwNDo0OSwgQ2hhbndvbyBDaG9pIHdyb3Rl
Ogo+PiBPbiAxOS4gNy4gMjMuIOyYpO2bhCA5OjIwLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPj4+
IFRoaXMgcGF0Y2ggYWRkcyBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0eSB0byB0aGUgZXh5bm9z
LWJ1cyBkZXZmcmVxCj4+PiBkcml2ZXIuCj4+Pgo+Pj4gVGhlIGRldmZyZXEgdGFyZ2V0KCkgY2Fs
bGJhY2sgcHJvdmlkZWQgYnkgZXh5bm9zLWJ1cyBub3cgc2VsZWN0cyBlaXRoZXIgdGhlCj4+PiBm
cmVxdWVuY3kgY2FsY3VsYXRlZCBieSB0aGUgZGV2ZnJlcSBnb3Zlcm5vciBvciB0aGUgZnJlcXVl
bmN5IHJlcXVlc3RlZCB2aWEKPj4+IHRoZSBpbnRlcmNvbm5lY3QgQVBJIGZvciB0aGUgZ2l2ZW4g
bm9kZSwgd2hpY2hldmVyIGlzIGhpZ2hlci4KPj4KPj4gQmFzaWNhbGx5LCBJIGFncmVlIHRvIHN1
cHBvcnQgdGhlIFFvUyByZXF1aXJlbWVudCBiZXR3ZWVuIGRldmljZXMuCj4+IEJ1dCwgSSB0aGlu
ayB0aGF0IG5lZWQgdG8gY29uc2lkZXIgdGhlIG11bHRpcGxlIGNhc2VzLgo+Pgo+PiAxLiBXaGVu
IGNoYW5naW5nIHRoZSBkZXZmcmVxIGdvdmVybm9yIGJ5IHVzZXIsCj4+IEZvciBleGFtcGxlIG9m
IHRoZSBjb25uZWN0aW9uIGJldHdlZW4gYnVzX2RtYy9sZWZ0YnVzL2Rpc3BsYXkgb24gcGF0Y2g4
LAo+PiB0aGVyZSBhcmUgcG9zc2libGUgbXVsdGlwbGUgY2FzZXMgd2l0aCB2YXJpb3VzIGRldmZy
ZXEgZ292ZXJub3IKPj4gd2hpY2ggaXMgY2hhbmdlZCBvbiB0aGUgcnVudGltZSBieSB1c2VyIHRo
cm91Z2ggc3lzZnMgaW50ZXJmYWNlLgo+Pgo+PiBJZiB1c2VycyBjaGFuZ2VzIHRoZSBkZXZmcmVx
IGdvdmVybm9yIGFzIGZvbGxvd2luZzoKPj4gQmVmb3JlLAo+PiAtIGJ1c19kbWMgKHNpbXBsZV9v
bmRlbWFuZCwgYXZhaWxhYmxlIGZyZXF1ZW5jeSAxMDAvMjAwLzMwMC80MDAgTUh6KQo+PiAtLT4g
YnVzX2xlZnRidXMoc2ltcGxlX29uZGVtYW5kLCBhdmFpbGFibGUgZnJlcXVlbmN5IDEwMC8yMDAv
MzAwLzQwMCBNSHopCj4+IC0tLS0+IGJ1c19kaXNwbGF5KHBhc3NpdmUpCj4+Cj4+IEFmdGVyIGNo
YW5nZWQgZ292ZXJub3Igb2YgYnVzX2RtYywKPj4gaWYgdGhlIG1pbl9mcmVxIGJ5IGludGVyY29u
bmVjdCByZXF1aXJlbWVudCBpcyA0MDBNaHosCj4+IC0gYnVzX2RtYyAocG93ZXJzYXZlKSA6IG1p
bl9mcmVxIGFuZCBtYXhfZnJlcSBhbmQgY3VyX2ZyZXEgaXMgMTAwTUh6Cj4+IC0tPiBidXNfbGVm
dGJ1cyhzaW1wbGVfb25kZW1hbmQpIDogY3VyX2ZyZXEgaXMgNDAwTWh6Cj4+IC0tLS0+IGJ1c19k
aXNwbGF5KHBhc3NpdmUpCj4+Cj4+IFRoZSBmaW5hbCBmcmVxdWVuY3kgaXMgNDAwTUh6IG9mIGJ1
c19kbWMKPj4gZXZlbiBpZiB0aGUgbWluX2ZyZXEvbWF4X2ZyZXEvY3VyX2ZyZXEgaXMgMTAwTUh6
Lgo+PiBJdCBjYW5ub3Qgc2hvdyB0aGUgY29ycmVjdCBtaW5fZnJlcS9tYXhfZnJlcSB0aHJvdWdo
Cj4+IGRldmZyZXEgc3lzZnMgaW50ZXJmYWNlLgo+Pgo+Pgo+PiAyLiBXaGVuIGRpc2FibGluZyB0
aGUgc29tZSBmcmVxdWVuY3kgYnkgZGV2ZnJlcS10aGVybWFsIHRocm90dGxpbmcsCj4+IFRoaXMg
cGF0Y2ggY2hlY2tzIHRoZSBtaW5fZnJlcSBvZiBpbnRlcmNvbm5lY3QgcmVxdWlyZW1lbnQKPj4g
aW4gdGhlIGV4eW5vc19idXNfdGFyZ2V0KCkgYW5kIGV4eW5vc19idXNfcGFzc2l2ZV90YXJnZXQo
KS4KPj4gQWxzbywgaXQgY2Fubm90IHNob3cgdGhlIGNvcnJlY3QgbWluX2ZyZXEvbWF4X2ZyZXEg
dGhyb3VnaAo+PiBkZXZmcmVxIHN5c2ZzIGludGVyZmFjZS4KPj4KPj4gRm9yIGV4YW1wbGUgb2Yg
YnVzX2RtYyBidXMsCj4+IC0gVGhlIGF2YWlsYWJsZSBmcmVxdWVuY2llcyBhcmUgMTAwTUh6LCAy
MDBNSHosIDMwME1IeiwgNDAwTUh6Cj4+IC0gRGlzYWJsZSA0MDBNSHogYnkgZGV2ZnJlcS10aGVy
bWFsIHRocm90dGxpbmcKPj4gLSBtaW5fZnJlcSBpcyAxMDBNSHoKPj4gLSBtYXhfZnJlcSBpcyAz
MDBNSHoKPj4gLSBtaW5fZnJlcSBvZiBpbnRlcmNvbm5lY3QgaXMgNDAwTUh6Cj4+Cj4+IEluIHJl
c3VsdCwgdGhlIGZpbmFsIGZyZXF1ZW5jeSBpcyA0MDBNSHogYnkgZXh5bm9zX2J1c190YXJnZXQo
KQo+PiBUaGVyZSBhcmUgbm8gcHJvYmxlbSBmb3Igd29ya2luZy4gQnV0LCB0aGUgdXNlciBjYW5u
b3Qga25vdwo+PiByZWFzb24gd2h5IGN1cl9mcmVxIGlzIDQwME1IeiBldmVuIGlmIG1heF9mcmVx
IGlzIDMwME1Iei4KPj4KPj4gQmFzaWNhbGx5LCB1cGRhdGVfZGV2ZnJlcSgpIGNvbnNpZGVycyB0
aGUgYWxsIGNvbnN0cmFpbnRzCj4+IG9mIG1pbl9mcmVxL21heF9mcmVxIHRvIGRlY2lkZSB0aGUg
cHJvcGVyIHRhcmdldCBmcmVxdWVuY3kuCj4gCj4gSSB0aGluayB0aGF0IGFwcGx5aW5nIHRoZSBp
bnRlcmNvbm5lY3QgbWluX2ZyZXEgdmlhIGRldl9wbV9xb3MgY2FuIGhlbHAgCj4gd2l0aCBtYW55
IG9mIHRoZXNlIGNvbmNlcm5zOiB1cGRhdGVfZGV2ZnJlcSBjb250cm9scyBhbGwgdGhlIG1pbi9t
YXggCj4gaGFuZGxpbmcsIHN5c2ZzIGlzIGFjY3VyYXRlIGFuZCBiZXR0ZXIgZGVjaXNpb25zIGNh
biBiZSBtYWRlIHJlZ2FyZGluZyAKPiB0aGVybWFsLiBFbmZvcmNpbmcgY29uc3RyYWludHMgaW4g
dGhlIGNvcmUgaXMgZGVmaW5pdGVseSBiZXR0ZXIuCj4gCj4gVGhpcyB3b3VsZG4ndCBldmVuIGJl
IGEgdmVyeSBiaWcgY2hhbmdlLCB5b3UgZG9uJ3QgbmVlZCB0byBhY3R1YWxseSBtb3ZlIAo+IHRo
ZSBpbnRlcmNvbm5lY3QgY29kZSBvdXRzaWRlIG9mIGRldmZyZXEuIEp1c3QgbWFrZSBldmVyeSBk
ZXZmcmVxL2ljYyAKPiBub2RlIHJlZ2lzdGVyIGEgZGV2X3BtX3Fvc19yZXF1ZXN0IGZvciBpdHNl
bGYgZHVyaW5nIHJlZ2lzdHJhdGlvbiBhbmQgCj4gY2FsbCBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1
ZXN0IGluc2lkZSBleHlub3NfYnVzX2ljY19zZXQuCj4gCj4gU2VlOiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzExMDg0Mjc5LwoKSSBhZ3JlZSB0aGlzIGFwcHJvYWNoIG9mIExl
b25hcmQuIElmIHdlIHVzZSB0aGUgZGV2X3BtX3Fvc1sxXSBmZWF0dXJlLAppdCByZXNvbHZlIHRo
ZSBpc3N1ZSBvZiBteSBjb21tZW50MS8yLgoKSW4gc3VtbWFyeSwgd2hlbiByZWNlaXZlIHRoZSBt
aW5pbXVtIGZyZXF1ZW5jeSByZXF1aXJlbWVudApmcm9tIGludGVyY29ubmVjdCBwYXRoLCB0aGUg
ZWFjaCBidXMgdXNlcyB0aGUgZGV2X3BtX3FvcyBpbnRlcmZhY2UKaW4gb3JkZXIgdG8gaW5mb3Jt
IHRoZSBtaW5pbXVtIGZyZXF1ZW5jeSBmcm9tIGludGVyY29ubmVjdCB0byBkZXZmcmVxLgpBbmQg
dGhlbiB0aGUgZGV2ZnJlcSBjb3JlIHdpbGwgZXhlY3V0ZSB0aGUgdXBkYXRlX2RldmZyZXEoKQp3
aXRoIGFsbCBmcmVxdWVuY3kgcmVxdWlyZW1lbnRzIGFzIGZvbGxvd2luZzoKLSB0aGUgdXNlciBp
bnB1dCAobWluL21heCBmcmVxdWVuY3kgdGhvdWdoIGRldmZyZXEgc3lzZnMKLSB0aGUgdGFyZ2V0
IGZyZXF1ZW5jeSBwcm92aWRlZCBieSBkZXZmcmVxIGdvdmVybm9yCi0gdGhlIG1pbmltdW0gZnJl
cXVlbmN5IGZyb20gaW50ZXJjb25uZWN0IHBhdGgKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28g
Q2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
