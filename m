Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9206718AF21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWhgFiSvtj7JhPUmB0LgWFzzJ+vL+ViUp3B5y/FDBeU=; b=lIHWUGGuONRnIi
	W6WHdwCJnKdzlbVpFiAeMnSUKnC8mwtaPoJyqrrm4QAL8tM5D2MhLQ9JkdvwNWeT14xnY8TsXjOQu
	cN+uEzDeDc4ZGpbcc0vEwBEgDMcHBXgYYldTaMtnwAz9WsSbkW3+eC76RNmj+KrXwy+trwKMiaUbJ
	wE1+8iITB+CheTkRIAYAZfnhlcC+fFgVO4Qg02eWLsK4IBvkDegJUSvRjoYi12FxjsPxp8pp9rJn5
	360DYGhJDfoYkV49eKo9JkHsOvr8ujcnAq9nwsmmiDr0q20nBXjfw4mSyjD+Ky5/JVFFlpjBzOvxe
	IivTvtfxBjXsR65QtuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErGA-00066Q-FR; Thu, 19 Mar 2020 09:14:38 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErFg-0005v1-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:14:10 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id D7FC85FD2D;
 Thu, 19 Mar 2020 10:14:07 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64/sdei: gather trampolines' .rodata
Date: Thu, 19 Mar 2020 11:14:06 +0200
Message-Id: <20200319091407.51449-2-remi@remlab.net>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <1938400.7m7sAWtiY1@basile.remlab.net>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_021409_022728_C0DB4122 
X-CRM114-Status: UNSURE (   8.65  )
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
Cc: mark.rutland@arm.com, james.morse@arm.com, linux-kernel@vger.kernel.org
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
ZWwvZW50cnkuUwppbmRleCAyNGY4Mjg3Mzk2OTYuLmMzNjczM2Q4Y2Q3NSAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUworKysgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5T
CkBAIC04NjIsNiArODYyLDExIEBAIFNZTV9DT0RFX0VORCh0cmFtcF9leGl0X2NvbXBhdCkKIFNZ
TV9EQVRBX1NUQVJUKF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydCkKIAkucXVhZAl2ZWN0b3JzCiBT
WU1fREFUQV9FTkQoX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0KQorI2lmZGVmIENPTkZJR19BUk1f
U0RFX0lOVEVSRkFDRQorU1lNX0RBVEFfU1RBUlQoX19zZGVpX2FzbV90cmFtcG9saW5lX25leHRf
aGFuZGxlcikKKwkucXVhZAlfX3NkZWlfYXNtX2hhbmRsZXIKK1NZTV9EQVRBX0VORChfX3NkZWlf
YXNtX3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyKQorI2VuZGlmIC8qIENPTkZJR19BUk1fU0RFX0lO
VEVSRkFDRSAqLwogCS5wb3BzZWN0aW9uCQkJCS8vIC5yb2RhdGEKICNlbmRpZiAvKiBDT05GSUdf
UkFORE9NSVpFX0JBU0UgKi8KICNlbmRpZiAvKiBDT05GSUdfVU5NQVBfS0VSTkVMX0FUX0VMMCAq
LwpAQCAtOTgwLDEzICs5ODUsNiBAQCBTWU1fQ09ERV9FTkQoX19zZGVpX2FzbV9leGl0X3RyYW1w
b2xpbmUpCiBOT0tQUk9CRShfX3NkZWlfYXNtX2V4aXRfdHJhbXBvbGluZSkKIAkubHRvcmcKIC5w
b3BzZWN0aW9uCQkvLyAuZW50cnkudHJhbXAudGV4dAotI2lmZGVmIENPTkZJR19SQU5ET01JWkVf
QkFTRQotLnB1c2hzZWN0aW9uICIucm9kYXRhIiwgImEiCi1TWU1fREFUQV9TVEFSVChfX3NkZWlf
YXNtX3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyKQotCS5xdWFkCV9fc2RlaV9hc21faGFuZGxlcgot
U1lNX0RBVEFfRU5EKF9fc2RlaV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRsZXIpCi0ucG9wc2Vj
dGlvbgkJLy8gLnJvZGF0YQotI2VuZGlmIC8qIENPTkZJR19SQU5ET01JWkVfQkFTRSAqLwogI2Vu
ZGlmIC8qIENPTkZJR19VTk1BUF9LRVJORUxfQVRfRUwwICovCiAKIC8qCi0tIAoyLjI2LjAucmMy
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
