Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DB5EC2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t/vhJwOpMZhd5f2UscRhPB5MJjIOU7K4/XryMtMDJk=; b=UPOMRVk14HmgIy
	XI147ZlHNt6rc8fUDOE8Xm4mPQ7SZu0lSmv0XvpmpnqAz3FFJO7rbTAL+JjNJK6ztAu/w0PI8jxZT
	5rJ07fwcohXr5uIQSfebH149g+HTusW6Ll0oaW6gaE77Eq+BQ3w4Bjvpv/ILA3MP+d5DXoBMtk18C
	/pObiAnElG2S2LoOeBknWAMfzo2wjaa32nWmCwH591dAWnZUkf/pW0/sJQuMZHgx0UQqaGpd8eten
	4ihPAJ2nU8ZB74oBdvazA7+D9Xzyjhe3tuJvOCkgV1VWXZwxK1VpYgQO7Zw3V2ElTebS7vYa6rtAa
	zhspQsnRi6ZWt8zMbjdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikYW-0007Z1-Gc; Wed, 03 Jul 2019 19:04:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikYI-0007VP-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:04:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 90F1C200437;
 Wed,  3 Jul 2019 21:04:19 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 85188200434;
 Wed,  3 Jul 2019 21:04:19 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 05E0D20604;
 Wed,  3 Jul 2019 21:04:18 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/3] firmware: imx: scu-pid: Rename mu PD range to mu_a
Date: Wed,  3 Jul 2019 22:04:02 +0300
Message-Id: <20190703190404.21136-2-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703190404.21136-1-daniel.baluta@nxp.com>
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120423_279743_2EBB5F9E 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, ulf.hansson@linaro.org,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIE1lc3NhZ2luZyBVbml0IG1vZHVsZSBlbmFibGVzIHR3byBwcm9jZXNzb3JzIHdpdGhpbiB0
aGUgU29DIHRvCmNvbW11bmljYXRlIGFuZCBjb29yZGluYXRlIGJ5IHBhc3NpbmcgbWVzc2FnZXMg
dGhyb3VnaCB0aGUgTVUgaW50ZXJmYWNlLgoKTVVzIGhhdmUgMiDigJxzaWRlc+KAnSB3aXRoIGlu
ZGVwZW5kZW50IHByb2dyYW1taW5nIGludGVyZmFjZXMuIFJlbmFtZQptdSBQRCByYW5nZSB0byBt
dV9hIGJlY2F1c2UgaXQncyBhY3R1YWxseSBzaWRlIEEgb2YgTVVzLgoKU2lnbmVkLW9mZi1ieTog
RGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgotLS0KIGRyaXZlcnMvZmlybXdh
cmUvaW14L3NjdS1wZC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMg
Yi9kcml2ZXJzL2Zpcm13YXJlL2lteC9zY3UtcGQuYwppbmRleCA0ODBjZWM2OWUyYzkuLjk1MGQz
MDIzODE4NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMKKysrIGIv
ZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMKQEAgLTkyLDcgKzkyLDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbXhfc2NfcGRfcmFuZ2UgaW14OHF4cF9zY3VfcGRfcmFuZ2VzW10gPSB7CiAJ
eyAiZ3B0IiwgSU1YX1NDX1JfR1BUXzAsIDUsIHRydWUsIDAgfSwKIAl7ICJrcHAiLCBJTVhfU0Nf
Ul9LUFAsIDEsIGZhbHNlLCAwIH0sCiAJeyAiZnNwaSIsIElNWF9TQ19SX0ZTUElfMCwgMiwgdHJ1
ZSwgMCB9LAotCXsgIm11IiwgSU1YX1NDX1JfTVVfMEEsIDE0LCB0cnVlLCAwIH0sCisJeyAibXVf
YSIsIElNWF9TQ19SX01VXzBBLCAxNCwgdHJ1ZSwgMCB9LAogCiAJLyogQ09OTiBTUyAqLwogCXsg
InVzYiIsIElNWF9TQ19SX1VTQl8wLCAyLCB0cnVlLCAwIH0sCi0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
