Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E67120220
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rd4AUNVtBVjh4NkopQjwWiIuwAAAJcEVns9/VNaF7cA=; b=qfZKWvHvkE+uKA
	Cx/Q9WQZMGq1e0Ju4E6WklW/SZOqNO76/kRBwpiOM3XHn1PgjNmPVLqxJ7UVSukHwNF3jn4y5byMx
	nuzk0F8fBs7DboER+Lu6/F3Ahlef7nJ7d4bcRXMgWEdydesPKOnzyzLgB5UvI0JueP91Rc/k7LCb2
	10Q4ZjQLBemZbhR259lO8Va4NsV4nndibgPP2ldb2nmD5jGB/t9TLnETy8iNebMoDFxVSO0TSMkz+
	4BsikymRy7D3xQSSB7LYP8fkxzXwIJlLByYvcAgYmuVhOIYDRcwWAUaPIKYouw4HOprfc4B23WnwN
	DF/Tfn/ZkoBn38RO5UVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignU8-0002Lf-5N; Mon, 16 Dec 2019 10:20:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignTy-0001dn-RL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:20:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191216102004euoutp0164c5f68cc5accfe193f2c5ae5f3587e7~g0sMKdnyI2466624666euoutp01k
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:20:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191216102004euoutp0164c5f68cc5accfe193f2c5ae5f3587e7~g0sMKdnyI2466624666euoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576491604;
 bh=nYOnw7VM3AQaKXg0AwDk97XPBQ6saxFKGxNXr/emicY=;
 h=From:To:Cc:Subject:Date:References:From;
 b=eYHRni0uoMBWA/X1vsq4VNG/nZqULQ2XRnpoTF3+Knm+ORvTWrk9j1mHS9JlbVjvT
 HrI3jHsXbwpZ9sP0hBeci/GS6KJ4h6dNb5oWNwOQPxcMVlu0B7s9O2Qx5YXIGLnc7S
 Ea55FK4exGkgLKm40eF7BiOwlcxX8ip8vQu3vSGw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191216102004eucas1p175ff0eda6b41ee4262332d32b0f962ed~g0sLycfGg2772827728eucas1p1T;
 Mon, 16 Dec 2019 10:20:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A1.30.61286.45A57FD5; Mon, 16
 Dec 2019 10:20:04 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191216102003eucas1p280d2bb32bc439a52353536dca87246f0~g0sLan12Q0541205412eucas1p2e;
 Mon, 16 Dec 2019 10:20:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216102003eusmtrp16a1c99a4a2ca4667d022a438920f5bf0~g0sLZmPfB2660126601eusmtrp1C;
 Mon, 16 Dec 2019 10:20:03 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-1e-5df75a54ffd3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 89.7C.07950.35A57FD5; Mon, 16
 Dec 2019 10:20:03 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191216102003eusmtip2c309d38f4ba35a8edcad52d2a6e88463~g0sKs93hs0560005600eusmtip2U;
 Mon, 16 Dec 2019 10:20:03 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] devfreq: exynos-bus: Clean up code
Date: Mon, 16 Dec 2019 11:19:48 +0100
Message-Id: <20191216101948.526-1-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfSxVcRjH+91zzr2HdTkum8dL2N2sqeVl2jobNZpx/ZP+aNPYXQ7OsOtt
 96D4QyIqI0ZeK2tlsktzXdy4ouZa1sj1HmuGiZvUH15vlpTrUP77/J7n+31+3+e3H4lJOglH
 MiE5jVUmM4lSoSWufb9jOHctwiT37umzoefq8hHdWt1C0J82jQRdNleK0yWLqxhtMKhF9Mfc
 7yJaszhF0OO6J0J6o7gf0dWGXgH9qn9WRH++0yikq8tXhAFWMo3qgVDWVn9b9rBdhWQbGper
 eISlfyybmJDBKr0uRVnGm0ZFqWvSWxPGeiwHfXMqRBYkUOdBr3+LCpElKaEaETS8bsX4wyaC
 7oIRzKySUBsI/tSFHTlmt8cEvOglgpaqOuE/x/iaGplVQioQyirmRWa2o/IR1OSeNjNGVQqg
 tTvAzLaUL3Qb8vY1JIlT7jCpcjeXxdQFaGpsFPCXuUKT+h3G123gQ80XnB/jCnkdjw+SAqUV
 Qf1eD8EbgqC4fUjEsy18G2g/ZGcYLC/CeeZgqWuO4M05CDQN/Rjf8AP9wChhDoRRHtCi8+LL
 gTDzS3uQEygrmP5hw2ewgjJtFcaXxXC/QMKjFHQ1VrwRILdp6nC2DIYfVeL8c8qhbeGeqBS5
 1R5brPbYYrX/IzxDmArZs+lcUhzL+SSzNz05JolLT47zjElJ0qD9/zS4N7DeibbGovsQRSLp
 SXGAYlsuIZgMLjOpDwGJSe3EnW4muUQcy2RmscqUG8r0RJbrQ04kLrUX+z5fkUuoOCaNVbBs
 Kqs86gpIC8ccFLUcqrJWdsmcqqYvljHWXxeKfup3HYzEVna4TWhwebqw1FSykuHjGZQdkbpX
 c9kvzCXSOiT0hCO3rOuP+x096S1wHX+qvr4bM3n2yrAif3Urz7iz3D71omp+JJJqDsFsjRUZ
 Q/Onspil9bsegpk34l7thElh6HD2Z5sdgnXhUpyLZ3zOYEqO+Qu/1w7cSwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsVy+t/xe7rBUd9jDb4uNbG4P6+V0WLjjPWs
 Fte/PGe1mHR/AotF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 uN24gs1ixuSXbA58HptWdbJ5bF5S79G3ZRWjx+dNcgEsUXo2RfmlJakKGfnFJbZK0YYWRnqG
 lhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2CXoZ3y+yF3xUqrjyfAlzA+Mr6S5GTg4JAROJ
 u98uMXUxcnEICSxllNjf+ZoVIiEh8XH9DShbWOLPtS42iKJPjBJXFm4FS7AJOEpMmvqAHSQh
 ItDJKNG1+RzYKGaBRUwSDR+fMIFUCQsYS+w+3wxUxcHBIqAqcXWVKkiYV8BcYvWKFUwQG+Ql
 Vm84wAwRF5Q4OfMJC0g5s4C6xPp5QiBhZqCS5q2zmScw8s9CUjULoWoWkqoFjMyrGEVSS4tz
 03OLjfSKE3OLS/PS9ZLzczcxAmNp27GfW3Ywdr0LPsQowMGoxMPrkP0tVog1say4MvcQowQH
 s5II7w6F77FCvCmJlVWpRfnxRaU5qcWHGE2BPpjILCWanA+M87ySeENTQ3MLS0NzY3NjMwsl
 cd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYz75r49H/SsaGvczvwvWgIrLvxQ1/0b0r89IGJ/
 SJyfs9ovkTMnrE5Gz/JSvCfySb5NZ7/V7KpdEpm8Z490WcmtTV00c2WAOIcl7y1bM/fnB9Py
 VokXsL9cI8Rfx9vIwfYjy8Zv2s/v9iVsndtn7bAtcl7aIPio/lUf869H37sK38/b/jPxeo4S
 S3FGoqEWc1FxIgBq4pRUuwIAAA==
X-CMS-MailID: 20191216102003eucas1p280d2bb32bc439a52353536dca87246f0
X-Msg-Generator: CA
X-RootMTR: 20191216102003eucas1p280d2bb32bc439a52353536dca87246f0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191216102003eucas1p280d2bb32bc439a52353536dca87246f0
References: <CGME20191216102003eucas1p280d2bb32bc439a52353536dca87246f0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_022007_099476_FDDB3407 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBpbXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xs
b3dpbmcgY29uc3RydWN0OgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgZ290byBwYXNzaXZlOwo+
ICAgIGZvbygpOwo+ICAgIGdvdG8gb3V0Owo+IHBhc3NpdmU6Cj4gICAgYmFyKCk7Cj4gb3V0OgoK
aW50byB0aGlzOgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgYmFyKCk7Cj4gICAgZWxzZQo+ICAg
ICAgICBmb28oKTsKCmFzIHdlbGwgYXMgZWxpbWluYXRpbmcgYSBmZXcgbW9yZSBnb3RvIHN0YXRl
bWVudHMgYW5kIGZpeGluZyBoZWFkZXIKaW5jbHVkZXMuCgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDF
mndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYyB8IDU0ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCmluZGV4IDE5ZDlmOWY4Y2VkMi4uN2Y1OTE3ZDU5MDcyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2RldmZyZXEvZXh5bm9zLWJ1cy5jCisrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMK
QEAgLTE1LDExICsxNSwxMCBAQAogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgogI2luY2x1ZGUg
PGxpbnV4L2V4cG9ydC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgotI2luY2x1ZGUgPGxp
bnV4L29mX2RldmljZS5oPgorI2luY2x1ZGUgPGxpbnV4L29mLmg+CiAjaW5jbHVkZSA8bGludXgv
cG1fb3BwLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8
bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Ci0jaW5jbHVkZSA8bGludXgvc2xhYi5oPgogCiAj
ZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTwk0MAogCkBAIC0zMDEsMTAgKzMwMCw5IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKIAlwcm9maWxlLT5leGl0ID0gZXh5bm9zX2J1c19leGl0OwogCiAJb25kZW1hbmRfZGF0YSA9
IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwot
CWlmICghb25kZW1hbmRfZGF0YSkgewotCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIGVycjsKLQl9
CisJaWYgKCFvbmRlbWFuZF9kYXRhKQorCQlyZXR1cm4gLUVOT01FTTsKKwogCW9uZGVtYW5kX2Rh
dGEtPnVwdGhyZXNob2xkID0gNDA7CiAJb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9
IDU7CiAKQEAgLTMxNCwxNSArMzEyLDE0IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxl
X2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAkJCQkJCW9uZGVtYW5kX2RhdGEpOwogCWlm
IChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQg
ZGV2ZnJlcSBkZXZpY2VcbiIpOwotCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Ci0JCWdv
dG8gZXJyOworCQlyZXR1cm4gUFRSX0VSUihidXMtPmRldmZyZXEpOwogCX0KIAogCS8qIFJlZ2lz
dGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KIAlyZXQgPSBk
ZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKIAlp
ZiAocmV0IDwgMCkgewogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90
aWZpZXJcbiIpOwotCQlnb3RvIGVycjsKKwkJcmV0dXJuIHJldDsKIAl9CiAKIAkvKgpAQCAtMzMy
LDE3ICszMjksMTYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3Qg
ZXh5bm9zX2J1cyAqYnVzLAogCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKIAlp
ZiAocmV0IDwgMCkgewogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1l
dmVudCBkZXZpY2VzXG4iKTsKLQkJZ290byBlcnI7CisJCXJldHVybiByZXQ7CiAJfQogCiAJcmV0
ID0gZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKIAlpZiAocmV0IDwgMCkgewogCQlkZXZfZXJy
KGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsK
LQkJZ290byBlcnI7CisJCXJldHVybiByZXQ7CiAJfQogCi1lcnI6Ci0JcmV0dXJuIHJldDsKKwly
ZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZl
KHN0cnVjdCBleHlub3NfYnVzICpidXMsCkBAIC0zNTEsNyArMzQ3LDYgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJ
c3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7CiAJc3RydWN0IGRldmZyZXFfcGFzc2l2ZV9k
YXRhICpwYXNzaXZlX2RhdGE7CiAJc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwotCWlu
dCByZXQgPSAwOwogCiAJLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVy
bm9yIGRhdGEgZm9yIHBhc3NpdmUgZGV2aWNlICovCiAJcHJvZmlsZS0+dGFyZ2V0ID0gZXh5bm9z
X2J1c190YXJnZXQ7CkBAIC0zNTksMTYgKzM1NCwxMyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNf
cHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAogCS8qIEdldCB0
aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNlICovCiAJcGFyZW50X2RldmZyZXEg
PSBkZXZmcmVxX2dldF9kZXZmcmVxX2J5X3BoYW5kbGUoZGV2LCAwKTsKLQlpZiAoSVNfRVJSKHBh
cmVudF9kZXZmcmVxKSkgewotCQlyZXQgPSAtRVBST0JFX0RFRkVSOwotCQlnb3RvIGVycjsKLQl9
CisJaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpCisJCXJldHVybiAtRVBST0JFX0RFRkVSOwog
CiAJcGFzc2l2ZV9kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwYXNzaXZlX2RhdGEp
LCBHRlBfS0VSTkVMKTsKLQlpZiAoIXBhc3NpdmVfZGF0YSkgewotCQlyZXQgPSAtRU5PTUVNOwot
CQlnb3RvIGVycjsKLQl9CisJaWYgKCFwYXNzaXZlX2RhdGEpCisJCXJldHVybiAtRU5PTUVNOwor
CiAJcGFzc2l2ZV9kYXRhLT5wYXJlbnQgPSBwYXJlbnRfZGV2ZnJlcTsKIAogCS8qIEFkZCBkZXZm
cmVxIGRldmljZSBmb3IgZXh5bm9zIGJ1cyB3aXRoIHBhc3NpdmUgZ292ZXJub3IgKi8KQEAgLTM3
NywxMiArMzY5LDEwIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2
ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAogCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewog
CQlkZXZfZXJyKGRldiwKIAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2
ZSBnb3Zlcm5vclxuIik7Ci0JCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKLQkJZ290byBl
cnI7CisJCXJldHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7CiAJfQogCi1lcnI6Ci0JcmV0dXJu
IHJldDsKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCkBAIC00MjcsMTkgKzQxNywxMyBAQCBzdGF0aWMgaW50
IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290byBl
cnJfcmVnOwogCiAJaWYgKHBhc3NpdmUpCi0JCWdvdG8gcGFzc2l2ZTsKLQotCXJldCA9IGV4eW5v
c19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7Ci0JaWYgKHJldCA8IDApCi0JCWdvdG8g
ZXJyOworCQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmls
ZSk7CisJZWxzZQorCQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChidXMsIHByb2ZpbGUp
OwogCi0JZ290byBvdXQ7Ci1wYXNzaXZlOgotCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0
X3Bhc3NpdmUoYnVzLCBwcm9maWxlKTsKIAlpZiAocmV0IDwgMCkKIAkJZ290byBlcnI7CiAKLW91
dDoKIAltYXhfc3RhdGUgPSBidXMtPmRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZTsKIAltaW5f
ZnJlcSA9IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbMF0gLyAxMDAwKTsKIAlt
YXhfZnJlcSA9IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbbWF4X3N0YXRlIC0g
MV0gLyAxMDAwKTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
