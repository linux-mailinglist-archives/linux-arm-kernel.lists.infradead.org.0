Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BD7B7C5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSFQpw30cglDLN4Eqcsm6x0Tq3fWdIcvrhp3jDonWwU=; b=pe5H/cXYrEbvfo
	CSjdh4GtEzxjPy3Ed2bGU0fTE1YtkMf2jQ3rhctVFcDqmrUuA1znZSakx8Np8BQ061FXzoj1rr16j
	dYVUhCM+wTbhks04ckaok4kgnBf1lk+mBb4XN5doRPsBkGOMW1frUZvbuni6juI23GsEe2bjbt/tz
	I3h95zrhMA+AUiGYaPTW2gtv/TzarnEobjBCBedwpItZDFk3ZCu4qEfGz/UuqylajQRJ1m7Nfn801
	C2XV80fBwN/YnwjVVbMY2Sz9gjf4QopW1aOLgjGBp3LqK7DzwRIeAkIsGLWx6qP450eEuY1GsLMhV
	TtqTvwZtFIKIYkrJFKUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxMT-0005ec-1v; Thu, 19 Sep 2019 14:24:45 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLC-0004W6-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:28 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142325euoutp0127329b4d9b85b53ee0b3bd772a24ce98~F3PiNV2wh2191721917euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142325euoutp0127329b4d9b85b53ee0b3bd772a24ce98~F3PiNV2wh2191721917euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903005;
 bh=9vBjzZ8WEuvpoJoW1P0oRATI3VJ/Xiwt0zbgAf9dLLs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=otKnG8UDxVe3aVHAwOIivSEkiKqULW6U8Tsh8VzfzDcuu9j5ZR5EqwubCZ0SOz0mF
 deGwxb0BMfEe14kPkAYgI9UK4uAeQWYH+TSoSF1J9zKKy4xAu0j992L7W4K5KWyxX+
 4Q0wyoE7/ELJfjja2IXbPVWASXg+BJiPpyVPovjs=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142324eucas1p2c6dcf28205c412e8ae407490ef04a781~F3Phm-q8v2469924699eucas1p2I;
 Thu, 19 Sep 2019 14:23:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9E.59.04374.C5F838D5; Thu, 19
 Sep 2019 15:23:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142323eucas1p2fc73a765389432f880fa28945fd28975~F3Pgz1CDa3081730817eucas1p2n;
 Thu, 19 Sep 2019 14:23:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919142323eusmtrp20894d9aa07c91aa87c9b5ad91c68b53b~F3Pglrtp-3074530745eusmtrp2c;
 Thu, 19 Sep 2019 14:23:23 +0000 (GMT)
X-AuditID: cbfec7f5-92d689c000001116-f9-5d838f5c29a2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id DF.0F.04166.B5F838D5; Thu, 19
 Sep 2019 15:23:23 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142322eusmtip13d904712bb324cac14c4bb82ec7db1dc~F3PfwIqp63226332263eusmtip1A;
 Thu, 19 Sep 2019 14:23:22 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 03/11] devfreq: exynos-bus: Change goto-based logic
 to if-else logic
Date: Thu, 19 Sep 2019 16:22:28 +0200
Message-Id: <20190919142236.4071-4-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ3OdGgsGQqEAxKXRh5Ewd1clBiJmkzkxcSEB7WRKiOgbOmw
 iIaILC6oqKCBFhAkFRBEsSyBimxWNpHaICgBhARU1AhRqEZDQMoU5e079/z/OedPLk3Ih0g3
 OjQimlNHqMIUlFRc0/rb5HX0RrJyU1OKM25prZbg4bupCD/Jfkzit9OfSJxv7CbxG8skhbOe
 6SmcMXxTjE2mCgkuGfpOYv1oH4l7DLkUnrpuRDjb1CDC5cYhCR64UELh7MzP1B4HVl96hWIH
 ++opdvhqm4it1J1nn0zUitjmiXoRm15Vitgp/cqD9GGpbxAXFhrLqTfuDpSGdGrLJFFF0jON
 pm6UiLLoNGRHA7MNxscqqTQkpeVMCYKp1lkkFNMIbnXVkEIxhSD/dz9atMxYLDZLMYJL1wqp
 f5bRvFSxVUUxfpBxZ0RibTgxRgSZBZNia0EwOhGk55iINETTjowSfnb5WA1ixgNul3aRVpYx
 GJLeVxDCulVQVtG0wHaMD0w35IsFjQN0aMYWmJjXJFfn2PQXaHhR6CXwPsi72i4R2BG+tFXZ
 2B3m6vJFAvPwoW54IScwiQj0RUbboF3wvM1MWu8kmHXw2LDRijAf7Gmuq4D28O6bg3CBPWTU
 ZBHCswwuX5QLqACDxl4YB5BU1mcbzULt7JzoJlqjXRJFuySK9v/WAkSUIhcuhg8P5vitEVyc
 N68K52Migr1PRIbr0fyneznbZqlFDTPHWxBDI8Vy2eq4ZKWcVMXy8eEtCGhC4STL3Z6klMuC
 VPFnOXXkMXVMGMe3oBW0WOEiO7ds5IicCVZFc6c5LopTL3ZFtJ1bIqJ7B3Z4uE7Xmfzu6xpN
 /YExG/b9ijRs+xq/PzWnRLO2xlP9+mFcwM6qP+ZM7zFds/+gx8iWHz33nIoOgLuyOC9hN5Ej
 7+jVDPicSjA/CKA/9poVFz1dk503nVzvbma7tSv93wbpyhvHr1mCojW876v2Q+mxf/ZG2T3S
 J6V0higNCjEfotrsSah51V+ntUHJcAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7rR/c2xBr2z5SwOHdvKbnF/Xiuj
 xcYZ61ktrn95zmox/8g5VosrX9+zWUzfu4nNYtL9CSwW589vYLdYcfcjq8Wmx9dYLS7vmsNm
 8bn3CKPFjPP7mCzWHrnLbnG7cQWbxYzJL9kcBD02repk87hzbQ+bx/3u40wem5fUe2x8t4PJ
 4+C7PUwefVtWMXp83iQXwBGlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3Fq1mr2gmVcFfvPn2NsYJzO0cXIySEhYCLx5+tXti5GLg4hgaWMEl//
 3GSDSEhIfFx/gxXCFpb4c60LqugTo8T3zXMZQRJsAo4Sk6Y+YAdJiAicYpTYuvwcWBWzwAYm
 ieVPX4K1CwtES3Sd/8sCYrMIqEpMWXUGLM4rYCHRdG8DM8QKeYnVGw6A2ZwClhJf9s0HqxcC
 qpn7GGIbr4CgxMmZT4DiHEAL1CXWzxMCCTMDtTZvnc08gVFwFpKqWQhVs5BULWBkXsUoklpa
 nJueW2yoV5yYW1yal66XnJ+7iREYxduO/dy8g/HSxuBDjAIcjEo8vArlzbFCrIllxZW5hxgl
 OJiVRHjnmDbFCvGmJFZWpRblxxeV5qQWH2I0BXptIrOUaHI+MMHklcQbmhqaW1gamhubG5tZ
 KInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpg1LssfnWhUoz5Q8sc08aHz4Q7ZYvNjl2VOXis
 18VmearqjTVZ7UVhNVvVXprd7AtvcqrozdljVfVX7kvXWvPOU/Hvt32XL/OXE3E3+LwpIlzA
 frmTq4iGviavT7Fesv/GhUGuPywNJnYImvFVFR+/4LLq/udJ6/TX7vy/mHFmQuJrJtX5R9mV
 WIozEg21mIuKEwEVJ1JQ+AIAAA==
X-CMS-MailID: 20190919142323eucas1p2fc73a765389432f880fa28945fd28975
X-Msg-Generator: CA
X-RootMTR: 20190919142323eucas1p2fc73a765389432f880fa28945fd28975
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142323eucas1p2fc73a765389432f880fa28945fd28975
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142323eucas1p2fc73a765389432f880fa28945fd28975@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072326_871908_BF6506CB 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CgpUaGlz
IHBhdGNoIGltcHJvdmVzIGNvZGUgcmVhZGFiaWxpdHkgYnkgY2hhbmdpbmcgdGhlIGZvbGxvd2lu
ZyBjb25zdHJ1Y3Q6Cgo+ICAgIGlmIChjb25kKQo+ICAgICAgICBnb3RvIHBhc3NpdmU7Cj4gICAg
Zm9vKCk7Cj4gICAgZ290byBvdXQ7Cj5wYXNzaXZlOgo+ICAgIGJhcigpOwo+b3V0OgoKaW50byB0
aGlzOgoKPiAgICBpZiAoY29uZCkKPiAgICAgICAgYmFyKCk7Cj4gICAgZWxzZQo+ICAgICAgICBm
b28oKTsKClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNh
bXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAxMiArKystLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKaW5kZXggZjg1YmVkMjQxNjMxLi42MGFkNDMxOWZkODAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYwpAQCAtNDIwLDE5ICs0MjAsMTMgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWdvdG8gZXJyX3JlZzsKIAogCWlm
IChwYXNzaXZlKQotCQlnb3RvIHBhc3NpdmU7CisJCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9p
bml0X3Bhc3NpdmUoYnVzLCBwcm9maWxlKTsKKwllbHNlCisJCXJldCA9IGV4eW5vc19idXNfcHJv
ZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7CiAKLQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dChidXMsIHByb2ZpbGUpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycjsKIAotCWdvdG8gb3V0
OwotcGFzc2l2ZToKLQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywg
cHJvZmlsZSk7Ci0JaWYgKHJldCA8IDApCi0JCWdvdG8gZXJyOwotCi1vdXQ6CiAJbWF4X3N0YXRl
ID0gYnVzLT5kZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGU7CiAJbWluX2ZyZXEgPSAoYnVzLT5k
ZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlWzBdIC8gMTAwMCk7CiAJbWF4X2ZyZXEgPSAoYnVz
LT5kZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlW21heF9zdGF0ZSAtIDFdIC8gMTAwMCk7Ci0t
IAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
