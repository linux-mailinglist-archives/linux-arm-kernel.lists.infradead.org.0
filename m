Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26431C3A21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHzHLT7BHrnNK8C0hdnUbmoECb3rZYDw/BNQeH5uNI0=; b=S0d52QZlgrrI5t
	VXZRV4fOpS8fYbc7oy8YgI5HQVZmAnf2sY8LVYu50sLziKoehdLzZ5R/qGSKngZ1T1n3oHlkKyyF4
	gkJGeDxcsmedZx84CPZi1rGP05K/guV426a3cbyoc8d+N0/kXUcO/gVb1joA/MWnehxw9wBzJpk00
	i8ALBdx6n1Hl9U+rWpViuYMWhC5DFIdq+BAceXX1qsUhbu9UlYvhen6ENqbJM5qQjk38/6nqj3cB3
	gHbZVOMkSduewhdQ7v+nyL2Gb4PKHQcrWKCrzxqYSHRUeYEtMpDc4UFHWjA6u7Xivhl/COx4UjMMH
	nqoHANYkhRyayp1yBTYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVacC-0002X9-Q4; Mon, 04 May 2020 12:54:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabs-0002VO-NC
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125411euoutp017a1424d7a031bb13879b60d54acdc726~L1GtrR2QV2809928099euoutp017
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125411euoutp017a1424d7a031bb13879b60d54acdc726~L1GtrR2QV2809928099euoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596851;
 bh=eR8oFUiJZMXOv3u7xfQ4au5Namlj9CitJYXcY2fG1iQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=stb/zMtXRIhrrjQhXHaNJFyd6VOrSH0fT6eprQ0sW32pmFweAaElI4sW16IHuztEO
 H025n7qaEYKhpdblpCiayhR3U160IvzIX4oRhP/yUlB7xBaP0mqlFYvgVhDiOsu7KP
 yIU5ucMlqJUPs6Pm/XusXgLcp3FoQP9H9rIMg/GE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125411eucas1p15bd4342b7b927fff40a0f083ac880ab7~L1GtZhilf0157201572eucas1p1v;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C7.D2.60679.27010BE5; Mon,  4
 May 2020 13:54:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125410eucas1p21e7a58138893b2fd1d599832357c9f21~L1GtCR_Af2430724307eucas1p2g;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125410eusmtrp161ea359617c9a2dd746f0d10e93662c3~L1GtBN1qP2497724977eusmtrp1S;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-92-5eb0107239a9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 13.69.08375.27010BE5; Mon,  4
 May 2020 13:54:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125409eusmtip256d96640042a910976e7d8bad704c7e0~L1GsSxleE0241702417eusmtip2G;
 Mon,  4 May 2020 12:54:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/21] drm: amdgpu: fix sg_table nents vs. orig_nents misuse
Date: Mon,  4 May 2020 14:53:40 +0200
Message-Id: <20200504125359.5678-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO7edrWbHKfiWpTTMKCi7SBzoQkE/jkSQ9SeizJUnjZzKjrMs
 KtPWZWYXR2tqlJWleZtOU1llZdY0y2JazNLMC5ahZGyzu7V5svr3PM/7PN/zvvDRuKKfnE7v
 SkjmNQmqeCUlI2oefX02X2AqohZef4zYrNZmjDV23iLZa+bDErbSZCbZ4W4P/VVzFmcLXM9I
 tt39kWJvlDzE2Py7y1hXew/GWvpekmyb9QLFljV2Sdj7I/3kqqmczv6T4kovliLuzmg+wdWO
 viW57kwbxlUVHOJej/XhnMFRiLhbHWkUd6q6GHFOS9D6yZtly2P4+F0pvCZsZbQs7kRLOpHU
 DnvtpmxJGnrjr0dSGphwqO1xS/RIRiuYIgTdLhMhEheCwvIiJBInAndxJjURMTqz/0QKEYw9
 qEd/I/ZK70RKU8wi0A/rxxP+jA5BU9YUrwlnXuBQWvCK9A78mEgoamocNxHMbDBcfkJ4sZxZ
 DrWn3ZhYFwwlFfdwPaJpKbMCcrLmiBZfaM7pH7fjHkvGzTzc+z4wOhrsludIzK6BgZwhQsR+
 8MFWLRHxDGgxnCTEQAaCntYyiUhOImhLN/1JL4PO1m+Utxln5oLZGibKq2H4nRV5ZWB8wDHs
 Ky7hA9k153FRlsPxowrRHQq5tvK/tfef23ERc3Ci/gt2Bs3K/e+c3P/Oyf3Xm4/wYhTAawV1
 LC8sTuD3LBBUakGbELtgR6Lagjx/r2XM5qpD1h/bGxBDI+UU+SanOUpBqlKEVHUDAhpX+svr
 jngkeYwqdR+vSdym0cbzQgMKpAllgHzJlcGtCiZWlczv5vkkXjMxxWjp9DRk7D1c33dto22n
 0w+rDgkU3LIS/Z2Iyu9Pjw1RdRdHmK7AyMb9zuBzC6fV2TMUIZ2x4dHEppVJB2lT1bGoAUem
 9OrovAOGPL/QwYFLOVpHXH/yPWPA2i1pvbqymSlr3EsnNUBQRVjHp46Wz5gr5PZMo7mTiGh8
 P3/DKnmQf2r4OiUhxKkWzcM1guo3Uql9VHcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOIsWRmVeSWpSXmKPExsVy+t/xe7pFAhviDCY2alj0njvJZDHtzm5W
 i6XrG9ktNs5Yz2rx9j6Q+3/bRGaLJV/Os1pc+fqezWLl6qNMFgv2W1t8ufKQyWLT42usFpd3
 zWGzWHvkLrvFwQ9PWB34PVov/WXzWDNvDaPH3m8LWDy2f3vA6nG/+ziTx+Yl9R63/z1m9ph8
 Yzmjx+6bDWwefVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2Vk
 qqRvZ5OSmpNZllqkb5egl9F5uoml4IpExaUZk9gbGO+JdDFyckgImEhM+zyJvYuRi0NIYCmj
 ROOWZ4wQCRmJk9MaWCFsYYk/17rYIIo+MUr8WPCUCSTBJmAo0fUWIiEi0MkoMa37IztIglng
 LrPEiim5ILawgL/E810vWUBsFgFVickLz4DZvAI2Etv7vzJBbJCXWL3hAHMXIwcHp4CtxMxe
 dZCwkEC+xN2n/6DKBSVOznzCAlLCLKAusX6eEMQmeYnmrbOZJzAKzkJSNQuhahaSqgWMzKsY
 RVJLi3PTc4sN9YoTc4tL89L1kvNzNzECI3nbsZ+bdzBe2hh8iFGAg1GJhzfi8/o4IdbEsuLK
 3EOMEhzMSiK8O1qAQrwpiZVVqUX58UWlOanFhxhNgT6byCwlmpwPTDJ5JfGGpobmFpaG5sbm
 xmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYI8rWvno0tfb66beBz2fNTWU6t7p1S0f4
 B9eLdhu8g5z27aiT5zZQuLBCJstvJavC82lrXTg833oUMnq4R2yT4PizLDkhI0n7HndluaL6
 d4PLoplh3u/6s6tX8b7nDpk/I/PmpNeHku9MDnlcIiZh96L/pdzLvZNSDnaWyUa/fTfZQvqF
 ic9rJZbijERDLeai4kQAqK3jcPoCAAA=
X-CMS-MailID: 20200504125410eucas1p21e7a58138893b2fd1d599832357c9f21
X-Msg-Generator: CA
X-RootMTR: 20200504125410eucas1p21e7a58138893b2fd1d599832357c9f21
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125410eucas1p21e7a58138893b2fd1d599832357c9f21
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125410eucas1p21e7a58138893b2fd1d599832357c9f21@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055412_894830_808BB2EE 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDcgKysr
Ky0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICB8IDggKysr
Ky0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCmluZGV4IDQzZDhl
ZDcuLjRkZjgxM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9i
dWYuYwpAQCAtMzA3LDggKzMwNyw5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmFtZGdwdV9k
bWFfYnVmX21hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiAJCWlmIChJU19F
UlIoc2d0KSkKIAkJCXJldHVybiBzZ3Q7CiAKLQkJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFj
aC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJCSAgICAgIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpKQorCQlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRl
diwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCQkJICAgICAgZGlyLCBETUFfQVRUUl9T
S0lQX0NQVV9TWU5DKTsKKwkJaWYgKCFzZ3QtPm5lbnRzKQogCQkJZ290byBlcnJvcl9mcmVlOwog
CQlicmVhazsKIApAQCAtMzQ5LDcgKzM1MCw3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVm
X3VubWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlzdHJ1Y3QgYW1kZ3B1
X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYpOwogCiAJaWYgKHNn
dC0+c2dsLT5wYWdlX2xpbmspIHsKLQkJZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywgZGlyKTsKKwkJZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNn
bCwgc2d0LT5vcmlnX25lbnRzLCBkaXIpOwogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtmcmVl
KHNndCk7CiAJfSBlbHNlIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpp
bmRleCBlZmYxZjczLi4xZjhjNTA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdHRtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3R0bS5jCkBAIC0xMDQzLDcgKzEwNDMsNiBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRfcGlu
X3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQogewogCXN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KHR0bS0+YmRldik7CiAJc3RydWN0IGFtZGdwdV90dG1fdHQg
Kmd0dCA9ICh2b2lkICopdHRtOwotCXVuc2lnbmVkIG5lbnRzOwogCWludCByOwogCiAJaW50IHdy
aXRlID0gIShndHQtPnVzZXJmbGFncyAmIEFNREdQVV9HRU1fVVNFUlBUUl9SRUFET05MWSk7CkBA
IC0xMDU5LDggKzEwNTgsOSBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRfcGluX3VzZXJwdHIo
c3RydWN0IHR0bV90dCAqdHRtKQogCiAJLyogTWFwIFNHIHRvIGRldmljZSAqLwogCXIgPSAtRU5P
TUVNOwotCW5lbnRzID0gZG1hX21hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5z
Zy0+bmVudHMsIGRpcmVjdGlvbik7Ci0JaWYgKG5lbnRzID09IDApCisJdHRtLT5zZy0+bmVudHMg
PSBkbWFfbWFwX3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2dsLAorCQkJCSAgICB0dG0tPnNnLT5v
cmlnX25lbnRzLCBkaXJlY3Rpb24pOworCWlmICh0dG0tPnNnLT5uZW50cyA9PSAwKQogCQlnb3Rv
IHJlbGVhc2Vfc2c7CiAKIAkvKiBjb252ZXJ0IFNHIHRvIGxpbmVhciBhcnJheSBvZiBwYWdlcyBh
bmQgZG1hIGFkZHJlc3NlcyAqLwpAQCAtMTA5MSw3ICsxMDkxLDcgQEAgc3RhdGljIHZvaWQgYW1k
Z3B1X3R0bV90dF91bnBpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKIAkJcmV0dXJuOwog
CiAJLyogdW5tYXAgdGhlIHBhZ2VzIG1hcHBlZCB0byB0aGUgZGV2aWNlICovCi0JZG1hX3VubWFw
X3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsK
KwlkbWFfdW5tYXBfc2coYWRldi0+ZGV2LCB0dG0tPnNnLT5zZ2wsIHR0bS0+c2ctPm9yaWdfbmVu
dHMsIGRpcmVjdGlvbik7CiAKIAlzZ19mcmVlX3RhYmxlKHR0bS0+c2cpOwogCi0tIAoxLjkuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
