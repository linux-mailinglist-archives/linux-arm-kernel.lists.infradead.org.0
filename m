Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65EB14843C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aqqna3SyFjxxHXLQPuObgzpzcUC+lcpsGq1FTR/OlZo=; b=MnQiEu1ynoyIU5
	UtwlVy/1JGCQf0VxsQy5PfAH4QVJhNVtNRj8LXJbIil2rdo9ZXAbSp2HBKHZsgnvjvGOQwIg5qTxb
	vCl24ezVmYpZ0pfoD9mbOEjl7lp2+zB1CTQl98jGcBcW2+hZqS0RUJ5n12wKbCKzZgcBbn5vxxJtl
	L+QqlNK5YNHxzBYDa3xDWkdxl4gkLPt6fV1QTo2k5conUIYmS8QGrfsoPVix/9REeqyW3Welg1jIX
	DekSvmVfn+eIc+S4jxY48xawx+sOAfJ8Mr7TMML7MU6htl2UKz8eJkJkn3Dlnowlib3k51VFQOl5X
	+ckxneG0vpf3LKH0m+5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxLK-000596-0W; Fri, 24 Jan 2020 11:41:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxKE-0004GI-77; Fri, 24 Jan 2020 11:40:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E4D27AD5B;
 Fri, 24 Jan 2020 11:40:32 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH v2 2/3] cgroup: Clean up css_set task traversal
Date: Fri, 24 Jan 2020 12:40:16 +0100
Message-Id: <20200124114017.8363-3-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124114017.8363-1-mkoutny@suse.com>
References: <20200120145635.GA30904@blackbody.suse.cz>
 <20200124114017.8363-1-mkoutny@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_034034_541820_0B4F93B9 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, surenb@google.com, tj@kernel.org,
 lizefan@huawei.com, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, hannes@cmpxchg.org, matthias.bgg@gmail.com,
 alex.shi@linux.alibaba.com, kernel-team@android.com, guro@fb.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3NzX3Rhc2tfaXRlciBzdG9yZXMgcG9pbnRlciB0byBoZWFkIG9mIGVhY2ggaXRlcmFibGUgbGlz
dCwgdGhpcyBkYXRlcwpiYWNrIHRvIGNvbW1pdCAwZjBhMmI0ZmE2MjEgKCJjZ3JvdXA6IHJlb3Jn
YW5pemUgY3NzX3Rhc2tfaXRlciIpIHdoZW4gd2UKZGlkIG5vdCBzdG9yZSBjdXJfY3NldC4gTGV0
IHVzIHV0aWxpemUgbGlzdCBoZWFkcyBkaXJlY3RseSBpbiBjdXJfY3NldAphbmQgc3RyZWFtbGlu
ZSBjc3NfdGFza19pdGVyX2FkdmFuY2VfY3NzX3NldCBhIGJpdC4gVGhpcyBpcyBubwppbnRlbnRp
b25hbCBmdW5jdGlvbiBjaGFuZ2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgS291dG7DvSA8bWtv
dXRueUBzdXNlLmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L2Nncm91cC5oIHwgIDMgLS0tCiBrZXJu
ZWwvY2dyb3VwL2Nncm91cC5jIHwgNjEgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY2dyb3VwLmggYi9pbmNsdWRlL2xpbnV4
L2Nncm91cC5oCmluZGV4IGU3NWQyMTkxMjI2Yi4uZjEyMTliOTI3ODE3IDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L2Nncm91cC5oCisrKyBiL2luY2x1ZGUvbGludXgvY2dyb3VwLmgKQEAgLTU4
LDkgKzU4LDYgQEAgc3RydWN0IGNzc190YXNrX2l0ZXIgewogCXN0cnVjdCBsaXN0X2hlYWQJCSp0
Y3NldF9oZWFkOwogCiAJc3RydWN0IGxpc3RfaGVhZAkJKnRhc2tfcG9zOwotCXN0cnVjdCBsaXN0
X2hlYWQJCSp0YXNrc19oZWFkOwotCXN0cnVjdCBsaXN0X2hlYWQJCSptZ190YXNrc19oZWFkOwot
CXN0cnVjdCBsaXN0X2hlYWQJCSpkeWluZ190YXNrc19oZWFkOwogCiAJc3RydWN0IGxpc3RfaGVh
ZAkJKmN1cl90YXNrc19oZWFkOwogCXN0cnVjdCBjc3Nfc2V0CQkJKmN1cl9jc2V0OwpkaWZmIC0t
Z2l0IGEva2VybmVsL2Nncm91cC9jZ3JvdXAuYyBiL2tlcm5lbC9jZ3JvdXAvY2dyb3VwLmMKaW5k
ZXggYTZlMzYxOWUwMTNiLi4xNGUwZTM2MGEyYjQgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9jZ3JvdXAv
Y2dyb3VwLmMKKysrIGIva2VybmVsL2Nncm91cC9jZ3JvdXAuYwpAQCAtNDM5NSwyOSArNDM5NSwy
NCBAQCBzdGF0aWMgdm9pZCBjc3NfdGFza19pdGVyX2FkdmFuY2VfY3NzX3NldChzdHJ1Y3QgY3Nz
X3Rhc2tfaXRlciAqaXQpCiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjc3Nfc2V0X2xvY2spOwog
Ci0JLyogQWR2YW5jZSB0byB0aGUgbmV4dCBub24tZW1wdHkgY3NzX3NldCAqLwotCWRvIHsKLQkJ
Y3NldCA9IGNzc190YXNrX2l0ZXJfbmV4dF9jc3Nfc2V0KGl0KTsKLQkJaWYgKCFjc2V0KSB7Ci0J
CQlpdC0+dGFza19wb3MgPSBOVUxMOwotCQkJcmV0dXJuOworCS8qIEFkdmFuY2UgdG8gdGhlIG5l
eHQgbm9uLWVtcHR5IGNzc19zZXQgYW5kIGZpbmQgZmlyc3Qgbm9uLWVtcHR5IHRhc2tzIGxpc3Qq
LworCXdoaWxlICgoY3NldCA9IGNzc190YXNrX2l0ZXJfbmV4dF9jc3Nfc2V0KGl0KSkpIHsKKwkJ
aWYgKCFsaXN0X2VtcHR5KCZjc2V0LT50YXNrcykpIHsKKwkJCWl0LT5jdXJfdGFza3NfaGVhZCA9
ICZjc2V0LT50YXNrczsKKwkJCWJyZWFrOworCQl9IGVsc2UgaWYgKCFsaXN0X2VtcHR5KCZjc2V0
LT5tZ190YXNrcykpIHsKKwkJCWl0LT5jdXJfdGFza3NfaGVhZCA9ICZjc2V0LT5tZ190YXNrczsK
KwkJCWJyZWFrOworCQl9IGVsc2UgaWYgKCFsaXN0X2VtcHR5KCZjc2V0LT5keWluZ190YXNrcykp
IHsKKwkJCWl0LT5jdXJfdGFza3NfaGVhZCA9ICZjc2V0LT5keWluZ190YXNrczsKKwkJCWJyZWFr
OwogCQl9Ci0JfSB3aGlsZSAoIWNzc19zZXRfcG9wdWxhdGVkKGNzZXQpICYmIGxpc3RfZW1wdHko
JmNzZXQtPmR5aW5nX3Rhc2tzKSk7Ci0KLQlpZiAoIWxpc3RfZW1wdHkoJmNzZXQtPnRhc2tzKSkg
ewotCQlpdC0+dGFza19wb3MgPSBjc2V0LT50YXNrcy5uZXh0OwotCQlpdC0+Y3VyX3Rhc2tzX2hl
YWQgPSAmY3NldC0+dGFza3M7Ci0JfSBlbHNlIGlmICghbGlzdF9lbXB0eSgmY3NldC0+bWdfdGFz
a3MpKSB7Ci0JCWl0LT50YXNrX3BvcyA9IGNzZXQtPm1nX3Rhc2tzLm5leHQ7Ci0JCWl0LT5jdXJf
dGFza3NfaGVhZCA9ICZjc2V0LT5tZ190YXNrczsKLQl9IGVsc2UgewotCQlpdC0+dGFza19wb3Mg
PSBjc2V0LT5keWluZ190YXNrcy5uZXh0OwotCQlpdC0+Y3VyX3Rhc2tzX2hlYWQgPSAmY3NldC0+
ZHlpbmdfdGFza3M7CiAJfQotCi0JaXQtPnRhc2tzX2hlYWQgPSAmY3NldC0+dGFza3M7Ci0JaXQt
Pm1nX3Rhc2tzX2hlYWQgPSAmY3NldC0+bWdfdGFza3M7Ci0JaXQtPmR5aW5nX3Rhc2tzX2hlYWQg
PSAmY3NldC0+ZHlpbmdfdGFza3M7CisJaWYgKCFjc2V0KSB7CisJCWl0LT50YXNrX3BvcyA9IE5V
TEw7CisJCXJldHVybjsKKwl9CisJaXQtPnRhc2tfcG9zID0gaXQtPmN1cl90YXNrc19oZWFkLT5u
ZXh0OwogCiAJLyoKIAkgKiBXZSBkb24ndCBrZWVwIGNzc19zZXRzIGxvY2tlZCBhY3Jvc3MgaXRl
cmF0aW9uIHN0ZXBzIGFuZCB0aHVzCkBAIC00NDYyLDI0ICs0NDU3LDI0IEBAIHN0YXRpYyB2b2lk
IGNzc190YXNrX2l0ZXJfYWR2YW5jZShzdHJ1Y3QgY3NzX3Rhc2tfaXRlciAqaXQpCiByZXBlYXQ6
CiAJaWYgKGl0LT50YXNrX3BvcykgewogCQkvKgotCQkgKiBBZHZhbmNlIGl0ZXJhdG9yIHRvIGZp
bmQgbmV4dCBlbnRyeS4gIGNzZXQtPnRhc2tzIGlzCi0JCSAqIGNvbnN1bWVkIGZpcnN0IGFuZCB0
aGVuIC0+bWdfdGFza3MuICBBZnRlciAtPm1nX3Rhc2tzLAotCQkgKiB3ZSBtb3ZlIG9udG8gdGhl
IG5leHQgY3NldC4KKwkJICogQWR2YW5jZSBpdGVyYXRvciB0byBmaW5kIG5leHQgZW50cnkuIFdl
IGdvIHRocm91Z2ggY3NldAorCQkgKiB0YXNrcywgbWdfdGFza3MgYW5kIGR5aW5nX3Rhc2tzLCB3
aGVuIGNvbnN1bWVkIHdlIG1vdmUgb250bworCQkgKiB0aGUgbmV4dCBjc2V0LgogCQkgKi8KIAkJ
aWYgKGl0LT5mbGFncyAmIENTU19UQVNLX0lURVJfU0tJUFBFRCkKIAkJCWl0LT5mbGFncyAmPSB+
Q1NTX1RBU0tfSVRFUl9TS0lQUEVEOwogCQllbHNlCiAJCQlpdC0+dGFza19wb3MgPSBpdC0+dGFz
a19wb3MtPm5leHQ7CiAKLQkJaWYgKGl0LT50YXNrX3BvcyA9PSBpdC0+dGFza3NfaGVhZCkgewot
CQkJaXQtPnRhc2tfcG9zID0gaXQtPm1nX3Rhc2tzX2hlYWQtPm5leHQ7Ci0JCQlpdC0+Y3VyX3Rh
c2tzX2hlYWQgPSBpdC0+bWdfdGFza3NfaGVhZDsKKwkJaWYgKGl0LT50YXNrX3BvcyA9PSAmaXQt
PmN1cl9jc2V0LT50YXNrcykgeworCQkJaXQtPmN1cl90YXNrc19oZWFkID0gJml0LT5jdXJfY3Nl
dC0+bWdfdGFza3M7CisJCQlpdC0+dGFza19wb3MgPSBpdC0+Y3VyX3Rhc2tzX2hlYWQtPm5leHQ7
CiAJCX0KLQkJaWYgKGl0LT50YXNrX3BvcyA9PSBpdC0+bWdfdGFza3NfaGVhZCkgewotCQkJaXQt
PnRhc2tfcG9zID0gaXQtPmR5aW5nX3Rhc2tzX2hlYWQtPm5leHQ7Ci0JCQlpdC0+Y3VyX3Rhc2tz
X2hlYWQgPSBpdC0+ZHlpbmdfdGFza3NfaGVhZDsKKwkJaWYgKGl0LT50YXNrX3BvcyA9PSAmaXQt
PmN1cl9jc2V0LT5tZ190YXNrcykgeworCQkJaXQtPmN1cl90YXNrc19oZWFkID0gJml0LT5jdXJf
Y3NldC0+ZHlpbmdfdGFza3M7CisJCQlpdC0+dGFza19wb3MgPSBpdC0+Y3VyX3Rhc2tzX2hlYWQt
Pm5leHQ7CiAJCX0KLQkJaWYgKGl0LT50YXNrX3BvcyA9PSBpdC0+ZHlpbmdfdGFza3NfaGVhZCkK
KwkJaWYgKGl0LT50YXNrX3BvcyA9PSAmaXQtPmN1cl9jc2V0LT5keWluZ190YXNrcykKIAkJCWNz
c190YXNrX2l0ZXJfYWR2YW5jZV9jc3Nfc2V0KGl0KTsKIAl9IGVsc2UgewogCQkvKiBjYWxsZWQg
ZnJvbSBzdGFydCwgcHJvY2VlZCB0byB0aGUgZmlyc3QgY3NldCAqLwpAQCAtNDQ5NywxMiArNDQ5
MiwxMiBAQCBzdGF0aWMgdm9pZCBjc3NfdGFza19pdGVyX2FkdmFuY2Uoc3RydWN0IGNzc190YXNr
X2l0ZXIgKml0KQogCQkJZ290byByZXBlYXQ7CiAKIAkJLyogYW5kIGR5aW5nIGxlYWRlcnMgdy9v
IGxpdmUgbWVtYmVyIHRocmVhZHMgKi8KLQkJaWYgKGl0LT5jdXJfdGFza3NfaGVhZCA9PSBpdC0+
ZHlpbmdfdGFza3NfaGVhZCAmJgorCQlpZiAoaXQtPmN1cl90YXNrc19oZWFkID09ICZpdC0+Y3Vy
X2NzZXQtPmR5aW5nX3Rhc2tzICYmCiAJCSAgICAhYXRvbWljX3JlYWQoJnRhc2stPnNpZ25hbC0+
bGl2ZSkpCiAJCQlnb3RvIHJlcGVhdDsKIAl9IGVsc2UgewogCQkvKiBza2lwIGFsbCBkeWluZyBv
bmVzICovCi0JCWlmIChpdC0+Y3VyX3Rhc2tzX2hlYWQgPT0gaXQtPmR5aW5nX3Rhc2tzX2hlYWQp
CisJCWlmIChpdC0+Y3VyX3Rhc2tzX2hlYWQgPT0gJml0LT5jdXJfY3NldC0+ZHlpbmdfdGFza3Mp
CiAJCQlnb3RvIHJlcGVhdDsKIAl9CiB9Ci0tIAoyLjI0LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
