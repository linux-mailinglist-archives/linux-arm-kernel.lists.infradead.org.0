Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD4A1A3355
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwQkyQNUWDLTNjjoDN58KkvIksuu5khoX60ZADpfM9A=; b=j2oXo9XJ2RrXqU
	v1fI8L3QSgNdXJWP01VO3PokLpZPdjtwlpQ5CYa4/f+h0QIgeOlav0DIj6JrUYL+0Gkl9q3zprC9O
	ut/vRyYP3VOu52rxCrvFqyp0j3skUMTqCTPQoqjasg1h73FeLBj54xwUtqlL7+5IDOijqhLweWSkJ
	J93EtWJljeyc1/gJ7ZjvI1Mk54BHxalsVf76wSaCGP1b9pstVlIMPaaoYZkz3lLieN3FGtgTqOKK0
	BE4JTL9AkGM1wa2jE6M60V9WRXZ+TEzEK8rPW3ACnKnEcb843REZe0BDsqsO8FJUB+eH59YUeilLk
	LZsXjAXC4Hh3kOhRQFCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVZB-0001B0-8U; Thu, 09 Apr 2020 11:41:53 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVZ1-0001AG-Sq; Thu, 09 Apr 2020 11:41:45 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C4AE6E691DB7A3209D39;
 Thu,  9 Apr 2020 19:41:34 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Thu, 9 Apr 2020
 19:41:27 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <heiko@sntech.de>,
 <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: rockchip: remove defined but not used 'mux_timer_src_p'
Date: Thu, 9 Apr 2020 19:40:01 +0800
Message-ID: <20200409114001.38122-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_044144_110724_D01E91E3 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGst
cmszMzA4LmM6MTM2Ojc6IHdhcm5pbmc6IOKAmG11eF90aW1lcl9zcmNfcOKAmQpkZWZpbmVkIGJ1
dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQogUE5BTUUobXV4X3RpbWVyX3Ny
Y19wKSAgPSB7ICJ4aW4yNG0iLCAiY2xrX3J0YzMyayIgfTsKICAgICAgIF4KClJlcG9ydGVkLWJ5
OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFzb24gWWFu
IDx5YW5haWppZUBodWF3ZWkuY29tPgotLS0KIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMz
MDguYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGstcmszMzA4LmMKaW5kZXggYjBiYWY4N2EyODNlLi41YmYxNWYyYTQ0YjcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYworKysgYi9kcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9jbGstcmszMzA4LmMKQEAgLTEzMyw3ICsxMzMsNiBAQCBQTkFNRShtdXhfdWFydDFfcCkJ
CT0geyAiY2xrX3VhcnQxX3NyYyIsICJkdW1teSIsICJjbGtfdWFydDFfZnJhYyIgfTsKIFBOQU1F
KG11eF91YXJ0Ml9wKQkJPSB7ICJjbGtfdWFydDJfc3JjIiwgImR1bW15IiwgImNsa191YXJ0Ml9m
cmFjIiB9OwogUE5BTUUobXV4X3VhcnQzX3ApCQk9IHsgImNsa191YXJ0M19zcmMiLCAiZHVtbXki
LCAiY2xrX3VhcnQzX2ZyYWMiIH07CiBQTkFNRShtdXhfdWFydDRfcCkJCT0geyAiY2xrX3VhcnQ0
X3NyYyIsICJkdW1teSIsICJjbGtfdWFydDRfZnJhYyIgfTsKLVBOQU1FKG11eF90aW1lcl9zcmNf
cCkJCT0geyAieGluMjRtIiwgImNsa19ydGMzMmsiIH07CiBQTkFNRShtdXhfZGNsa192b3BfcCkJ
CT0geyAiZGNsa192b3Bfc3JjIiwgImRjbGtfdm9wX2ZyYWMiLCAieGluMjRtIiB9OwogUE5BTUUo
bXV4X25hbmRjX3ApCQk9IHsgImNsa19uYW5kY19kaXYiLCAiY2xrX25hbmRjX2RpdjUwIiB9Owog
UE5BTUUobXV4X3NkbW1jX3ApCQk9IHsgImNsa19zZG1tY19kaXYiLCAiY2xrX3NkbW1jX2RpdjUw
IiB9OwotLSAKMi4xNy4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
