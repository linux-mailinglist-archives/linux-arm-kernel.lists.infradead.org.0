Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E50B1E9F7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbPPf1c7fzPWAKzIs7K7Dl4lOG5kmUaEHkE1cDRUj3A=; b=aZgieo2mje4pRE
	3Ubk1v7V+XkdYbKE1d2nHyOAr7UnMXz7fjHXxpDy8YaTL9h6yLoto393a9xkoExmrXdxziSrYFnMG
	7TsvReVKPA1vZ70x9TBFxGuHigOgmvGukQOBOPCPLX4cY6PqiB+4GEUoCwOzO+FY03uZ743u6PJFV
	6b3P01VeB6M/g3GGHehL9TnDWLNFuuIC41Q+ddXtiYbCvilB0OnZhgmllxCGLBj9UwVk/hNSojA/Q
	FIi1+9rDGndi03spSuUiSb7NIOfgRKHqz3Dmu5E7+r6rWfwDMM3zS+msBlHfeVtC/Btc6ognS3oVP
	V5DvrV0/0/VZRGRiO4vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffAv-00070B-SX; Mon, 01 Jun 2020 07:48:01 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffAk-0006zd-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:47:52 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200601074747epoutp049325213ddbf576c46bbb49721391089e~UW-L8aFB22645826458epoutp04c
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 07:47:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200601074747epoutp049325213ddbf576c46bbb49721391089e~UW-L8aFB22645826458epoutp04c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590997667;
 bh=I1XJhVwGb1aiZhRqaZu6fK9WRM7TeK3+lRgg314FF/Y=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=nbZuEJ/Sm8QyqdVBbrMkxwBe9USsCEOHAks1+0aF4FuXKJXCKzYQFjDOvZNqWz1lO
 nAxsVoyRJv9aZyvAxRP5flMFbEnmR6Yju1lbNBR0f9AB/R5PtqJnt37pLWomV9+2dI
 vSYosxBpxnGw83oZKpOkXpJ9s+74p2dpXMqJjX/4=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200601074746epcas1p40dafe27ac966d4d18bff15421d5b5dab~UW-LPUWeR1074810748epcas1p4S;
 Mon,  1 Jun 2020 07:47:46 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49b6hx4tFZzMqYkr; Mon,  1 Jun
 2020 07:47:45 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 AA.1C.28581.1A2B4DE5; Mon,  1 Jun 2020 16:47:45 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601074744epcas1p261de13984e22e1b95b32b51c86cedbab~UW-JHxyLo2653626536epcas1p25;
 Mon,  1 Jun 2020 07:47:44 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601074744epsmtrp25ccbb1d6aacc9e025449befbaa48a4fc~UW-JHACfy1541615416epsmtrp2B;
 Mon,  1 Jun 2020 07:47:44 +0000 (GMT)
X-AuditID: b6c32a38-2e3ff70000006fa5-ea-5ed4b2a15003
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 94.92.08382.0A2B4DE5; Mon,  1 Jun 2020 16:47:44 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200601074744epsmtip27344f96ffa2c1a08e2233ae2d4d2211a~UW-IzeW4z2383523835epsmtip2o;
 Mon,  1 Jun 2020 07:47:44 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [RFC PATCH v5 6/6] drm: exynos: mixer: Add interconnect support
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, georgi.djakov@linaro.org,
 krzk@kernel.org
Organization: Samsung Electronics
Message-ID: <7e42706f-2e69-79a6-d138-f2aa5e800270@samsung.com>
Date: Mon, 1 Jun 2020 16:58:18 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20200529163200.18031-7-s.nawrocki@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFJsWRmVeSWpSXmKPExsWy7bCmnu7CTVfiDG4+4rW4P6+V0WLjjPWs
 Fle+vmezmL53E5vFpPsTWCzOn9/AbrHp8TVWi8u75rBZzDi/j8li7ZG77Ba3G1ewWRx+085q
 MWPySzYHXo9NqzrZPO5c28Pmcb/7OJPH5iX1Hn1bVjF6fN4kF8AWlW2TkZqYklqkkJqXnJ+S
 mZduq+QdHO8cb2pmYKhraGlhrqSQl5ibaqvk4hOg65aZA3SokkJZYk4pUCggsbhYSd/Opii/
 tCRVISO/uMRWKbUgJafAskCvODG3uDQvXS85P9fK0MDAyBSoMCE7Y8ma82wFC6QqTrVeY25g
 XC7axcjJISFgIjH3ehtrFyMXh5DADkaJ6VfnM0M4nxgl+v62sEM43xgldl9cxQzTsmHdVqiq
 vYwST2fvYIFw3jNKfLh2AqyKTUBLYv+LG2wgtrCAj8TjM9eA4hwcIgIxEuvfRYDUMwssYpJY
 O/03K0gNv4CixNUfjxlBbF4BO4nHm4+xgNgsAioSk3vWg9miAmESJ7e1QNUISpyc+YQFZCan
 gI3E05clIGFmAXGJW0/mM0HY8hLNW2eDHSohcIZD4vrM12wQH7hIzP32lgnCFpZ4dXwLO4Qt
 JfH53V6ommqJlSePsEE0dzBKbNl/gRUiYSyxf+lkJpDFzAKaEut36UOEFSV2/p7LCLGYT+Ld
 1x5WkBIJAV6JjjYhiBJlicsP7kKtlZRY3N7JNoFRaRaSb2YheWEWkhdmISxbwMiyilEstaA4
 Nz212LDABDm2NzGCE7GWxQ7GuW8/6B1iZOJgPMQowcGsJMI7Wf1SnBBvSmJlVWpRfnxRaU5q
 8SFGU2D4TmSWEk3OB+aCvJJ4Q1MjY2NjCxNDM1NDQyVx3pNWF+KEBNITS1KzU1MLUotg+pg4
 OKUamKrP3Uw4UzDDVj7wYNJT/QaJSWmtan66e7WmBn0U0Jmmd335h+fZ3C+KHxzR3TGTr0N5
 yeMox3ATT7m4W79fVH/YLf0k4NfC0zVHdoTtKdmg8+W3eN2up/NbrG5+TT3EaK/2zcl1yvpF
 K2yW7Fmgt+yhcHbMBWM+tqdZobuurX93/uO2j5q953gPMJyfJfXAVWJ7nUPzh38dl4+YPVy7
 tWVav0OFZlWEWulyz7SS9sU5SgsVdsz5o7lCdYsc27Tv/7MqO9jTipjyzW+uCQyeu1rs1lbp
 9AnMWne3fteWnmn9ewXPvlNaExY6sXus6L1k0TA16ITbKTf3jTe3hq96k1W0805o+dUC1tb0
 oo1f3X8rsRRnJBpqMRcVJwIA+u6R300EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsWy7bCSvO6CTVfiDB7+EbG4P6+V0WLjjPWs
 Fle+vmezmL53E5vFpPsTWCzOn9/AbrHp8TVWi8u75rBZzDi/j8li7ZG77Ba3G1ewWRx+085q
 MWPySzYHXo9NqzrZPO5c28Pmcb/7OJPH5iX1Hn1bVjF6fN4kF8AWxWWTkpqTWZZapG+XwJWx
 ZM15toIFUhWnWq8xNzAuF+1i5OSQEDCR2LBuK3MXIxeHkMBuRonvU34xQSQkJaZdPAqU4ACy
 hSUOHy6GqHnLKPHnawsLSA2bgJbE/hc32EBsYQEficdnrjGD2CICMRKnJs8Cq2EWWMQk8aJJ
 GaL5IKPEru+TwRr4BRQlrv54zAhi8wrYSTzefAysgUVARWJyz3owW1QgTGLnksdMEDWCEidn
 PmEBOYhTwEbi6csSiPnqEn/mXWKGsMUlbj2ZzwRhy0s0b53NPIFReBaS7llIWmYhaZmFpGUB
 I8sqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS95PzcTYzgiNTS3MG4fdUHvUOMTByMhxglOJiV
 RHgnq1+KE+JNSaysSi3Kjy8qzUktPsQozcGiJM57o3BhnJBAemJJanZqakFqEUyWiYNTqoFp
 3bGMpY6KAjeXR85ocxW2thLtm6j3K9ro3KJVK/4c0EwSlevp+yhcf8u2IkHxb9HMyKjKrxPt
 c2MSty6dta1ZxGbSWX2Fr6brGeQtsvZZ5PCv2Z0rf9Im076wd4LA8vQrWy8fcnrkt2jyL41m
 /rN9lzds5/tob/pt8c3LW2efubmSV+XrLmvrqzmZfp1P9xms4QruZ85VXdgrOOP1uft955em
 GMvnv7K/PrPp7dFH+95/ZD0QsfBn0F3mavXSr1FanvMKy7SMr7V9mPhz6tZPJYFRyTNf3v13
 zTNH6rLTpKfK8WGniuZ8YWqI3PZj510hd3dvNe6Fe57tmlN/jFHT9Lq6loX55NViC5LfXLiw
 SomlOCPRUIu5qDgRAGsy97Q3AwAA
X-CMS-MailID: 20200601074744epcas1p261de13984e22e1b95b32b51c86cedbab
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde@eucas1p2.samsung.com>
 <20200529163200.18031-7-s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_004751_320520_42397A61 
X-CRM114-Status: GOOD (  29.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, myungjoo.ham@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3lsd2VzdGVyLAoKT24gNS8zMC8yMCAxOjMyIEFNLCBTeWx3ZXN0ZXIgTmF3cm9ja2kgd3Jv
dGU6Cj4gRnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+
IAo+IFRoaXMgcGF0Y2ggYWRkcyBpbnRlcmNvbm5lY3Qgc3VwcG9ydCB0byBleHlub3MtbWl4ZXIu
IFRoZSBtaXhlciB3b3Jrcwo+IHRoZSBzYW1lIGFzIGJlZm9yZSB3aGVuIENPTkZJR19JTlRFUkNP
Tk5FQ1QgaXMgJ24nLgo+IAo+IEZvciBwcm9wZXIgb3BlcmF0aW9uIG9mIHRoZSB2aWRlbyBtaXhl
ciBibG9jayB3ZSBuZWVkIHRvIGVuc3VyZSB0aGUKPiBpbnRlcmNvbm5lY3QgYnVzc2VzIGxpa2Ug
RE1DIG9yIExFRlRCVVMgcHJvdmlkZSBlbm91Z2ggYmFuZHdpZHRoIHNvCj4gYXMgdG8gYXZvaWQg
RE1BIGJ1ZmZlciB1bmRlcnJ1bnMgaW4gdGhlIG1peGVyIGJsb2NrLiBpLmUgd2UgbmVlZCB0bwo+
IHByZXZlbnQgdGhvc2UgYnVzc2VzIGZyb20gb3BlcmF0aW5nIGluIGxvdyBwZXJmb21hbmNlIE9Q
UHMgd2hlbgo+IHRoZSBtaXhlciBpcyBydW5uaW5nLgo+IEluIHRoaXMgcGF0Y2ggdGhlIGJ1cyBi
YW5kd2lkdGggcmVxdWVzdCBpcyBkb25lIHRocm91Z2ggdGhlIGludGVyY29ubmVjdAo+IEFQSSwg
dGhlIGJhbmRpd2lkdGggdmFsdWUgaXMgY2FsY3VsYXRlZCBmcm9tIHNlbGVjdGVkIERSTSBtb2Rl
LCBpLmUuCj4gdmlkZW8gcGxhbmUgd2lkdGgsIGhlaWdodCwgcmVmcmVzaCByYXRlIGFuZCBwaXhl
bCBmb3JtYXQuCj4gCj4gQ28tZGV2ZWxvcGVkLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25A
c2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgo+IFtzLm5hd3JvY2tpOiByZW5hbWVkIHNvY19wYXRoIHZhcmlhYmxl
IHRvIGljY19wYXRoLCBlZGl0ZWQgY29tbWl0IGRlc2MuXQo+IFNpZ25lZC1vZmYtYnk6IFN5bHdl
c3RlciBOYXdyb2NraSA8cy5uYXdyb2NraUBzYW1zdW5nLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGZv
ciB2NToKPiAgLSByZW5hbWVkIHNvY19wYXRoIHZhcmlhYmxlIHRvIGljY19wYXRoCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgfCA3MyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5v
cy9leHlub3NfbWl4ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMK
PiBpbmRleCAyMWI3MjZiLi5iZGFlNjgzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9l
eHlub3MvZXh5bm9zX21peGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19taXhlci5jCj4gQEAgLTEzLDYgKzEzLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVu
dC5oPgo+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2kyYy5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJjb25uZWN0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9p
bnRlcnJ1cHQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICAjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+Cj4gQEAgLTk4LDYgKzk5LDcgQEAgc3RydWN0IG1peGVyX2NvbnRleHQgewo+ICAJ
c3RydWN0IGV4eW5vc19kcm1fY3J0YwkqY3J0YzsKPiAgCXN0cnVjdCBleHlub3NfZHJtX3BsYW5l
CXBsYW5lc1tNSVhFUl9XSU5fTlJdOwo+ICAJdW5zaWduZWQgbG9uZwkJZmxhZ3M7Cj4gKwlzdHJ1
Y3QgaWNjX3BhdGgJCSppY2NfcGF0aDsKPiAgCj4gIAlpbnQJCQlpcnE7Cj4gIAl2b2lkIF9faW9t
ZW0JCSptaXhlcl9yZWdzOwo+IEBAIC05MzQsNiArOTM2LDQyIEBAIHN0YXRpYyB2b2lkIG1peGVy
X2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBleHlub3NfZHJtX2NydGMgKmNydGMpCj4gIAltaXhlcl9y
ZWdfd3JpdGVtYXNrKG1peGVyX2N0eCwgTVhSX0lOVF9FTiwgMCwgTVhSX0lOVF9FTl9WU1lOQyk7
Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIG1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKHN0cnVj
dCBleHlub3NfZHJtX2NydGMgKmNydGMpCj4gK3sKPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICptb2RlID0gJmNydGMtPmJhc2Uuc3RhdGUtPmFkanVzdGVkX21vZGU7Cj4gKwlzdHJ1Y3QgbWl4
ZXJfY29udGV4dCAqY3R4ID0gY3J0Yy0+Y3R4Owo+ICsJdW5zaWduZWQgbG9uZyBidywgYmFuZHdp
ZHRoID0gMDsKPiArCXUzMiBhdmdfYncsIHBlYWtfYnc7Cj4gKwlpbnQgaSwgaiwgc3ViOwo+ICsK
PiArCWlmICghY3R4LT5pY2NfcGF0aCkKPiArCQlyZXR1cm47Cj4gKwo+ICsJZm9yIChpID0gMDsg
aSA8IE1JWEVSX1dJTl9OUjsgaSsrKSB7Cj4gKwkJc3RydWN0IGRybV9wbGFuZSAqcGxhbmUgPSAm
Y3R4LT5wbGFuZXNbaV0uYmFzZTsKPiArCQljb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICpm
b3JtYXQ7Cj4gKwo+ICsJCWlmIChwbGFuZS0+c3RhdGUgJiYgcGxhbmUtPnN0YXRlLT5jcnRjICYm
IHBsYW5lLT5zdGF0ZS0+ZmIpIHsKPiArCQkJZm9ybWF0ID0gcGxhbmUtPnN0YXRlLT5mYi0+Zm9y
bWF0Owo+ICsJCQlidyA9IG1vZGUtPmhkaXNwbGF5ICogbW9kZS0+dmRpc3BsYXkgKgo+ICsJCQkJ
CQkJZHJtX21vZGVfdnJlZnJlc2gobW9kZSk7Cj4gKwkJCWlmIChtb2RlLT5mbGFncyAmIERSTV9N
T0RFX0ZMQUdfSU5URVJMQUNFKQo+ICsJCQkJYncgLz0gMjsKPiArCQkJZm9yIChqID0gMDsgaiA8
IGZvcm1hdC0+bnVtX3BsYW5lczsgaisrKSB7Cj4gKwkJCQlzdWIgPSBqID8gKGZvcm1hdC0+dnN1
YiAqIGZvcm1hdC0+aHN1YikgOiAxOwo+ICsJCQkJYmFuZHdpZHRoICs9IGZvcm1hdC0+Y3BwW2pd
ICogYncgLyBzdWI7CgpGaXJzdCBvZiBhbGwsIEkgYWdyZWUgdGhpcyBhcHByb2FjaC4KCkNvdWxk
IHlvdSBwbGVhc2UgYWRkIG1vcmUgZGV0YWlsZWQgY29tbWVudHMgZm9yIHVuZGVyc3RhZG5pbmcK
YWJvdXQgdGhpcyBjYWxjdWxhdGlvbj8gQXMgeW91IGNvbW1lbnRlZCwgaXQgc2VlbXMgdGhhdAp0
aGUgZmluYWwgYmFuZHdpZHRoIGNvbnRhaW5zIHRoZSB3aWR0aC9oZWlnaHQvcmVmcmVzaCByYXRl
CmFuZCBwaXhlbCBmb3JtYXQuIElmIHlvdSBhZGQgb25lIHJlYWwgZXhhbXBsZSwgaXQgd2lsbCBi
ZSB2ZXJ5IGhlbHBmdWwuCgoKKHNuaXApCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kK
U2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
