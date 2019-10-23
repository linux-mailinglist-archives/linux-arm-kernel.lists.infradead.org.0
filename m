Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FA0E2012
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qjVlaNiFVLGUr357+/6Fi6aBLo6PPZi5Xu5XtGVhAJk=; b=CQDxcMPsKALO7E
	36uYAPa72r+wXFoVddenJwqaH/aiGKfvZV0mN5oMAIdji8dxvvl7okK3JtO1D3nzlVKMCaGerclmm
	KMZIcBoSeDGMGOn2DUGbGORxjVnLf9Ylfe8XEBoB5nQH6p2FbTG5nAsaP8K0xFr9DCM8WHqhXUAjP
	JHbwdvTK2I792WCLvXn7a+byi4hJ4MD1ITSXYetebq0CUOaboQCP7gcKvfT66s+QSyKNBGuzosKyZ
	wmBK9TdFNW8PSZQrW+196+sF3sF2raunTnXnD/UBj5iUnG1j6ZN3b5bvWYWzIVjO5GZ2PCBH+K7WO
	nUvnkNpn5W+/x5ifmdnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJ3p-0001Ij-15; Wed, 23 Oct 2019 16:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJ3g-0001Hp-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:00:25 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C54020640;
 Wed, 23 Oct 2019 16:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571846424;
 bh=9unFG5jOth/SLmbsma9VXKmXB1glCuVYpFM25V1tJhc=;
 h=From:To:Cc:Subject:Date:From;
 b=bPqudU3bKvdvVC6f9Fca0bV2hsZ6QP68bieoJIzFLkljzYGj9nSOZrWDk/O/7kwZN
 KyC/Wl1UcDsjSVfBbMAekLhPO1QPblE6CB/x/9wbusmIWsKbK7p4AAQnkJkrArIJFY
 MZdFPKWP4zcmSp8OZE2h/Hr3PQsHzXCmvjYk/dwM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] clk: samsung: exynos5433: Add missing slab.h header for
 kfree()
Date: Wed, 23 Oct 2019 18:00:00 +0200
Message-Id: <20191023160000.409-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_090024_743474_21A1F1B1 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNhZ2Ugb2Yga2ZyZWUoKSByZXF1aXJlcyBzbGFiLmggaGVhZGVyLiAgT3RoZXJ3aXNlIGJ1aWxk
aW5nIG9uIHg4Nl82NAp3aXRoIENPTVBJTEVfVEVTVCBmYWlscyB3aXRoOgoKICAgIGRyaXZlcnMv
Y2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYzogSW4gZnVuY3Rpb24g4oCYZXh5bm9zNTQzM19j
bXVfcHJvYmXigJk6CiAgICBkcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDMzLmM6NTU5
ODo0OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYa2ZyZWXigJk7
IGRpZCB5b3UgbWVhbiDigJh2ZnJlZeKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVj
bGFyYXRpb25dCgpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0t
CiBkcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDMzLmMgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xr
LWV4eW5vczU0MzMuYyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5vczU0MzMuYwppbmRl
eCAwYjYwMzE2MzMxYTAuLjRiMWFhOTM4MmFkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvc2Ft
c3VuZy9jbGstZXh5bm9zNTQzMy5jCisrKyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWV4eW5v
czU0MzMuYwpAQCAtMTMsNiArMTMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgog
I2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BtX3J1
bnRpbWUuaD4KKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAKICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9jbG9jay9leHlub3M1NDMzLmg+CiAKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
