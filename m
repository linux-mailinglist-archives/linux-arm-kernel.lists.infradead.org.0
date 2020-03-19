Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E7618AF41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jK5zY24USqdb7+dkWalUVZgeNBHjp6eXPdk9fYi6Po=; b=n1mkptLC6EWiHo
	K98B14BrASa98RYNcZN6IVhc6/t7Q0XN6l1OMCSwPLVAp9ALAsQpn+S1FAJ8/F7vzJurDJCdoaRVp
	jHTn5ZIy1ZIbzpEcPUNclYk4LupnRSFam845FzZFklPrYo/K0EyvzIMHyVbY+CsgHqsxeZCgnMzNJ
	Nw9y8RyxHa87gXk+RnaMrcQjs2Kg1yBsmOlYzste1/Y+rrCJeEQmvnriTKqwKcQGK5dHXqYeytfGI
	91S+t51+kPj0jnZRVe1+/Z9QteXgjBvQsxnbur+eqH8+NVAI0L57iS0fdvilSXrBjU0NTfLhFzJpf
	ebkh9t/59S3R0IOOkrlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErGc-0006RL-P6; Thu, 19 Mar 2020 09:15:06 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErFh-0005vD-BU
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:14:10 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 6534E5FDA2;
 Thu, 19 Mar 2020 10:14:08 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: reduce trampoline data alignment
Date: Thu, 19 Mar 2020 11:14:07 +0200
Message-Id: <20200319091407.51449-3-remi@remlab.net>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <1938400.7m7sAWtiY1@basile.remlab.net>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_021409_531585_0F5D2602 
X-CRM114-Status: GOOD (  11.07  )
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
bT4KClRoZSB0cmFtcG9saW5lIGRhdGEsIGN1cnJlbnRseSBjb25zaXN0aW5nIG9mIHR3byByZWxv
Y2F0ZWQgcG9pbnRlcnMsCm11c3QgYmUgd2l0aGluIGEgc2luZ2xlIHBhZ2UuIEhvd2V2ZXIsIHRo
ZXJlIGFyZSBubyBuZWVkcyBmb3IgaXQgdG8Kc3RhcnQgYSBwYWdlLgoKVGhpcyByZWR1Y2VzIHRo
ZSBhbGlnbm1lbnQgdG8gMTYgYnl0ZXMsIHdoaWNoIGlzIHN1ZmZpY2llbnQgdG8gZW5zdXJlCnRo
YXQgdGhlIGRhdGEgaXMgZW50aXJlbHkgd2l0aGluIGEgc2luZ2xlIHBhZ2Ugb2YgdGhlIGZpeG1h
cC4KClNpZ25lZC1vZmYtYnk6IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJt
b250QGh1YXdlaS5jb20+Ci0tLQogYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyB8IDIgKy0KIGFy
Y2gvYXJtNjQvbW0vbW11LmMgICAgICAgfCA1ICsrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5l
bC9lbnRyeS5TIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwppbmRleCBjMzY3MzNkOGNkNzUu
LmVjYWQxNTQ0MzY1NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUworKysg
Yi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCkBAIC04NTgsNyArODU4LDcgQEAgU1lNX0NPREVf
RU5EKHRyYW1wX2V4aXRfY29tcGF0KQogCS5wb3BzZWN0aW9uCQkJCS8vIC5lbnRyeS50cmFtcC50
ZXh0CiAjaWZkZWYgQ09ORklHX1JBTkRPTUlaRV9CQVNFCiAJLnB1c2hzZWN0aW9uICIucm9kYXRh
IiwgImEiCi0JLmFsaWduIFBBR0VfU0hJRlQKKwkuYWxpZ24JNAkvLyBhbGwgLnJvZGF0YSBtdXN0
IGJlIGluIGEgc2luZ2xlIGZpeG1hcCBwYWdlCiBTWU1fREFUQV9TVEFSVChfX2VudHJ5X3RyYW1w
X2RhdGFfc3RhcnQpCiAJLnF1YWQJdmVjdG9ycwogU1lNX0RBVEFfRU5EKF9fZW50cnlfdHJhbXBf
ZGF0YV9zdGFydCkKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vbW11LmMgYi9hcmNoL2FybTY0
L21tL21tdS5jCmluZGV4IDliMDhmN2M3ZTZmMC4uNmEwZTc1ZjQ4ZTdiIDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L21tL21tdS5jCisrKyBiL2FyY2gvYXJtNjQvbW0vbW11LmMKQEAgLTU5OSw5ICs1
OTksOCBAQCBzdGF0aWMgaW50IF9faW5pdCBtYXBfZW50cnlfdHJhbXBvbGluZSh2b2lkKQogCWlm
IChJU19FTkFCTEVEKENPTkZJR19SQU5ET01JWkVfQkFTRSkpIHsKIAkJZXh0ZXJuIGNoYXIgX19l
bnRyeV90cmFtcF9kYXRhX3N0YXJ0W107CiAKLQkJX19zZXRfZml4bWFwKEZJWF9FTlRSWV9UUkFN
UF9EQVRBLAotCQkJICAgICBfX3BhX3N5bWJvbChfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQpLAot
CQkJICAgICBQQUdFX0tFUk5FTF9STyk7CisJCXBhX3N0YXJ0ID0gX19wYV9zeW1ib2woX19lbnRy
eV90cmFtcF9kYXRhX3N0YXJ0KSAmIFBBR0VfTUFTSzsKKwkJX19zZXRfZml4bWFwKEZJWF9FTlRS
WV9UUkFNUF9EQVRBLCBwYV9zdGFydCwgUEFHRV9LRVJORUxfUk8pOwogCX0KIAogCXJldHVybiAw
OwotLSAKMi4yNi4wLnJjMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
