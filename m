Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DCA12CA71
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 19:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ytp6B2AYziKkhSMPH0Cx8oOeo6gnpWngrKfJvIydf/A=; b=fhSD3GSoLGKcqG
	etmE/HB4xBoyVdQ1Ri0JxcE/b01StYI3KOnavtKZM+hB4sdMw2Galbw4VkvkGKt3F3X3+baTshwqQ
	lc2ontdo+aG0TWdPgRPWfFvrwCzHZ80bbqmrdtbCkeZsqA/ywfogvzpop9XvWgPG/zVts1hzf/oTl
	tNFcKUUbZV+mD62/rqcej3jRIpLYbQahCcihbBDOHcEyXs7Fkb6hLs9SUCqiplOAHl5a4tMPAyT7Z
	6k8t1Lifl12RxNWPbgJLBAL/W9gogJNbGgRlXytp5qYrVAbsGtG3L4K9egUSeBWSrPUZUtxK8SOQ8
	eKKexXwQXIyiOMc8VB4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ildQX-0001N0-AT; Sun, 29 Dec 2019 18:36:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ildQP-0001Lc-Q7; Sun, 29 Dec 2019 18:36:27 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B14820748;
 Sun, 29 Dec 2019 18:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577644582;
 bh=czUisFJmY3fA8ZbN0nGTyeSLt61Fc6iQHasHh+W7A9s=;
 h=From:To:Cc:Subject:Date:From;
 b=OjFGQSfOacDRk3KxbOgA5t0fVE9LjnAFKB5NkdlF/9nppBfYnCELFHBJaz+4IHJLO
 RQtOn4nEMbEsM0lH3UgCE50zZDEZLtlyNHAe6t7KBYvC/ZpmJGTVvrrGKrY6HmxqTm
 c1leBBunL0FxfS4RhONrX0bAwo2xFf1DGxWIKnrw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] mtd: onenand: samsung: Fix pointer cast
 -Wpointer-to-int-cast warnings on 64 bit
Date: Sun, 29 Dec 2019 19:36:10 +0100
Message-Id: <20191229183612.22133-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_103625_870004_492D98B0 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aW9tZW0gcG9pbnRlcnMgc2hvdWxkIGJlIGNhc3RlZCB0byB1bnNpZ25lZCBsb25nIHRvIGF2b2lk
Ci1XcG9pbnRlci10by1pbnQtY2FzdCB3YXJuaW5ncyB3aGVuIGNvbXBpbGluZyBvbiA2NC1iaXQg
cGxhdGZvcm0gKGUuZy4Kd2l0aCBDT01QSUxFX1RFU1QpOgoKICAgIGRyaXZlcnMvbXRkL25hbmQv
b25lbmFuZC9zYW1zdW5nX210ZC5jOiBJbiBmdW5jdGlvbiDigJhzM2Nfb25lbmFuZF9yZWFkd+KA
mToKICAgIGRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5nX210ZC5jOjI1MTo2OiB3YXJu
aW5nOgogICAgICAgIGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNp
emUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICAgICAgaWYgKCh1bnNpZ25lZCBpbnQpIGFkZHIg
PCBPTkVOQU5EX0RBVEFSQU0gJiYgb25lbmFuZC0+Ym9vdHJhbV9jb21tYW5kKSB7CiAgICAgICAg
ICBeCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+
Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL3NhbXN1bmdfbXRkLmMgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL3NhbXN1bmdfbXRkLmMgYi9kcml2ZXJzL210ZC9u
YW5kL29uZW5hbmQvc2Ftc3VuZ19tdGQuYwppbmRleCA1NWU1NTM2YTU4NTAuLjcwNTAxZDAzMWRi
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL3NhbXN1bmdfbXRkLmMKKysr
IGIvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL3NhbXN1bmdfbXRkLmMKQEAgLTI0OCw3ICsyNDgs
NyBAQCBzdGF0aWMgdW5zaWduZWQgc2hvcnQgczNjX29uZW5hbmRfcmVhZHcodm9pZCBfX2lvbWVt
ICphZGRyKQogCX0KIAogCS8qIEJvb3RSQU0gYWNjZXNzIGNvbnRyb2wgKi8KLQlpZiAoKHVuc2ln
bmVkIGludCkgYWRkciA8IE9ORU5BTkRfREFUQVJBTSAmJiBvbmVuYW5kLT5ib290cmFtX2NvbW1h
bmQpIHsKKwlpZiAoKHVuc2lnbmVkIGxvbmcpYWRkciA8IE9ORU5BTkRfREFUQVJBTSAmJiBvbmVu
YW5kLT5ib290cmFtX2NvbW1hbmQpIHsKIAkJaWYgKHdvcmRfYWRkciA9PSAwKQogCQkJcmV0dXJu
IHMzY19yZWFkX3JlZyhNQU5VRkFDVF9JRF9PRkZTRVQpOwogCQlpZiAod29yZF9hZGRyID09IDEp
CkBAIC0yODksNyArMjg5LDcgQEAgc3RhdGljIHZvaWQgczNjX29uZW5hbmRfd3JpdGV3KHVuc2ln
bmVkIHNob3J0IHZhbHVlLCB2b2lkIF9faW9tZW0gKmFkZHIpCiAJfQogCiAJLyogQm9vdFJBTSBh
Y2Nlc3MgY29udHJvbCAqLwotCWlmICgodW5zaWduZWQgaW50KWFkZHIgPCBPTkVOQU5EX0RBVEFS
QU0pIHsKKwlpZiAoKHVuc2lnbmVkIGxvbmcpYWRkciA8IE9ORU5BTkRfREFUQVJBTSkgewogCQlp
ZiAodmFsdWUgPT0gT05FTkFORF9DTURfUkVBRElEKSB7CiAJCQlvbmVuYW5kLT5ib290cmFtX2Nv
bW1hbmQgPSAxOwogCQkJcmV0dXJuOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
