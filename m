Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAC3B8924
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 04:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBnar5+zdlmbLH9nA18a9VNqFXlukZAna9r9cKFBqfQ=; b=AVCkAAiYq/1ltG
	e4nFzwkQBs6yS0z9hJAH+WFg6mPzsLdKrUT/Gyz4CisD2Dtgu0KCfQmrO2qUwFfc41r77dNY0Eemn
	AhVQ656svOOxMkJx12MOQf1bOU05XHNbcDvZh8YF85HZ6Dz8kbTHJ9NKN3c20W1T4GRIqplFQ044+
	OHrntoSstuqr0YABa/3p/33ie2aHNhh4R5Cys46zILJ1yquGAe/kr88NtVODPD5XE0TqRcteoYxCl
	qhoQW1vzA3UhEFqvEh85fShkNK2xD81phSJz0wl+oPYHhsZJKcVW5q35iRRJkWlEDgdohz8DNVjPi
	bwAaj4Sxlfkwb9fjcDKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB8Uh-0000is-CX; Fri, 20 Sep 2019 02:17:59 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB8UW-0000hw-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 02:17:51 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190920021742epoutp0250f0cf55ded0002e7342c9428ab67216~GA-LxRJom1355713557epoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 02:17:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190920021742epoutp0250f0cf55ded0002e7342c9428ab67216~GA-LxRJom1355713557epoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568945862;
 bh=YfXLiQy+8jtEZrck5hnFr299ep9mh+np3X2B2i7hquo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=XMlmUMI/KBbKM4PzW5svqfrLfXd+dYrpaj3ngtNtMnNomxtdU112gzWkWq8zV4cI8
 4YBRcfdIzw5KR5zBo4l0oll5DmZTYj+EbQDNe/sMqzXZhGTZ4H5j27e8H2XBkub9bK
 9/wsSa+04yQNY7jBtjpJV8V3inVRNoVZuK9kxmeU=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190920021741epcas1p364d774b46fa83d475ea533e38d29bb5b~GA-LWgqtd2381523815epcas1p3M;
 Fri, 20 Sep 2019 02:17:41 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.154]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46ZHRl0YPbzMqYkd; Fri, 20 Sep
 2019 02:17:39 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 D5.7E.04088.2C6348D5; Fri, 20 Sep 2019 11:17:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190920021738epcas1p13648ef89bd3d90cd7a3b7d6c19f0cac8~GA-IMjJk62761127611epcas1p1r;
 Fri, 20 Sep 2019 02:17:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920021738epsmtrp1e584db6aac356dd50bb0603c188f20c8~GA-ILeTpP0124101241epsmtrp1r;
 Fri, 20 Sep 2019 02:17:38 +0000 (GMT)
X-AuditID: b6c32a35-85dff70000000ff8-d4-5d8436c2db4f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.85.03706.2C6348D5; Fri, 20 Sep 2019 11:17:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190920021737epsmtip105f54fafa3b9ced1bce39fc896890de6~GA-H2isNV1323713237epsmtip1n;
 Fri, 20 Sep 2019 02:17:37 +0000 (GMT)
Subject: Re: [RFC PATCH v2 04/11] devfreq: exynos-bus: Clean up code
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <39db18c5-534d-ff72-0a7f-7a838c13fa7a@samsung.com>
Date: Fri, 20 Sep 2019 11:22:06 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919142236.4071-5-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEJsWRmVeSWpSXmKPExsWy7bCmnu5hs5ZYg9cvmSwOHdvKbnF/Xiuj
 xcYZ61kt5h85x2px5et7NovpezexWUy6P4HF4vz5DewWK+5+ZLXY9Pgaq8XlXXPYLD73HmG0
 mHF+H5PF2iN32S1uN65gs5gx+SWbg4DHplWdbB53ru1h87jffZzJY/OSeo+N73YweRx8t4fJ
 o2/LKkaPz5vkAjiism0yUhNTUosUUvOS81My89JtlbyD453jTc0MDHUNLS3MlRTyEnNTbZVc
 fAJ03TJzgD5QUihLzCkFCgUkFhcr6dvZFOWXlqQqZOQXl9gqpRak5BRYFugVJ+YWl+al6yXn
 51oZGhgYmQIVJmRnrGmdzl7QbVRxa90RlgbGRepdjJwcEgImEtvn3mbrYuTiEBLYwSix9MIK
 RgjnE6PE3O/bmUGqhAS+MUqc/VoO0zFv+zMmiKK9jBJ9z5qh2t8zSrxs+cYIUiUs4CIx59RC
 VpCEiMB/RonTy1aCOcwCnUwSv5/vYAWpYhPQktj/4gYbiM0voChx9cdjsG5eATuJW6u/gdWw
 CKhKvN3xlB3EFhWIkPj04DArRI2gxMmZT1hAbE4BS4m1886CzWEWEJe49WQ+E4QtL9G8dTYz
 yGIJgWPsErcWbGKGeMJFYsanf0wQtrDEq+Nb2CFsKYmX/W1QdrXEypNH2CCaOxgltuy/wAqR
 MJbYv3QyUDMH0AZNifW79CHCihI7f89lhFjMJ/Huaw8rSImEAK9ER5sQRImyxOUHd6HWSkos
 bu9km8CoNAvJO7OQvDALyQuzEJYtYGRZxSiWWlCcm55abFhgiBzfmxjB6VvLdAfjlHM+hxgF
 OBiVeHgVyptjhVgTy4orcw8xSnAwK4nwzjFtihXiTUmsrEotyo8vKs1JLT7EaAoM7YnMUqLJ
 +cDcklcSb2hqZGxsbGFiaGZqaKgkzuuR3hArJJCeWJKanZpakFoE08fEwSnVwNh7Srbgf+uu
 97dLNEXfZ3S+Fnr7L9m/pMIqU+Wl1pbNZSteBP+vr3vE0bSXZXJBQdr+G5OsfhdeWXN9Vfyu
 2vIF/zwW86yMypTp23yqn2XDw9qtLnq2Lzfv9PyovlHWa/J3HoGlBc5c7CZnFti53pCo0nL/
 K/7EkHUDx02LeBedSsvQC/JKHUosxRmJhlrMRcWJAC6coAH1AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsWy7bCSnO4hs5ZYg/ddHBaHjm1lt7g/r5XR
 YuOM9awW84+cY7W48vU9m8X0vZvYLCbdn8Bicf78BnaLFXc/slpsenyN1eLyrjlsFp97jzBa
 zDi/j8li7ZG77Ba3G1ewWcyY/JLNQcBj06pONo871/awedzvPs7ksXlJvcfGdzuYPA6+28Pk
 0bdlFaPH501yARxRXDYpqTmZZalF+nYJXBlrWqezF3QbVdxad4SlgXGRehcjJ4eEgInEvO3P
 mLoYuTiEBHYzSmw8vJEZIiEpMe3iUSCbA8gWljh8uBii5i2jxNsZnYwgNcICLhJzTi1kBUmI
 CPxnlHjYdowRxGEW6GSSWLzlBwvc2M2LH4ONZRPQktj/4gYbiM0voChx9cdjsFG8AnYSt1Z/
 YwWxWQRUJd7ueMoOYosKREgc3jELqkZQ4uTMJywgNqeApcTaeWfB5jALqEv8mXeJGcIWl7j1
 ZD4ThC0v0bx1NvMERuFZSNpnIWmZhaRlFpKWBYwsqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS
 9ZLzczcxgiNZS3MH4+Ul8YcYBTgYlXh4FcqbY4VYE8uKK3MPMUpwMCuJ8M4xbYoV4k1JrKxK
 LcqPLyrNSS0+xCjNwaIkzvs071ikkEB6YklqdmpqQWoRTJaJg1OqgTGTe9nGF2+LdDouncjL
 OXNvkcn9x7KT+B4VmftX3JtSEdzE7llcsPaEw1xOkYeSaaLHEs2EsssfzWZRNbtVLzzdeses
 69M77utHzgjOKYuYNKt/Hs/NsH+eiZHbhRfvLJVLerdwTvIsqdmP7K+Ihj0REz8YN4GvWrll
 2Zo2CcW6OQ4abb2nkpVYijMSDbWYi4oTAYJDL03gAgAA
X-CMS-MailID: 20190920021738epcas1p13648ef89bd3d90cd7a3b7d6c19f0cac8
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a@eucas1p1.samsung.com>
 <20190919142236.4071-5-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_191748_723652_C6F92511 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpPbiAxOS4gOS4gMTkuIOyYpO2bhCAxMToyMiwgQXJ0dXIgxZp3aWdvxYQgd3Jv
dGU6Cj4gRnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+
Cj4gCj4gVGhpcyBwYXRjaCBhZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0byB0aGUgZXh5bm9zLWJ1
cyBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBh
cnRuZXIuc2Ftc3VuZy5jb20+Cj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDY2
ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjUgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4g
aW5kZXggNjBhZDQzMTlmZDgwLi44ZDQ0ODEwY2FjNjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9k
ZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMK
PiBAQCAtMTUsMTEgKzE1LDEwIEBACj4gICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gLSNp
bmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4gLSNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+Cj4gIAo+ICAjZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTwk0
MAo+ICAKPiBAQCAtMTc4LDcgKzE3Nyw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRf
cGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9
IGJ1cy0+ZGV2Owo+ICAJc3RydWN0IG9wcF90YWJsZSAqb3BwX3RhYmxlOwo+ICAJY29uc3QgY2hh
ciAqdmRkID0gInZkZCI7Cj4gLQlpbnQgaSwgcmV0LCBjb3VudCwgc2l6ZTsKPiArCWludCBpLCBy
ZXQsIGNvdW50Owo+ICAKPiAgCW9wcF90YWJsZSA9IGRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMo
ZGV2LCAmdmRkLCAxKTsKPiAgCWlmIChJU19FUlIob3BwX3RhYmxlKSkgewo+IEBAIC0yMDEsOCAr
MjAwLDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wLAo+ICAJfQo+ICAJYnVzLT5lZGV2X2NvdW50ID0gY291bnQ7Cj4gIAo+IC0J
c2l6ZSA9IHNpemVvZigqYnVzLT5lZGV2KSAqIGNvdW50Owo+IC0JYnVzLT5lZGV2ID0gZGV2bV9r
emFsbG9jKGRldiwgc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKwlidXMtPmVkZXYgPSBkZXZtX2tjYWxs
b2MoZGV2LCBjb3VudCwgc2l6ZW9mKCpidXMtPmVkZXYpLCBHRlBfS0VSTkVMKTsKPiAgCWlmICgh
YnVzLT5lZGV2KSB7Cj4gIAkJcmV0ID0gLUVOT01FTTsKPiAgCQlnb3RvIGVycl9yZWd1bGF0b3I7
Cj4gQEAgLTMwMSwxMCArMjk5LDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNf
ZXhpdDsKPiAgCj4gIAlvbmRlbWFuZF9kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpv
bmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiAt
CQlyZXQgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyOwo+IC0JfQo+ICsJaWYgKCFvbmRlbWFuZF9k
YXRhKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAgCW9uZGVtYW5kX2RhdGEtPnVwdGhyZXNo
b2xkID0gNDA7Cj4gIAlvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVyZW50aWFsID0gNTsKPiAgCj4g
QEAgLTMxNCw4ICszMTEsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0
cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAkJCQkJCW9uZGVtYW5kX2RhdGEpOwo+ICAJaWYgKElT
X0VSUihidXMtPmRldmZyZXEpKSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRl
dmZyZXEgZGV2aWNlXG4iKTsKPiAtCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gLQkJ
Z290byBlcnI7Cj4gKwkJcmV0dXJuIFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiAgCX0KPiAgCj4g
IAkvKgo+IEBAIC0zMjUsMTYgKzMyMSwxMyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmls
ZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAlyZXQgPSBleHlub3NfYnVzX2VuYWJs
ZV9lZGV2KGJ1cyk7Cj4gIAlpZiAocmV0IDwgMCkgewo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIGVuYWJsZSBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+IC0JCWdvdG8gZXJyOwo+ICsJ
CXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+ICAJcmV0ID0gZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVz
KTsKPiAtCWlmIChyZXQgPCAwKSB7Cj4gKwlpZiAocmV0IDwgMCkKPiAgCQlkZXZfZXJyKGRldiwg
ImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiAtCQln
b3RvIGVycjsKCkluc3RlYWQgb2YgcmVtb3ZpbmcgJ2dvdG8gZXJyJywganVzdCByZXR1cm4gZXJy
IGFzIEkgY29tbWVudGVkWzFdIG9uIHYxLgpbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
Ny8yNi8zMzEKCj4gLQl9Cj4gIAo+IC1lcnI6Cj4gIAlyZXR1cm4gcmV0OwoKQW5kIHlvdSBqdXN0
IGtlZXAgJ3JldHVybiByZXQnIG9yIHlvdSBjYW4gY2hhbmdlIGl0IGFzICdyZXR1cm4gMCcuCgoK
PiAgfQo+ICAKPiBAQCAtMzQ0LDcgKzMzNyw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9m
aWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJc3RydWN0IGRldmlj
ZSAqZGV2ID0gYnVzLT5kZXY7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZlX2RhdGEgKnBhc3Np
dmVfZGF0YTsKPiAgCXN0cnVjdCBkZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKPiAtCWludCByZXQg
PSAwOwo+ICAKPiAgCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5v
ciBkYXRhIGZvciBwYXNzaXZlIGRldmljZSAqLwo+ICAJcHJvZmlsZS0+dGFyZ2V0ID0gZXh5bm9z
X2J1c190YXJnZXQ7Cj4gQEAgLTM1MiwzMCArMzQ0LDI2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1
c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAKPiAgCS8q
IEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCj4gIAlwYXJlbnRf
ZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShkZXYsIDApOwo+IC0JaWYg
KElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKPiAtCQlyZXQgPSAtRVBST0JFX0RFRkVSOwo+IC0J
CWdvdG8gZXJyOwo+IC0JfQo+ICsJaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpCj4gKwkJcmV0
dXJuIC1FUFJPQkVfREVGRVI7Cj4gIAo+ICAJcGFzc2l2ZV9kYXRhID0gZGV2bV9remFsbG9jKGRl
diwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEpLCBHRlBfS0VSTkVMKTsKPiAtCWlmICghcGFzc2l2ZV9k
YXRhKSB7Cj4gLQkJcmV0ID0gLUVOT01FTTsKPiAtCQlnb3RvIGVycjsKPiAtCX0KPiArCWlmICgh
cGFzc2l2ZV9kYXRhKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAgCXBhc3NpdmVfZGF0YS0+
cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Cj4gIAo+ICAJLyogQWRkIGRldmZyZXEgZGV2aWNlIGZv
ciBleHlub3MgYnVzIHdpdGggcGFzc2l2ZSBnb3Zlcm5vciAqLwo+IC0JYnVzLT5kZXZmcmVxID0g
ZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVRX0dPVl9QQVNTSVZF
LAo+ICsJYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxl
LAo+ICsJCQkJCQlERVZGUkVRX0dPVl9QQVNTSVZFLAo+ICAJCQkJCQlwYXNzaXZlX2RhdGEpOwo+
ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gIAkJZGV2X2VycihkZXYsCj4gIAkJCSJm
YWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2ZSBnb3Zlcm5vclxuIik7Cj4gLQkJ
cmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCXJldHVybiBQ
VFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gIAl9Cj4gIAo+IC1lcnI6Cj4gLQlyZXR1cm4gcmV0Owo+
ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IEBAIC0zOTMsMTggKzM4MSwxOCBAQCBzdGF0aWMg
aW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQly
ZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAgCj4gLQlidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRl
diwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKPiArCWJ1cyA9IGRldm1fa3phbGxvYyhkZXYs
IHNpemVvZigqYnVzKSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIWJ1cykKPiAgCQlyZXR1cm4gLUVO
T01FTTsKPiAgCW11dGV4X2luaXQoJmJ1cy0+bG9jayk7Cj4gLQlidXMtPmRldiA9ICZwZGV2LT5k
ZXY7Cj4gKwlidXMtPmRldiA9IGRldjsKPiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGJ1
cyk7Cj4gIAo+ICAJcHJvZmlsZSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcHJvZmlsZSks
IEdGUF9LRVJORUwpOwo+ICAJaWYgKCFwcm9maWxlKQo+ICAJCXJldHVybiAtRU5PTUVNOwo+ICAK
PiAtCW5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgImRldmZyZXEiLCAwKTsK
PiArCW5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAiZGV2ZnJlcSIsIDApOwo+ICAJaWYgKG5v
ZGUpIHsKPiAgCQlvZl9ub2RlX3B1dChub2RlKTsKPiAgCQlwYXNzaXZlID0gdHJ1ZTsKPiBAQCAt
NDYxLDEyICs0NDksMTAgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Jlc3VtZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gIAlpbnQgcmV0Owo+ICAKPiAgCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2Vk
ZXYoYnVzKTsKPiAtCWlmIChyZXQgPCAwKSB7Cj4gKwlpZiAocmV0IDwgMCkKPiAgCQlkZXZfZXJy
KGRldiwgImZhaWxlZCB0byBlbmFibGUgdGhlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4g
LQkJcmV0dXJuIHJldDsKCktlZXAgdGhlICdyZXR1cm4gcmV0JyBpZiBlcnJvciBoYXBwZW4gYXMg
SSBjb21tZW50ZWRbMV0gb24gdjEuClsxXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS83LzI2
LzMzMQoKPiAtCX0KPiAgCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiByZXQ7CgpBbmQgeW91IGp1
c3Qga2VlcCAncmV0dXJuIDAnIG9yIHlvdSBjYW4gY2hhbmdlIGl0IGFzICdyZXR1cm4gcmV0Jy4K
Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19zdXNwZW5kKHN0cnVjdCBkZXZpY2Ug
KmRldikKPiBAQCAtNDc1LDEyICs0NjEsMTAgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJaW50IHJldDsKPiAgCj4gIAlyZXQgPSBleHlub3Nf
YnVzX2Rpc2FibGVfZWRldihidXMpOwo+IC0JaWYgKHJldCA8IDApIHsKPiArCWlmIChyZXQgPCAw
KQo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGRpc2FibGUgdGhlIGRldmZyZXEtZXZlbnQg
ZGV2aWNlc1xuIik7Cj4gLQkJcmV0dXJuIHJldDsKCktlZXAgdGhlICdyZXR1cm4gcmV0JyBpZiBl
cnJvciBoYXBwZW4gYXMgSSBjb21tZW50ZWRbMV0gb24gdjEuClsxXSBodHRwczovL2xrbWwub3Jn
L2xrbWwvMjAxOS83LzI2LzMzMQoKPiAtCX0KPiAgCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiBy
ZXQ7CgpBbmQgeW91IGp1c3Qga2VlcCAncmV0dXJuIDAnIG9yIHlvdSBjYW4gY2hhbmdlIGl0IGFz
ICdyZXR1cm4gcmV0Jy4KCj4gIH0KPiAgI2VuZGlmCj4gIAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMs
CkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
