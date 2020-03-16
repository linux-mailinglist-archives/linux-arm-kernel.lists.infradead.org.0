Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179AB186B42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zba9uXG3tOpJw/rHY7uL7w/IHJJIHSSu114RiYmr+V8=; b=ZF1K87Vz3nV7DD
	7a+wMIETStXkuJLW9razMcNNhLDu1KQLCjykIpHtCjp8oVbI1uRXBKD/ZQ7WZHdRkbUnjw1ym/vOP
	qxeLq4So4AJjRpLCWqZG07W5SVj9OTBMAUgyf8YwQfusOJOn8dkKS6BFOKwkfyFE4KfFApdUE9fhK
	ozTPaRXTXuCb57vA+j6FzgcXyFubp5Dig0OZImahNfHiIyaU5I4wpYHh7Vewv54UHLwyFovjnU2kb
	W3BcmmFNrXbb/X3v6IkeQCy8WpwFXJWD6E6C+VsmWtAyu9oU2sasThbnArvLZ+MARkrSRNzFui9Pq
	myJhT04kiNlbjL3EVlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp3N-0001t2-GO; Mon, 16 Mar 2020 12:41:09 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp3D-0001rP-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:41:01 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 3F9035FD10;
 Mon, 16 Mar 2020 13:40:47 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64/sdei: gather trampolines' .rodata
Date: Mon, 16 Mar 2020 14:40:45 +0200
Message-Id: <20200316124046.103844-2-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_054059_783145_CB33C8AE 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNv
bT4KClRoaXMgZ2F0aGVycyB0aGUgdHdvIGJpdHMgb2YgZGF0YSB0b2dldGhlciBmb3IgY2xhcml0
eS4KClNpZ25lZC1vZmYtYnk6IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJt
b250QGh1YXdlaS5jb20+Ci0tLQogYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyB8IDEyICsrKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TIGIvYXJjaC9hcm02NC9rZXJu
ZWwvZW50cnkuUwppbmRleCAyNGY4Mjg3Mzk2OTYuLmFmMTdmY2I0YWFlYSAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUworKysgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5T
CkBAIC04NTksNiArODU5LDExIEBAIFNZTV9DT0RFX0VORCh0cmFtcF9leGl0X2NvbXBhdCkKICNp
ZmRlZiBDT05GSUdfUkFORE9NSVpFX0JBU0UKIAkucHVzaHNlY3Rpb24gIi5yb2RhdGEiLCAiYSIK
IAkuYWxpZ24gUEFHRV9TSElGVAorI2lmZGVmIENPTkZJR19BUk1fU0RFX0lOVEVSRkFDRQorU1lN
X0RBVEFfU1RBUlQoX19zZGVpX2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlcikKKwkucXVhZAlf
X3NkZWlfYXNtX2hhbmRsZXIKK1NZTV9EQVRBX0VORChfX3NkZWlfYXNtX3RyYW1wb2xpbmVfbmV4
dF9oYW5kbGVyKQorI2VuZGlmCiBTWU1fREFUQV9TVEFSVChfX2VudHJ5X3RyYW1wX2RhdGFfc3Rh
cnQpCiAJLnF1YWQJdmVjdG9ycwogU1lNX0RBVEFfRU5EKF9fZW50cnlfdHJhbXBfZGF0YV9zdGFy
dCkKQEAgLTk4MCwxMyArOTg1LDYgQEAgU1lNX0NPREVfRU5EKF9fc2RlaV9hc21fZXhpdF90cmFt
cG9saW5lKQogTk9LUFJPQkUoX19zZGVpX2FzbV9leGl0X3RyYW1wb2xpbmUpCiAJLmx0b3JnCiAu
cG9wc2VjdGlvbgkJLy8gLmVudHJ5LnRyYW1wLnRleHQKLSNpZmRlZiBDT05GSUdfUkFORE9NSVpF
X0JBU0UKLS5wdXNoc2VjdGlvbiAiLnJvZGF0YSIsICJhIgotU1lNX0RBVEFfU1RBUlQoX19zZGVp
X2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlcikKLQkucXVhZAlfX3NkZWlfYXNtX2hhbmRsZXIK
LVNZTV9EQVRBX0VORChfX3NkZWlfYXNtX3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyKQotLnBvcHNl
Y3Rpb24JCS8vIC5yb2RhdGEKLSNlbmRpZiAvKiBDT05GSUdfUkFORE9NSVpFX0JBU0UgKi8KICNl
bmRpZiAvKiBDT05GSUdfVU5NQVBfS0VSTkVMX0FUX0VMMCAqLwogCiAvKgotLSAKMi4yNS4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
