Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2CCF8305
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 23:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q+D5nxIBxeZ1bHrs/XM6L1KP5hv2ZizT3pw1Rfib6oQ=; b=mAtFUg2a0OkftF
	cxYZKbxLuvFzNKfrhuNx7enh5gDUAPLxNVR9sXMIdCYoBXUErEGLwWYqmVdpS8Zo/IBk8vls1sJNz
	8KKPNCUlqbL+oPHGQEF1VT7onvLVYdgLiatf2fmBChaj+83/cQ0t2Oq+y6bJmpQ4QWA/4vq78jd8z
	GgE+yMw91PrqfMdmHBkn2CYQMfCdIkbtZItYX7GOPWdflzrf1rbsFSk2KOd9fq1OB6SPD8HnzNT9V
	9IqweFah402eQF7traMaTzanmndWLwdanXscUTnkl5OoaBDv8lBQCCgi1duxOBMZebtER3KsAUBOK
	G4/wWdSoPiMiU7sIsKgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIJk-0005f5-TG; Mon, 11 Nov 2019 22:37:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIJO-0005YK-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 22:37:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AAEA9AC8B;
 Mon, 11 Nov 2019 22:37:28 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Subject: [PATCH] ARM: ep93xx: Avoid soc_device_to_device()
Date: Mon, 11 Nov 2019 23:37:22 +0100
Message-Id: <20191111223722.2364-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_143730_466872_8B907441 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZXA5M3h4X2luaXRfc29jKCkgdXNlcyBzb2NfZGV2aWNlX3RvX2RldmljZSgpIHRvIHJldHVybiBh
IGRldmljZQp0byBlcDkzeHhfaW5pdF9kZXZpY2VzKCksIHdoZXJlIGl0IGlzIHBhc3NlZCBvbiB0
byBpdHMgY2FsbGVycywKd2hvIGFsbCBpZ25vcmUgdGhlIHJldHVybiB2YWx1ZS4gQXMgdGhpcyBo
ZWxwZXIgaXMgZGVwcmVjYXRlZCwKY2hhbmdlIHRoZSByZXR1cm4gdHlwZSBvZiBlcDkzeHhfaW5p
dF9kZXZpY2VzKCkgdG8gdm9pZCBhbmQKaGF2ZSBlcDkzeHhfaW5pdF9zb2MoKSByZXR1cm4gdGhl
IHNvY19kZXZpY2UgaW5zdGVhZC4KCkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+Ci0tLQogYXJjaC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jICAgICB8IDEyICsrKyst
LS0tLS0tLQogYXJjaC9hcm0vbWFjaC1lcDkzeHgvcGxhdGZvcm0uaCB8ICAyICstCiAyIGZpbGVz
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9tYWNoLWVwOTN4eC9jb3JlLmMgYi9hcmNoL2FybS9tYWNoLWVwOTN4eC9jb3JlLmMK
aW5kZXggNmZiMTlhMzkzZmQyLi43YTBjODJiMzA1NjQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21h
Y2gtZXA5M3h4L2NvcmUuYworKysgYi9hcmNoL2FybS9tYWNoLWVwOTN4eC9jb3JlLmMKQEAgLTkz
Nyw3ICs5MzcsNyBAQCBzdGF0aWMgY29uc3QgY2hhciBfX2luaXQgKmVwOTN4eF9nZXRfbWFjaGlu
ZV9uYW1lKHZvaWQpCiAJcmV0dXJuIGthc3ByaW50ZihHRlBfS0VSTkVMLCIlcyIsIG1hY2hpbmVf
ZGVzYy0+bmFtZSk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgZGV2aWNlIF9faW5pdCAqZXA5M3h4X2lu
aXRfc29jKHZvaWQpCitzdGF0aWMgc3RydWN0IHNvY19kZXZpY2UgX19pbml0ICplcDkzeHhfaW5p
dF9zb2Modm9pZCkKIHsKIAlzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgKnNvY19kZXZfYXR0
cjsKIAlzdHJ1Y3Qgc29jX2RldmljZSAqc29jX2RldjsKQEAgLTk1OCwxMyArOTU4LDExIEBAIHN0
YXRpYyBzdHJ1Y3QgZGV2aWNlIF9faW5pdCAqZXA5M3h4X2luaXRfc29jKHZvaWQpCiAJCXJldHVy
biBOVUxMOwogCX0KIAotCXJldHVybiBzb2NfZGV2aWNlX3RvX2RldmljZShzb2NfZGV2KTsKKwly
ZXR1cm4gc29jX2RldjsKIH0KIAotc3RydWN0IGRldmljZSBfX2luaXQgKmVwOTN4eF9pbml0X2Rl
dmljZXModm9pZCkKK3ZvaWQgX19pbml0IGVwOTN4eF9pbml0X2RldmljZXModm9pZCkKIHsKLQlz
dHJ1Y3QgZGV2aWNlICpwYXJlbnQ7Ci0KIAkvKiBEaXNhbGxvdyBhY2Nlc3MgdG8gTWF2ZXJpY2tD
cnVuY2ggaW5pdGlhbGx5ICovCiAJZXA5M3h4X2RldmNmZ19jbGVhcl9iaXRzKEVQOTNYWF9TWVND
T05fREVWQ0ZHX0NQRU5BKTsKIApAQCAtOTc1LDcgKzk3Myw3IEBAIHN0cnVjdCBkZXZpY2UgX19p
bml0ICplcDkzeHhfaW5pdF9kZXZpY2VzKHZvaWQpCiAJCQkgICAgICAgRVA5M1hYX1NZU0NPTl9E
RVZDRkdfR09OSURFIHwKIAkJCSAgICAgICBFUDkzWFhfU1lTQ09OX0RFVkNGR19IT05JREUpOwog
Ci0JcGFyZW50ID0gZXA5M3h4X2luaXRfc29jKCk7CisJZXA5M3h4X2luaXRfc29jKCk7CiAKIAkv
KiBHZXQgdGhlIEdQSU8gd29ya2luZyBlYXJseSwgb3RoZXIgZGV2aWNlcyBuZWVkIGl0ICovCiAJ
cGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyKCZlcDkzeHhfZ3Bpb19kZXZpY2UpOwpAQCAtOTg5LDgg
Kzk4Nyw2IEBAIHN0cnVjdCBkZXZpY2UgX19pbml0ICplcDkzeHhfaW5pdF9kZXZpY2VzKHZvaWQp
CiAJcGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyKCZlcDkzeHhfd2R0X2RldmljZSk7CiAKIAlncGlv
X2xlZF9yZWdpc3Rlcl9kZXZpY2UoLTEsICZlcDkzeHhfbGVkX2RhdGEpOwotCi0JcmV0dXJuIHBh
cmVudDsKIH0KIAogdm9pZCBlcDkzeHhfcmVzdGFydChlbnVtIHJlYm9vdF9tb2RlIG1vZGUsIGNv
bnN0IGNoYXIgKmNtZCkKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtZXA5M3h4L3BsYXRmb3Jt
LmggYi9hcmNoL2FybS9tYWNoLWVwOTN4eC9wbGF0Zm9ybS5oCmluZGV4IGI0MDQ1YTE4NjIzOS4u
OGEzYTJiZTUwZjExIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWVwOTN4eC9wbGF0Zm9ybS5o
CisrKyBiL2FyY2gvYXJtL21hY2gtZXA5M3h4L3BsYXRmb3JtLmgKQEAgLTM0LDcgKzM0LDcgQEAg
dm9pZCBlcDkzeHhfcmVnaXN0ZXJfYWM5Nyh2b2lkKTsKIHZvaWQgZXA5M3h4X3JlZ2lzdGVyX2lk
ZSh2b2lkKTsKIHZvaWQgZXA5M3h4X3JlZ2lzdGVyX2FkYyh2b2lkKTsKIAotc3RydWN0IGRldmlj
ZSAqZXA5M3h4X2luaXRfZGV2aWNlcyh2b2lkKTsKK3ZvaWQgZXA5M3h4X2luaXRfZGV2aWNlcyh2
b2lkKTsKIGV4dGVybiB2b2lkIGVwOTN4eF90aW1lcl9pbml0KHZvaWQpOwogCiB2b2lkIGVwOTN4
eF9yZXN0YXJ0KGVudW0gcmVib290X21vZGUsIGNvbnN0IGNoYXIgKik7Ci0tIAoyLjE2LjQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
