Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E83F116B78
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lclUusKPh0nJa3ylrCMcw5Y7+OHxoXNgmAw4ZDV7Eyg=; b=LjE7c7LLO8IqwC
	OiwR8EP7a0shwOsfmZBogK9xmccDu5jYo+B8TNziqjW7k1gePMVO5DWB6f9d9Ngo4VD11xqtSPyrk
	g9QVbraTOjCH89a9B64kMfRyMUz0zrRDZSoO8cqvaUMEsSKPBePRp5rOysjxrIp+HP/U4qSIb7dPd
	C9HjciZAfA1mUhF/qhFpOouRZHJUgwl+w3sLSIqEFIF4NuPs3SWEFXtuPePrsnLye1z2YXuYgFQ5x
	6+qiEeW3CphHg5P4pnj36BHatihzjnbZ/jMB1YpfK5YoZ67WsHHBz6ThWoH70s3ytptWcaVkDLohd
	tqpyxaMV08CTEZJ3x7Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGd4-0003TH-F0; Mon, 09 Dec 2019 10:51:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGcd-0003FT-Dz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:50:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191209105032euoutp0158f4d2d399472ac742d02cc2eb95e93f~erlym-Yom0195201952euoutp01V
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 10:50:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191209105032euoutp0158f4d2d399472ac742d02cc2eb95e93f~erlym-Yom0195201952euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575888632;
 bh=bcPn7XbAqvxY5Dgi7VEkZejGI3WMO327V8bJhV6vE2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OIrzvWlmMEJHO/0zVf8sxhCEvmA30igvL9d+QRtkKQeJL1JupwFWW0nZ+xoUwvxKe
 5Tj8bLwKnOW+4a3dlmEwNqvL+BkZZML+6cA3wPEDBPGcLlSzgAUhtyuHop73SG0vIh
 qj6Ra132Fr3cTmuqfBSNnJkw5vnU9j2+9+qV0qmQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191209105032eucas1p26a6cdbbd340fbd5ac30c54cd23687ff6~erlyYZSUi1375713757eucas1p2G;
 Mon,  9 Dec 2019 10:50:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B1.2E.60679.8F62EED5; Mon,  9
 Dec 2019 10:50:32 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277~erlx53plj0955109551eucas1p1d;
 Mon,  9 Dec 2019 10:50:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191209105031eusmtrp134181cb24b58068e24635b8cb9bf67af~erlx5E9aV2135321353eusmtrp1Y;
 Mon,  9 Dec 2019 10:50:31 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-4d-5dee26f8058a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 00.D6.08375.7F62EED5; Mon,  9
 Dec 2019 10:50:31 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105030eusmtip1acf41eadd0fd3b90e317d87f9f1abd40~erlxDdNg43004330043eusmtip1e;
 Mon,  9 Dec 2019 10:50:30 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v3 1/4] devfreq: exynos-bus: Extract exynos_bus_profile_init()
Date: Mon,  9 Dec 2019 11:48:59 +0100
Message-Id: <20191209104902.11904-2-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209104902.11904-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRjl3d29u2qz27XoaYXZIikjrezH60f2QdGIIn8EgTBq5kUzXbWb
 pv3IqWyVldYqmhY2w+bYKG2WqT/KzJxltlTQldhiFc2PJL8gM6Jt16h/53nOOc95D7w0wb4i
 ZfQR9UlOo1ZlyalgcUP7jHPdj8gx5frrhSx2V+oQfmCsJXH/1FcSG9yXxdg0YSRx2acRAjud
 dRLcVTQqwZbBcRLbP/WRuLf5FoUnL7UhbHQ+EeF7bYMSPFBoobDx6hC1lVHYrecpRX11geLB
 WKNIUfrQihST9vBkMiU4MY3LOpLLaWKSDgVneL33xcdbI/I+VHVItKhWVoKCaGA2wXTlGFmC
 gmmWsSBw1HWL/ATLTCF4/D1OICYReEu7xX8dDWV3KYGoQVBvLhcJg8/x8aItYKeYbWC4/lHi
 JxYyOgTdzneEfyCYVyLw6otIvyqMSYaRIhPlx2JmFTQ5bIEMKRMHT723RULecrDVtRB+HMTE
 w7i5SyJoFsDL8s8BPeHTFD+6GQgAxiMBy0CPRDDvgDbjNUrAYTDseDi3XwadVy/OFeLhS5Ob
 FMxaBHZzGyEQCfDc0e0jaF/CGqhtjvFD8FVzV64UYCi4vi0QnhAKhoYbhLCWwjk9K0A5NJeH
 CucAimx9c6cV4Hk2QV5GKyr+61LxX5eKf6kmRFjRYi6Hz07n+I1q7lQ0r8rmc9Tp0YePZduR
 74d1/nZMNaLmX6mtiKGRfJ40Iv6bkiVVuXx+disCmpAvlFZfGVay0jRV/mlOc+ygJieL41vR
 UlosXyyNvTOkZJl01UnuKMcd5zR/WREdJNOiA9BrujCzMbKpSxbr6o86M3HJpd+83nOWnp1e
 s9N1gu8cah/PKwgZC1sie62XRWxRZO4eDU/Da+ePVL3eNZzQ07jvTHLxBsIc5VoUPZva4dmf
 +ihxdM/2+rcvdFPaNHuMIeXnaqtpd2bIOevgXkdGTQn9faDlTWmN7nCLLem9tl0u5jNUG6II
 Da/6A/X3Yk5dAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsVy+t/xu7rf1d7FGkzbqG1xf14ro8XGGetZ
 La5/ec5qMen+BBaLBZ9msFr0P37NbHH+/AZ2i7NNb9gtVtz9yGqx6fE1VovLu+awWXzuPcJo
 MeP8PiaLtUfuslvcblzBZjFj8ks2BwGPTas62Tw2L6n32PhuB5NH35ZVjB6fN8kFsEbp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZbx4sY6l4JBC
 xb2FJ9gbGNdLdTFyckgImEhs61/KBmILCSxllGhYwwwRl5D4uP4GK4QtLPHnWhdQDRdQzSdG
 iZe979hBEmwCjhKTpj5gB0mICHQySqxfNp0JxGEWuMEk0bTlHQtIlbCAn8TJB+1go1gEVCV2
 Hl8NFucVsJTY/2I+E8QKeYnVGw6AreYUsJL4uOwsO8RJlhJzF8LUC0qcnPkEyOYAWqAusX6e
 EEiYGai1eets5gmMgrOQVM1CqJqFpGoBI/MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwNjc
 duzn5h2MlzYGH2IU4GBU4uGtsHkbK8SaWFZcmXuIUYKDWUmEd8nEV7FCvCmJlVWpRfnxRaU5
 qcWHGE2BXpvILCWanA9MG3kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqY
 ODilGhiz2ua9v7u2yeOkREH1yfJNz9b/mP46K7PoYfnpFQn/A//Jv5R6fpCb3fFwsLFu0M9S
 zhgRTe6iPy2xRcq6lm4Plni8V1qvs1/sZVbbxUplxZjZJ7cfOP9nWc56k+qXTMon+7PtPtzI
 8L+/puOdxF39F9YHD6SWt7zwuvzh5fXnzCxz7Y9PE7ymxFKckWioxVxUnAgArShV2uMCAAA=
X-CMS-MailID: 20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277
X-Msg-Generator: CA
X-RootMTR: 20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105031eucas1p137c3c5b0046570453e1ebed2dcd88277@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025035_681587_EE40A760 
X-CRM114-Status: GOOD (  15.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9maWxl
X2luaXQoKSwgZXh0cmFjdGVkCmZyb20gZXh5bm9zX2J1c19wcm9iZSgpLgoKU2lnbmVkLW9mZi1i
eTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMgfCAxMDYgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYwppbmRleCBjODMyNjczMjczYTIuLmI4Y2E2YjlmNGI4MiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYworKysgYi9kcml2ZXJzL2RldmZyZXEvZXh5
bm9zLWJ1cy5jCkBAIC0yODcsMTIgKzI4Nyw2OSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcGFy
c2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMg
aW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCisJCQkJ
ICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCit7CisJc3RydWN0IGRldmlj
ZSAqZGV2ID0gYnVzLT5kZXY7CisJc3RydWN0IGRldmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEg
Km9uZGVtYW5kX2RhdGE7CisJaW50IHJldDsKKworCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBw
cm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICovCisJcHJvZmlsZS0+
cG9sbGluZ19tcyA9IDUwOworCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0Owor
CXByb2ZpbGUtPmdldF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2X3N0YXR1czsKKwlw
cm9maWxlLT5leGl0ID0gZXh5bm9zX2J1c19leGl0OworCisJb25kZW1hbmRfZGF0YSA9IGRldm1f
a3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOworCWlmICgh
b25kZW1hbmRfZGF0YSkgeworCQlyZXQgPSAtRU5PTUVNOworCQlnb3RvIGVycjsKKwl9CisJb25k
ZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKKwlvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVy
ZW50aWFsID0gNTsKKworCS8qIEFkZCBkZXZmcmVxIGRldmljZSB0byBtb25pdG9yIGFuZCBoYW5k
bGUgdGhlIGV4eW5vcyBidXMgKi8KKwlidXMtPmRldmZyZXEgPSBkZXZtX2RldmZyZXFfYWRkX2Rl
dmljZShkZXYsIHByb2ZpbGUsCisJCQkJCQlERVZGUkVRX0dPVl9TSU1QTEVfT05ERU1BTkQsCisJ
CQkJCQlvbmRlbWFuZF9kYXRhKTsKKwlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKKwkJZGV2
X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4iKTsKKwkJcmV0ID0gUFRS
X0VSUihidXMtPmRldmZyZXEpOworCQlnb3RvIGVycjsKKwl9CisKKwkvKiBSZWdpc3RlciBvcHBf
bm90aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCisJcmV0ID0gZGV2bV9kZXZm
cmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7CisJaWYgKHJldCA8
IDApIHsKKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVyXG4i
KTsKKwkJZ290byBlcnI7CisJfQorCisJLyoKKwkgKiBFbmFibGUgZGV2ZnJlcS1ldmVudCB0byBn
ZXQgcmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1pbmUKKwkgKiBjdXJyZW50IGJ1cyBs
b2FkLgorCSAqLworCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKKwlpZiAocmV0
IDwgMCkgeworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVudCBk
ZXZpY2VzXG4iKTsKKwkJZ290byBlcnI7CisJfQorCisJcmV0ID0gZXh5bm9zX2J1c19zZXRfZXZl
bnQoYnVzKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQg
ZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKKwkJZ290byBlcnI7CisJfQorCitl
cnI6CisJcmV0dXJuIHJldDsKK30KKwogc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldjsKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlLCAqbm9kZTsKIAlz
dHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZTsKLQlzdHJ1Y3QgZGV2ZnJlcV9zaW1w
bGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKIAlzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZl
X2RhdGEgKnBhc3NpdmVfZGF0YTsKIAlzdHJ1Y3QgZGV2ZnJlcSAqcGFyZW50X2RldmZyZXE7CiAJ
c3RydWN0IGV4eW5vc19idXMgKmJ1czsKQEAgLTMzNCw1MiArMzkxLDkgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHBhc3Np
dmUpCiAJCWdvdG8gcGFzc2l2ZTsKIAotCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxl
IGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICovCi0JcHJvZmlsZS0+cG9sbGlu
Z19tcyA9IDUwOwotCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0OwotCXByb2Zp
bGUtPmdldF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2X3N0YXR1czsKLQlwcm9maWxl
LT5leGl0ID0gZXh5bm9zX2J1c19leGl0OwotCi0Jb25kZW1hbmRfZGF0YSA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwotCWlmICghb25kZW1h
bmRfZGF0YSkgewotCQlyZXQgPSAtRU5PTUVNOworCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9p
bml0KGJ1cywgcHJvZmlsZSk7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZXJyOwotCX0KLQlvbmRl
bWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwotCW9uZGVtYW5kX2RhdGEtPmRvd25kaWZmZXJl
bnRpYWwgPSA1OwotCi0JLyogQWRkIGRldmZyZXEgZGV2aWNlIHRvIG1vbml0b3IgYW5kIGhhbmRs
ZSB0aGUgZXh5bm9zIGJ1cyAqLwotCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2
aWNlKGRldiwgcHJvZmlsZSwKLQkJCQkJCURFVkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORCwKLQkJ
CQkJCW9uZGVtYW5kX2RhdGEpOwotCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewotCQlkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwotCQlyZXQgPSBQVFJf
RVJSKGJ1cy0+ZGV2ZnJlcSk7Ci0JCWdvdG8gZXJyOwotCX0KLQotCS8qIFJlZ2lzdGVyIG9wcF9u
b3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KLQlyZXQgPSBkZXZtX2RldmZy
ZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKLQlpZiAocmV0IDwg
MCkgewotCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIp
OwotCQlnb3RvIGVycjsKLQl9Ci0KLQkvKgotCSAqIEVuYWJsZSBkZXZmcmVxLWV2ZW50IHRvIGdl
dCByYXcgZGF0YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQotCSAqIGN1cnJlbnQgYnVzIGxv
YWQuCi0JICovCi0JcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwotCWlmIChyZXQg
PCAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVxLWV2ZW50IGRl
dmljZXNcbiIpOwotCQlnb3RvIGVycjsKLQl9Ci0KLQlyZXQgPSBleHlub3NfYnVzX3NldF9ldmVu
dChidXMpOwotCWlmIChyZXQgPCAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHNldCBl
dmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwotCQlnb3RvIGVycjsKLQl9CiAKIAln
b3RvIG91dDsKIHBhc3NpdmU6Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
