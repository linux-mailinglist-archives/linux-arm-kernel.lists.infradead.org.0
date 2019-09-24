Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09968BC042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JziyZp/6ijDF9MeY7WpoM3iL2IaiE7NjDh1ZDYSjKak=; b=C/oWOD3abcl71C
	6BroKpbltvOe6B8uqvrVvFsPzHvVr3ynMFhstnH3JQvfhL2xJHk9kkJSXUnfo15loqXFBHV3CZuur
	q+my0s9d8a3v+lBTRYsUAFMmxnxATF7BKLuMEEE7k4hNyTFTMwUpiXpCgfKEyxM5KKk8dMYlf35kD
	UkcCLzDKnnxSoAysOkV9rFNs5EAcmDD8bleY2YHAlfxQzTrTb7WnAIE9YEEJHz+LaDo98XGZpBvtZ
	gsxPsMrnz1c6g8p1czTUq+UBpde0qbRYtVYqRAc1a8V8ZGFjHlhp5YcbXV/ILhzgUntb91M4zT5sx
	EtsbnReYijxS99EcANzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCalf-0001Jw-0j; Tue, 24 Sep 2019 02:41:31 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCalV-0001Ia-Vh
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:41:23 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190924024118epoutp02e805f560ff66c14549aeb88866b11427~HP48Nv2_u1035210352epoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 02:41:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190924024118epoutp02e805f560ff66c14549aeb88866b11427~HP48Nv2_u1035210352epoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569292878;
 bh=HlTZWWkWqFE8ty1ADmXiBqGkS4yKkQpOAILmlR6nLNg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YXEz485ACZdXx1VbCK3UjxzXKa4OK6wUznmIsF59l01ggL1Zg6hv0GIMR8cGccWpV
 I8JkV00beo6XdSe/Wrv0VP8uAYyR2fcg0+5C5Ip977BG8prE0YvUYxMjAirltLr4d8
 WEvaZePEWfMV8vKZUDr17ZJRfE3pZbxjoPCLUDPo=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190924024118epcas1p244fc261204e4423c350defcd83404635~HP47phaQ41986719867epcas1p2J;
 Tue, 24 Sep 2019 02:41:18 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 46cln66p9zzMqYkg; Tue, 24 Sep
 2019 02:41:14 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 C9.A3.04068.A42898D5; Tue, 24 Sep 2019 11:41:14 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190924024114epcas1p1c2c0b2a843625f9d2351d64dec20804e~HP44BTlnn0063400634epcas1p1J;
 Tue, 24 Sep 2019 02:41:14 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190924024114epsmtrp25544a27cd34b882c45cf66a0337aaa2a~HP43-mMao2863428634epsmtrp2M;
 Tue, 24 Sep 2019 02:41:14 +0000 (GMT)
X-AuditID: b6c32a39-f47ff70000000fe4-4c-5d89824a4597
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 89.A1.04081.A42898D5; Tue, 24 Sep 2019 11:41:14 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924024113epsmtip2bcf0c4366cc6ffa79c9370965f15493f~HP43tHsPu1806518065epsmtip2X;
 Tue, 24 Sep 2019 02:41:13 +0000 (GMT)
Subject: Re: [PATCH v7 1/6] PM / devfreq: Don't fail devfreq_dev_release if
 not in list
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2b72c253-0e83-c102-93e2-13f45ffe2702@samsung.com>
Date: Tue, 24 Sep 2019 11:45:38 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <06523b8ebc7006e13d92032c2e8494d2a919deac.1569272883.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJsWRmVeSWpSXmKPExsWy7bCmnq5XU2esweSNZhaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmhxbcVEVovP
 Gx4zWtxuXMFmsfrcQTaLrkN/2Sw2fvVwEPR4f6OV3WN2w0UWjwWbSj02repk87hzbQ+bx+Yl
 9R4b3+1g8jj4bg+Tx6/Doh59W1YxenzeJBfAHZVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9q
 ZmCoa2hpYa6kkJeYm2qr5OIToOuWmQP0kZJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1
 ICWnwLJArzgxt7g0L10vOT/XytDAwMgUqDAhO+PN/YNMBc8EK1ZuW8TSwPiKr4uRg0NCwESi
 /Zh5FyMXh5DADkaJR1P2sUA4nxglvr2cygrhfGOU+L3iApDDCdax6NBeqKq9jBKz9s1jgnDe
 M0qsXnCQDaRKWCBS4uihFWwgCRGB1YwSLUvvMII4zAK9LBI77newgFSxCWhJ7H9xA6yDX0BR
 4uqPx4wgNq+AncTkKxPAalgEVCWu/znODmKLCkRIfHpwmBWiRlDi5MwnYDWcAnESsw7dYwKx
 mQXEJW49mQ9ly0s0b53NDLJYQuARu8TjbfuhnnCR2HJqAQuELSzx6vgWdghbSuLzu71sEHa1
 xMqTR9ggmjsYJbbsh4WAscT+pZOZQOHHLKApsX6XPkRYUWLn77mMEIv5JN597WGFBDGvREeb
 EESJssTlB3eZIGxJicXtnWwTGJVmIXlnFpIXZiF5YRbCsgWMLKsYxVILinPTU4sNC0yR43sT
 Izi9a1nuYDx2zucQowAHoxIPb8GOjlgh1sSy4srcQ4wSHMxKIrybtNpihXhTEiurUovy44tK
 c1KLDzGaAkN7IrOUaHI+MPfklcQbmhoZGxtbmBiamRoaKonzeqQ3xAoJpCeWpGanphakFsH0
 MXFwSjUwxl7cuuy1fMxZkR1HFb45S8RdWFxdErzFb31ohd+e27//nF+pkTu5QOXnvYm3J83y
 5nzT7m0g8rppbzt3qaBTCZfYzeZ1R75fMf3YqG6bteDqvPqot0Hv3jwr9u9dX8G/2lh3I8+X
 17OD7eeH7rtlXHrqS9L0ngmNvteSXrk+unNNU+fqi+iHs5VYijMSDbWYi4oTAeNzFvoFBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsWy7bCSvK5XU2eswf91PBaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmhxbcVEVovP
 Gx4zWtxuXMFmsfrcQTaLrkN/2Sw2fvVwEPR4f6OV3WN2w0UWjwWbSj02repk87hzbQ+bx+Yl
 9R4b3+1g8jj4bg+Tx6/Doh59W1YxenzeJBfAHcVlk5Kak1mWWqRvl8CV8eb+QaaCZ4IVK7ct
 YmlgfMXXxcjJISFgIrHo0F6WLkYuDiGB3YwSE3bPYoRISEpMu3iUuYuRA8gWljh8uBii5i2j
 xPqLPUwgNcICkRJHD61gA7FFBNYySsw57wBSxCzQyyLRdHAFO0THI0aJ5vWX2UGq2AS0JPa/
 uAHWwS+gKHH1x2OwbbwCdhKTr0xgAbFZBFQlrv85DlYvKhAhcXjHLKgaQYmTM5+A1XAKxEnM
 OnQP7ApmAXWJP/MuMUPY4hK3nsyHistLNG+dzTyBUXgWkvZZSFpmIWmZhaRlASPLKkbJ1ILi
 3PTcYsMCw7zUcr3ixNzi0rx0veT83E2M4DjX0tzBeHlJ/CFGAQ5GJR7egh0dsUKsiWXFlbmH
 GCU4mJVEeDdptcUK8aYkVlalFuXHF5XmpBYfYpTmYFES532adyxSSCA9sSQ1OzW1ILUIJsvE
 wSnVwCjD/qFytXmkyMek48q1mXEPNmhqnT34dN9tte5rYWHnlz1O2LmiJJW1lZ1TS0ag4cvk
 1i1ContmLLOaETi5KMNEvMVTMdpK/cXRptoJ1j9XvP0j6uN/ZMORezumBXjPWB96dpKLR4fK
 BqEzcc5G/04/eq66KOtAmuOdK5cy6r9yfMve3H5BhU2JpTgj0VCLuag4EQC6Ihyr7wIAAA==
X-CMS-MailID: 20190924024114epcas1p1c2c0b2a843625f9d2351d64dec20804e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923211043epcas1p1dace897328bf65fef5a620067548789c
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211043epcas1p1dace897328bf65fef5a620067548789c@epcas1p1.samsung.com>
 <06523b8ebc7006e13d92032c2e8494d2a919deac.1569272883.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_194122_356822_A2C64900 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjQuIOyYpOyghCA2OjEwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
UmlnaHQgbm93IGRldmZyZXFfZGV2X3JlbGVhc2Ugd2lsbCBwcmludCBhIHdhcm5pbmcgYW5kIGFi
b3J0IHRoZSByZXN0IG9mCj4gdGhlIGNsZWFudXAgaWYgdGhlIGRldmZyZXEgaW5zdGFuY2UgaXMg
bm90IHBhcnQgb2YgdGhlIGdsb2JhbAo+IGRldmZyZXFfbGlzdC4gQnV0IHRoaXMgaXMgYSB2YWxp
ZCBzY2VuYXJpbywgZm9yIGV4YW1wbGUgaXQgY2FuIGhhcHBlbiBpZgo+IHRoZSBnb3Zlcm5vciBj
YW4ndCBiZSBmb3VuZCBvciBvbiBhbnkgb3RoZXIgaW5pdCBlcnJvciB0aGF0IGhhcHBlbnMKPiBh
ZnRlciBkZXZpY2VfcmVnaXN0ZXIuCj4gCj4gSW5pdGlhbGl6ZSBkZXZmcmVxLT5ub2RlIHRvIGFu
IGVtcHR5IGxpc3QgaGVhZCBpbiBkZXZmcmVxX2FkZF9kZXZpY2Ugc28KPiB0aGF0IGxpc3RfZGVs
IGJlY29tZXMgYSBzYWZlIG5vb3AgaW5zaWRlIGRldmZyZXFfZGV2X3JlbGVhc2UgYW5kIHdlIGNh
bgo+IGNvbnRpbnVlIHRoZSByZXN0IG9mIHRoZSBjbGVhbnVwLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4gUmV2aWV3ZWQtYnk6
IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jIHwgNiArLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IGluZGV4IGU5ZTZjOGYxZGM0Yi4u
ZjViZWE3MzUwZjcyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiAr
KysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTU4MiwxNSArNTgyLDEwIEBAIHN0
YXRpYyBpbnQgZGV2ZnJlcV9ub3RpZmllcl9jYWxsKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIs
IHVuc2lnbmVkIGxvbmcgdHlwZSwKPiAgc3RhdGljIHZvaWQgZGV2ZnJlcV9kZXZfcmVsZWFzZShz
dHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAgCXN0cnVjdCBkZXZmcmVxICpkZXZmcmVxID0gdG9f
ZGV2ZnJlcShkZXYpOwo+ICAKPiAgCW11dGV4X2xvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPiAt
CWlmIChJU19FUlIoZmluZF9kZXZpY2VfZGV2ZnJlcShkZXZmcmVxLT5kZXYucGFyZW50KSkpIHsK
PiAtCQltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2NrKTsKPiAtCQlkZXZfd2FybigmZGV2
ZnJlcS0+ZGV2LCAicmVsZWFzaW5nIGRldmZyZXEgd2hpY2ggZG9lc24ndCBleGlzdFxuIik7Cj4g
LQkJcmV0dXJuOwo+IC0JfQo+ICAJbGlzdF9kZWwoJmRldmZyZXEtPm5vZGUpOwo+ICAJbXV0ZXhf
dW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4gIAo+ICAJaWYgKGRldmZyZXEtPnByb2ZpbGUt
PmV4aXQpCj4gIAkJZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdChkZXZmcmVxLT5kZXYucGFyZW50KTsK
PiBAQCAtNjQxLDEwICs2MzYsMTEgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2Rldmlj
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAltdXRleF9pbml0KCZkZXZmcmVxLT5sb2NrKTsKPiAg
CW11dGV4X2xvY2soJmRldmZyZXEtPmxvY2spOwo+ICAJZGV2ZnJlcS0+ZGV2LnBhcmVudCA9IGRl
djsKPiAgCWRldmZyZXEtPmRldi5jbGFzcyA9IGRldmZyZXFfY2xhc3M7Cj4gIAlkZXZmcmVxLT5k
ZXYucmVsZWFzZSA9IGRldmZyZXFfZGV2X3JlbGVhc2U7Cj4gKwlJTklUX0xJU1RfSEVBRCgmZGV2
ZnJlcS0+bm9kZSk7Cj4gIAlkZXZmcmVxLT5wcm9maWxlID0gcHJvZmlsZTsKPiAgCXN0cm5jcHko
ZGV2ZnJlcS0+Z292ZXJub3JfbmFtZSwgZ292ZXJub3JfbmFtZSwgREVWRlJFUV9OQU1FX0xFTik7
Cj4gIAlkZXZmcmVxLT5wcmV2aW91c19mcmVxID0gcHJvZmlsZS0+aW5pdGlhbF9mcmVxOwo+ICAJ
ZGV2ZnJlcS0+bGFzdF9zdGF0dXMuY3VycmVudF9mcmVxdWVuY3kgPSBwcm9maWxlLT5pbml0aWFs
X2ZyZXE7Cj4gIAlkZXZmcmVxLT5kYXRhID0gZGF0YTsKPiAKCkl0J3MgcmVhc29uYWJsZS4gVGhh
bmtzLgpSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgoK
LS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
