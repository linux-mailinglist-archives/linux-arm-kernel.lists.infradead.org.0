Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE691C3A9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GxC0mGp8shpVGgvnqzVbZr5IMxpI83fkRXRK6z5hds=; b=b/p10I6JabLvEY
	vYVBW9stsM0tPXW9/GNOrvJrVXkjCs3+LN99TcznAQ66td5T2iHB7innws5mGY2fPQuwPyIvI1sLb
	hv5v9QDRTUL6rNACKG9Yhtly/xziSuPE8PrO6d+y9MURLe367pvgK7g+R1yq+LX8fGDhPngMouL17
	GdFp6xxXaVDA/sMBWQPdnlkTWfd9zCnyY8jScKrsO0NSS4VTXzz0vH3gztFyfLpfLLrqUehrgEH2w
	i49PRc7b91AD16a1ia5M6hlp62nIPAWTYQul6eoyyotraBmuXVoof+8y62j9oeFl/2j9NOAqdK+TN
	VTjCYDsnp+Yf54m3jOvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVafV-0008Ik-5W; Mon, 04 May 2020 12:57:57 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabz-0002b6-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125417euoutp0135034398949a928ec64384cb1ebed157~L1GzdcPmC2809928099euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125417euoutp0135034398949a928ec64384cb1ebed157~L1GzdcPmC2809928099euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596857;
 bh=c7vIvhcriEUaiVnoYU6N02QN2Wz5ujHuRtSB4X7g6BI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O/TAKsrY3mkcyCgaE5XUC/j1bPX01J9fhIYBD6w2Gg+agfBfDmujcv9YQMZKk4JTB
 FZ7D3qof+Ij8joNhxpOjMQnDf0fz0lFcwzDl2DV4zwj71FMdAlxKtlwxjudD99FlgT
 bThwQFzvErk+WtORKnds7fwoqluV9kzIwgKqPPE4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125417eucas1p266462b46ae2d3038bfc90a510f51e63c~L1GzEKRtQ2227522275eucas1p2q;
 Mon,  4 May 2020 12:54:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 77.12.60698.97010BE5; Mon,  4
 May 2020 13:54:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125416eucas1p2ab599ff4137e6c25d6847b83e7f69613~L1GysgZyu2427724277eucas1p2z;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125416eusmtrp13fc13fb058264e8dbf61f580005ea276~L1GyryiwX2497724977eusmtrp1Z;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-50-5eb010791bb5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D8.06.07950.87010BE5; Mon,  4
 May 2020 13:54:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eusmtip25424ca4fe224be8c1293eca7b13ce65f~L1Gx666kE3246632466eusmtip2b;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/21] drm: radeon: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:48 +0200
Message-Id: <20200504125359.5678-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMKsWRmVeSWpSXmKPExsWy7djP87qVAhviDH48ZrHoPXeSyWLand2s
 FkvXN7JbbJyxntXi7X0g9/+2icwWS76cZ7W48vU9m8XK1UeZLBbst7b4cuUhk8Wmx9dYLS7v
 msNmsfbIXXaLgx+esDrwe7Re+svmsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvT4vEkugDuKyyYlNSezLLVI3y6BK2NX9zPGgslCFXPWPWFsYFzH38XI
 wSEhYCLx42NSFyMXh5DACkaJhx+XMkE4Xxgl1i3ezQLhfGaUWPDmAXMXIydYx7OWRjaIxHJG
 iYVXLzDCtSz7/wGsik3AUKLrbRcbiC0i0MoocaKXB6SIWeAqs8SaJbdYQRLCAoESL2Z0gxWx
 CKhK9P+dzwRi8wrYSpx9u4EVYp28xOoNB5hBjuUEis/sVYcoEZQ4OfMJC4jNDFTSvHU2M8h8
 CYFGDomZFxcxQfS6SPw5tZURwhaWeHV8CzuELSNxenIPC0RDM9DX59ayQzg9jBKXm2ZAdVhL
 3Dn3iw1kM7OApsT6XfoQYUeJjmlTWSGhxydx460gxBF8EpO2TWeGCPNKdLQJQVSrScw6vg5u
 7cELl6Ch6CHxZVIf8wRGxVlI3pmF5J1ZCHsXMDKvYhRPLS3OTU8tNs5LLdcrTswtLs1L10vO
 z93ECEx6p/8d/7qDcd+fpEOMAhyMSjy8EZ/XxwmxJpYVV+YeYpTgYFYS4d3RAhTiTUmsrEot
 yo8vKs1JLT7EKM3BoiTOa7zoZayQQHpiSWp2ampBahFMlomDU6qB0TmD0TTfqTNix9cYrYKU
 vPWtsvuLxb/HGwrM1Hy8ji3myPKDu8y+ThAW/2/Vc+SX5dWj+Uu/VwuvMf3Pn9ihWfJRvvTQ
 VJ6XN1da+VZNaduw197ecGez1NnGHfGbwlPDNx44eUXGRMhy/idXM56YOr60e9fqg+x3dS7I
 FP4921enpImrU+m7EktxRqKhFnNRcSIAHDGrtXYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOIsWRmVeSWpSXmKPExsVy+t/xe7oVAhviDPZO0LHoPXeSyWLand2s
 FkvXN7JbbJyxntXi7X0g9/+2icwWS76cZ7W48vU9m8XK1UeZLBbst7b4cuUhk8Wmx9dYLS7v
 msNmsfbIXXaLgx+esDrwe7Re+svmsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srI
 VEnfziYlNSezLLVI3y5BL2NX9zPGgslCFXPWPWFsYFzH38XIySEhYCLxrKWRrYuRi0NIYCmj
 xN0JD1ggEjISJ6c1sELYwhJ/rnVBFX1ilOg7tJsJJMEmYCjR9RYiISLQySgxrfsjO0iCWeAu
 s8SKKbkgtrCAv8SJX2vBprIIqEr0/50P1swrYCtx9u0GqA3yEqs3HGDuYuTg4ASKz+xVBwkL
 CeRL3H36jwWiXFDi5MwnLCAlzALqEuvnCUFskpdo3jqbeQKj4CwkVbMQqmYhqVrAyLyKUSS1
 tDg3PbfYSK84Mbe4NC9dLzk/dxMjMJK3Hfu5ZQdj17vgQ4wCHIxKPLwbvq6PE2JNLCuuzD3E
 KMHBrCTCu6MFKMSbklhZlVqUH19UmpNafIjRFOizicxSosn5wCSTVxJvaGpobmFpaG5sbmxm
 oSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB0eUMVyin70GGuSrxc9K+ZgWUGa3QM4w+dfti
 73XDzc+eF3/a9t14qWrmw++MQvc+v1GM2b3pT8OTm+2JUm9cHRjL9ygvvnXpkzHj1egtrXGr
 NHhPCEhfqGJ23NF08Ovpk4YnCvnKkkuDLhYui1z+8twWln8x097Nz2aNfep3c3Ni7/foT0xG
 25RYijMSDbWYi4oTAfEh4x36AgAA
X-CMS-MailID: 20200504125416eucas1p2ab599ff4137e6c25d6847b83e7f69613
X-Msg-Generator: CA
X-RootMTR: 20200504125416eucas1p2ab599ff4137e6c25d6847b83e7f69613
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125416eucas1p2ab599ff4137e6c25d6847b83e7f69613
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125416eucas1p2ab599ff4137e6c25d6847b83e7f69613@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055419_477254_71C718DE 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgfCAxMSArKysrKystLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCmluZGV4IDVkNTBjOWUuLmY4Mjc1YzggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCkBAIC00ODEsNyArNDgxLDcgQEAgc3RhdGljIGludCBy
YWRlb25fdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKIHsKIAlzdHJ1Y3Qg
cmFkZW9uX2RldmljZSAqcmRldiA9IHJhZGVvbl9nZXRfcmRldih0dG0tPmJkZXYpOwogCXN0cnVj
dCByYWRlb25fdHRtX3R0ICpndHQgPSAodm9pZCAqKXR0bTsKLQl1bnNpZ25lZCBwaW5uZWQgPSAw
LCBuZW50czsKKwl1bnNpZ25lZCBwaW5uZWQgPSAwOwogCWludCByOwogCiAJaW50IHdyaXRlID0g
IShndHQtPnVzZXJmbGFncyAmIFJBREVPTl9HRU1fVVNFUlBUUl9SRUFET05MWSk7CkBAIC01MjIs
OCArNTIyLDkgQEAgc3RhdGljIGludCByYWRlb25fdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0
dG1fdHQgKnR0bSkKIAkJZ290byByZWxlYXNlX3NnOwogCiAJciA9IC1FTk9NRU07Ci0JbmVudHMg
PSBkbWFfbWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGly
ZWN0aW9uKTsKLQlpZiAobmVudHMgPT0gMCkKKwl0dG0tPnNnLT5uZW50cyA9IGRtYV9tYXBfc2co
cmRldi0+ZGV2LCB0dG0tPnNnLT5zZ2wsCisJCQkJICAgIHR0bS0+c2ctPm9yaWdfbmVudHMsIGRp
cmVjdGlvbik7CisJaWYgKHR0bS0+c2ctPm5lbnRzID09IDApCiAJCWdvdG8gcmVsZWFzZV9zZzsK
IAogCWRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHR0bS0+c2csIHR0bS0+cGFnZXMs
CkBAIC01NTQsOSArNTU1LDkgQEAgc3RhdGljIHZvaWQgcmFkZW9uX3R0bV90dF91bnBpbl91c2Vy
cHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKIAkJcmV0dXJuOwogCiAJLyogZnJlZSB0aGUgc2cgdGFi
bGUgYW5kIHBhZ2VzIGFnYWluICovCi0JZG1hX3VubWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+
c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2cocmRldi0+ZGV2
LCB0dG0tPnNnLT5zZ2wsIHR0bS0+c2ctPm9yaWdfbmVudHMsIGRpcmVjdGlvbik7CiAKLQlmb3Jf
ZWFjaF9zZ19wYWdlKHR0bS0+c2ctPnNnbCwgJnNnX2l0ZXIsIHR0bS0+c2ctPm5lbnRzLCAwKSB7
CisJZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2wsICZzZ19pdGVyLCB0dG0tPnNnLT5vcmln
X25lbnRzLCAwKSB7CiAJCXN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnNn
X2l0ZXIpOwogCQlpZiAoIShndHQtPnVzZXJmbGFncyAmIFJBREVPTl9HRU1fVVNFUlBUUl9SRUFE
T05MWSkpCiAJCQlzZXRfcGFnZV9kaXJ0eShwYWdlKTsKLS0gCjEuOS4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
