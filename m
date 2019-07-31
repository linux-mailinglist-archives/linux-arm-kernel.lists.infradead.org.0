Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A847CAA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R0CrUiRAE9eJ2XJjYbf6cZDg6S31yfwBWDx2cKE7q8=; b=R6Zbpkb6FsaDUC
	iHiqid7NBNVh5RB4TBleorYSeK0NpmyYZDN9gablrxcr7qL5H0PsFNc8bZSS/R+LBKE+C2zkgnAAe
	m0vLAJ4PZnMv7Cvq2U8RZuhkD/iWL1tvj7vKqUifuF4LHfTYqy3Qz9v0G3yL0jOozoepuU2Adve6m
	J0dYNydG1h4mGuEXqOafA1NetEFsYx86wZQLfSxygiyF4QxMoja80JcMa/1pF1wKlZBPpoR3lSKew
	Nb2vk1NgB7+GsN5ORMsoJmH4+Jakav5THwme7KusCWE+pt7Y3mIAskgNBGVGL8iMNyhHDNmf/mBaE
	zvOdI+0LFmO72MDjuhHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssXd-00051Q-J5; Wed, 31 Jul 2019 17:37:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssXC-0004hl-HG
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:37:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35BDC1596;
 Wed, 31 Jul 2019 10:37:06 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D8E13F71F;
 Wed, 31 Jul 2019 10:37:02 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 2/5] arm64: KVM: regmap: Fix unexpected switch fall-through
Date: Wed, 31 Jul 2019 18:36:47 +0100
Message-Id: <20190731173650.12627-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731173650.12627-1-maz@kernel.org>
References: <20190731173650.12627-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103706_668992_FC87D966 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgoKV2hlbiBmYWxs
LXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCwgY29tbWl0IGQ5MzUxMmVm
MGYwZQooIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKSwg
dGhlIGZvbGxvd2luZwp3YXJuaW5ncyB3YXMgc3RhcnRpbmcgdG8gc2hvdyB1cDoKCkluIGZpbGUg
aW5jbHVkZWQgZnJvbSAuLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9lbXVsYXRlLmg6MTks
CiAgICAgICAgICAgICAgICAgZnJvbSAuLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxMzoKLi4v
YXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6IEluIGZ1bmN0aW9uIOKAmHZjcHVfd3JpdGVfc3BzcjMy
4oCZOgouLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaDozMTozOiB3YXJuaW5nOiB0
aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1d
CiAgIGFzbSB2b2xhdGlsZShBTFRFUk5BVElWRShfX21zcl9zKHIjI252aCwgIiV4MCIpLCBcCiAg
IF5+fgouLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaDo0NjozMTogbm90ZTogaW4g
ZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHdyaXRlX3N5c3JlZ19lbHjigJkKICNkZWZpbmUgd3JpdGVf
c3lzcmVnX2VsMSh2LHIpIHdyaXRlX3N5c3JlZ19lbHgodiwgciwgX0VMMSwgX0VMMTIpCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+Ci4uL2FyY2gvYXJtNjQv
a3ZtL3JlZ21hcC5jOjE4MDozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYd3JpdGVf
c3lzcmVnX2VsMeKAmQogICB3cml0ZV9zeXNyZWdfZWwxKHYsIFNZU19TUFNSKTsKICAgXn5+fn5+
fn5+fn5+fn5+fgouLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxODE6Mjogbm90ZTogaGVyZQog
IGNhc2UgS1ZNX1NQU1JfQUJUOgogIF5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4uL2FyY2gv
YXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oOjEzMiwKICAgICAgICAgICAgICAgICBmcm9tIC4u
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY2FjaGUuaDo4LAogICAgICAgICAgICAgICAgIGZyb20g
Li4vaW5jbHVkZS9saW51eC9jYWNoZS5oOjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNs
dWRlL2xpbnV4L3ByaW50ay5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRlL2xp
bnV4L2tlcm5lbC5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20gLi4vaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9idWcuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC4uL2FyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vYnVnLmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRlL2xpbnV4L2J1
Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRlL2xpbnV4L21tZGVidWcuaDo1
LAogICAgICAgICAgICAgICAgIGZyb20gLi4vaW5jbHVkZS9saW51eC9tbS5oOjksCiAgICAgICAg
ICAgICAgICAgZnJvbSAuLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxMToKLi4vYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9zeXNyZWcuaDo4Mzc6Mjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogIGFzbSB2b2xhdGlsZSgi
bXNyICIgX19zdHJpbmdpZnkocikgIiwgJXgwIiAgXAogIF5+fgouLi9hcmNoL2FybTY0L2t2bS9y
ZWdtYXAuYzoxODI6Mzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHdyaXRlX3N5c3Jl
Z+KAmQogICB3cml0ZV9zeXNyZWcodiwgc3Bzcl9hYnQpOwogICBefn5+fn5+fn5+fn4KLi4vYXJj
aC9hcm02NC9rdm0vcmVnbWFwLmM6MTgzOjI6IG5vdGU6IGhlcmUKICBjYXNlIEtWTV9TUFNSX1VO
RDoKICBefn5+CgpSZXdvcmsgdG8gYWRkIGEgJ2JyZWFrOycgaW4gdGhlIHN3aWNoLWNhc2Ugc2lu
Y2UgaXQgZGlkbid0IGhhdmUgdGhhdCwKbGVhZGluZyB0byBhbiBpbnRlcnJlc3Rpbmcgc2V0IG9m
IGJ1Z3MuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY0LjE3KwpGaXhlczogYTg5Mjgx
OTU2MGM0ICgiS1ZNOiBhcm02NDogUHJlcGFyZSB0byBoYW5kbGUgZGVmZXJyZWQgc2F2ZS9yZXN0
b3JlIG9mIDMyLWJpdCByZWdpc3RlcnMiKQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxh
bmRlcnMucm94ZWxsQGxpbmFyby5vcmc+ClttYXo6IHJld29ya2VkIGNvbW1pdCBtZXNzYWdlLCBm
aXhlZCBzdGFibGUgcmFuZ2VdClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5l
bC5vcmc+Ci0tLQogYXJjaC9hcm02NC9rdm0vcmVnbWFwLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vcmVnbWFw
LmMgYi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYwppbmRleCAwZDYwZTRmMGFmNjYuLmE5MDAxODFl
Mzg2NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rdm0vcmVnbWFwLmMKKysrIGIvYXJjaC9hcm02
NC9rdm0vcmVnbWFwLmMKQEAgLTE3OCwxMyArMTc4LDE4IEBAIHZvaWQgdmNwdV93cml0ZV9zcHNy
MzIoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCB1bnNpZ25lZCBsb25nIHYpCiAJc3dpdGNoIChzcHNy
X2lkeCkgewogCWNhc2UgS1ZNX1NQU1JfU1ZDOgogCQl3cml0ZV9zeXNyZWdfZWwxKHYsIFNZU19T
UFNSKTsKKwkJYnJlYWs7CiAJY2FzZSBLVk1fU1BTUl9BQlQ6CiAJCXdyaXRlX3N5c3JlZyh2LCBz
cHNyX2FidCk7CisJCWJyZWFrOwogCWNhc2UgS1ZNX1NQU1JfVU5EOgogCQl3cml0ZV9zeXNyZWco
diwgc3Bzcl91bmQpOworCQlicmVhazsKIAljYXNlIEtWTV9TUFNSX0lSUToKIAkJd3JpdGVfc3lz
cmVnKHYsIHNwc3JfaXJxKTsKKwkJYnJlYWs7CiAJY2FzZSBLVk1fU1BTUl9GSVE6CiAJCXdyaXRl
X3N5c3JlZyh2LCBzcHNyX2ZpcSk7CisJCWJyZWFrOwogCX0KIH0KLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
