Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4737C127AA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xgbvNixG23eYKix7HUPX2V4pwcd+j313AEZpf8lG5k=; b=U5ZUnUtD2Cy7ee
	Yw3GUyuzkDAhgPJF1M7hQfhx40v0dnR+A+fCgfr1v/gHUvsS7rP70kBz8cW8WarcccJ4aIYH05Quc
	pCMF2HY8hI04d2iF1lFT4yvmh2GSTfwU6FPF3gg84GUCqSDaHCLgfzn5ble0yd/mP0/kPrY7uQQAM
	bMB6xasBwDyY4FbGWNlOks7ijDt85MsChW27GlbrDXA7cT7i0txApQ44jqXVr7/JjwA16iYdbpusu
	D5OWXjxnhEXukSJJIFL5nPQ53K8XnLFu4jwnxfPGYyGD1o8PUS1H3c8hlTdfOVtb0KMCwfLyhMYHB
	3uW5qQvoOVXXTCsww7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGzs-0006G3-P0; Fri, 20 Dec 2019 12:03:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGyY-0005L8-EK
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191220120145euoutp01f989f2711719f150e028a3e22d603d04~iEqGwbstz1021810218euoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191220120145euoutp01f989f2711719f150e028a3e22d603d04~iEqGwbstz1021810218euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576843305;
 bh=lpHh2CLsKl9Vo1x5ZpVOJyf/41Vj/t4qkAQBmJMc1BQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vSAJqWfP97UNj3lD4/I+vEmcQ2GlmSQ90O5piQoRyg2TtSPkA7da0+GQs6mU0azfG
 OHFE9aVvGdgwInNjrk5sqXnupu4SIaDz8F7Q5jdyaHoiZ53j6sjTt1yjlUIkUoslLx
 xJZkg0WyTB+jMwDOEN8mAjvGhPDvtzZJACEv5/TE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191220120144eucas1p26ecb251dd8ee4c4bef7dbe6203d52a94~iEqGWmtnO2975829758eucas1p20;
 Fri, 20 Dec 2019 12:01:44 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E0.94.60679.828BCFD5; Fri, 20
 Dec 2019 12:01:44 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9~iEqF_4imR1895018950eucas1p1X;
 Fri, 20 Dec 2019 12:01:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220120144eusmtrp23bf44b2ad15c3e14bb0360f47e4da276~iEqF_PztJ2149121491eusmtrp2x;
 Fri, 20 Dec 2019 12:01:44 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-1f-5dfcb8282389
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 12.68.07950.828BCFD5; Fri, 20
 Dec 2019 12:01:44 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120143eusmtip2bbaceb996ba95413eafb3782203260f7~iEqFKOe_R2848028480eusmtip2d;
 Fri, 20 Dec 2019 12:01:43 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings for
 Exynos4412
Date: Fri, 20 Dec 2019 12:56:50 +0100
Message-Id: <20191220115653.6487-5-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220115653.6487-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO2fn7DiaHDfLl4qkUaRBaib0dcGKIg79CulHBKOWnlR0Tna0
 NIi8ZMwkMyO8FGUhzSamLi9zVOQcDZE0Ly1NZUF2WReXbqObZbqzLv+e77m8z/vCx5AKJ7WC
 Sc/K4fVZmkwVLZN0PP7WvzHKMqeOa3oRhV3XSxBurW6m8HPfWwrfsPdTeMTvoXHVAzONK10V
 Ejww0CLFDZMzFDa/clJ42HqNxt4LdoSrBx4SuMk+KcXjhQ00rr7spnexnNlUSnMTzvs05ypz
 ENy9+jNc67SF4MrbTIjzmlcfkB6W7UjhM9NP8PrYxKOytFtjIyjbL8t793GMKEDlIedRCANs
 AhR5fNR5JGMUbAMCr/OuRHz4EHx2WGjx4UXQVFVM/ImU/+gmRcGIoGqgV/o3UtJzR7Lootnd
 UHnlZUAIZ+0ILtd5AoNJ9hoBhlJjwKVkD8HszCC9iCXsOui0PQl0yFkM7hljsC8SGlsekYs4
 hN0Ko8+GSNETBr01U4E55IKnuP1qYCdg/VJwVPikYngv+M9epESshPeOtiC/Cua7bgQLBHjd
 5aLEcAEC8207KQrbYaL/+8J2zEJDNDRbY0V6N7R/KSMWaWBDYfRTmLhDKFR2VJEiLQfDOYUI
 VWCtCRWDAEWNzuBsDgbrS6kKtKb2v2Nq/zum9l9tHSJNKILPFbSpvBCfxZ+METRaITcrNSZZ
 pzWjhd/W98vhsyDr3DEbYhmkWip/l/xDraA0J4R8rQ0BQ6rC5eOGb2qFPEWTf4rX647oczN5
 wYZWMhJVhHzzLbdawaZqcvgMns/m9X9UgglZUYAO5y2fXzvtTky6A95ZpTl22MQVPt2zb9n6
 h3MPouJW1qsvRUpndJfGoq2j/P6pyPnpi8+uJPldDssEbOMSvzo9y3b+LKP9fQezXRlLdPF5
 Ob1tQ4bZEmP3zdbTSdFvUmwcm1+z177cQbjIGENdb9iWSeVIzK6E/J7jaS86P+xUSYQ0zaYN
 pF7Q/AaaHXOOaQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsVy+t/xe7oaO/7EGnzYImhxf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQyFt28wljwlavixZubTA2MfZxdjJwcEgImEn2/DzKD2EICSxklHs+ThYhLSHxcf4MVwhaW
 +HOti62LkQuo5hOjxMw7XWANbAKOEpOmPmAHSYgInGKU2Lr8HBtIgllgBZNE/xxhEFtYIEzi
 zuXr7CA2i4CqxPZDZ5lAbF4BC4mXH5czQWyQl1i94QDYUE4BS4kbVy9BXWQhsfNzH1S9oMTJ
 mU9Yuhg5gOarS6yfJwSxSl6ieets5gmMgrOQVM1CqJqFpGoBI/MqRpHU0uLc9NxiI73ixNzi
 0rx0veT83E2MwGjdduznlh2MXe+CDzEKcDAq8fA6pP2OFWJNLCuuzD3EKMHBrCTCe7vjZ6wQ
 b0piZVVqUX58UWlOavEhRlOg1yYyS4km5wMTSV5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0
 xJLU7NTUgtQimD4mDk6pBkbTW2eer2UTu7V985m7Z1QNRadacCjHfvSXP1dZ7btT51uxTMbq
 /TWbW2N+Vtf+WLpu0Vmxlv0J84MYZy94XzHn5i4Pvt1Ou5tjTbx1ze2mHfqcwpebdM5GyG1R
 wPwbWw6zhMklyW4yqGvL64v92zyNccKOGidbg0OaLDOn6N7JLU8+Nm330xwlluKMREMt5qLi
 RAB3lwoS7AIAAA==
X-CMS-MailID: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
X-Msg-Generator: CA
X-RootMTR: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040146_610725_F5AEC7C5 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyB0byB0aGUgRXh5bm9zNDQx
MiBEVDoKICAtIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGU6IHRvIGRlY2xhcmUgY29u
bmVjdGlvbnMgYmV0d2VlbgogICAgbm9kZXMgaW4gb3JkZXIgdG8gZ3VhcmFudGVlIFBNIFFvUyBy
ZXF1aXJlbWVudHMgYmV0d2VlbiBub2RlczsKICAtICNpbnRlcmNvbm5lY3QtY2VsbHM6IHJlcXVp
cmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrLgoKTm90ZSB0aGF0ICNpbnRlcmNvbm5l
Y3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5vZGUgSURzIGFyZSBub3QKaGFyZGNvZGVkIGFu
eXdoZXJlLgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcu
Y29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNp
IHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKaW5kZXggNGNlM2Q3N2E2
NzA0Li5kOWQ3MGVhY2ZjYWYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0
MTItb2Ryb2lkLWNvbW1vbi5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIt
b2Ryb2lkLWNvbW1vbi5kdHNpCkBAIC05MCw2ICs5MCw3IEBACiAmYnVzX2RtYyB7CiAJZXh5bm9z
LHBwbXUtZGV2aWNlID0gPCZwcG11X2RtYzBfMz4sIDwmcHBtdV9kbWMxXzM+OwogCXZkZC1zdXBw
bHkgPSA8JmJ1Y2sxX3JlZz47CisJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwogCkBAIC0xMDYsNiArMTA3LDggQEAKICZidXNfbGVmdGJ1cyB7CiAJZXh5
bm9zLHBwbXUtZGV2aWNlID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdodGJ1c18zPjsK
IAl2ZGQtc3VwcGx5ID0gPCZidWNrM19yZWc+OworCWV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50
LW5vZGUgPSA8JmJ1c19kbWM+OworCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47CiAJc3RhdHVz
ID0gIm9rYXkiOwogfTsKIApAQCAtMTE2LDYgKzExOSw4IEBACiAKICZidXNfZGlzcGxheSB7CiAJ
ZXh5bm9zLHBhcmVudC1idXMgPSA8JmJ1c19sZWZ0YnVzPjsKKwlleHlub3MsaW50ZXJjb25uZWN0
LXBhcmVudC1ub2RlID0gPCZidXNfbGVmdGJ1cz47CisJI2ludGVyY29ubmVjdC1jZWxscyA9IDww
PjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
