Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8088519DC6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 19:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W2DkD253FF+OPDfiauR/1EXdS03cz9ksT5gHFDcNRxw=; b=pDPQz20cFlXLsp
	Zthuxwf45WkhfnbHoND2dIYme+bdBZ3zMlsd6+wH25Qnjrr0fFk5cqSr+jTsUvVO+lrCuC0ikFwxY
	KQbWo/bDP6Ga+z11TNg9Ik4FZzoSTvJb53hX351JAYGMyNnViM3kdMiZnochrNpMW9r+yJg5eWsrK
	eCyyb/0IuEOPau54BYspV+LWDcyIR4xwVT0PKhJJmTA26kO+ruKIGqiUyET1j4eohgCWREfv6/CJy
	2PoNVM2KXNeg+uWBGtdwgRmMZuhG2HajaBINDSHGICpvjguS53o2f5sqxhHwN0sfOUyYkWZjhjULD
	sp5yRiOVtdAe1apVqCvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPqG-0007aG-Ib; Fri, 03 Apr 2020 17:10:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPpz-0007Su-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 17:10:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDAC61FB;
 Fri,  3 Apr 2020 10:10:29 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3B8D83F71E;
 Fri,  3 Apr 2020 10:10:29 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] firmware: arm_scmi: Add include guard to
 linux/scmi_protocol.h
Date: Fri,  3 Apr 2020 18:10:17 +0100
Message-Id: <20200403171018.1230-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_101035_679949_F7C86D36 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SWYgdGhpcyBoZWFkZXIgaXMgaW5jbHVkZSB0d2ljZSwgaXQgd2lsbCBnZW5lcmF0ZSBsb2FkcyBv
ZiBjb21waWxlCnRpbWUgZXJyb3Igd2l0aCB0aGUgZm9sbG93aW5nIGJlbG93IGVycm9yIHBhdHRl
cm4uIEl0IHdhcyByZXBvcnRlZCBieQowZGF5IGtidWlsZCByb2JvdCBvbiBhIGJyYW5jaCBwdXNo
ZWQgd2l0aCBkb3VibGUgaW5jbHVzaW9uIGJ5IGFjY2lkZW50LgoKIAllcnJvcjogY29uZmxpY3Rp
bmcgdHlwZXMgZm9yIOKAmC4uLuKAmQogCW5vdGU6IHByZXZpb3VzIGRlY2xhcmF0aW9uIG9mIOKA
mC4uLuKAmSB3YXMgaGVyZQoJZXJyb3I6IHJlZGVmaW5pdGlvbiBvZiDigJguLi7igJkKCkFkZCBh
IGhlYWRlciBpbmNsdWRlIGd1YXJkIGp1c3QgaW4gY2FzZS4KClJlcG9ydGVkLWJ5OiBrYnVpbGQg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3VkZWVwIEhvbGxhIDxz
dWRlZXAuaG9sbGFAYXJtLmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L3NjbWlfcHJvdG9jb2wuaCB8
IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9zY21pX3Byb3RvY29sLmggYi9pbmNsdWRlL2xpbnV4L3NjbWlfcHJvdG9j
b2wuaAppbmRleCA1Yzg3M2E1OWIzODcuLmNlMmY1YzI4YjJkZiAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9zY21pX3Byb3RvY29sLmgKKysrIGIvaW5jbHVkZS9saW51eC9zY21pX3Byb3RvY29s
LmgKQEAgLTQsNiArNCwxMCBAQAogICoKICAqIENvcHlyaWdodCAoQykgMjAxOCBBUk0gTHRkLgog
ICovCisKKyNpZm5kZWYgX0xJTlVYX1NDTUlfUFJPVE9DT0xfSAorI2RlZmluZSBfTElOVVhfU0NN
SV9QUk9UT0NPTF9ICisKICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51
eC90eXBlcy5oPgogCkBAIC0zMTksMyArMzIzLDUgQEAgc3RhdGljIGlubGluZSB2b2lkIHNjbWlf
ZHJpdmVyX3VucmVnaXN0ZXIoc3RydWN0IHNjbWlfZHJpdmVyICpkcml2ZXIpIHt9CiB0eXBlZGVm
IGludCAoKnNjbWlfcHJvdF9pbml0X2ZuX3QpKHN0cnVjdCBzY21pX2hhbmRsZSAqKTsKIGludCBz
Y21pX3Byb3RvY29sX3JlZ2lzdGVyKGludCBwcm90b2NvbF9pZCwgc2NtaV9wcm90X2luaXRfZm5f
dCBmbik7CiB2b2lkIHNjbWlfcHJvdG9jb2xfdW5yZWdpc3RlcihpbnQgcHJvdG9jb2xfaWQpOwor
CisjZW5kaWYgLyogX0xJTlVYX1NDTUlfUFJPVE9DT0xfSCAqLwotLSAKMi4xNy4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
