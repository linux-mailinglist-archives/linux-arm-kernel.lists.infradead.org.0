Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C92B7C2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK0uN5ccVgMAfRTDdAS1Ac1+Z4JQNT5tdcqfOYLcKio=; b=R1c1IIMBuicc1A
	tEAas5VdfxfgISl7o/2AltoXnC3BIIqT0uXttWexCJmHi8OF45EhxGEoGPnaJyb9DKne7kUrY61nR
	mPzUGrzCqJZkPcs9ucSQUt0GWXNA/9yDobQOSyEViC/yHukwCeUE/z1ylfIEUgkAJdcGPdERFzKGS
	Z9XsHEuTh3x4k10jpnAYHJSZ8IYdVpuYKoUiIIElIJE3WLoXyHX05rxlay0wZCN6tTmt79zsKpH+s
	ysNJTCDhUuyApTHC1Rbofmoy5mpWSI11TDOChDcEl2/5hpaOX+7TZXi83hKWhPPgNFKftCi8Nqwig
	DVXDiTswMkz16uM1K2MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxLr-00051R-4L; Thu, 19 Sep 2019 14:24:07 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLB-0004VE-0H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142323euoutp016ea717fc6f26a57082f2ddbe2e84d464~F3Pgp6owC2191721917euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142323euoutp016ea717fc6f26a57082f2ddbe2e84d464~F3Pgp6owC2191721917euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903003;
 bh=AfthMmM6EgHw5o7aJ+tOGSYwkpSBVAIvY47THmRlg88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uUfGFo9QIDKkubnSJ5/YQMuqyznHJ0n2dRX/MpysB1HAGdhN3OKccdnTnPzSW9fSZ
 J5fPYC2ZcGw7ZI64nfB9qI8jSm3P2GAaP7jp36X9AS8qDPF7pTBcLclVExcA4JCo0N
 e8IxiOhUBw/Jb4QzH73svIjcl6ty2FYF/QGKl2gE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142323eucas1p2137d5fd4ba615c27d374c78200548f67~F3PgKgjez2883328833eucas1p2u;
 Thu, 19 Sep 2019 14:23:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C2.0C.04469.A5F838D5; Thu, 19
 Sep 2019 15:23:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d~F3PfLq4zH3081130811eucas1p2n;
 Thu, 19 Sep 2019 14:23:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142321eusmtrp19477a6779bcf10be72c5ec00a5f107ab~F3Pe881yZ0555105551eusmtrp1K;
 Thu, 19 Sep 2019 14:23:21 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-f8-5d838f5a4ad8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7C.55.04117.95F838D5; Thu, 19
 Sep 2019 15:23:21 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142320eusmtip13d096101d63cf3d7c53334a2bda52896~F3PeLg9Oy3274232742eusmtip1o;
 Thu, 19 Sep 2019 14:23:20 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
Date: Thu, 19 Sep 2019 16:22:26 +0200
Message-Id: <20190919142236.4071-2-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO7cdV7PjFHqzMlv4o8gbZHxRSULUiUAUoh+G1CkPJs0LO9r1
 R1MzvKSWVs5LKhVeE+fU0OWl1nJY5LJsKWmrLCKxrNQuUNLmMerf87zP5f1e+FhS/ZL2ZROS
 UkVdkqDVMErqVt9Pe2BMYWZsyP3fgdjS167AzsoshFsMzTR+PvOexlXWARoPzU4xuKTbxOAi
 5wUK2+1GBa4b+0Jj07iDxk/NFQyezrcibLD3ELjJOqbAL9LrGGwo/sBs9+JNDTkMP+roYnhn
 no3gW2+c4Vs+dRD83U9dBF/Q1oD4aZNfFBuj3BonahOOibrg8IPKI/2frUzKo1UnMh7r9Cgf
 cpEHC9xGuDL3hMhFSlbN1SG4NFFDy2QGwfD1MiSTaQQj7U3M30hvr3EhUoug+Gbpv0i/YWze
 xXARUHT5lcIt+HBWl6t6inITkrtBQEG5nXS7vLl9MGgw0m5McQFQP3ptfq7iMLTrnbS8bzU0
 Gu/Mzz24zTDTU0XJHi/oL307j0mXJ7O9nHQvAC6dhecVJS6BdZEdMNm4W+7xhglbm0LGK+Fh
 8XlKxhK863TSclaPwFRjJWVhC9yzDdLuHpJbB83mYHkcAfVvvhByvScMf/SSn+AJRbdKSHms
 guxzahlqwFzqKQcBMhodC908jNuq0QW0puy/W8r+u6Xs39pqRDagZWKalBgvSqFJ4vEgSUiU
 0pLigw4nJ5qQ69c9nLN97UCzTw5ZEMcizRKV//HMWDUtHJNOJloQsKTGR1URlhGrVsUJJ0+J
 uuQDujStKFnQCpbSLFOdXvRqv5qLF1LFo6KYIur+qgTr4atHV43Sxe87zel6bWQ/M5K/rng2
 fqjxm+CXTBwOCCycSvP3Pvt6r35XF+lYqqVjo2tTl4TXjyjDzSds+h95+XHdCW2LN1DCwJ6s
 fYzfoWcdYWF5m46G3c6OyjDltHoH11RmT26rddzf+yiqs3Dn9cgND6q/ra16aghZXjERbVjx
 q8GhoaQjQuh6UicJfwCR5LDPcQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7qR/c2xBvcn61kcOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL+PkhyNsBWdlK5ouFDUw9kp0MXJySAiYSOzfv4Gpi5GLQ0hgKaPE5AtX
 2SESEhIf199ghbCFJf5c62IDsYUEPjFKvH0rC2KzCThKTJr6gB2kWUTgFKPE1uXn2EAcZoEN
 TBLLn74E6xYWCJHoWvKYGcRmEVCVWHlnEZjNK2AhsbXhPtQGeYnVGw6AxTkFLCW+7JvPArHN
 QmLu47mMEPWCEidnPgGKcwAtUJdYP08IJMwM1Nq8dTbzBEbBWUiqZiFUzUJStYCReRWjSGpp
 cW56brGRXnFibnFpXrpecn7uJkZgBG879nPLDsaud8GHGAU4GJV4eBXKm2OFWBPLiitzDzFK
 cDArifDOMW2KFeJNSaysSi3Kjy8qzUktPsRoCvTaRGYp0eR8YHLJK4k3NDU0t7A0NDc2Nzaz
 UBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKDU1pS1X2W9/TrVQ08wHC3fc6pab5hYQuFj3
 Wp1Z86sfj0Prn4SfWa+7/LFjjT2PSdnsdl7luSvf7Go+8zPDl+cB/8ff15+6vQqbMdHjVCHX
 jcSkkpdTexarclbvzJ30S/GD8Y8qG7+0X9MXmj36rBfwjvWuy7aHiZ3cd/88al84ZUrc9rNH
 xJRYijMSDbWYi4oTAbT4Bh32AgAA
X-CMS-MailID: 20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d
X-Msg-Generator: CA
X-RootMTR: 20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072325_220722_73ACB99B 
X-CRM114-Status: GOOD (  15.21  )
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
IHBhdGNoIGFkZHMgYSBuZXcgc3RhdGljIGZ1bmN0aW9uLCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dCgpLCBleHRyYWN0ZWQKZnJvbSBleHlub3NfYnVzX3Byb2JlKCkuCgpTaWduZWQtb2ZmLWJ5OiBB
cnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJz
L2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgOTIgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMKaW5kZXggMjlmNDIyNDY5OTYwLi43OGYzOGI3ZmI1OTYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKKysrIGIvZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYwpAQCAtMjg3LDEyICsyODcsNjIgQEAgc3RhdGljIGludCBleHlub3NfYnVz
X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCiAJcmV0dXJuIHJldDsKIH0KIAorc3Rh
dGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAor
CQkJCSAgIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlKQoreworCXN0cnVjdCBk
ZXZpY2UgKmRldiA9IGJ1cy0+ZGV2OworCXN0cnVjdCBkZXZmcmVxX3NpbXBsZV9vbmRlbWFuZF9k
YXRhICpvbmRlbWFuZF9kYXRhOworCWludCByZXQ7CisKKwkvKiBJbml0aWFsaXplIHRoZSBzdHJ1
Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAqLworCXByb2Zp
bGUtPnBvbGxpbmdfbXMgPSA1MDsKKwlwcm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3Rhcmdl
dDsKKwlwcm9maWxlLT5nZXRfZGV2X3N0YXR1cyA9IGV4eW5vc19idXNfZ2V0X2Rldl9zdGF0dXM7
CisJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKKworCW9uZGVtYW5kX2RhdGEgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKKwlp
ZiAoIW9uZGVtYW5kX2RhdGEpIHsKKwkJcmV0ID0gLUVOT01FTTsKKwkJZ290byBlcnI7CisJfQor
CW9uZGVtYW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7CisJb25kZW1hbmRfZGF0YS0+ZG93bmRp
ZmZlcmVudGlhbCA9IDU7CisKKwkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgdG8gbW9uaXRvciBhbmQg
aGFuZGxlIHRoZSBleHlub3MgYnVzICovCisJYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2Fk
ZF9kZXZpY2UoZGV2LCBwcm9maWxlLAorCQkJCQkJREVWRlJFUV9HT1ZfU0lNUExFX09OREVNQU5E
LAorCQkJCQkJb25kZW1hbmRfZGF0YSk7CisJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7CisJ
CWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldmljZVxuIik7CisJCXJldCA9
IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKKwkJZ290byBlcnI7CisJfQorCisJLyoKKwkgKiBFbmFi
bGUgZGV2ZnJlcS1ldmVudCB0byBnZXQgcmF3IGRhdGEgd2hpY2ggaXMgdXNlZCB0byBkZXRlcm1p
bmUKKwkgKiBjdXJyZW50IGJ1cyBsb2FkLgorCSAqLworCXJldCA9IGV4eW5vc19idXNfZW5hYmxl
X2VkZXYoYnVzKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBl
bmFibGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKKwkJZ290byBlcnI7CisJfQorCisJcmV0
ID0gZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJy
KGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsK
KwkJZ290byBlcnI7CisJfQorCitlcnI6CisJcmV0dXJuIHJldDsKK30KKwogc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0
IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZGV2
LT5vZl9ub2RlLCAqbm9kZTsKIAlzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZTsK
LQlzdHJ1Y3QgZGV2ZnJlcV9zaW1wbGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKIAlz
dHJ1Y3QgZGV2ZnJlcV9wYXNzaXZlX2RhdGEgKnBhc3NpdmVfZGF0YTsKIAlzdHJ1Y3QgZGV2ZnJl
cSAqcGFyZW50X2RldmZyZXE7CiAJc3RydWN0IGV4eW5vc19idXMgKmJ1czsKQEAgLTMzNCw0NSAr
Mzg0LDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJaWYgKHBhc3NpdmUpCiAJCWdvdG8gcGFzc2l2ZTsKIAotCS8qIEluaXRpYWxp
emUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNl
ICovCi0JcHJvZmlsZS0+cG9sbGluZ19tcyA9IDUwOwotCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5v
c19idXNfdGFyZ2V0OwotCXByb2ZpbGUtPmdldF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRf
ZGV2X3N0YXR1czsKLQlwcm9maWxlLT5leGl0ID0gZXh5bm9zX2J1c19leGl0OwotCi0Jb25kZW1h
bmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9L
RVJORUwpOwotCWlmICghb25kZW1hbmRfZGF0YSkgewotCQlyZXQgPSAtRU5PTUVNOworCXJldCA9
IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7CisJaWYgKHJldCA8IDApCiAJ
CWdvdG8gZXJyOwotCX0KLQlvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwotCW9uZGVt
YW5kX2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1OwotCi0JLyogQWRkIGRldmZyZXEgZGV2aWNl
IHRvIG1vbml0b3IgYW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAqLwotCWJ1cy0+ZGV2ZnJlcSA9
IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKLQkJCQkJCURFVkZSRVFfR09W
X1NJTVBMRV9PTkRFTUFORCwKLQkJCQkJCW9uZGVtYW5kX2RhdGEpOwotCWlmIChJU19FUlIoYnVz
LT5kZXZmcmVxKSkgewotCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZp
Y2VcbiIpOwotCQlyZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Ci0JCWdvdG8gZXJyOwotCX0K
LQotCS8qCi0JICogRW5hYmxlIGRldmZyZXEtZXZlbnQgdG8gZ2V0IHJhdyBkYXRhIHdoaWNoIGlz
IHVzZWQgdG8gZGV0ZXJtaW5lCi0JICogY3VycmVudCBidXMgbG9hZC4KLQkgKi8KLQlyZXQgPSBl
eHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Ci0JaWYgKHJldCA8IDApIHsKLQkJZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Ci0JCWdvdG8g
ZXJyOwotCX0KLQotCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Ci0JaWYgKHJldCA8
IDApIHsKLQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRvIGRldmZyZXEtZXZl
bnQgZGV2aWNlc1xuIik7Ci0JCWdvdG8gZXJyOwotCX0KIAogCWdvdG8gb3V0OwogcGFzc2l2ZToK
LS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
