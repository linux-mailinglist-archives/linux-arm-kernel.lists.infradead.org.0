Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96AA71827
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyslYlbAyo+bCPKM66DewwL95swHMnhu4317vte7pXc=; b=EkxlJjMxdKEWqB
	N+8mb+nTrsEimK0nt7LfKtXUBJFhuNLRT5nfNtpSDDbxW/mw0pimwYvG7h13Q5jYTMEL8+WFEFtZn
	j4JqGB/cIpeKi+tHkaEnr9aTaOlzZHgZDfiyEknAQS9ugTraN7iRgnIAXIjtLDzCUbUrjpEAWuL7a
	wBTUXfvBBdv4AC40VO5vlO8EKI5J6WhaZaJ8ZXUbUJr2oPvXObnzNo530tp/RFBD9cWrtgd3O2NHu
	ANWlKPZyUthIlIrm/X4/8uxBjmq+vTMJgAgRhqQsDMpRDbTM0SCz2Of4y933RIHaksrHjrEaqaQFj
	tgiq5JSUHytB1TpbBmyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptnt-0002ns-30; Tue, 23 Jul 2019 12:22:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mh-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122027euoutp0275c0cf8be712cac3977296f8ff5551ef~0CJnBMHvy3178731787euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122027euoutp0275c0cf8be712cac3977296f8ff5551ef~0CJnBMHvy3178731787euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884427;
 bh=69sx8Ho8WYsPHRFweup85Ar55fYbxmZw5YIq9XlVhhE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UUMiMS8rcDKWYgE9JDpSXyrW2C/qVYaHwu/wbPvKqmsUEuGa5VRBnPlZromlcP7Mx
 fbSINPeJEhHU44dcWyOuSwl6rwTYuEFk1Rbpzs3eQtF1vubr0RJILay34ncj+SXh94
 0G4Ye/ncfa+oc0XnGp7cTPnUGSHP6E2RPqn6qmhQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122026eucas1p1f335ee2bd2411aaba4b3ccdda8ae2cfe~0CJme7mvZ0728407284eucas1p17;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9A.0C.04377.A8BF63D5; Tue, 23
 Jul 2019 13:20:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64~0CJlrL8tN2751727517eucas1p2d;
 Tue, 23 Jul 2019 12:20:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122025eusmtrp1f6762be756a6f02ff6df821cd5e17030~0CJlgYUKY2491824918eusmtrp1b;
 Tue, 23 Jul 2019 12:20:25 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ad-5d36fb8ae00a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4A.41.04146.98BF63D5; Tue, 23
 Jul 2019 13:20:25 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122024eusmtip27564000c231ee8652f0e0023861fb0d6~0CJk5pYbi1612616126eusmtip2K;
 Tue, 23 Jul 2019 12:20:24 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 05/11] icc: Export of_icc_get_from_provider()
Date: Tue, 23 Jul 2019 14:20:10 +0200
Message-Id: <20190723122016.30279-6-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPKsWRmVeSWpSXmKPExsWy7djP87pdv81iDT7N4bU4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 exSXTUpqTmZZapG+XQJXxt3jl5kLXvBXPOy8xdjAuIe3i5GDQ0LAROJqs3sXIxeHkMAKRomX
 n+8xQThfGCV+dX5jgXA+M0pcv3wIKMMJ1rHy0n2oxHJGieZZz1nhWr7OvccKUsUm4CnRM3EH
 WEJE4AijxOQF78FamAVWATnftzGCbBcWcJTYtbEKpIFFQFXixJYOFhCbFyi8pKGHEWKdvMTq
 DQeYQWxOASeJrqPtbBA1ghInZz4Bq2cGqmneOpsZZL6EwEd2iV97NkE1u0j8at/HDGELS7w6
 voUdwpaROD25hwXCLpZ4uvM+K0RzA6PEpmVHoBqsJQ4fv8gKciizgKbE+l36EGFHifdHdzJB
 Qo9P4sZbQYgb+CQmbZvODBHmlehoE4IwtSQW/I6GaJSQaFp9DWq2h8TsJy3MExgVZyF5ZhaS
 Z2YhrF3AyLyKUTy1tDg3PbXYKC+1XK84Mbe4NC9dLzk/dxMjMJmd/nf8yw7GXX+SDjEKcDAq
 8fBu2GMaK8SaWFZcmXuIUYKDWUmEN7DBLFaINyWxsiq1KD++qDQntfgQozQHi5I4bzXDg2gh
 gfTEktTs1NSC1CKYLBMHp1QDo0X9j6Az33m+ztN9uHpqxo6tPPfz+eKvab1VqHyZxShR9qGT
 2144dL2w02uf8xsrTfaUqnPOEagUOXC+Y7dEfHx6UedrUYYXXW2KN/jn5e6cY3eqfsmRP5Mk
 Nu4Sq33R4n/nwsMK9VeJrgZeDyR/hyRNi3xx/ZlztmDUm9llfa0T02I5pj56p8RSnJFoqMVc
 VJwIAJpbezdiAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xe7qdv81iDfZNlbI4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJext3j
 l5kLXvBXPOy8xdjAuIe3i5GTQ0LARGLlpfssXYxcHEICSxklvuz/zAqRkJD4uP4GlC0s8eda
 FxtE0SdGibZ9C8ASbAKeEj0Td7CCJEQETjFKbF1+DqyKWWATo8Td4xPZuxg5OIQFHCV2bawC
 aWARUJU4saWDBcTmBQovaehhhNggL7F6wwFmEJtTwEmi62g7G4gtBFSzbftrRoh6QYmTM5+w
 gIxkFlCXWD9PCCTMDNTavHU28wRGwVlIqmYhVM1CUrWAkXkVo0hqaXFuem6xoV5xYm5xaV66
 XnJ+7iZGYJRuO/Zz8w7GSxuDDzEKcDAq8fBu2GMaK8SaWFZcmXuIUYKDWUmEN7DBLFaINyWx
 siq1KD++qDQntfgQoynQaxOZpUST84EJJK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6Yklq
 dmpqQWoRTB8TB6dUA6N/5Vm3R2LR8xyf9c01epf+1Fbg1qOvLO7TrBvnRlmcOPc4Sr0m70ae
 cdDW16nb9r6MVLNcJvyKzYzzWfOs8kvyqexCTFem/EtuET7tdE/8aUl15pupj99Nff0ibdbE
 fS/OnIvOaf/n8lqpbcqvHsN/0+NYbCx3JEz80ma8IcZeZZIW28VC6zglluKMREMt5qLiRABm
 fgMp6AIAAA==
X-CMS-MailID: 20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64
X-Msg-Generator: CA
X-RootMTR: 20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_480509_37D40376 
X-CRM114-Status: GOOD (  12.96  )
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

VGhpcyBwYXRjaCBtYWtlcyB0aGUgYWJvdmUgZnVuY3Rpb24gcHVibGljIChmb3IgdXNlIGluIGV4
eW5vcy1idXMgZGV2ZnJlcQpkcml2ZXIpLgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQg
PGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9pbnRlcmNvbm5lY3Qv
Y29yZS5jICAgICAgICAgICB8IDMgKystCiBpbmNsdWRlL2xpbnV4L2ludGVyY29ubmVjdC1wcm92
aWRlci5oIHwgNiArKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jIGIvZHJp
dmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCmluZGV4IDg3MWViNGJjNGVmYy4uZDU2NmFlMGI2NmMw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMKKysrIGIvZHJpdmVycy9p
bnRlcmNvbm5lY3QvY29yZS5jCkBAIC0yNzQsNyArMjc0LDcgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
b2ZfaWNjX3hsYXRlX29uZWNlbGwpOwogICogUmV0dXJucyBhIHZhbGlkIHBvaW50ZXIgdG8gc3Ry
dWN0IGljY19ub2RlIG9uIHN1Y2Nlc3Mgb3IgRVJSX1BUUigpCiAgKiBvbiBmYWlsdXJlLgogICov
Ci1zdGF0aWMgc3RydWN0IGljY19ub2RlICpvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoc3RydWN0
IG9mX3BoYW5kbGVfYXJncyAqc3BlYykKK3N0cnVjdCBpY2Nfbm9kZSAqb2ZfaWNjX2dldF9mcm9t
X3Byb3ZpZGVyKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwZWMpCiB7CiAJc3RydWN0IGljY19u
b2RlICpub2RlID0gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKIAlzdHJ1Y3QgaWNjX3Byb3ZpZGVy
ICpwcm92aWRlcjsKQEAgLTI5Myw2ICsyOTMsNyBAQCBzdGF0aWMgc3RydWN0IGljY19ub2RlICpv
Zl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3BlYykKIAog
CXJldHVybiBub2RlOwogfQorRVhQT1JUX1NZTUJPTF9HUEwob2ZfaWNjX2dldF9mcm9tX3Byb3Zp
ZGVyKTsKIAogLyoqCiAgKiBvZl9pY2NfZ2V0KCkgLSBnZXQgYSBwYXRoIGhhbmRsZSBmcm9tIGEg
RFQgbm9kZSBiYXNlZCBvbiBuYW1lCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ludGVyY29u
bmVjdC1wcm92aWRlci5oIGIvaW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaApp
bmRleCA2M2NhY2NhZGMyZGIuLjllY2ZjNTE4Yjk1MiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaAorKysgYi9pbmNsdWRlL2xpbnV4L2ludGVyY29ubmVj
dC1wcm92aWRlci5oCkBAIC05Nyw2ICs5Nyw3IEBAIHZvaWQgaWNjX25vZGVfYWRkKHN0cnVjdCBp
Y2Nfbm9kZSAqbm9kZSwgc3RydWN0IGljY19wcm92aWRlciAqcHJvdmlkZXIpOwogdm9pZCBpY2Nf
bm9kZV9kZWwoc3RydWN0IGljY19ub2RlICpub2RlKTsKIGludCBpY2NfcHJvdmlkZXJfYWRkKHN0
cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyKTsKIGludCBpY2NfcHJvdmlkZXJfZGVsKHN0cnVj
dCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyKTsKK3N0cnVjdCBpY2Nfbm9kZSAqb2ZfaWNjX2dldF9m
cm9tX3Byb3ZpZGVyKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwZWMpOwogCiAjZWxzZQogCkBA
IC0xMzcsNiArMTM4LDExIEBAIHN0YXRpYyBpbmxpbmUgaW50IGljY19wcm92aWRlcl9kZWwoc3Ry
dWN0IGljY19wcm92aWRlciAqcHJvdmlkZXIpCiAJcmV0dXJuIC1FTk9UU1VQUDsKIH0KIAorc3Ry
dWN0IGljY19ub2RlICpvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoc3RydWN0IG9mX3BoYW5kbGVf
YXJncyAqc3BlYykKK3sKKwlyZXR1cm4gRVJSX1BUUigtRU5PVFNVUFApOworfQorCiAjZW5kaWYg
LyogQ09ORklHX0lOVEVSQ09OTkVDVCAqLwogCiAjZW5kaWYgLyogX19MSU5VWF9JTlRFUkNPTk5F
Q1RfUFJPVklERVJfSCAqLwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
