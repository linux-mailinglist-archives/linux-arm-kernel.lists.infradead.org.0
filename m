Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534B61FF760
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjeUfK7GZCDu+QOLNxI/IcLRjFNiWx/bg1WlexcufvY=; b=gyJbrI8G0zuoER
	CSNdsAFfTjGjhYML+0LaJG6y2JW2jbICOPfxGVpwe1mMO+V/HoBei16mLhxX4Ib/g+DR6pBnALG5T
	1Rj/T5cAvCOEphBmbzNuamZdbGFWaysA7LlYAKEAT+au5CqoGVc+yX55T6Evw0zVR1nvfy2ArqweU
	cWCBm4uc+nQKsoYbPzC7CuGi5/iTVcStLIazJDvbkTBIk2RlbjIb3JXosP82emj719MiEjJmTlsXD
	IYgXl5F/m4HcPWnQJs5rd+sjadufLHPrBaIA+A8Ld2WhGaw2qvNUyzWEB8y6j5tG5lXVaSYSjD2+s
	kWCptBiK3TLIUnOujnjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwf6-0004au-SD; Thu, 18 Jun 2020 15:41:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweM-00049U-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154017euoutp02642f11a9c2c6c7ece1bc27c808f1d7e4~ZrZl53nHl1314513145euoutp021
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154017euoutp02642f11a9c2c6c7ece1bc27c808f1d7e4~ZrZl53nHl1314513145euoutp021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494817;
 bh=2j4VOIyj+ZqS7pbMauJtR1DqpO1spnMvG+cpfDpVzMs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VXK59hSV3C2p2jwLOvpfWqQce2bP+CGeMxVTJma+HC99yzKX8irhHsDdJNv1nTjCp
 uhqUhgfrKcEp8kB9iBoL4X75FocCyrmp4dCg6MU6WbP9jDVOo/dpTkC1qSO7hIeHj9
 iJf6RvspOX7fgz5sAwPnjEyLu/1MoOFw4jN1xLLU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154017eucas1p2279d84a738dd9298e930e52c5efcc17e~ZrZlVclah2502725027eucas1p21;
 Thu, 18 Jun 2020 15:40:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EC.0F.61286.1EA8BEE5; Thu, 18
 Jun 2020 16:40:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154016eucas1p12cda9c412f9891f191cb9e997be9da26~ZrZk527A61547315473eucas1p1I;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154016eusmtrp269f3266141679068fd302e3ea7f17450~ZrZk5OVbL0370403704eusmtrp2a;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ba-5eeb8ae11c8f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E1.EE.08375.0EA8BEE5; Thu, 18
 Jun 2020 16:40:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154016eusmtip1ceb3a9fbdfde399373beba80c1e11c50~ZrZkJ2UT40709107091eusmtip1q;
 Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 04/36] drm: amdgpu: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:25 +0200
Message-Id: <20200618153956.29558-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURTN63TaAWkzFBKegAJ1QQlrAB1FEYkm86VGP0hMRCoMi9JCWhYx
 JlQISiooQiIIIpXUgKyKUFksW8SCQIGyCAEFBD8AQcOWsNaWAeTvnHPPeefe5GEIbxS1xMJE
 UZRYJAjns4yZyi8rGqdx2Yy/a7uCS6Rq2hjE85E6lHhT/oBNvM8qR4nZUT3VKZ8hRN/SHxbx
 triFQcgbvIjFvnEGUTExgBK9tS9ZROnn72yi6e8k6sMlk7QbLLLkVQkgVctyJvlxeQwlRx+r
 GeQHRTw5vDmBkBmDBYCsG5KyyCeVRYBcqDh4Zd914zNBVHhYDCV28Q4wDlWqNkBklv3dfIWf
 FIzayoARBnEPKHuUzpABY4yHFwKYNKdj02QRwPr1cSZNFgDMnVtl70R6kssQelAAoLYzhbUb
 0U2pgMHFwt2gbFbGMmBzPAnA1lQTgwnBFQhUjNQzDQMz/CrMWUvbepaJH4GVGfmIAXPws/Dr
 ylMmXWcDi981bulGuDdsVyehtMcUtr2Y3PIgek9iVc7WShDfYMOuto7t8AWo+bmwvbcZnFZX
 bmNrqKvJY9CBRADHNaVsmqQA2JuQBWiXFxzRrOpvwPQVx2F5rQstn4fT8+WoQYY4Fw7OmtJL
 cGG6MhOhZQ5Mfsij3Udhtrpst7apW4vQmIQNHclIGrDL3nNO9p5zsv/3ygFSBCyoaIkwhJK4
 iahYZ4lAKIkWhTgHRggrgP7btW+q56vBkvZWM8AxwDfh+PjN+PNQQYwkTtgMIIbwzTm+ne3+
 PE6QIO4eJY64KY4OpyTNwApj8i047vlTN3h4iCCKukNRkZR4Z8rAjCylwNHj9IHhIaz0csTF
 zCGnH6lSVBpSNxZQKLrta0Y5ULGtNodPRX9r/D2hq/RVVcd5WtnJTxpNulpaxq90Kep/naix
 trPoX8wzcffEg1U93v2fzq3bxm8o7b0cXzvODWoHVnMD87XX+DnN3ABlQsshoeKYyrwzeH/3
 /TWTqkugYpLPlIQK3BwQsUTwD1/fY55yAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xu7oPul7HGbRN17XoPXeSyWLand2s
 FkvXN7JbbJyxntXi7X0g9/+2icwWV76+Z7NYufook8WC/dYWX648ZLLY9Pgaq8XlXXPYLNYe
 uctucfDDE1YHPo/WS3/ZPNbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7
 ZgObR9+WVYwenzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mk
 pOZklqUW6dsl6GVs2/uXsWCGesWiJeENjPcVuhg5OSQETCQudqxj7mLk4hASWMooseBRByNE
 Qkbi5LQGVghbWOLPtS42iKJPjBJn+pewgCTYBAwlut5CJEQEOhklpnV/ZAdxmAXWMEvc+74c
 yOHgEBYIkLi3oACkgUVAVWLL5EXMIDavgK3EqZ/9LBAb5CVWbzgAFucUsJM4fbwVbLMQUM3z
 D21sEPWCEidnPmEBGcksoC6xfp4QSJgZqLV562zmCYyCs5BUzUKomoWkagEj8ypGkdTS4tz0
 3GJDveLE3OLSvHS95PzcTYzA+N127OfmHYyXNgYfYhTgYFTi4X0R8jpOiDWxrLgy9xCjBAez
 kgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYFem8gsJZqcD0wteSXxhqaG5haWhubG5sZmFkri
 vB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGAWcPa/3+e5vuzzdclfL0b1vcld032429InnMfGV
 XGFt5qNkUXujLCsgMM7s7v/rQieuqPAsqTodu1fR1IvXeQPnfUnmE7m6U8MjWcp9TiouuRWU
 9Wn/apn/rbVOLGoi3zccTe95r/l8ulSD/J3y/zL9F18tfSCmGRjHeaRhj8rUnI4WTg8pJZbi
 jERDLeai4kQASBqYOvUCAAA=
X-CMS-MailID: 20200618154016eucas1p12cda9c412f9891f191cb9e997be9da26
X-Msg-Generator: CA
X-RootMTR: 20200618154016eucas1p12cda9c412f9891f191cb9e997be9da26
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154016eucas1p12cda9c412f9891f191cb9e997be9da26
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154016eucas1p12cda9c412f9891f191cb9e997be9da26@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084022_868759_14F57212 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jICB8IDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdHRtLmMgICAgICB8IDkgKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdnJhbV9tZ3IuYyB8IDggKysrKy0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kbWFfYnVmLmMKaW5kZXggNDNkOGVkN2RiZDAwLi41MTljZTQ0MjdmY2UgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwpAQCAtMzA3LDgg
KzMwNyw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmFtZGdwdV9kbWFfYnVmX21hcChzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJCWlmIChJU19FUlIoc2d0KSkKIAkJCXJl
dHVybiBzZ3Q7CiAKLQkJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywgZGlyLAotCQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKQor
CQlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwKKwkJCQkgICAgRE1B
X0FUVFJfU0tJUF9DUFVfU1lOQykpCiAJCQlnb3RvIGVycm9yX2ZyZWU7CiAJCWJyZWFrOwogCkBA
IC0zNDksNyArMzQ5LDcgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5tYXAoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2
ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CiAKIAlpZiAoc2d0LT5zZ2wtPnBhZ2Vf
bGluaykgewotCQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRz
LCBkaXIpOworCQlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApOwog
CQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtmcmVlKHNndCk7CiAJfSBlbHNlIHsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwppbmRleCA1MTI5YTk5NmU5NDEuLjk3ZmI3M2U1
YTZhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTAyNSw3
ICsxMDI1LDYgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0
dG1fdHQgKnR0bSkKIHsKIAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1f
YWRldih0dG0tPmJkZXYpOwogCXN0cnVjdCBhbWRncHVfdHRtX3R0ICpndHQgPSAodm9pZCAqKXR0
bTsKLQl1bnNpZ25lZCBuZW50czsKIAlpbnQgcjsKIAogCWludCB3cml0ZSA9ICEoZ3R0LT51c2Vy
ZmxhZ3MgJiBBTURHUFVfR0VNX1VTRVJQVFJfUkVBRE9OTFkpOwpAQCAtMTA0MCw5ICsxMDM5LDgg
QEAgc3RhdGljIGludCBhbWRncHVfdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0
bSkKIAkJZ290byByZWxlYXNlX3NnOwogCiAJLyogTWFwIFNHIHRvIGRldmljZSAqLwotCXIgPSAt
RU5PTUVNOwotCW5lbnRzID0gZG1hX21hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRt
LT5zZy0+bmVudHMsIGRpcmVjdGlvbik7Ci0JaWYgKG5lbnRzID09IDApCisJciA9IGRtYV9tYXBf
c2d0YWJsZShhZGV2LT5kZXYsIHR0bS0+c2csIGRpcmVjdGlvbiwgMCk7CisJaWYgKHIpCiAJCWdv
dG8gcmVsZWFzZV9zZzsKIAogCS8qIGNvbnZlcnQgU0cgdG8gbGluZWFyIGFycmF5IG9mIHBhZ2Vz
IGFuZCBkbWEgYWRkcmVzc2VzICovCkBAIC0xMDczLDggKzEwNzEsNyBAQCBzdGF0aWMgdm9pZCBh
bWRncHVfdHRtX3R0X3VucGluX3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQogCQlyZXR1cm47
CiAKIAkvKiB1bm1hcCB0aGUgcGFnZXMgbWFwcGVkIHRvIHRoZSBkZXZpY2UgKi8KLQlkbWFfdW5t
YXBfc2coYWRldi0+ZGV2LCB0dG0tPnNnLT5zZ2wsIHR0bS0+c2ctPm5lbnRzLCBkaXJlY3Rpb24p
OwotCisJZG1hX3VubWFwX3NndGFibGUoYWRldi0+ZGV2LCB0dG0tPnNnLCBkaXJlY3Rpb24sIDAp
OwogCXNnX2ZyZWVfdGFibGUodHRtLT5zZyk7CiAKICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1f
QU1ER1BVX1VTRVJQVFIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdnJhbV9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92cmFt
X21nci5jCmluZGV4IGQzOTllNTg5MzE3MC4uNzU0OTVhNzg5OGI5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdnJhbV9tZ3IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdnJhbV9tZ3IuYwpAQCAtNDc3LDExICs0NzcsMTEgQEAg
aW50IGFtZGdwdV92cmFtX21ncl9hbGxvY19zZ3Qoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYs
CiAJaWYgKHIpCiAJCWdvdG8gZXJyb3JfZnJlZTsKIAotCWZvcl9lYWNoX3NnKCgqc2d0KS0+c2ds
LCBzZywgbnVtX2VudHJpZXMsIGkpCisJZm9yX2VhY2hfc2d0YWJsZV9zZygqc2d0LCBzZywgaSkK
IAkJc2ctPmxlbmd0aCA9IDA7CiAKIAlub2RlID0gbWVtLT5tbV9ub2RlOwotCWZvcl9lYWNoX3Nn
KCgqc2d0KS0+c2dsLCBzZywgbnVtX2VudHJpZXMsIGkpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX3Nn
KCpzZ3QsIHNnLCBpKSB7CiAJCXBoeXNfYWRkcl90IHBoeXMgPSAobm9kZS0+c3RhcnQgPDwgUEFH
RV9TSElGVCkgKwogCQkJYWRldi0+Z21jLmFwZXJfYmFzZTsKIAkJc2l6ZV90IHNpemUgPSBub2Rl
LT5zaXplIDw8IFBBR0VfU0hJRlQ7CkBAIC01MDEsNyArNTAxLDcgQEAgaW50IGFtZGdwdV92cmFt
X21ncl9hbGxvY19zZ3Qoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJcmV0dXJuIDA7CiAK
IGVycm9yX3VubWFwOgotCWZvcl9lYWNoX3NnKCgqc2d0KS0+c2dsLCBzZywgbnVtX2VudHJpZXMs
IGkpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX3NnKCpzZ3QsIHNnLCBpKSB7CiAJCWlmICghc2ctPmxl
bmd0aCkKIAkJCWNvbnRpbnVlOwogCkBAIC01MzIsNyArNTMyLDcgQEAgdm9pZCBhbWRncHVfdnJh
bV9tZ3JfZnJlZV9zZ3Qoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJc3RydWN0IHNjYXR0
ZXJsaXN0ICpzZzsKIAlpbnQgaTsKIAotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5u
ZW50cywgaSkKKwlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpCiAJCWRtYV91bm1hcF9y
ZXNvdXJjZShkZXYsIHNnLT5kbWFfYWRkcmVzcywKIAkJCQkgICBzZy0+bGVuZ3RoLCBkaXIsCiAJ
CQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
