Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54D4C9990
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwnPasDIW4DZE8xq2Eyj8YKwM1hrwao9xkpMxV8fikU=; b=deQuY/1RDlkEsw
	y6oXIBpOKvmSR6mNLp+UdER1KjZqeMqMG6nr1jNWl+lTCRLWZDB1HTF4c208JcMLNQ1FD6CzFy6JH
	rd4bmfkeCzfy5bRwwWpmixQOwYmN0eyZ8Ibdq0M85y+lmfbZQwApQLCPP+R3AAUCRmAnzK54byS3X
	q90sf2Oj1zSJv4JyanwxcNsTw4cY0z2g3Hiwj5LN1xRwVP7xL6RRs20xqiddorTye/CcVoSgboCKF
	ivaPNZmfHj2UXNjVVF87bC5rQme1qOALZXiXVkyrA7EXczN2S384rbOVJl0REob5EBhfQ0yETwQjj
	OtKWt+sJZZvGtOxh6VtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwC5-0004YX-OL; Thu, 03 Oct 2019 08:10:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwBw-0004XF-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:10:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191003081026euoutp01ac21b74619c59b6dacfc00b9aa0085d2~KFL4GkP_D3070030700euoutp01_
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  3 Oct 2019 08:10:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191003081026euoutp01ac21b74619c59b6dacfc00b9aa0085d2~KFL4GkP_D3070030700euoutp01_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570090226;
 bh=6hRjC0tNiyDSi8+Av6FNgAeKhG2AUbLonkv4VI4SaTQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=FZym4s8AOWj0Lm4i3MrOJOO6ka/1WVrLgRXopDQrBCR5KCkAKWWYinWLGwrHy96ND
 gc+/qqdSDZZHHmwKeH+p+EFPrt0rpD3YUQxw4tNMtKeCnAvMNRJJmMzXARk+jngHOs
 lhNyyF5wNCso8qIqcqsbjcKfqSxTV3DFh4npU9kI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191003081026eucas1p198b7a6a4755450e6e60e233d25318b9a~KFL31rgf82110221102eucas1p1W;
 Thu,  3 Oct 2019 08:10:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D9.54.04309.2FCA59D5; Thu,  3
 Oct 2019 09:10:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191003081025eucas1p1f702dfa34d28e0ff82cf5e4d9780955b~KFL3frBuQ2398123981eucas1p1C;
 Thu,  3 Oct 2019 08:10:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191003081025eusmtrp11f6c646f18ccac9f96d7fdbc9c43ada8~KFL3e5DMo1139911399eusmtrp1a;
 Thu,  3 Oct 2019 08:10:25 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-cb-5d95acf26379
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6E.1A.04117.1FCA59D5; Thu,  3
 Oct 2019 09:10:25 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20191003081025eusmtip2fad72b79e16b275538bd8c580e57356f~KFL2z2G__0472104721eusmtip2X;
 Thu,  3 Oct 2019 08:10:25 +0000 (GMT)
Message-ID: <400cff22991252ddff7777e51f17dec2ce6e06f5.camel@samsung.com>
Subject: Re: [RFC PATCH v2 04/11] devfreq: exynos-bus: Clean up code
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Thu, 03 Oct 2019 10:10:24 +0200
In-Reply-To: <39db18c5-534d-ff72-0a7f-7a838c13fa7a@samsung.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3d2zo7m7DgVH8ySFn7ITLOyjihdwA+HLhD0JSqpmSe1vLHj
 JZVSS6WmeS3UJS1B0kxbmxfmKCWzRoqKJUu8Vuos85JXDGa1eZT69nv+z/N//u8DL4lJenFX
 MiI6jpVHyyKlhK2w8d2v7j3zNQ+C944aCXrkUSaiNSVqnP60OIHTqrYunO5dmiXo4ldagi4c
 yRfS3d0vRHTV0BxOa0eNOP1RX0bQC/faEF3S3Syga9uGRPRAehVBlxR9J45SjLb6LsEMGl8S
 zEi2QcDUVaQymhmdgMmtr0bMgnb7adE528BQNjIigZX7HL5kG75apxLFPvC/XrFswtOQabcC
 2ZBAHYC8H5lCBbIlJVQVgscFPQK+WESgU2RjfLGAQFEzhm1Y5jNNON+oRPBFoRHxhQnB6w9f
 CeuUmGKgerARt7IjFQRl7eVrTFBHoHNgeS3DiZpBMNbycy0DozIEMKGcFFqnhJQHzHVqkJVt
 LI6Bhwohn+0F0+25FiYtCQ6wqnO0yhjlDrcbHq7tAWpJBHdnmxA/HwRT4/U4z44waagX8ewG
 HUU56zs5GG8awXlzGgLtk7b1QwPgjaEHt4Zh1C5Q6314+Rj09ikJqwyUPfRNO/BvsIfCxmKM
 l8VwJ0vCoxT0pfa8EeDWM+P6bgbyPnaJ8tEO5b9blP/dovyX+hhh1ciFjeeiwlhuXzSb6M3J
 orj46DDvyzFRWmT5ax2/DYs6pDeHtCKKRFI7ccnw/WAJLkvgkqJaEZCY1En8QW2RxKGypGRW
 HnNRHh/Jcq1oKymUuohTNn0+L6HCZHHsNZaNZeUbXQFp45qGfA+l6J4/Bb1JRTXXvlfbdLrl
 mk+aVQWjYtI9q+Vthsyj/JGio4obTJ4o2qYZc5Ym29XuSAtf+oacvQLUgsYrWxzOxOfmlF5g
 g6+eVfr5uK4kTtw05/SfSA8sPm42ZHYah7OcQpoa+lv2pwZudjk1tbOu0hdnVzzt/xy8Ee7n
 LxVy4TJfT0zOyf4C22Y4aWcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsVy+t/xe7of10yNNWg5qW9xf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQy/m6ez14w1bJiybdnrA2Mz7S7GDk5JARMJD61PmPtYuTiEBJYyijR/Oo6O0RCQuLj+hus
 ELawxJ9rXWwQRU8YJU4cX88GkuAV8JBYdWcbWJGwgIvEnFMLwWw2AXuJs7e/MYE0iAi8Z5T4
 sP0dO4jDLNDGJHGobzNYFYuAqsTHsxsZQWxOoI7bs7tYIFZ8ZpQ4eWM+2B3MApoSrdt/Q92k
 I/H2VB9QEQfQakGJvzuEIUrkJZq3zmaewCg4C0nHLISqWUiqFjAyr2IUSS0tzk3PLTbSK07M
 LS7NS9dLzs/dxAiM2W3Hfm7Zwdj1LvgQowAHoxIP74x7U2KFWBPLiitzDzFKcDArifBeWg8U
 4k1JrKxKLcqPLyrNSS0+xGgK9M9EZinR5HxgOskriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQ
 nliSmp2aWpBaBNPHxMEp1cAozFYlqZ2plr7us5JEU/qqs+nXF6yR3XZSYfW9y69s7m1NZYmt
 j9FnmvGk+07WoXnZ3eZKhsor7lmKVIgIrj3k92Gi9LWlq/5fmc9yY07ZxaSgFXvy/LdLJ8ws
 jf3sxnhxm5rNcdGUtsojjh84Whcve2Ycazyp4adyhuOcNV/c3iXrNN178lxLiaU4I9FQi7mo
 OBEA6B+cBe8CAAA=
X-CMS-MailID: 20191003081025eucas1p1f702dfa34d28e0ff82cf5e4d9780955b
X-Msg-Generator: CA
X-RootMTR: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142324eucas1p1638cec2aafbfcaf03cfdfa7d0189143a@eucas1p1.samsung.com>
 <20190919142236.4071-5-a.swigon@samsung.com>
 <39db18c5-534d-ff72-0a7f-7a838c13fa7a@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_011029_187266_60A68B6F 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIDIwMTktMDktMjAgYXQgMTE6MjIgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90
ZToKPiBIaSBBcnR1ciwKPiAKPiBPbiAxOS4gOS4gMTkuIOyYpO2bhCAxMToyMiwgQXJ0dXIgxZp3
aWdvxYQgd3JvdGU6Cj4gPiBGcm9tOiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5z
YW1zdW5nLmNvbT4KPiA+IAo+ID4gVGhpcyBwYXRjaCBhZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0
byB0aGUgZXh5bm9zLWJ1cyBkcml2ZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWa
d2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
ZGV2ZnJlcS9leHlub3MtYnVzLmMgfCA2NiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25z
KC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIv
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gaW5kZXggNjBhZDQzMTlmZDgwLi44ZDQ0
ODEwY2FjNjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4g
PiArKysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiBAQCAtMTUsMTEgKzE1LDEw
IEBACj4gPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9l
eHBvcnQuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gPiAtI2luY2x1ZGUgPGxp
bnV4L29mX2RldmljZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gICNpbmNsdWRl
IDxsaW51eC9wbV9vcHAuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ID4gLSNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+Cj4gPiAgCj4gPiAgI2RlZmluZSBERUZBVUxUX1NBVFVSQVRJT05fUkFU
SU8JNDAKPiA+ICAKPiA+IEBAIC0xNzgsNyArMTc3LDcgQEAgc3RhdGljIGludCBleHlub3NfYnVz
X3BhcmVudF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ID4gIAlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBidXMtPmRldjsKPiA+ICAJc3RydWN0IG9wcF90YWJsZSAqb3BwX3RhYmxlOwo+
ID4gIAljb25zdCBjaGFyICp2ZGQgPSAidmRkIjsKPiA+IC0JaW50IGksIHJldCwgY291bnQsIHNp
emU7Cj4gPiArCWludCBpLCByZXQsIGNvdW50Owo+ID4gIAo+ID4gIAlvcHBfdGFibGUgPSBkZXZf
cG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgJnZkZCwgMSk7Cj4gPiAgCWlmIChJU19FUlIob3Bw
X3RhYmxlKSkgewo+ID4gQEAgLTIwMSw4ICsyMDAsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNf
cGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gPiAgCX0KPiA+ICAJYnVz
LT5lZGV2X2NvdW50ID0gY291bnQ7Cj4gPiAgCj4gPiAtCXNpemUgPSBzaXplb2YoKmJ1cy0+ZWRl
dikgKiBjb3VudDsKPiA+IC0JYnVzLT5lZGV2ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZSwgR0ZQ
X0tFUk5FTCk7Cj4gPiArCWJ1cy0+ZWRldiA9IGRldm1fa2NhbGxvYyhkZXYsIGNvdW50LCBzaXpl
b2YoKmJ1cy0+ZWRldiksIEdGUF9LRVJORUwpOwo+ID4gIAlpZiAoIWJ1cy0+ZWRldikgewo+ID4g
IAkJcmV0ID0gLUVOT01FTTsKPiA+ICAJCWdvdG8gZXJyX3JlZ3VsYXRvcjsKPiA+IEBAIC0zMDEs
MTAgKzI5OSw5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4
eW5vc19idXMgKmJ1cywKPiA+ICAJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiA+
ICAKPiA+ICAJb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1h
bmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gLQlpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiA+IC0J
CXJldCA9IC1FTk9NRU07Cj4gPiAtCQlnb3RvIGVycjsKPiA+IC0JfQo+ID4gKwlpZiAoIW9uZGVt
YW5kX2RhdGEpCj4gPiArCQlyZXR1cm4gLUVOT01FTTsKPiA+ICsKPiA+ICAJb25kZW1hbmRfZGF0
YS0+dXB0aHJlc2hvbGQgPSA0MDsKPiA+ICAJb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlh
bCA9IDU7Cj4gPiAgCj4gPiBAQCAtMzE0LDggKzMxMSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1
c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiA+ICAJCQkJCQlvbmRlbWFu
ZF9kYXRhKTsKPiA+ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gPiAgCQlkZXZfZXJy
KGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+ID4gLQkJcmV0ID0gUFRS
X0VSUihidXMtPmRldmZyZXEpOwo+ID4gLQkJZ290byBlcnI7Cj4gPiArCQlyZXR1cm4gUFRSX0VS
UihidXMtPmRldmZyZXEpOwo+ID4gIAl9Cj4gPiAgCj4gPiAgCS8qCj4gPiBAQCAtMzI1LDE2ICsz
MjEsMTMgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9z
X2J1cyAqYnVzLAo+ID4gIAlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4gPiAg
CWlmIChyZXQgPCAwKSB7Cj4gPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2
ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0JCWdvdG8gZXJyOwo+ID4gKwkJcmV0dXJuIHJl
dDsKPiA+ICAJfQo+ID4gIAo+ID4gIAlyZXQgPSBleHlub3NfYnVzX3NldF9ldmVudChidXMpOwo+
ID4gLQlpZiAocmV0IDwgMCkgewo+ID4gKwlpZiAocmV0IDwgMCkKPiA+ICAJCWRldl9lcnIoZGV2
LCAiZmFpbGVkIHRvIHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+ID4g
LQkJZ290byBlcnI7Cj4gCj4gSW5zdGVhZCBvZiByZW1vdmluZyAnZ290byBlcnInLCBqdXN0IHJl
dHVybiBlcnIgYXMgSSBjb21tZW50ZWRbMV0gb24gdjEuCj4gWzFdIGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzcvMjYvMzMxCj4gCj4gPiAtCX0KPiA+ICAKPiA+IC1lcnI6Cj4gPiAgCXJldHVy
biByZXQ7Cj4gCj4gQW5kIHlvdSBqdXN0IGtlZXAgJ3JldHVybiByZXQnIG9yIHlvdSBjYW4gY2hh
bmdlIGl0IGFzICdyZXR1cm4gMCcuCgpPSywgSSB3ZW50IGZvcjoKCnJldCA9IGV4eW5vc19idXNf
c2V0X2V2ZW50KGJ1cyk7CmlmIChyZXQgPCAwKSB7CglkZXZfZXJyKGRldiwgImZhaWxlZCB0byBz
ZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKCXJldHVybiByZXQ7Cn0KCnJl
dHVybiAwOwoKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMzQ0LDcgKzMzNyw2IEBAIHN0YXRpYyBpbnQg
ZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+
ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPiA+ICAJc3RydWN0IGRldmZyZXFf
cGFzc2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7Cj4gPiAgCXN0cnVjdCBkZXZmcmVxICpwYXJlbnRf
ZGV2ZnJlcTsKPiA+IC0JaW50IHJldCA9IDA7Cj4gPiAgCj4gPiAgCS8qIEluaXRpYWxpemUgdGhl
IHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXNzaXZlIGRldmljZSAqLwo+
ID4gIAlwcm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3RhcmdldDsKPiA+IEBAIC0zNTIsMzAg
KzM0NCwyNiBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3Ry
dWN0IGV4eW5vc19idXMgKmJ1cywKPiA+ICAKPiA+ICAJLyogR2V0IHRoZSBpbnN0YW5jZSBvZiBw
YXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiA+ICAJcGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dl
dF9kZXZmcmVxX2J5X3BoYW5kbGUoZGV2LCAwKTsKPiA+IC0JaWYgKElTX0VSUihwYXJlbnRfZGV2
ZnJlcSkpIHsKPiA+IC0JCXJldCA9IC1FUFJPQkVfREVGRVI7Cj4gPiAtCQlnb3RvIGVycjsKPiA+
IC0JfQo+ID4gKwlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkKPiA+ICsJCXJldHVybiAtRVBS
T0JFX0RFRkVSOwo+ID4gIAo+ID4gIAlwYXNzaXZlX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBz
aXplb2YoKnBhc3NpdmVfZGF0YSksIEdGUF9LRVJORUwpOwo+ID4gLQlpZiAoIXBhc3NpdmVfZGF0
YSkgewo+ID4gLQkJcmV0ID0gLUVOT01FTTsKPiA+IC0JCWdvdG8gZXJyOwo+ID4gLQl9Cj4gPiAr
CWlmICghcGFzc2l2ZV9kYXRhKQo+ID4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gPiArCj4gPiAgCXBh
c3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Cj4gPiAgCj4gPiAgCS8qIEFkZCBk
ZXZmcmVxIGRldmljZSBmb3IgZXh5bm9zIGJ1cyB3aXRoIHBhc3NpdmUgZ292ZXJub3IgKi8KPiA+
IC0JYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBE
RVZGUkVRX0dPVl9QQVNTSVZFLAo+ID4gKwlidXMtPmRldmZyZXEgPSBkZXZtX2RldmZyZXFfYWRk
X2RldmljZShkZXYsIHByb2ZpbGUsCj4gPiArCQkJCQkJREVWRlJFUV9HT1ZfUEFTU0lWRSwKPiA+
ICAJCQkJCQlwYXNzaXZlX2RhdGEpOwo+ID4gIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsK
PiA+ICAJCWRldl9lcnIoZGV2LAo+ID4gIAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdp
dGggcGFzc2l2ZSBnb3Zlcm5vclxuIik7Cj4gPiAtCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJl
cSk7Cj4gPiAtCQlnb3RvIGVycjsKPiA+ICsJCXJldHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7
Cj4gPiAgCX0KPiA+ICAKPiA+IC1lcnI6Cj4gPiAtCXJldHVybiByZXQ7Cj4gPiArCXJldHVybiAw
Owo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+IEBAIC0zOTMsMTggKzM4MSwxOCBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJCXJl
dHVybiAtRUlOVkFMOwo+ID4gIAl9Cj4gPiAgCj4gPiAtCWJ1cyA9IGRldm1fa3phbGxvYygmcGRl
di0+ZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9LRVJORUwpOwo+ID4gKwlidXMgPSBkZXZtX2t6YWxs
b2MoZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9LRVJORUwpOwo+ID4gIAlpZiAoIWJ1cykKPiA+ICAJ
CXJldHVybiAtRU5PTUVNOwo+ID4gIAltdXRleF9pbml0KCZidXMtPmxvY2spOwo+ID4gLQlidXMt
PmRldiA9ICZwZGV2LT5kZXY7Cj4gPiArCWJ1cy0+ZGV2ID0gZGV2Owo+ID4gIAlwbGF0Zm9ybV9z
ZXRfZHJ2ZGF0YShwZGV2LCBidXMpOwo+ID4gIAo+ID4gIAlwcm9maWxlID0gZGV2bV9remFsbG9j
KGRldiwgc2l6ZW9mKCpwcm9maWxlKSwgR0ZQX0tFUk5FTCk7Cj4gPiAgCWlmICghcHJvZmlsZSkK
PiA+ICAJCXJldHVybiAtRU5PTUVNOwo+ID4gIAo+ID4gLQlub2RlID0gb2ZfcGFyc2VfcGhhbmRs
ZShkZXYtPm9mX25vZGUsICJkZXZmcmVxIiwgMCk7Cj4gPiArCW5vZGUgPSBvZl9wYXJzZV9waGFu
ZGxlKG5wLCAiZGV2ZnJlcSIsIDApOwo+ID4gIAlpZiAobm9kZSkgewo+ID4gIAkJb2Zfbm9kZV9w
dXQobm9kZSk7Cj4gPiAgCQlwYXNzaXZlID0gdHJ1ZTsKPiA+IEBAIC00NjEsMTIgKzQ0OSwxMCBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICAJ
aW50IHJldDsKPiA+ICAKPiA+ICAJcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+
ID4gLQlpZiAocmV0IDwgMCkgewo+ID4gKwlpZiAocmV0IDwgMCkKPiA+ICAJCWRldl9lcnIoZGV2
LCAiZmFpbGVkIHRvIGVuYWJsZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0J
CXJldHVybiByZXQ7Cj4gCj4gS2VlcCB0aGUgJ3JldHVybiByZXQnIGlmIGVycm9yIGhhcHBlbiBh
cyBJIGNvbW1lbnRlZFsxXSBvbiB2MS4KPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
Ny8yNi8zMzEKPiAKPiA+IC0JfQo+ID4gIAo+ID4gLQlyZXR1cm4gMDsKPiA+ICsJcmV0dXJuIHJl
dDsKPiAKPiBBbmQgeW91IGp1c3Qga2VlcCAncmV0dXJuIDAnIG9yIHlvdSBjYW4gY2hhbmdlIGl0
IGFzICdyZXR1cm4gcmV0Jy4KCk9LLCBJIGtlcHQgdGhlIG9yaWdpbmFsIGNvZGU6CgpyZXQgPSBl
eHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7CmlmIChyZXQgPCAwKSB7CglkZXZfZXJyKGRldiwg
ImZhaWxlZCB0byBlbmFibGUgdGhlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7CglyZXR1cm4g
cmV0Owp9CgpyZXR1cm4gMDsKCj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1
c19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+IEBAIC00NzUsMTIgKzQ2MSwxMCBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiAgCWlu
dCByZXQ7Cj4gPiAgCj4gPiAgCXJldCA9IGV4eW5vc19idXNfZGlzYWJsZV9lZGV2KGJ1cyk7Cj4g
PiAtCWlmIChyZXQgPCAwKSB7Cj4gPiArCWlmIChyZXQgPCAwKQo+ID4gIAkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZGlzYWJsZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0J
CXJldHVybiByZXQ7Cj4gCj4gS2VlcCB0aGUgJ3JldHVybiByZXQnIGlmIGVycm9yIGhhcHBlbiBh
cyBJIGNvbW1lbnRlZFsxXSBvbiB2MS4KPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
Ny8yNi8zMzEKCk9LLCBJIGtlcHQgdGhlIG9yaWdpbmFsIGNvZGUuCgo+ID4gLQl9Cj4gPiAgCj4g
PiAtCXJldHVybiAwOwo+ID4gKwlyZXR1cm4gcmV0Owo+IAo+IEFuZCB5b3UganVzdCBrZWVwICdy
ZXR1cm4gMCcgb3IgeW91IGNhbiBjaGFuZ2UgaXQgYXMgJ3JldHVybiByZXQnLgo+IAo+ID4gIH0K
PiA+ICAjZW5kaWYKPiA+ICAKPiA+IAo+IAo+IAoKQmVzdCByZWdhcmRzLAotLSAKQXJ0dXIgxZp3
aWdvxYQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
