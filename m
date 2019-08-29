Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91288A2000
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmISbt0Rcwo97ZnZOWv3j6kJQrXbIpKm5uzcR37ig6A=; b=mie4sBaHfEA5a5
	k0p2QSnSnC/SmScrA3sL+N0v+bSf1BteZsiDearuiVGdMu6fCSa675xpRe/A9dfBp7bsE3hisnRgq
	IhMCFrmDys4euTxxOpoxAVjBFzIFCKzyCYyqSkxc4JR7KFJr41X4Dwt1nd4x9yH4uxKGc/ojZvgzp
	fQeqqTp6BsDuB3CFsxmzteCg64ncAa9dMjv1+XcpSyqgrkLj9P6z+P9edub8vMujtMe6QT2yNcRfp
	GBA2g7g4HjHvMuZafcPwKI5HynKxB9cyhQuCTz8STH9XcDV4rK2xv7DIFZTqrXkFwXkn92hk/1vzP
	8cBCh0i67w3C3Iru0Q1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Min-0004yP-80; Thu, 29 Aug 2019 15:52:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfO-0001cD-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58DB028;
 Thu, 29 Aug 2019 08:48:54 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0521B3F718;
 Thu, 29 Aug 2019 08:48:52 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 08/10] arm64: lse: Make ARM64_LSE_ATOMICS depend on
 JUMP_LABEL
Date: Thu, 29 Aug 2019 16:48:32 +0100
Message-Id: <20190829154834.26547-9-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084855_255764_D48577E3 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, natechancellor@gmail.com, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3VwcG9ydCBmb3IgTFNFIGF0b21pYyBpbnN0cnVjdGlvbnMgKENPTkZJR19BUk02NF9MU0VfQVRP
TUlDUykgcmVsaWVzIG9uCmEgc3RhdGljIGtleSB0byBzZWxlY3QgYmV0d2VlbiB0aGUgbGVnYWN5
IExML1NDIGltcGxlbWVudGF0aW9uIHdoaWNoIGlzCmF2YWlsYWJsZSBvbiBhbGwgYXJtNjQgQ1BV
cyBhbmQgdGhlIHN1cGVyLWR1cGVyIExTRSBpbXBsZW1lbnRhdGlvbiB3aGljaAppcyBhdmFpbGFi
bGUgb24gQ1BVcyBpbXBsZW1lbnRpbmcgdjguMSBhbmQgbGF0ZXIuCgpVbmZvcnR1bmF0ZWx5LCB3
aGVuIGJ1aWxkaW5nIGEga2VybmVsIHdpdGggQ09ORklHX0pVTVBfTEFCRUwgZGlzYWJsZWQKKGUu
Zy4gYmVjYXVzZSB0aGUgdG9vbGNoYWluIGRvZXNuJ3Qgc3VwcG9ydCAnYXNtIGdvdG8nKSwgdGhl
IHN0YXRpYyBrZXkKaW5zaWRlIHRoZSBhdG9taWNzIGNvZGUgdHJpZXMgdG8gdXNlIGF0b21pY3Mg
aXRzZWxmLiBUaGlzIHJlc3VsdHMgaW4gYQptZXNzIG9mIGNpcmN1bGFyIGluY2x1ZGVzIGFuZCBh
IGJ1aWxkIGZhaWx1cmU6CgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL2xzZS5oOjExLAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL2F0b21pYy5oOjE2LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L2F0b21pYy5oOjcsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMv
Yml0b3BzL2F0b21pYy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vYml0b3BzLmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGlu
dXgvYml0b3BzLmg6MTksCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgva2Vy
bmVsLmg6MTIsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVn
Lmg6MTgsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vYnVn
Lmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9wYWdlLWZsYWdzLmg6MTAsCiAgICAg
ICAgICAgICAgICAgZnJvbSBrZXJuZWwvYm91bmRzLmM6MTA6Ci4vaW5jbHVkZS9saW51eC9qdW1w
X2xhYmVsLmg6IEluIGZ1bmN0aW9uIOKAmHN0YXRpY19rZXlfY291bnTigJk6Ci4vaW5jbHVkZS9s
aW51eC9qdW1wX2xhYmVsLmg6MjU0Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhhdG9taWNfcmVhZOKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNs
YXJhdGlvbl0KICByZXR1cm4gYXRvbWljX3JlYWQoJmtleS0+ZW5hYmxlZCk7CiAgICAgICAgIF5+
fn5+fn5+fn5+CgpbIC4uLiBtb3JlIG9mIHRoZSBzYW1lIC4uLiBdCgpTaW5jZSBMU0UgYXRvbWlj
IGluc3RydWN0aW9ucyBhcmUgbm90IGNyaXRpY2FsIHRvIHRoZSBvcGVyYXRpb24gb2YgdGhlCmtl
cm5lbCwgbWFrZSB0aGVtIGRlcGVuZCBvbiBKVU1QX0xBQkVMIGF0IGNvbXBpbGUgdGltZS4KClNp
Z25lZC1vZmYtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm02
NC9LY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L0tjb25maWcgYi9hcmNoL2FybTY0L0tjb25maWcKaW5kZXggM2FkY2Vj
MDViMWY2Li4yNzQwNWFjOTQyMjggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZworKysg
Yi9hcmNoL2FybTY0L0tjb25maWcKQEAgLTEyNjMsNiArMTI2Myw3IEBAIGNvbmZpZyBBUk02NF9Q
QU4KIAogY29uZmlnIEFSTTY0X0xTRV9BVE9NSUNTCiAJYm9vbCAiQXRvbWljIGluc3RydWN0aW9u
cyIKKwlkZXBlbmRzIG9uIEpVTVBfTEFCRUwKIAlkZWZhdWx0IHkKIAloZWxwCiAJICBBcyBwYXJ0
IG9mIHRoZSBMYXJnZSBTeXN0ZW0gRXh0ZW5zaW9ucywgQVJNdjguMSBpbnRyb2R1Y2VzIG5ldwot
LSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
