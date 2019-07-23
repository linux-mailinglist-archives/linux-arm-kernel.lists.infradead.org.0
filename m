Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324857180F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAXg9xYMdYNiuH9WlgHLu161Dd6W+SXaZoCwIPiAxzs=; b=gi4yECA00RvV4Y
	UpuX1pGbBmlOn8gk7zOyQreROkz/E1WXODMkiEhSiKlF+ENVXHCv4Q/F6MxJlU7CxPvpqwbAKxZIE
	5GERi/e7ssmm+vs5N8QoTiOlF+qMsr9qipEUAfuOhxNXUBeKBHE6PLy0Fpo8Rtu+4fQ/7xlkrJ42H
	9J+bHqR4vbpL3XnLpcAnQlaEELnM9xxE8jofysmAkPyToaTH4eJ0Pryw+XH7Bdzzc41nptKbD+n1O
	/Qk6SPo0RrY/6GrLSo1i2wWh/eVOCF7W84XojUjeyLE9eEPlQF/eqKzIlD1jAXuuMrZI7UO8jf42Q
	ZvI9jJaCvYiduMZg2ptg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptmz-00021q-86; Tue, 23 Jul 2019 12:21:05 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mX-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122024euoutp0102b3087cb6a59fe56532b447d3c2e79a~0CJk0_dLk2875428754euoutp01S
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190723122024euoutp0102b3087cb6a59fe56532b447d3c2e79a~0CJk0_dLk2875428754euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884424;
 bh=ieJ7cuOWHzOtHekeljdAL3BGbRF46aE7ZAyxlKgDJqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uje9I8att0uawM+skBhrrVbn9mwLCkHcldhNYPgBQRzapPFMHKj/DL3QXqMnPn/9k
 6ixC7mFMxpn+ookzRHuTLn5Gjpa8z/zI7/Y+lNkWTzOOhWySmyWNrKERX4luFNqUsg
 gbEukEQnha/eji6oDVaBmQyJbenW3an4+lpU1T8k=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190723122024eucas1p282b69e229491fbeada5acc07ff4068e9~0CJkbaCUk1893418934eucas1p2A;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 26.75.04325.88BF63D5; Tue, 23
 Jul 2019 13:20:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2~0CJj2Uwtv2749027490eucas1p2X;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122023eusmtrp1a85f16e721c2f79a22b5fda4a3a16896~0CJjrpwnJ2487524875eusmtrp1k;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-a0-5d36fb887713
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 79.D8.04140.78BF63D5; Tue, 23
 Jul 2019 13:20:23 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122022eusmtip29c0f995471815170717c96f9c66fea05~0CJjCobRV1668716687eusmtip25;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 02/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init_passive()
Date: Tue, 23 Jul 2019 14:20:07 +0200
Message-Id: <20190723122016.30279-3-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfSxVYRz23nPPuYd1dRziRWPdaisrkujdakalTps1/JlZ3XJ85at7ULLW
 pQ/ckI8aXRVNPrqS6/o2rK4bu4w7ahQZlWb6slxmppLraPnv+T3P73l+v9+7l8ToAdyBjIxN
 YGWx0mgJYSFs6l4y7M1Y9grZVzeGI213owjVFdXiaGR+GkclugEcvVmYJVBhh4ZA+RO5QmQw
 qEVI82kYR6/bHhDImK0DqMjQKUA1unERGkutIlBRwQzhs5nRqDIJ5v1wO8FM3O4RMPVPrjEv
 f7QLmJwGFWCMGqcA0WmLw6FsdGQSK3PzPmsRUZk3Koovsr881bxCyMEHGwUwJyF1AGoHDAIF
 sCBpqgpAxc1H68U8gHM1S0K+MAKoHyoBCkCuWTpSo3i+EsDWzP4NDvVvkSmXoE7CrLwW3CTY
 UDoAC0pn16IwSrVaLDatRVlTwVAx42iCQmonLNTTJq+Y8oX3jNlCfj9nWK1+gZmwOXUEKl6l
 E3yPFdTfn1rrwVZ7rjcWY6Z4SP0UQbVqUcSbj8FyfQXOY2v4padhnd8K+wqy1gdw8HPrBM6b
 5QBqKnQYLxyCXT2DuGk5jNoNa9vceNoXDi5OCvmXsIRvv1vxO1jC/KZCjKfFMOMWzUMXWLoc
 zBshTKseXs9moHLpDpELtik3HKPccIzy/9hSgKmAHZvIxYSznEcse8mVk8ZwibHhrufjYjRg
 9Zf1/elZaAGdv85pAUUCySaxut0zhMalSVxyjBZAEpPYiAPlXiG0OFSafIWVxZ2RJUaznBY4
 kkKJnTjFbDKYpsKlCewFlo1nZf9UAWnuIAfc1FH2Xc20scQ/zKmx4nGGeeCpGwcDdlx9NpNV
 +XDZgykLMiseLHf3NcvJKo4IGnL2ueiXGL1gO4L0c8+37AnrvFs2vr2Lvvvxm/dKSbP/cYTX
 2kdmPu1v/NrffcIjJUgcZTtcXr+flaf1ZlcQozUu6Zm7nBk/q/gViWOyJ91rKxFyEVJ3F0zG
 Sf8CScqCbGEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xe7rtv81iDWZukbI4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexvKJ
 t9gLZkhWPNn+n62B8aFIFyMHh4SAicTexqwuRi4OIYGljBIdOzaydzFyAsUlJD6uv8EKYQtL
 /LnWxQZR9IlR4uHFHkaQBJuAp0TPxB2sIAkRgVOMEluXnwOrYhbYxChx9/hEsFHCApESMy8e
 ZgRZxyKgKjH9pBBImFfAUWLq514WiA3yEqs3HGAGsTkFnCS6jrazgdhCQDXbtr9mhKgXlDg5
 8wkLyBhmAXWJ9fPAxjADtTZvnc08gVFwFpKqWQhVs5BULWBkXsUoklpanJueW2ykV5yYW1ya
 l66XnJ+7iREYo9uO/dyyg7HrXfAhRgEORiUe3g17TGOFWBPLiitzDzFKcDArifAGNpjFCvGm
 JFZWpRblxxeV5qQWH2I0BfpsIrOUaHI+MH3klcQbmhqaW1gamhubG5tZKInzdggcjBESSE8s
 Sc1OTS1ILYLpY+LglGpgXP6de/MWeV8l5/3BjmK+geLinNt/efyuS2I32rMlQfizDfc1jUMt
 j468N+hsrdli+/DL5I7iFfGWlQ9mZz32uXQ0d+33qu+K8etz9Tf1rcjp6avev9bZKaCgqzbq
 a94UEa/nSXd2h3/55Jcm7zuF/z2T4dt1Iet0eCMOXVuhaGKyuqYq+UyvEktxRqKhFnNRcSIA
 oyAzYecCAAA=
X-CMS-MailID: 20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2
X-Msg-Generator: CA
X-RootMTR: 20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_247136_11ECE8D4 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9maWxl
X2luaXRfcGFzc2l2ZSgpLApleHRyYWN0ZWQgZnJvbSBleHlub3NfYnVzX3Byb2JlKCkuCgpTaWdu
ZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4K
LS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNzAgKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMjgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBi
L2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKaW5kZXggZDhmMWVmYWYyZDQ5Li5jZjZmNmNi
ZDBmNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKKysrIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwpAQCAtNDMwLDEzICs0MzAsNTEgQEAgc3RhdGljIGlu
dCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAogCXJldHVy
biByZXQ7CiB9CiAKK3N0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShz
dHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAorCQkJCQkgICBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmls
ZSAqcHJvZmlsZSkKK3sKKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKKwlzdHJ1Y3Qg
ZGV2ZnJlcSAqcGFyZW50X2RldmZyZXE7CisJc3RydWN0IGRldmZyZXFfcGFzc2l2ZV9kYXRhICpw
YXNzaXZlX2RhdGE7CisJaW50IHJldCA9IDA7CisKKwkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3Qg
cHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KKwlwcm9maWxl
LT50YXJnZXQgPSBleHlub3NfYnVzX3Bhc3NpdmVfdGFyZ2V0OworCXByb2ZpbGUtPmV4aXQgPSBl
eHlub3NfYnVzX3Bhc3NpdmVfZXhpdDsKKworCS8qIEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50
IGRldmZyZXEgZGV2aWNlICovCisJcGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dldF9kZXZmcmVx
X2J5X3BoYW5kbGUoZGV2LCAwKTsKKwlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkgeworCQly
ZXQgPSAtRVBST0JFX0RFRkVSOworCQlnb3RvIGVycjsKKwl9CisKKwlwYXNzaXZlX2RhdGEgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBhc3NpdmVfZGF0YSksIEdGUF9LRVJORUwpOworCWlm
ICghcGFzc2l2ZV9kYXRhKSB7CisJCXJldCA9IC1FTk9NRU07CisJCWdvdG8gZXJyOworCX0KKwlw
YXNzaXZlX2RhdGEtPnBhcmVudCA9IHBhcmVudF9kZXZmcmVxOworCisJLyogQWRkIGRldmZyZXEg
ZGV2aWNlIGZvciBleHlub3MgYnVzIHdpdGggcGFzc2l2ZSBnb3Zlcm5vciAqLworCWJ1cy0+ZGV2
ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1Zf
UEFTU0lWRSwKKwkJCQkJCXBhc3NpdmVfZGF0YSk7CisJaWYgKElTX0VSUihidXMtPmRldmZyZXEp
KSB7CisJCWRldl9lcnIoZGV2LAorCQkJImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXYgd2l0aCBw
YXNzaXZlIGdvdmVybm9yXG4iKTsKKwkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOworCQln
b3RvIGVycjsKKwl9CisKK2VycjoKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgaW50IGV4eW5v
c19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSAmcGRldi0+ZGV2OwogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9m
X25vZGUsICpub2RlOwogCXN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlOwotCXN0
cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwotCXN0cnVjdCBkZXZmcmVx
ICpwYXJlbnRfZGV2ZnJlcTsKIAlzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzOwogCWludCByZXQsIG1h
eF9zdGF0ZTsKIAl1bnNpZ25lZCBsb25nIG1pbl9mcmVxLCBtYXhfZnJlcTsKQEAgLTQ4MSwzMyAr
NTE5LDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAKIAlnb3RvIG91dDsKIHBhc3NpdmU6Ci0JLyogSW5pdGlhbGl6ZSB0aGUgc3Ry
dWN0IHByb2ZpbGUgYW5kIGdvdmVybm9yIGRhdGEgZm9yIHBhc3NpdmUgZGV2aWNlICovCi0JcHJv
ZmlsZS0+dGFyZ2V0ID0gZXh5bm9zX2J1c19wYXNzaXZlX3RhcmdldDsKLQlwcm9maWxlLT5leGl0
ID0gZXh5bm9zX2J1c19wYXNzaXZlX2V4aXQ7Ci0KLQkvKiBHZXQgdGhlIGluc3RhbmNlIG9mIHBh
cmVudCBkZXZmcmVxIGRldmljZSAqLwotCXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2
ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Ci0JaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsK
LQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsKKwlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9w
YXNzaXZlKGJ1cywgcHJvZmlsZSk7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCX0KLQot
CXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwg
R0ZQX0tFUk5FTCk7Ci0JaWYgKCFwYXNzaXZlX2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJ
Z290byBlcnI7Ci0JfQotCXBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Ci0K
LQkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdvdmVy
bm9yICovCi0JYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9m
aWxlLCBERVZGUkVRX0dPVl9QQVNTSVZFLAotCQkJCQkJcGFzc2l2ZV9kYXRhKTsKLQlpZiAoSVNf
RVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKLQkJZGV2X2VycihkZXYsCi0JCQkiZmFpbGVkIHRvIGFkZCBk
ZXZmcmVxIGRldiB3aXRoIHBhc3NpdmUgZ292ZXJub3JcbiIpOwotCQlyZXQgPSBQVFJfRVJSKGJ1
cy0+ZGV2ZnJlcSk7Ci0JCWdvdG8gZXJyOwotCX0KIAogb3V0OgogCW1heF9zdGF0ZSA9IGJ1cy0+
ZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
