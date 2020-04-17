Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994C91AD92C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QoTK6yQaGBVd3pOYkyYBUS5wX5bY/3LsmE4k7+92hO4=; b=Z2LfVgNMwQHK+s
	nI8D+R90tNwHExbip2rqPuK9KZrJAfty7KqciO2HLGhSKDpgMEFo7y63jv9IQRQGB7mjVpQopwPrS
	pp/UcMcJT/lIIp9lcbaaH57ohg53/f8NWNSEjq/kddxC54azd+OGYvvru0R4BmEt8zhqIkig/QGmA
	S25Y7QhtZnpV6uEurClyHJ/EGd8R90JNBLFpwpRu8/tI+UtmQbX0HynVgOq4tQ7MsIx6eYwGf5MrA
	qnUiPpKJnk90HVLIi1GPA1L7K0E6SixRouoW5wGtXO6feraVSLYMgzPditTmUttHorCvt+98tMuuj
	+VrMMK2dRdj9Kxf0qAxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMmM-0001XB-DW; Fri, 17 Apr 2020 08:55:18 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMm8-0000XD-S4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:55:06 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 858E4286A544F9606FBB;
 Fri, 17 Apr 2020 16:54:57 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 16:54:46 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <manivannan.sadhasivam@linaro.org>, <linus.walleij@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-gpio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] pinctrl: remove unused 'pwm37_pins'
Date: Fri, 17 Apr 2020 17:21:12 +0800
Message-ID: <20200417092112.12303-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_015505_088846_72DEEDEB 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Hulk Robot <hulkci@huawei.com>, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1i
bTE4ODAuYzoyNjM6Mjc6IHdhcm5pbmc6IOKAmHB3bTM3X3BpbnPigJkgZGVmaW5lZApidXQgbm90
IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBp
bnQgcHdtMzdfcGluc1tdID0geyAxMTAgfTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtYm0xODgwLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYm0xODgwLmMgYi9kcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAuYwppbmRleCBmN2RmZjRmMTQxMDEuLjgwYmMwNGY0
MDk2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYm0xODgwLmMKKysrIGIv
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYm0xODgwLmMKQEAgLTI2MCw3ICsyNjAsNiBAQCBzdGF0
aWMgY29uc3QgdW5zaWduZWQgaW50IHB3bTMzX3BpbnNbXSA9IHsgMTA2IH07CiBzdGF0aWMgY29u
c3QgdW5zaWduZWQgaW50IHB3bTM0X3BpbnNbXSA9IHsgMTA3IH07CiBzdGF0aWMgY29uc3QgdW5z
aWduZWQgaW50IHB3bTM1X3BpbnNbXSA9IHsgMTA4IH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQg
aW50IHB3bTM2X3BpbnNbXSA9IHsgMTA5IH07Ci1zdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHB3
bTM3X3BpbnNbXSA9IHsgMTEwIH07CiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IGkyYzBfcGlu
c1tdID0geyA2MywgNjQgfTsKIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgaTJjMV9waW5zW10g
PSB7IDY1LCA2NiB9Owogc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBpMmMyX3BpbnNbXSA9IHsg
NjcsIDY4IH07Ci0tIAoyLjIxLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
