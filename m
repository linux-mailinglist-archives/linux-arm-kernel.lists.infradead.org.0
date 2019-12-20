Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D35127AA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWAxvW/KADoyKgVbCG1mRA7WAa/LUs8PQXWjRu9sels=; b=lAn44hgR9ADr94
	yXhAPZUrTqEU1kCTYtVnRlj4ExizQ0Edo9aXqUAcfuZbyFEghOcJMY/MQiU3Mt/l4AHDRoImJrJW4
	SCCFOWmVsM43MUCHxlEfnR9DoEQUqQKOxeUAQBle42AqBOVRY0r3Av8BnL1BjC4Tlofkzwqq7V2nx
	t7shHv5REf/nfMa5XlacEEEERK/wxMP2Yt0b+a+efF9V0nmL8ho93hee7Dt0BJzsJOXmrluVgyKPN
	PZ/5FXfW/bpMIggXbFYJTST4aoZ87v9rCk5B7/BuxNgUdRvgjC4brRK9PLoGTyrafscqLSEACK+wO
	hRXQycdrbzm+zFlrR4sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH0L-0006oq-Dq; Fri, 20 Dec 2019 12:03:37 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGya-0005Lu-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191220120146euoutp02e7cc6e8aae2dd00f7bbde2218e6d15ca~iEqIJesjk0140301403euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191220120146euoutp02e7cc6e8aae2dd00f7bbde2218e6d15ca~iEqIJesjk0140301403euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576843306;
 bh=ottFIS2g2f1gTBdIXmtOFHs/1PpTz7Q1HbB6uCSxjhA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=geNABEjIaOFXEsDfuCtb/8bRiOyRzMqgb1u7bFO99PqV24v/4xhZrvWo2wynGp1Qw
 80zQ1+esXMPoAXbVUhdyyN24TfbCOAQ9UG2avn2aW4IY+Ozjci3Snw+AKppMmhaMat
 otrXz1NBJ/JcOC57Y+pBBtYIGEswYPy+hUahdpig=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191220120146eucas1p277fcbaeb4927a426027d863a1b7fa318~iEqH5oQwq2774727747eucas1p2M;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C0.0F.61286.A28BCFD5; Fri, 20
 Dec 2019 12:01:46 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c~iEqHkkr5b2771427714eucas1p2-;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220120146eusmtrp20bd7f72940e3e4eec57c60e3327bbce1~iEqHj4j7s2149221492eusmtrp22;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-e4-5dfcb82a814a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 07.87.08375.928BCFD5; Fri, 20
 Dec 2019 12:01:45 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120145eusmtip2b65526bcbcb8592d3644f3e504e06f1f~iEqGuNs463105631056eusmtip2b;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v3 6/7] arm: dts: exynos: Add interconnects to
 Exynos4412 mixer
Date: Fri, 20 Dec 2019 12:56:52 +0100
Message-Id: <20191220115653.6487-7-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220115653.6487-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRTv2919aE0+p+lBy3LUHwWtxIIvirCIuEHF/rHIGDb1ppGu2lXL
 MPKBtpKWaOVcDyUixcjHqqmjQmy1huXQSgUNeyJGKWYKvlbb7qL++53ze5xz4HCU8g0dxR3V
 ZwsGvS5TxQTLbS9m3OvWts1rN4zVLSXDt0oQaTE30aT/1whNahzdNHk7Nc6QqidWhlQMl8uJ
 293Mkvr3EzSxfu6jyRv7DYZMXnIgYnY/lZH7jvcsGSysZ4i5cpRJwLy14QLDD/U9ZvjhMqeM
 f3DnHN8y1ibjTQ8bED9pjdGwScFb04TMo7mCYf22w8EZYzfPnbjCnh69Wk0VIA99EQVxgDdC
 /1szcxEFc0pcj6B53sb6CCX+hWCiPEwiJhE0vrzM/HU4Gl7QElGHoKd4jpUKr8PU0irzqRi8
 HSqufvAT4diBoLJ2XO4rKHxDBsYLdXKfKgwnwsfnZn+uHK+GoY7nfrcCE3AOlrPSvBVwr7mD
 8uEgvBkG3vVSkiYUXNVf/DmUV1P86Dol6SdYcNVFSngntBZVBfYOg2/Oh4HMZfC7vUYmYRG+
 tg/77wFcgMB61xEI2gJD3bNeM+cdsAaa7Oul9nYoLXGyvjbgEBj4ESqtEAIVtipKaivAWKqU
 oArs1SGSEaDoXl8gm4eerjKqHMVa/rvF8t8tln9jaxHVgCKFHDErXRDj9MIptajLEnP06erU
 41lW5H21Lo/zZxua6k3pRJhDqiWKhCNzWiWtyxXzsjoRcJQqXDFonNEqFWm6vDOC4XiyISdT
 EDtRNCdXRSrib49qlThdly0cE4QTguEvK+OCogrQPvX+V1Mjy62HVtl25KhnM/IbYyL2FmtS
 53BE/qJDqaUHdimeJR48nN+x2yTGxyZdN5bONZmi6bMxffsKPZ+slXuuBeUyHlOiY2GhO1s/
 zy62c7dW9n5HlugrS3uVo/xNTb0rLXlT9HiKe7qmsOxkf1zbrqfnn00/0eCyrtcJLpVczNDF
 raUMou4PvSE3m2YDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBIsWRmVeSWpSXmKPExsVy+t/xe7qaO/7EGqzdaG1xf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQy3s2tL5jCXvFy6kzmBsZ/rF2MnBwSAiYSR1YdA7OFBJYySnzpL4WIS0h8XH8DqkZY4s+1
 LrYuRi6gmk+MEocn9rCDJNgEHCUmTX3ADpIQETjFKLF1+Tk2kASzwAomif45wiC2sECwxPSu
 V2ANLAKqEncOHGUCsXkFLCSO357ADrFBXmL1hgPMIDangKXEjauXmCEuspDY+bkPql5Q4uTM
 JyxdjBxA89Ul1s8TglglL9G8dTbzBEbBWUiqZiFUzUJStYCReRWjSGppcW56brGhXnFibnFp
 Xrpecn7uJkZgrG479nPzDsZLG4MPMQpwMCrx8L5M/h0rxJpYVlyZe4hRgoNZSYT3dsfPWCHe
 lMTKqtSi/Pii0pzU4kOMpkCvTWSWEk3OB6aRvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJ
 JanZqakFqUUwfUwcnFINjKZ768qWXluQvDj27Swrkbxn0V89eDo1zCMa1rnIlF7h6QqUOdT6
 eXrF/jxdSYOTUueNZW2zw5UfMm0sPtHinflGJPCT9dMn+RyvG/gDznk1/y3Y/fdvQN7Nlx/y
 m+dzSf3sv9o292XX+XSNfz8PekwV6vt26abywanKQlIf35lkZa9Oy7oqrMRSnJFoqMVcVJwI
 ADa+5O7rAgAA
X-CMS-MailID: 20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c
X-Msg-Generator: CA
X-RootMTR: 20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120146eucas1p25dada01c315215d18bb8a15e3173b52c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040148_273779_E05F58C0 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

VGhpcyBwYXRjaCBhZGRzIGFuICdpbnRlcmNvbm5lY3RzJyBwcm9wZXJ0eSB0byBFeHlub3M0NDEy
IERUUyBpbiBvcmRlciB0bwpkZWNsYXJlIHRoZSBpbnRlcmNvbm5lY3QgcGF0aCB1c2VkIGJ5IHRo
ZSBtaXhlci4gUGxlYXNlIG5vdGUgdGhhdCB0aGUKJ2ludGVyY29ubmVjdC1uYW1lcycgcHJvcGVy
dHkgaXMgbm90IG5lZWRlZCB3aGVuIHRoZXJlIGlzIG9ubHkgb25lIHBhdGggaW4KJ2ludGVyY29u
bmVjdHMnLCBpbiB3aGljaCBjYXNlIGNhbGxpbmcgb2ZfaWNjX2dldCgpIHdpdGggYSBOVUxMIG5h
bWUgc2ltcGx5CnJldHVybnMgdGhlIHJpZ2h0IHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDF
mndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvZXh5
bm9zNDQxMi5kdHNpIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgYi9hcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLmR0c2kKaW5kZXggNDg4Njg5NDczNzNlLi4xM2E2NzlhOWExMDcgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQorKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKQEAgLTc3MSw2ICs3NzEsNyBAQAogCWNsb2NrLW5h
bWVzID0gIm1peGVyIiwgImhkbWkiLCAic2Nsa19oZG1pIiwgInZwIjsKIAljbG9ja3MgPSA8JmNs
b2NrIENMS19NSVhFUj4sIDwmY2xvY2sgQ0xLX0hETUk+LAogCQkgPCZjbG9jayBDTEtfU0NMS19I
RE1JPiwgPCZjbG9jayBDTEtfVlA+OworCWludGVyY29ubmVjdHMgPSA8JmJ1c19kaXNwbGF5ICZi
dXNfZG1jPjsKIH07CiAKICZwbXUgewotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
