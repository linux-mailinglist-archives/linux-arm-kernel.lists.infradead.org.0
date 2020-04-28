Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BF01BBCE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NymJr8dySAD+13JZ0ChF2Li2dFnG/g54B17SsEGzWow=; b=nWXbxGhkNCpivI
	IZFKmTkLb84qwyd/R+jyNiGRSi41HGhFwdDOueZ611kqDEuCZG3m2Yo7dBtp3gclco9xGI4GiTkDG
	KsSE9xOjiTED1o+uxx6wu1YQK6SC1Weddb4LgKX72VBX94wYTTsjuHiv7vue1kUDwVkXLgvGBUhZ3
	S0bXgaQFjJ0OYh6aOMkWbZJWGFwtEww/wfw0aTnpD0i3HYsNq/orNTpfDfbQg4h8MViant3FvPoVH
	wvdXG8LWYpCi1Dy0DFaxYWK/b2IMzq+ewU1xpBTffHX5m0LWcUU4/ncZJCb887gCmMUVGUMhtJ/qV
	wwIN6dY9dZ1jYzGb3Gzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOr3-00076p-2W; Tue, 28 Apr 2020 11:56:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOqt-00075k-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:56:41 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E6470767EDA26952B564;
 Tue, 28 Apr 2020 19:56:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 19:56:19 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <manivannan.sadhasivam@linaro.org>, <linus.walleij@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-gpio@vger.kernel.org>
Subject: [PATCH] pinctrl: add pwm37 to bm1880_pctrl_groups
Date: Tue, 28 Apr 2020 19:55:43 +0800
Message-ID: <20200428115543.33379-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_045639_915930_5022543C 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlICdwd20zNycgaXMgbm90IGFkZGVkIHRvIGJtMTg4MF9wY3RybF9ncm91cHMsIHdoaWNoIHRy
aWdnZXJzIGEgZ2NjCmJ1aWxkIHdhcm5pbmc6Cgpkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4
ODAuYzoyNjM6Mjc6IHdhcm5pbmc6IOKAmHB3bTM3X3BpbnPigJkgZGVmaW5lZApidXQgbm90IHVz
ZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQg
cHdtMzdfcGluc1tdID0geyAxMTAgfTsKClNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlq
aWVAaHVhd2VpLmNvbT4KLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAuYyB8IDEg
KwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtYm0xODgwLmMgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAu
YwppbmRleCBmN2RmZjRmMTQxMDEuLmQxYTdkOTgzNjc4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtYm0xODgwLmMKKysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYm0x
ODgwLmMKQEAgLTQwOCw2ICs0MDgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJtMTg4MF9wY3Ry
bF9ncm91cCBibTE4ODBfcGN0cmxfZ3JvdXBzW10gPSB7CiAJQk0xODgwX1BJTkNUUkxfR1JQKHB3
bTM0KSwKIAlCTTE4ODBfUElOQ1RSTF9HUlAocHdtMzUpLAogCUJNMTg4MF9QSU5DVFJMX0dSUChw
d20zNiksCisJQk0xODgwX1BJTkNUUkxfR1JQKHB3bTM3KSwKIAlCTTE4ODBfUElOQ1RSTF9HUlAo
aTJjMCksCiAJQk0xODgwX1BJTkNUUkxfR1JQKGkyYzEpLAogCUJNMTg4MF9QSU5DVFJMX0dSUChp
MmMyKSwKLS0gCjIuMjEuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
