Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A397DEA974
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 04:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wg6McTt55R08zOQSl6V4zeGsjAkCTbsLskF5/z2RqQ0=; b=oaBl8l23hVtOVZ
	nRD5Cut1ExNOHvOfn3zeWoSF0jjTreFqMmNtUirHC5rUSIC8KxbxDlUpACYmhI+jjx5xki58t2QuF
	Ck0smgLzmcUMzMUOEpR3B8R3g86OCYzDMioK9r1JAG5A21JjG6TEl2K53XBzW3rCWuDPprgQjinOJ
	IgJ4NcMYvNn7Vq/MtNsJ5B6CNnv+1uECtV8Q2jekz4Qh7/tCS3qFogoR+qv4olsMFwqBDW+UO8Twn
	FUGryCJ3lP2BINyiHy4CP2u/o/+g1uMXjr1eThHr7lnMhKl+D9MtHKWQdxCMRpDvPOTHc76Lopo3N
	avp9CXf/z7yQWXA+KjIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ0qt-0003lU-GD; Thu, 31 Oct 2019 03:10:23 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ0qk-0003l1-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 03:10:16 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191031031011epoutp0297d8623c37837a3616b95d907b9ad7a4~SnJtmuNuM2739827398epoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 03:10:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191031031011epoutp0297d8623c37837a3616b95d907b9ad7a4~SnJtmuNuM2739827398epoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572491411;
 bh=cU4lEnGD6v011KnpaqB3KiqExjGFrdQZFXj2UOBBImA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gtIvdyRKfXiEnvt7gCnHAFXzL6BlSNsjnK4tTXpQdeN87nvV4/vn/Asd6ok0KGxi6
 l/3PfXGIG5oTWxYyLYFIcl4pglCfeKxNJ4+k4i0GqR+tWE18lfPyc66AyJcXfw1qnp
 aWexkuTZ9IyYIly/a2dcn5db4oGOqYiH5NjhahYk=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191031031010epcas1p13dc7907b32ef19b0084f03463846ae0d~SnJs1yEqX1854218542epcas1p1L;
 Thu, 31 Oct 2019 03:10:10 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.158]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 473VgM67hZzMqYkY; Thu, 31 Oct
 2019 03:10:07 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.97.04224.F805ABD5; Thu, 31 Oct 2019 12:10:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191031031007epcas1p483fad2844e0b69af075d845e2abb3bd3~SnJqGf3zc2956729567epcas1p4L;
 Thu, 31 Oct 2019 03:10:07 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191031031007epsmtrp22cf8ca9b88d30982f483947d412313b6~SnJqFmkmm1766317663epsmtrp2c;
 Thu, 31 Oct 2019 03:10:07 +0000 (GMT)
X-AuditID: b6c32a38-d43ff70000001080-2d-5dba508f1b48
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 8F.1E.24756.F805ABD5; Thu, 31 Oct 2019 12:10:07 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191031031006epsmtip2bb935c0fc6231445a43c444640e1e91e~SnJpsylFG2939129391epsmtip2T;
 Thu, 31 Oct 2019 03:10:06 +0000 (GMT)
Subject: Re: [PATCH v9 4/8] PM / devfreq: Move more initialization before
 registration
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <0cadb00d-d34e-4028-93c4-b4902a50f5e2@samsung.com>
Date: Thu, 31 Oct 2019 12:15:39 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <25f46d76dc95d5509edd7bf9d1a2e0532faef4cc.1570044052.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TfUwTZxjP27teD+Jt74ofLw0OvMVE2YAeUPdqgLBpzJmRSGJiDAviDS6U
 0F6bXkvUZVvxa9A4xWhiVubHrEWEbUiHEwmEUWEMdbBpZFolikBmGq1jTYm6Ge31NOO/3/N7
 nt/zPL/3gyb0M5SBrpGcokMSLCyVTP50aWV21sHSnnLjwYe5OPjLeR2OXbkMcMu1IYCP9gUo
 PDZ2Tod/2/VQh0PuNNw6MavFgalxLfY8O0vg6FeDAEfPTQF8u76Vwu2jAxT2BJ9TuDPGF0P+
 8c29Or7Z/QfJnwy4+EBbI8XfGe+l+B9Pf8F3Rro1/ECkV8Mf6GoDfDTwdmlyWW2BWRSqREeG
 KFXaqmqk6kL2o00VaytMq4xcFrcav89mSIJVLGTXlZRmra+xxI2wGXWCxRWnSgVZZnOKChw2
 l1PMMNtkZyEr2qss9tX2bFmwyi6pOrvSZl3DGY25pnjhtlrz5J1Rwh5O3358spF0gxupHpBE
 I5iPBjubtQrWw26AvPu3e0ByHP8D0HczHq0azAG0Z+Y/4rXC3XqfVBN9AM0+vapRg8cAHeno
 pDyAplPgFuSJ1SiChfBzFPL9Sig1BDxEohfPPKSSoGAm6n9wk1Lwm3AZuvFkCihaBhahyQuZ
 Ck3C5ej489NahV4Ub3klJig0A99CI19PJ7okwa2o5dZEYjcCLkGh6RMaFaej3eebE2MRvKZD
 w3f9pGpgHXoU/VOn4hQUHu56hQ0oGumjVPwpOjsySKniBoC6+n/Xqok81O8/rFEWIuBK1NGT
 o9LL0MV/jwF18BsoEtuf2BlBBjXs06sl76Dr9yY0Kk5Fvi8bqSbAeufZ8c6z4J1nwfv/sJOA
 bAOLRbtsrRZlzp4//64DIPHEM3E36B0tCQJIA3YB01R3sVyvFerkHdYgQDTBLmTmCuIUUyXs
 2Ck6bBUOl0WUg8AUP+xDhGFRpS3+YSRnBWfKzcvLw/ncKhPHsUuYD874y/WwWnCKtaJoFx2v
 dRo6yeAGHzbvk5zDf38ipZ3y3ToS9ofPjBgvlf01t/i9opTlOROToc82SoHYFp+8cUXf+My3
 5l3F7/qny33fF7Y0Dfn603+OHKCGbLDBvDN9Q0p7ycdL6384vOaqm3aAsRVpVm391lMGpmMq
 XFdclvZg/fXagROzd0POpcw3/OXURz3Gzbp2lpTNApdJOGThJeD8sRD4AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsWy7bCSvG5/wK5Yg88tQhaHjm1lt/h6+hSj
 xbJLRxktpu/dxGZx/vwGdouzTW/YLW41yFisuPuR1WLT42usFl2/VjJbfO49wmjxecNjRovb
 jSvYLFafO8hm0XXoL5vFxq8eDgIe72+0snvMbrjI4rFgU6nHplWdbB53ru1h89i8pN5j47sd
 TB4H3+1h8ujbsorR4/MmuQCuKC6blNSczLLUIn27BK6Mh3fOMRe8kq+Y97CTpYHxqmQXIyeH
 hICJRMOKRyxdjFwcQgK7GSXefj7ACpGQlJh28ShzFyMHkC0scfhwMUTNW0aJ48+WMYLEhQUi
 JLq+ZoKUiwjUSfx5vo8JpIZZYDKLxMGj+xghGh4xSsyeswhsKJuAlsT+FzfYQGx+AUWJqz8e
 gw3iFbCTeLhdCyTMIqAqMe/vErByUaD5z7ffYASxeQUEJU7OfMICYnMKxEksu3mXGcRmFlCX
 +DPvEpQtLnHryXwmCFteonnrbOYJjMKzkLTPQtIyC0nLLCQtCxhZVjFKphYU56bnFhsWGOal
 lusVJ+YWl+al6yXn525iBEe0luYOxstL4g8xCnAwKvHwTijbGSvEmlhWXJl7iFGCg1lJhPeb
 DVCINyWxsiq1KD++qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGRrtb2yYw
 TXvYy7bo9c5nM7ilzbn796SY8utOvrzYYE+ps8ODLo1X00WVcy94Hn4kGchlk328zeD2SltJ
 85sV//69bCm9f3id9skjzDeO/V7bIJR9qWONyOn6uTtilnn1OSUEPk1k2LpZhsFKJsJWg/9U
 ZdPX/Z88X+8pPtVmV2jYnJb51e9HrBJLcUaioRZzUXEiAFrczjfkAgAA
X-CMS-MailID: 20191031031007epcas1p483fad2844e0b69af075d845e2abb3bd3
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192527epcas3p3ba24247bd1b8ce8ac33f7e4431c25241
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192527epcas3p3ba24247bd1b8ce8ac33f7e4431c25241@epcas3p3.samsung.com>
 <25f46d76dc95d5509edd7bf9d1a2e0532faef4cc.1570044052.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_201014_951263_C96DBF1A 
X-CRM114-Status: GOOD (  29.06  )
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKClRoaXMgcGF0Y2ggZGlkbid0IGdldCB0aGUgYWNrZWQtYnkgZnJvbSBkZXZm
cmVxIG1haW50YWluZXIuCkkgdGhpbmsgdGhhdCB3ZSBuZWVkIHRvIGRpc2N1c3MgdGhpcyBwYXRj
aCB3aXRoIG1vcmUgdGltZS4KQWxzbywgaXQgaXMgcG9zc2libGUgdG8gbWFrZSBpdCBhcyB0aGUg
c2VwYXJhdGUgcGF0Y2gKZnJvbSB0aGlzIHNlcmllcy4gCgpJTUhPLCBpZiB5b3UgbWFrZSB0aGUg
c2VwYXJhdGUgcGF0Y2ggZm9yIHRoaXMgYW5kCnJlc2VuZCB0aGUgc2VwYXJhdGUgcGF0Y2ggb24g
bGF0ZXIsIEkgdGhpbmsgdGhhdAp3ZSBjYW4gbWVyZ2UgdGhlIHJlbWFpbmVkIHBhdGNoIHJlbGF0
ZWQgdG8gUE1fUU9TLgoKCk9uIDE5LiAxMC4gMy4g7Jik7KCEIDQ6MjUsIExlb25hcmQgQ3Jlc3Rl
eiB3cm90ZToKPiBJbiBnZW5lcmFsIGl0IGlzIGEgYmV0dGVyIHRvIGluaXRpYWxpemUgYW4gb2Jq
ZWN0IGJlZm9yZSBtYWtpbmcgaXQKPiBhY2Nlc3NpYmxlIGV4dGVybmFsbHkgKHRocm91Z2ggZGV2
aWNlX3JlZ2lzdGVyKS4KPiAKPiBUaGlzIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGF2b2lkIHJlbW92
ZSBsb2NraW5nIHRoZSBwYXJ0aWFsbHkgaW5pdGlhbGl6ZWQKPiBvYmplY3QgYW5kIHNpbXBsaWZp
ZXMgdGhlIGNvZGUuIEhvd2V2ZXIgZGV2bSBpcyBub3QgYXZhaWxhYmxlIGJlZm9yZQo+IGRldmlj
ZV9yZWdpc3RlciAob25seSBhZnRlciB0aGUgZGV2aWNlX2luaXRpYWxpemUgc3RlcCkgc28gdGhl
IHR3bwo+IGFsbG9jYXRpb25zIG5lZWQgdG8gYmUgbWFuYWdlZCBtYW51YWxseS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IFJl
dmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAg
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTggZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9k
cml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gaW5kZXggM2UwZTkzNjE4NWEzLi4wYjQwZjQwZWU3
YWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+ICsrKyBiL2RyaXZl
cnMvZGV2ZnJlcS9kZXZmcmVxLmMKPiBAQCAtNTkxLDEwICs1OTEsMTIgQEAgc3RhdGljIHZvaWQg
ZGV2ZnJlcV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIAltdXRleF91bmxvY2so
JmRldmZyZXFfbGlzdF9sb2NrKTsKPiAgCj4gIAlpZiAoZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdCkK
PiAgCQlkZXZmcmVxLT5wcm9maWxlLT5leGl0KGRldmZyZXEtPmRldi5wYXJlbnQpOwo+ICAKPiAr
CWtmcmVlKGRldmZyZXEtPnRpbWVfaW5fc3RhdGUpOwo+ICsJa2ZyZWUoZGV2ZnJlcS0+dHJhbnNf
dGFibGUpOwo+ICAJbXV0ZXhfZGVzdHJveSgmZGV2ZnJlcS0+bG9jayk7Cj4gIAlrZnJlZShkZXZm
cmVxKTsKPiAgfQo+ICAKPiAgLyoqCj4gQEAgLTY3NCw0NCArNjc2LDQzIEBAIHN0cnVjdCBkZXZm
cmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+ICAJZGV2ZnJlcS0+
bWF4X2ZyZXEgPSBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxOwo+ICAKPiAgCWRldmZyZXEtPnN1
c3BlbmRfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEoZGV2KTsKPiAgCWF0
b21pY19zZXQoJmRldmZyZXEtPnN1c3BlbmRfY291bnQsIDApOwo+ICAKPiAtCWRldl9zZXRfbmFt
ZSgmZGV2ZnJlcS0+ZGV2LCAiZGV2ZnJlcSVkIiwKPiAtCQkJCWF0b21pY19pbmNfcmV0dXJuKCZk
ZXZmcmVxX25vKSk7Cj4gLQllcnIgPSBkZXZpY2VfcmVnaXN0ZXIoJmRldmZyZXEtPmRldik7Cj4g
LQlpZiAoZXJyKSB7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAtCQlwdXRf
ZGV2aWNlKCZkZXZmcmVxLT5kZXYpOwo+IC0JCWdvdG8gZXJyX291dDsKPiAtCX0KPiAtCj4gLQlk
ZXZmcmVxLT50cmFuc190YWJsZSA9IGRldm1fa3phbGxvYygmZGV2ZnJlcS0+ZGV2LAo+ICsJZGV2
ZnJlcS0+dHJhbnNfdGFibGUgPSBremFsbG9jKAo+ICAJCQlhcnJheTNfc2l6ZShzaXplb2YodW5z
aWduZWQgaW50KSwKPiAgCQkJCSAgICBkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4gIAkJ
CQkgICAgZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlKSwKPiAgCQkJR0ZQX0tFUk5FTCk7Cj4g
IAlpZiAoIWRldmZyZXEtPnRyYW5zX3RhYmxlKSB7Cj4gIAkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVx
LT5sb2NrKTsKPiAgCQllcnIgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyX2RldmZyZXE7Cj4gKwkJ
Z290byBlcnJfZGV2Owo+ICAJfQo+ICAKPiAtCWRldmZyZXEtPnRpbWVfaW5fc3RhdGUgPSBkZXZt
X2tjYWxsb2MoJmRldmZyZXEtPmRldiwKPiAtCQkJZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRl
LAo+IC0JCQlzaXplb2YodW5zaWduZWQgbG9uZyksCj4gLQkJCUdGUF9LRVJORUwpOwo+ICsJZGV2
ZnJlcS0+dGltZV9pbl9zdGF0ZSA9IGtjYWxsb2MoZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRl
LAo+ICsJCQkJCSBzaXplb2YodW5zaWduZWQgbG9uZyksCj4gKwkJCQkJIEdGUF9LRVJORUwpOwo+
ICAJaWYgKCFkZXZmcmVxLT50aW1lX2luX3N0YXRlKSB7Cj4gIAkJbXV0ZXhfdW5sb2NrKCZkZXZm
cmVxLT5sb2NrKTsKPiAgCQllcnIgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyX2RldmZyZXE7Cj4g
KwkJZ290byBlcnJfZGV2Owo+ICAJfQo+ICAKPiAgCWRldmZyZXEtPmxhc3Rfc3RhdF91cGRhdGVk
ID0gamlmZmllczsKPiAgCj4gIAlzcmN1X2luaXRfbm90aWZpZXJfaGVhZCgmZGV2ZnJlcS0+dHJh
bnNpdGlvbl9ub3RpZmllcl9saXN0KTsKPiAgCj4gKwlkZXZfc2V0X25hbWUoJmRldmZyZXEtPmRl
diwgImRldmZyZXElZCIsCj4gKwkJCQlhdG9taWNfaW5jX3JldHVybigmZGV2ZnJlcV9ubykpOwo+
ICsJZXJyID0gZGV2aWNlX3JlZ2lzdGVyKCZkZXZmcmVxLT5kZXYpOwo+ICsJaWYgKGVycikgewo+
ICsJCW11dGV4X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4gKwkJcHV0X2RldmljZSgmZGV2ZnJl
cS0+ZGV2KTsKPiArCQlnb3RvIGVycl9vdXQ7Cj4gKwl9Cj4gKwo+ICAJbXV0ZXhfdW5sb2NrKCZk
ZXZmcmVxLT5sb2NrKTsKPiAgCj4gIAltdXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4g
IAo+ICAJZ292ZXJub3IgPSB0cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVy
bm9yX25hbWUpOwo+IEBAIC03MzcsMTQgKzczOCwyMCBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJl
cV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCj4gIAlyZXR1cm4gZGV2ZnJlcTsK
PiAgCj4gIGVycl9pbml0Ogo+ICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4g
LWVycl9kZXZmcmVxOgo+ICAJZGV2ZnJlcV9yZW1vdmVfZGV2aWNlKGRldmZyZXEpOwo+IC0JZGV2
ZnJlcSA9IE5VTEw7Cj4gKwlyZXR1cm4gRVJSX1BUUihlcnIpOwo+ICsKPiAgZXJyX2RldjoKPiAr
CS8qCj4gKwkgKiBDbGVhbnVwIHBhdGggZm9yIGVycm9ycyB0aGF0IGhhcHBlbiBiZWZvcmUgcmVn
aXN0cmF0aW9uLgo+ICsJICogT3RoZXJ3aXNlIHdlIHJlbHkgb24gZGV2ZnJlcV9kZXZfcmVsZWFz
ZS4KPiArCSAqLwo+ICsJa2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4gKwlrZnJlZShk
ZXZmcmVxLT50cmFuc190YWJsZSk7Cj4gIAlrZnJlZShkZXZmcmVxKTsKPiAgZXJyX291dDoKPiAg
CXJldHVybiBFUlJfUFRSKGVycik7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTChkZXZmcmVxX2FkZF9k
ZXZpY2UpOwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0
cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
