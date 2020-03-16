Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CFB186B47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jEUDFmavbvBikLDI6VN3se6z59Ng9CR2UlEpcwbDG4I=; b=XD8s2TTVhDC2sY
	jL3ekmRjvNwnmp0VbzWi/sp9gOKrfBN7JygL6fTYnNqArFLX9g3HJ0WtietN8g6KHZ2PF3SAcE9VH
	UddENVbM/Ve2dr+kBx+sjJ91dmm9v3Ri38r51ctAaeTwfVI/6NmlFwamvNF0OO8R7LkKDHWXdAEPx
	DvMLCCr0647Yncpyrk9NClQ14/yqZlBIDu+I/67cQ2qaugmlsSXgDM4ziq5pzFoqw+mBTRoSN9kUk
	fvhL53VyX/tg3SzSoNmtGQ6kJoDqFHkVCT+vqFr6SPOQxvrNOuxS4sax1O04AJYG7DVINEXMMl3xr
	z61OcJoJ/cVfc4o8cu6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp3r-0002Gd-GV; Mon, 16 Mar 2020 12:41:39 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp3D-0001rp-LX
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:41:02 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id BEBCD5FAC8;
 Mon, 16 Mar 2020 13:40:46 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: clean up trampoline vector loads
Date: Mon, 16 Mar 2020 14:40:44 +0200
Message-Id: <20200316124046.103844-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_054059_851269_236FD60D 
X-CRM114-Status: UNSURE (   8.08  )
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
bT4KClRoaXMgc3dpdGNoZXMgZnJvbSBjdXN0b20gaW5zdHJ1Y3Rpb24gcGF0dGVybnMgdG8gdGhl
IHJlZ3VsYXIgbGFyZ2UKbWVtb3J5IG1vZGVsIHNlcXVlbmNlIHdpdGggQURSUCBhbmQgTERSLiBJ
biBkb2luZyBzbywgdGhlIEFERAppbnN0cnVjdGlvbiBjYW4gYmUgZWxpbWluYXRlZCBpbiB0aGUg
U0RFSSBoYW5kbGVyLCBhbmQgdGhlIGNvZGUgbm8KbG9uZ2VyIGFzc3VtZXMgdGhhdCB0aGUgdHJh
bXBvbGluZSB2ZWN0b3JzIGFuZCB0aGUgdmVjdG9ycyBhZGRyZXNzIGJvdGgKc3RhcnQgb24gYSBw
YWdlIGJvdW5kYXJ5LgoKU2lnbmVkLW9mZi1ieTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWku
ZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KLS0tCiBhcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5T
IHwgOSArKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyBiL2FyY2gvYXJt
NjQva2VybmVsL2VudHJ5LlMKaW5kZXggZTVkNGUzMGVlMjQyLi4yNGY4Mjg3Mzk2OTYgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwv
ZW50cnkuUwpAQCAtODA1LDkgKzgwNSw5IEBAIGFsdGVybmF0aXZlX2Vsc2Vfbm9wX2VuZGlmCiAy
OgogCXRyYW1wX21hcF9rZXJuZWwJeDMwCiAjaWZkZWYgQ09ORklHX1JBTkRPTUlaRV9CQVNFCi0J
YWRyCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQorCWFkcnAJeDMwLCB0cmFtcF92ZWN0
b3JzICsgUEFHRV9TSVpFCiBhbHRlcm5hdGl2ZV9pbnNuIGlzYiwgbm9wLCBBUk02NF9XT1JLQVJP
VU5EX1FDT01fRkFMS09SX0UxMDAzCi0JbGRyCXgzMCwgW3gzMF0KKwlsZHIJeDMwLCBbeDMwLCAj
OmxvMTI6X19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0XQogI2Vsc2UKIAlsZHIJeDMwLCA9dmVjdG9y
cwogI2VuZGlmCkBAIC05NTMsOSArOTUzLDggQEAgU1lNX0NPREVfU1RBUlQoX19zZGVpX2FzbV9l
bnRyeV90cmFtcG9saW5lKQogMToJc3RyCXg0LCBbeDEsICMoU0RFSV9FVkVOVF9JTlRSRUdTICsg
U19PUklHX0FERFJfTElNSVQpXQogCiAjaWZkZWYgQ09ORklHX1JBTkRPTUlaRV9CQVNFCi0JYWRy
CXg0LCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCi0JYWRkCXg0LCB4NCwgIzpsbzEyOl9fc2Rl
aV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRsZXIKLQlsZHIJeDQsIFt4NF0KKwlhZHJwCXg0LCB0
cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCisJbGRyCXg0LCBbeDQsICM6bG8xMjpfX3NkZWlfYXNt
X3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyXQogI2Vsc2UKIAlsZHIJeDQsID1fX3NkZWlfYXNtX2hh
bmRsZXIKICNlbmRpZgotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
