Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821BE2006C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=men6j0PCWi/KCxyZCy8HFGu05qGY5YnszJS6f4s/OXQ=; b=JX11M0FWfr/0AQ
	WnCwhnW/4pW2GmUexIbin61bJmZXbnU3aNWIeClM69Bt1ZCoWSZJgpqE+frDlJ/jMlN9DqFGFv6Gc
	COgaAyIOxa37NrFfbM6/1oosQCq4mZDePECu3pThaBSWE+8uhqNbcha0WR22Hayug7uU0F7+sS6/g
	xGu9grE+Oh163q72Wbbi+7JPSYQ5PipU55joGMU7HEFyjO0eZx1nkQ9ZvwHfgsPi/F3NI5pI851dX
	u0fVTFU7w/EULsAmfFqrWgfLwZjcBtzAtmrEzRiql6duZNFJLlkhXxzLng8wk4FyJwkgKQed+Jmf0
	qCptFJBudbDAn0zuQWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEQU-0006pM-3M; Fri, 19 Jun 2020 10:39:14 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOI-00055V-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103656euoutp01301d18626e35a178b3e1cd5c00ef61dd~Z66A2iUDh1761017610euoutp01z
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103656euoutp01301d18626e35a178b3e1cd5c00ef61dd~Z66A2iUDh1761017610euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563016;
 bh=CcvLwj30v0ZE0u3onBoCrQSZV9YR8EBATMNe+CvGifQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fnw2RHm45eJ7Mu16yM3x+Q4IMGqPOQRRXfeBEGtBRK76InbQCRpvCkGsBxcVA7cjI
 qutNgQdKOs0tQeMOc0vVY0na4JObA3cDbAeqUxzM501o63ybHpEESb6+MA+r1pbWVh
 mukr8dzcELwo/BZ762AOD7nMIkAIRJ0kNUkyaWSw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103656eucas1p2eeb35cd864c4c3ac324180a29467bd36~Z66AZc7vo2889228892eucas1p2i;
 Fri, 19 Jun 2020 10:36:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5D.8D.05997.8459CEE5; Fri, 19
 Jun 2020 11:36:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b~Z66AForP73081430814eucas1p2h;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103655eusmtrp1765c6535087319d4063a4fbdb267f94c~Z66AE9UQY0949709497eusmtrp17;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-d0-5eec95487ea4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BB.DA.06314.7459CEE5; Fri, 19
 Jun 2020 11:36:55 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103655eusmtip22bfe57e52a587852b365a94a7ce76a4a~Z65-ah3Dv2581725817eusmtip2j;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 04/36] drm: amdgpu: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:04 +0200
Message-Id: <20200619103636.11974-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+XZ2zo7LyXGKflhkDjJS8lIWhzTL8I8TRIX6V3lp6UElN21T
 ywiampVXLCtvNYYo2tS85CUnWUo6pzlLpQyXl7y1zBRcVjatzaPlf8/zfr+H533hwxH+KOqA
 R4vjaYlYGCPAuOymrl/afdT9r6EeyUqEzNZqWOQDXStKltUkc8i6ghqUnB8z2T9NdxBy6PsC
 Rj6u7GSRihfepGFogkXWT75DyUHVQ4ysfvWRQ7YvTqHHrKi0gVWMqpJXAer5soJNNS+Po9RY
 pppFPS29To2sTSJU3nA5oFo/yDAqp0EJqKX6nWe2neX6RNAx0Ym0xN33PDdKZcxixcn3XClZ
 qUVlYHpXBrDAIeEF345NszMAF+cTFQA2548gjDEAOH6rFDBmCcC+31pkM/KjWrZBlQPYNtkB
 /kVGDUrUTGGEJ8yYz8DM2pZIA7A729IMIUQpAkt1baZGHLchAmBrcYiZYRO7oWxJwzFrHnEE
 tuQWs5k2R1hZ+3K92YLwhXM32lGGsYaawql1BjExqY3F6xtBYpUD5TmFGBP2h9XpGhajbeAX
 dQOH0Ttgb14WmwmkAjihreYwJgvAwZQCwFDeUKddwcybIsReWKNyZ8Z+sH8mZX0MCSs4PG/N
 LGEF7zblI8yYB2/f5DO0MyxSP/lX2/5mYAOhoFHjmQucirZcU7TlmqL/tQqAKIE9nSAVRdLS
 /WL6sptUKJImiCPdwmNF9cD063rX1IZnQGW80AEIHAgseZ+D5kL5qDBRmiTqABBHBLa84329
 oXxehDDpKi2JDZMkxNDSDrAdZwvseQdK9CF8IlIYT1+k6ThasvnKwi0cZCD7mwyfPuzuijj9
 1OmPVvjMckVrtNHlEV5+ujxb2egR4ZaalG6rONVd6XQoXraaEpNO5Z5rWminxMFyx1n0ZJrs
 2qCrc6FIH9jzfrHuYFDVXJ3YLuzTiYLwvvnO2Znue2q9Euu5RHQF+k/He3AyXwd4+WVZBfYX
 BBvsAlosygRsaZTQ0wWRSIV/AZnPp0BxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xe7ruU9/EGcyZom3Re+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWaw9
 cpfd4uCHJ6wOfB6tl/6yeayZt4bRY++3BSwe2789YPW4332cyWPzknqP2/8eM3tMvrGc0WP3
 zQY2j74tqxg9Pm+SC+CO0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJ
 Sc3JLEst0rdL0MvY9aeHqWCeesWiXxtYGxifKnQxcnJICJhIfF/bwNzFyMUhJLCUUaKxbz8j
 REJG4uS0BlYIW1jiz7UuNoiiT4wSF082M4Mk2AQMJbreQiREBDoZJaZ1f2QHcZgF1jBL3Pu+
 nB2kSlggQOLXp/VgY1kEVCUaPp8Ei/MK2ErsnDCbBWKFvMTqDQfApnIK2Em8bjkItloIqGb5
 gvfMEPWCEidnPgGq5wBaoC6xfp4QSJgZqLV562zmCYyCs5BUzUKomoWkagEj8ypGkdTS4tz0
 3GJDveLE3OLSvHS95PzcTYzAGN527OfmHYyXNgYfYhTgYFTi4X0R8jpOiDWxrLgy9xCjBAez
 kgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYFem8gsJZqcD0wveSXxhqaG5haWhubG5sZmFkri
 vB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGA2lPs11kDv+c17Dslqf3gmd28VkrzGJHXOzMMl7
 o3Sp4ODx1TtZilv9haawpr15b5decNdNYpfsinnvjD9vMVt2toRRs7fs4enF3aJKvusei/MF
 z+QK0/fQiZvwxDno1FReNlX1yzEXziutOdqSVbGGbSN7PfODhyLFcpespnMquD7wKVhSpsRS
 nJFoqMVcVJwIAM3A34H3AgAA
X-CMS-MailID: 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b
X-Msg-Generator: CA
X-RootMTR: 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103655eucas1p28ea4bf59428550217c8962666d6f077b
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103655eucas1p28ea4bf59428550217c8962666d6f077b@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033658_967242_973D2AD3 
X-CRM114-Status: GOOD (  16.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
X21nci5jCmluZGV4IGQzOTllNTg5MzE3MC4uYzI4MWFhMTNmNWVjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdnJhbV9tZ3IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdnJhbV9tZ3IuYwpAQCAtNDc3LDExICs0NzcsMTEgQEAg
aW50IGFtZGdwdV92cmFtX21ncl9hbGxvY19zZ3Qoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYs
CiAJaWYgKHIpCiAJCWdvdG8gZXJyb3JfZnJlZTsKIAotCWZvcl9lYWNoX3NnKCgqc2d0KS0+c2ds
LCBzZywgbnVtX2VudHJpZXMsIGkpCisJZm9yX2VhY2hfc2d0YWJsZV9zZygoKnNndCksIHNnLCBp
KQogCQlzZy0+bGVuZ3RoID0gMDsKIAogCW5vZGUgPSBtZW0tPm1tX25vZGU7Ci0JZm9yX2VhY2hf
c2coKCpzZ3QpLT5zZ2wsIHNnLCBudW1fZW50cmllcywgaSkgeworCWZvcl9lYWNoX3NndGFibGVf
c2coKCpzZ3QpLCBzZywgaSkgewogCQlwaHlzX2FkZHJfdCBwaHlzID0gKG5vZGUtPnN0YXJ0IDw8
IFBBR0VfU0hJRlQpICsKIAkJCWFkZXYtPmdtYy5hcGVyX2Jhc2U7CiAJCXNpemVfdCBzaXplID0g
bm9kZS0+c2l6ZSA8PCBQQUdFX1NISUZUOwpAQCAtNTAxLDcgKzUwMSw3IEBAIGludCBhbWRncHVf
dnJhbV9tZ3JfYWxsb2Nfc2d0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCXJldHVybiAw
OwogCiBlcnJvcl91bm1hcDoKLQlmb3JfZWFjaF9zZygoKnNndCktPnNnbCwgc2csIG51bV9lbnRy
aWVzLCBpKSB7CisJZm9yX2VhY2hfc2d0YWJsZV9zZygoKnNndCksIHNnLCBpKSB7CiAJCWlmICgh
c2ctPmxlbmd0aCkKIAkJCWNvbnRpbnVlOwogCkBAIC01MzIsNyArNTMyLDcgQEAgdm9pZCBhbWRn
cHVfdnJhbV9tZ3JfZnJlZV9zZ3Qoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZzsKIAlpbnQgaTsKIAotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywg
c2d0LT5uZW50cywgaSkKKwlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpCiAJCWRtYV91
bm1hcF9yZXNvdXJjZShkZXYsIHNnLT5kbWFfYWRkcmVzcywKIAkJCQkgICBzZy0+bGVuZ3RoLCBk
aXIsCiAJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Ci0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
