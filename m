Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2925AFDA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s8XPd+8Tb1Q2LTW+cs0jIap8bdQ+ppnrRlqvNMPIrvk=; b=SdMAsDub/Ur0Hu
	2Ka+Hr97ISKMhWLdHNwIq2N8d49fFFeP0gvpGyYAa+uOfGJRo/d4m7pLEUS9oyve7qythkPOibQnP
	X+xt7ZAtiKCQqkKlA5huTRFGFUTS3s7+qXFwOiDNM6gG6r04gXAxTIb415DIfmz3ghqpOXXGvWHai
	+H0/5xTYTV2PfrtE5Rpx/miylrKvv62FWAwgvyRN7VJqf4+IuLS6jaUtWSaPFlv3kxaBUe1pF+xGI
	W/RxIMEaoL/Hh6xkpBMX6PDEwlO1phNFoPxDdXVZ2CULLvjNj+I9ZEmc8XPDT2YgxVDLtJHdYKHMI
	wKan4tRP5TcmUG6o40/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVSa-0007am-Tg; Tue, 30 Apr 2019 16:18:24 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVSI-0007O3-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:18:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 3CBEFFB03;
 Tue, 30 Apr 2019 18:18:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yvo4w9v-Tb9h; Tue, 30 Apr 2019 18:18:00 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 111EA4027E; Tue, 30 Apr 2019 18:18:00 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] amd64: mxc: select CONFIG_SOC_BUS
Date: Tue, 30 Apr 2019 18:17:59 +0200
Message-Id: <a45b70bae964b15317167304a89ba1094a769916.1556640947.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_091806_705391_6A18FC29 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aS5NWDggbmVlZHMgc29jX2RldmljZV9yZWdpc3Rlciwgb3RoZXJ3aXNlIHRoZSBidWlsZCBmYWls
cyBsaWtlOgoKICBhYXJjaDY0LWxpbnV4LWdudS1sZDogZHJpdmVycy9zb2MvaW14L3NvYy1pbXg4
Lm86IGluIGZ1bmN0aW9uIGBpbXg4X3NvY19pbml0JzoKICBzb2MtaW14OC5jOiguaW5pdC50ZXh0
KzB4MTMwKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgc29jX2RldmljZV9yZWdpc3RlcicKICBh
YXJjaDY0LWxpbnV4LWdudS1sZDogc29jLWlteDguYzooLmluaXQudGV4dCsweDEzMCk6IHJlbG9j
YXRpb24gdHJ1bmNhdGVkIHRvIGZpdDogUl9BQVJDSDY0X0NBTEwyNiBhZ2FpbnN0IHVuZGVmaW5l
ZCBzeW1ib2wgYHNvY19kZXZpY2VfcmVnaXN0ZXInCiAgbWFrZTogKioqIFtNYWtlZmlsZToxMDUx
OiB2bWxpbnV4XSBFcnJvciAxCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNp
Z3hjcHUub3JnPgoKLS0tClRoaXMgd2FzIHNlZW4gb24gbmV4dC0yMDE5MDQzMC4KCiBhcmNoL2Fy
bTY0L0tjb25maWcucGxhdGZvcm1zIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zIGIvYXJjaC9hcm02
NC9LY29uZmlnLnBsYXRmb3JtcwppbmRleCAwZjRkOTE4MjRlNGIuLmM4NmJjY2JiMTE4YSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3JtcworKysgYi9hcmNoL2FybTY0L0tj
b25maWcucGxhdGZvcm1zCkBAIC0xNjIsNiArMTYyLDcgQEAgY29uZmlnIEFSQ0hfTVhDCiAJc2Vs
ZWN0IElNWF9HUENWMl9QTV9ET01BSU5TCiAJc2VsZWN0IFBNCiAJc2VsZWN0IFBNX0dFTkVSSUNf
RE9NQUlOUworCXNlbGVjdCBTT0NfQlVTCiAJaGVscAogCSAgVGhpcyBlbmFibGVzIHN1cHBvcnQg
Zm9yIHRoZSBBUk12OCBiYXNlZCBTb0NzIGluIHRoZQogCSAgTlhQIGkuTVggZmFtaWx5LgotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
