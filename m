Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700F571826
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GQDrQUhduhg7fBTbfu/n/sOTs8Gab6TqVl8KEBuGro=; b=On+xug6g+BB0+k
	gS23n2tKo2ZXou3WdzK6M++tQeKHHAntnmol4zSx4BfP8vAwyX5GZ1XXB9+bbaWZzmPAlJDo9UvMe
	98l0gZk70LhAE6Ac/bkDJqCWL5WWXoejzoTILOskuIq+rkg53JJZpKo4UqGhFQFD82Vo4e6A0OFsU
	jwryoMHf8PV7O573hamE2ZMHRYQcvT+T/RnJHARSlNLy8lTpEMRt72eN3nI4juEBvTwhtCfIpO7y2
	S2Eya3RRbn+GTi3x2UGdcj/34rcSkv4G5+UqdIokCDE7p18XqcSo0xyHzHeIt+6CLJTNcRLjHEXVW
	Gy3awyloD8TaC0blUYUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptnc-0002aM-Rj; Tue, 23 Jul 2019 12:21:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mW-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122024euoutp02aff3a0bb366ac9165c50e2c960f44636~0CJkRsk0J3178131781euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122024euoutp02aff3a0bb366ac9165c50e2c960f44636~0CJkRsk0J3178131781euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884424;
 bh=kmVmqQ7vBBuymdBigbk1kLjY1bQshXiULeywhK0hfzY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zi03pn1AzwwhW4BYdzv1xAgCm7paXtAcqjPRH91bX8pd6NnKUEWY3R6t+LR1nEYun
 TA+wTw+1Zkfpt9J5zF/1vpGRvZQIKdu7IPJfmZSJVBTauH3KGBMEwjRnD/ujDsiHoB
 1eUSsld7JdIWkWc/w/YauvfKVROIkYfRBJ+BWAvg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122023eucas1p17500dad051b1f22442f84c7b36ef48a3~0CJjtjSBw0311003110eucas1p1Q;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F4.75.04325.78BF63D5; Tue, 23
 Jul 2019 13:20:23 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190723122022eucas1p1266d90873d564894bd852c20140f8474~0CJjCbjWC3150731507eucas1p1p;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122022eusmtrp1f00b961ea151a2b89ee920602225ff41~0CJjB1jlQ2487524875eusmtrp1i;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-9d-5d36fb87d3eb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 38.D8.04140.68BF63D5; Tue, 23
 Jul 2019 13:20:22 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122022eusmtip2474dd9922db572afb0b7c0650f28954d~0CJibJLMJ1668716687eusmtip24;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
Date: Tue, 23 Jul 2019 14:20:06 +0200
Message-Id: <20190723122016.30279-2-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHKsWRmVeSWpSXmKPExsWy7djP87rtv81iDfb+ErA4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 exSXTUpqTmZZapG+XQJXxsGDi9gKjilUdK/azdzAuFGqi5GTQ0LARGL73eVsXYxcHEICKxgl
 juy8xgrhfGGU+Nx/kRWkSkjgM6PEnHuSMB3Xl29hgogvZ5S4c1INruHYh51sIAk2AU+Jnok7
 wCaJCBxhlJi84D0LiMMssArI+b6NEaRKWCBYYsmx80A2BweLgKrEmV1iIGFeAUeJeztaWCG2
 yUus3nCAGcTmFHCS6DrazgZRIyhxcuYTFhCbGaimeetsZpD5EgIf2SVOvpjFDtHsIrHsVwML
 hC0s8er4Fqi4jMTpyT1Q8WKJpzvvs0I0NzBKbFp2hBkiYS1x+DjI/xxAGzQl1u/Shwg7Shz5
 fYoZJCwhwCdx460gxA18EpO2TYcK80p0tAlBmFoSC35HQzRKSDStvgY120Ni/751TBMYFWch
 eWYWkmdmIaxdwMi8ilE8tbQ4Nz212DgvtVyvODG3uDQvXS85P3cTIzCVnf53/OsOxn1/kg4x
 CnAwKvHwbthjGivEmlhWXJl7iFGCg1lJhDewwSxWiDclsbIqtSg/vqg0J7X4EKM0B4uSOG81
 w4NoIYH0xJLU7NTUgtQimCwTB6dUA2Owd/XaNpfO74FXGW7wmLZU/+DKT+v62Rzydlu8U16m
 973fwjFpi3ef8eQ8eT9F88HmIoU9pc+/19/neGN2qI7p6MqPmdeVv/+o3hZi/khw5po9QjxO
 3+RkX+iJzJRakxIupyDH3aSQXHn7q+7Kazpmjtvci7RuvtDawdR90itOUPDophnmmUosxRmJ
 hlrMRcWJAIGyLPdhAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xe7ptv81iDfY80LM4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexsGD
 i9gKjilUdK/azdzAuFGqi5GTQ0LAROL68i1MXYxcHEICSxklHky6xQSRkJD4uP4GK4QtLPHn
 WhcbRNEnRok9u1oZQRJsAp4SPRN3sIIkRAROMUpsXX4OrIpZYBOjxN3jE9lBqoQFAiUWbpoG
 lODgYBFQlTizSwwkzCvgKHFvRwvUBnmJ1RsOMIPYnAJOEl1H29lAbCGgmm3bXzNC1AtKnJz5
 hAVkDLOAusT6eUIgYWag1uats5knMArOQlI1C6FqFpKqBYzMqxhFUkuLc9Nzi430ihNzi0vz
 0vWS83M3MQKjdNuxn1t2MHa9Cz7EKMDBqMTDu2GPaawQa2JZcWXuIUYJDmYlEd7ABrNYId6U
 xMqq1KL8+KLSnNTiQ4ymQJ9NZJYSTc4HJpC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6Ykl
 qdmpqQWpRTB9TBycUg2MMz+Xt7Oqlb00ZkyWrZ65dt2ftWKpM5hOfNgdt2nh87xEDuZpbIwh
 0tPlglfFLvn9skuyzE+h/dbs2DVSnZ0eVdF8O0ykP4v/YPzXdPevbMkjcaknTGXB+hVCD+o8
 FKPunmWwNZ+VVeS45fXRtaFMP7uCvYVZfZyev2fl/zWtW0rvfZu60EQlluKMREMt5qLiRACS
 1DSG6AIAAA==
X-CMS-MailID: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
X-Msg-Generator: CA
X-RootMTR: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122022eucas1p1266d90873d564894bd852c20140f8474
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_257372_E9269F1E 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
X2luaXQoKSwgZXh0cmFjdGVkCmZyb20gZXh5bm9zX2J1c19wcm9iZSgpLgoKU2lnbmVkLW9mZi1i
eTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Ci0tLQogZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDEwNiArKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJz
L2RldmZyZXEvZXh5bm9zLWJ1cy5jCmluZGV4IGQ5ZjM3NzkxMmMxMC4uZDhmMWVmYWYyZDQ5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCisrKyBiL2RyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMKQEAgLTM3MiwxMiArMzcyLDY5IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCXJldHVybiByZXQ7CiB9CiAK
K3N0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKKwkJCQkgICBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZSkKK3sKKwlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKKwlzdHJ1Y3QgZGV2ZnJlcV9zaW1wbGVfb25kZW1h
bmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKKwlpbnQgcmV0OworCisJLyogSW5pdGlhbGl6ZSB0aGUg
c3RydWN0IHByb2ZpbGUgYW5kIGdvdmVybm9yIGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KKwlw
cm9maWxlLT5wb2xsaW5nX21zID0gNTA7CisJcHJvZmlsZS0+dGFyZ2V0ID0gZXh5bm9zX2J1c190
YXJnZXQ7CisJcHJvZmlsZS0+Z2V0X2Rldl9zdGF0dXMgPSBleHlub3NfYnVzX2dldF9kZXZfc3Rh
dHVzOworCXByb2ZpbGUtPmV4aXQgPSBleHlub3NfYnVzX2V4aXQ7CisKKwlvbmRlbWFuZF9kYXRh
ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7
CisJaWYgKCFvbmRlbWFuZF9kYXRhKSB7CisJCXJldCA9IC1FTk9NRU07CisJCWdvdG8gZXJyOwor
CX0KKwlvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOworCW9uZGVtYW5kX2RhdGEtPmRv
d25kaWZmZXJlbnRpYWwgPSA1OworCisJLyogQWRkIGRldmZyZXEgZGV2aWNlIHRvIG1vbml0b3Ig
YW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAqLworCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJl
cV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKKwkJCQkJCURFVkZSRVFfR09WX1NJTVBMRV9PTkRF
TUFORCwKKwkJCQkJCW9uZGVtYW5kX2RhdGEpOworCWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkg
eworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOworCQly
ZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7CisJCWdvdG8gZXJyOworCX0KKworCS8qIFJlZ2lz
dGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KKwlyZXQgPSBk
ZXZtX2RldmZyZXFfcmVnaXN0ZXJfb3BwX25vdGlmaWVyKGRldiwgYnVzLT5kZXZmcmVxKTsKKwlp
ZiAocmV0IDwgMCkgeworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90
aWZpZXJcbiIpOworCQlnb3RvIGVycjsKKwl9CisKKwkvKgorCSAqIEVuYWJsZSBkZXZmcmVxLWV2
ZW50IHRvIGdldCByYXcgZGF0YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQorCSAqIGN1cnJl
bnQgYnVzIGxvYWQuCisJICovCisJcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwor
CWlmIChyZXQgPCAwKSB7CisJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBkZXZmcmVx
LWV2ZW50IGRldmljZXNcbiIpOworCQlnb3RvIGVycjsKKwl9CisKKwlyZXQgPSBleHlub3NfYnVz
X3NldF9ldmVudChidXMpOworCWlmIChyZXQgPCAwKSB7CisJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOworCQlnb3RvIGVycjsK
Kwl9CisKK2VycjoKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGRldi0+ZGV2OwogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGUsICpu
b2RlOwogCXN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlOwotCXN0cnVjdCBkZXZm
cmVxX3NpbXBsZV9vbmRlbWFuZF9kYXRhICpvbmRlbWFuZF9kYXRhOwogCXN0cnVjdCBkZXZmcmVx
X3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwogCXN0cnVjdCBkZXZmcmVxICpwYXJlbnRfZGV2
ZnJlcTsKIAlzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzOwpAQCAtNDE4LDUyICs0NzUsOSBAQCBzdGF0
aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlp
ZiAocmV0IDwgMCkKIAkJZ290byBlcnI7CiAKLQkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJv
ZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAqLwotCXByb2ZpbGUtPnBv
bGxpbmdfbXMgPSA1MDsKLQlwcm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3RhcmdldDsKLQlw
cm9maWxlLT5nZXRfZGV2X3N0YXR1cyA9IGV4eW5vc19idXNfZ2V0X2Rldl9zdGF0dXM7Ci0JcHJv
ZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKLQotCW9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6
YWxsb2MoZGV2LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIW9u
ZGVtYW5kX2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKKwlyZXQgPSBleHlub3NfYnVzX3Byb2Zp
bGVfaW5pdChidXMsIHByb2ZpbGUpOworCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycjsKLQl9Ci0J
b25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKLQlvbmRlbWFuZF9kYXRhLT5kb3duZGlm
ZmVyZW50aWFsID0gNTsKLQotCS8qIEFkZCBkZXZmcmVxIGRldmljZSB0byBtb25pdG9yIGFuZCBo
YW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KLQlidXMtPmRldmZyZXEgPSBkZXZtX2RldmZyZXFfYWRk
X2RldmljZShkZXYsIHByb2ZpbGUsCi0JCQkJCQlERVZGUkVRX0dPVl9TSU1QTEVfT05ERU1BTkQs
Ci0JCQkJCQlvbmRlbWFuZF9kYXRhKTsKLQlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKLQkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4iKTsKLQkJcmV0ID0g
UFRSX0VSUihidXMtPmRldmZyZXEpOwotCQlnb3RvIGVycjsKLQl9Ci0KLQkvKiBSZWdpc3RlciBv
cHBfbm90aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCi0JcmV0ID0gZGV2bV9k
ZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7Ci0JaWYgKHJl
dCA8IDApIHsKLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVy
XG4iKTsKLQkJZ290byBlcnI7Ci0JfQotCi0JLyoKLQkgKiBFbmFibGUgZGV2ZnJlcS1ldmVudCB0
byBnZXQgcmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1pbmUKLQkgKiBjdXJyZW50IGJ1
cyBsb2FkLgotCSAqLwotCXJldCA9IGV4eW5vc19idXNfZW5hYmxlX2VkZXYoYnVzKTsKLQlpZiAo
cmV0IDwgMCkgewotCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVu
dCBkZXZpY2VzXG4iKTsKLQkJZ290byBlcnI7Ci0JfQotCi0JcmV0ID0gZXh5bm9zX2J1c19zZXRf
ZXZlbnQoYnVzKTsKLQlpZiAocmV0IDwgMCkgewotCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBz
ZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKLQkJZ290byBlcnI7Ci0JfQog
CiAJZ290byBvdXQ7CiBwYXNzaXZlOgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
