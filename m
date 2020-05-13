Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABAC1D15A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRbOV41s8MnA4PaL8Z3EEESjHkOEmBwgWR9T6onghV4=; b=OKZcs4IV4bQOfr
	YyMpMMonRbp4QOgnjtWvm7Z1zBkdoLTCLbKR0vFwAXXBuTEBgJklJ+aHXW0FdPQ42EwWhoeE+IXYP
	PV5tq+WrzvX9qNdj+k/uBj9nFYKVRIf8yOMFg/JfX1Ow+9b/t1/6FUivXBmd7M+R6sBg+Sb29573d
	IVungc0CNUOQJ6Tk+5Cb1FLJnzR1+JO2VVWvuUeeZi+iegIbCrr0mLYKv2uazr9fyPBGvGSVIUGlO
	E2iDQ12GZlhGpzPl0KvogOFg2enKAEb/UF5oYbwANB7aTQgWV4TyZSMAje6ueX0TEIUyozES1Z4+v
	ZKMxo5ihQzWFiax6uFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrYX-0006Ch-UJ; Wed, 13 May 2020 13:36:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVP-0001Ne-Bs
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133301euoutp01a0b448267935f93065396344508d03cd~OmcMoWmKu2146121461euoutp016
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133301euoutp01a0b448267935f93065396344508d03cd~OmcMoWmKu2146121461euoutp016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376782;
 bh=NUt9gf2d68JnWtBJYJdP52omh5VZlWjtysYT9fjiA6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pBRM+zjbTwY5Hx871iQ8CbX0tLKcdMGj4BsAn5L++ZIo1mf9VatvlbcGBsZ9s1mEA
 OrmohXB5J4/2DF4ahpwE17rwbKpRytYPAub2ivGtuQOjV16OKaGx+I1S3TbQs5PsRt
 flauH4qFyWZRdbvJw3VUPGwZ+1HwZy8NE2HJZG8s=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133301eucas1p26764c6cded8c947eb41e8ef72f7bc649~OmcMXEJl91007610076eucas1p28;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id EE.C8.60698.D07FBBE5; Wed, 13
 May 2020 14:33:01 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133301eucas1p244d094c774ad0efd5ea9125747d5cb1b~OmcL9tIGm2681326813eucas1p2B;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133301eusmtrp14dc365d5bc7aba802842f4737fd35aed~OmcL8_DVa0994509945eusmtrp1j;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-b6-5ebbf70d3518
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 22.37.07950.D07FBBE5; Wed, 13
 May 2020 14:33:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133300eusmtip1b53f1498b7191853981c2707504c3fea~OmcLN5B6o3239232392eusmtip1b;
 Wed, 13 May 2020 13:33:00 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 07/38] drm: amdgpu: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:14 +0200
Message-Id: <20200513133245.6408-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTYRSF83eWDtU2QyHhZwlCjRsJW/BhIqgYeZgHF2JIjCaiFSaAsqXD
 IiZGEFGCgFRQEIhAraCAsrYgDSCNUonYIJTFWAUCamgsGtlcWGwZQN7Oufc7c/6bDIGIRzEn
 Iio2gZHFSqMluABVd//WewoXNKE+coOEytH38Kh7Rg1GPapL41MNRXUYZR612BW1HKEMc99x
 6knNKx5V3ulPzRrGeVTjxBBGDbSV4tTTlx/5VNePSSxQRGf0L+F07YNaQLfPl6N0y/wYRo/e
 0vHoJuVV+sPyBELnj1QBWvM+Fadzm6sBPdPoGrzltCAgnImOSmJk3gfOCSIbh0wgvmv3Jfnf
 IjwV/HTPAjYEJPfCGVUvLwsICDH5GMCVuzfXzCyAfV9NGGdmACxRfOOtR0oKplFuUQVgQWUD
 thFZqWhZpXDSF2aZs3CrticzAHyds9UKIaQSgUpjB2pd2JEnoMHYsxpAyR1QPjC4GhCSAdBQ
 uIhxddtgTf0LxKptyP3QZOxEOcYW9tyfXNWIhUlXlSDWAkj+5kPT0iecCwfBPEUHwmk7aNI1
 8zntAt/kZ6NcIB3Acf1TPmeyARy4VgQ4yh8a9X8sXyIsFXtgXZs3Nz4EtUrrzYRFi+CI2ZZ7
 hAjeURci3FgIM2+IOXonLNY926jt6utfQ2hY0inJA+7Fm64p3nRN8f/acoBUAwcmkY2JYFi/
 WCbZi5XGsImxEV5hcTGNwPLbvVnWzbWCjsXzWkASQLJVODasCRVj0iQ2JUYLIIFI7IXH6iwj
 Ybg05TIjizsrS4xmWC1wJlCJg9BPMXVGTEZIE5iLDBPPyNa3PMLGKRXoK1Saz7LlKUeV0S1w
 qOlLcK4hfWGXZy01uFSoUJon4j1DXGgHo+LL2+dB7ZnQ1edq2pXcC2anYJEzqvh1XfA6YG5f
 TtTJ/vxnvf3zpeNqFgk6rDuVLPcs6uZ5VE61um0/EhpWWfYw8s+w48ERg3tBvTx+/rhIcftd
 VdnRkGlnCcpGSn09EBkr/QfdZI7GcgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7q833fHGayaw2PRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWaw9
 cpfd4uCHJ6wOfB6tl/6yeayZt4bRY++3BSwe2789YPW4332cyWPzknqP2/8eM3tMvrGc0WP3
 zQY2j74tqxg9Pm+SC+CO0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJ
 Sc3JLEst0rdL0MvYdO0VY8FBjYqJv2ewNTB+Uuxi5OSQEDCRmD3lHQuILSSwlFFi0zEXiLiM
 xMlpDawQtrDEn2tdbF2MXEA1nxglNm6cwA6SYBMwlOh6C5EQEehklJjW/ZEdxGEWWMMsce/7
 crAqYYEAiaWbf4HZLAKqEhMvX2UDsXkFbCSuTP8DtUJeYvWGA8wgNqeArcSrO/uhTsqX2Lt4
 H1S9oMTJmU+A4hxAC9Ql1s8TAgkzA7U2b53NPIFRcBaSqlkIVbOQVC1gZF7FKJJaWpybnlts
 pFecmFtcmpeul5yfu4kRGMHbjv3csoOx613wIUYBDkYlHl6LW7vjhFgTy4orcw8xSnAwK4nw
 +q0HCvGmJFZWpRblxxeV5qQWH2I0BXptIrOUaHI+MLnklcQbmhqaW1gamhubG5tZKInzdggc
 jBESSE8sSc1OTS1ILYLpY+LglGpg1K6sO7fqspPH3vW7xNcndwUn380sfl1/5cpLdt5XXVz/
 H38O9T4Xvn51pI1rk9qBbBGWj2GvxPdZR01/MvFB/I1Vf5T3Scu1MhqG37S8Y1OjGZpb5/lt
 TtmxIgthq5xEjXbJD9lRS2eGL1aX3vR+5ZIvUxwObD5zL/1p8tXeea+ZfNrNzJo1lFiKMxIN
 tZiLihMBe/KcdfYCAAA=
X-CMS-MailID: 20200513133301eucas1p244d094c774ad0efd5ea9125747d5cb1b
X-Msg-Generator: CA
X-RootMTR: 20200513133301eucas1p244d094c774ad0efd5ea9125747d5cb1b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133301eucas1p244d094c774ad0efd5ea9125747d5cb1b
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133301eucas1p244d094c774ad0efd5ea9125747d5cb1b@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063303_549124_E6F84FC1 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyAgfCA2ICsrKy0tLQog
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICAgfCA5ICsrKy0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZyYW1fbWdyLmMgfCA4ICsrKyst
LS0tCiAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCmluZGV4IDQzZDhl
ZDcuLjUxOWNlNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYwpAQCAtMzA3LDggKzMwNyw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmFtZGdwdV9k
bWFfYnVmX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJCWlmIChJU19F
UlIoc2d0KSkKIAkJCXJldHVybiBzZ3Q7CiAKLQkJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFj
aC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJCSAgICAgIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpKQorCQlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRp
ciwKKwkJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpCiAJCQlnb3RvIGVycm9yX2ZyZWU7
CiAJCWJyZWFrOwogCkBAIC0zNDksNyArMzQ5LDcgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9i
dWZfdW5tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCXN0cnVjdCBhbWRn
cHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CiAKIAlpZiAo
c2d0LT5zZ2wtPnBhZ2VfbGluaykgewotCQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+
c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOworCQlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwg
c2d0LCBkaXIsIDApOwogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtmcmVlKHNndCk7CiAJfSBl
bHNlIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwppbmRleCA5Y2JlY2Q1
Li41N2E1ZDU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCkBAIC0x
MDI0LDcgKzEwMjQsNiBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRfcGluX3VzZXJwdHIoc3Ry
dWN0IHR0bV90dCAqdHRtKQogewogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1
X3R0bV9hZGV2KHR0bS0+YmRldik7CiAJc3RydWN0IGFtZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lk
ICopdHRtOwotCXVuc2lnbmVkIG5lbnRzOwogCWludCByOwogCiAJaW50IHdyaXRlID0gIShndHQt
PnVzZXJmbGFncyAmIEFNREdQVV9HRU1fVVNFUlBUUl9SRUFET05MWSk7CkBAIC0xMDM5LDkgKzEw
MzgsOCBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRfcGluX3VzZXJwdHIoc3RydWN0IHR0bV90
dCAqdHRtKQogCQlnb3RvIHJlbGVhc2Vfc2c7CiAKIAkvKiBNYXAgU0cgdG8gZGV2aWNlICovCi0J
ciA9IC1FTk9NRU07Ci0JbmVudHMgPSBkbWFfbWFwX3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2ds
LCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsKLQlpZiAobmVudHMgPT0gMCkKKwlyID0gZG1h
X21hcF9zZ3RhYmxlKGFkZXYtPmRldiwgdHRtLT5zZywgZGlyZWN0aW9uLCAwKTsKKwlpZiAocikK
IAkJZ290byByZWxlYXNlX3NnOwogCiAJLyogY29udmVydCBTRyB0byBsaW5lYXIgYXJyYXkgb2Yg
cGFnZXMgYW5kIGRtYSBhZGRyZXNzZXMgKi8KQEAgLTEwNzIsOCArMTA3MCw3IEBAIHN0YXRpYyB2
b2lkIGFtZGdwdV90dG1fdHRfdW5waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiAJCXJl
dHVybjsKIAogCS8qIHVubWFwIHRoZSBwYWdlcyBtYXBwZWQgdG8gdGhlIGRldmljZSAqLwotCWRt
YV91bm1hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVj
dGlvbik7Ci0KKwlkbWFfdW5tYXBfc2d0YWJsZShhZGV2LT5kZXYsIHR0bS0+c2csIGRpcmVjdGlv
biwgMCk7CiAJc2dfZnJlZV90YWJsZSh0dG0tPnNnKTsKIAogI2lmIElTX0VOQUJMRUQoQ09ORklH
X0RSTV9BTURHUFVfVVNFUlBUUikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV92cmFtX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3ZyYW1fbWdyLmMKaW5kZXggZDM5OWU1OC4uNzU0OTVhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZyYW1fbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3ZyYW1fbWdyLmMKQEAgLTQ3NywxMSArNDc3LDExIEBAIGludCBh
bWRncHVfdnJhbV9tZ3JfYWxsb2Nfc2d0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCWlm
IChyKQogCQlnb3RvIGVycm9yX2ZyZWU7CiAKLQlmb3JfZWFjaF9zZygoKnNndCktPnNnbCwgc2cs
IG51bV9lbnRyaWVzLCBpKQorCWZvcl9lYWNoX3NndGFibGVfc2coKnNndCwgc2csIGkpCiAJCXNn
LT5sZW5ndGggPSAwOwogCiAJbm9kZSA9IG1lbS0+bW1fbm9kZTsKLQlmb3JfZWFjaF9zZygoKnNn
dCktPnNnbCwgc2csIG51bV9lbnRyaWVzLCBpKSB7CisJZm9yX2VhY2hfc2d0YWJsZV9zZygqc2d0
LCBzZywgaSkgewogCQlwaHlzX2FkZHJfdCBwaHlzID0gKG5vZGUtPnN0YXJ0IDw8IFBBR0VfU0hJ
RlQpICsKIAkJCWFkZXYtPmdtYy5hcGVyX2Jhc2U7CiAJCXNpemVfdCBzaXplID0gbm9kZS0+c2l6
ZSA8PCBQQUdFX1NISUZUOwpAQCAtNTAxLDcgKzUwMSw3IEBAIGludCBhbWRncHVfdnJhbV9tZ3Jf
YWxsb2Nfc2d0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCXJldHVybiAwOwogCiBlcnJv
cl91bm1hcDoKLQlmb3JfZWFjaF9zZygoKnNndCktPnNnbCwgc2csIG51bV9lbnRyaWVzLCBpKSB7
CisJZm9yX2VhY2hfc2d0YWJsZV9zZygqc2d0LCBzZywgaSkgewogCQlpZiAoIXNnLT5sZW5ndGgp
CiAJCQljb250aW51ZTsKIApAQCAtNTMyLDcgKzUzMiw3IEBAIHZvaWQgYW1kZ3B1X3ZyYW1fbWdy
X2ZyZWVfc2d0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCXN0cnVjdCBzY2F0dGVybGlz
dCAqc2c7CiAJaW50IGk7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMs
IGkpCisJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKQogCQlkbWFfdW5tYXBfcmVzb3Vy
Y2UoZGV2LCBzZy0+ZG1hX2FkZHJlc3MsCiAJCQkJICAgc2ctPmxlbmd0aCwgZGlyLAogCQkJCSAg
IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
