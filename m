Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D45A188792
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BaiCTSjAHuUTaiulKXqwlCbiRQbrj/ufkCmDjVr7K+U=; b=kwzbgvfPCVqGGQ
	qwcUEfDy7g8jxDJ0WZF7ygppK5lNo+572pSEYlcnxw9vxA669Be4BPvVADm/4YkEKXVKGkJ5krptp
	Tat2KHJNVVhIV2S4xgiGINkXhIiBw+gBDOIjgjio9oDEl1jMQuGXtjm9e93deMVnRUhZBdlZzlTIr
	43Z6eeyQtL7romjhwQyfgU0XGMYQ7kDCncvjPW9WaGt1/n9+nppPuEVasd3sOMCCj3ROmHfUuD9Um
	QIImb8YJDBi+iQg+18+554VcpUgEjWM6KFN6Hat55a1lfmMqm3sYtYl92RXqogUywmI0Hc+s0offS
	RIEhHMzQ9IV2TN1mH9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDIp-0001wJ-Sg; Tue, 17 Mar 2020 14:34:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDIg-0001vS-RP; Tue, 17 Mar 2020 14:34:37 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C5F1324000A;
 Tue, 17 Mar 2020 14:34:28 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eddie Huang <eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v2] rtc: mt2712: fix build without PM_SLEEP
Date: Tue, 17 Mar 2020 15:34:21 +0100
Message-Id: <20200317143421.9551-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_073435_021263_CF9ED9B7 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IHRoaXMgYnVpbGQgZXJyb3Igd2hlbiBQTV9TTEVFUCBpcyBub3Qgc2VsZWN0ZWQ6Cgpkcml2
ZXJzL3J0Yy9ydGMtbXQyNzEyLmM6NDEyOjEwOiBlcnJvcjog4oCYbXQyNzEyX3BtX29wc+KAmSB1
bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmG10Mjcx
Ml9ydGNfb3Bz4oCZPwogIDQxMiB8ICAgLnBtID0gJm10MjcxMl9wbV9vcHMsCiAgICAgIHwgICAg
ICAgICAgXn5+fn5+fn5+fn5+fgoKU2lnbmVkLW9mZi1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFs
ZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcnRjL3J0Yy1tdDI3MTIu
YyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3J0Yy9ydGMtbXQyNzEyLmMgYi9kcml2ZXJzL3J0Yy9ydGMtbXQyNzEyLmMKaW5kZXgg
NjJjMjAyNDE0MjZkLi41ODFiODczMWZiOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1t
dDI3MTIuYworKysgYi9kcml2ZXJzL3J0Yy9ydGMtbXQyNzEyLmMKQEAgLTQwOSw3ICs0MDksOSBA
QCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtdDI3MTJfcnRjX2RyaXZlciA9IHsKIAku
ZHJpdmVyID0gewogCQkubmFtZSA9ICJtdDI3MTItcnRjIiwKIAkJLm9mX21hdGNoX3RhYmxlID0g
bXQyNzEyX3J0Y19vZl9tYXRjaCwKKyNpZmRlZiBDT05GSUdfUE1fU0xFRVAKIAkJLnBtID0gJm10
MjcxMl9wbV9vcHMsCisjZW5kaWYKIAl9LAogCS5wcm9iZSAgPSBtdDI3MTJfcnRjX3Byb2JlLAog
fTsKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
