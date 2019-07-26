Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B45D76453
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3CeSiLlVntYMZXL0Liif6Xp/I+9EOFUgPRFJwQlTfyU=; b=RiaEJvze0544yE
	VNQjf3JZA7gKltzavuNkg9AzwiSqyMwg/YORLTA6JF919J3qxqV6cdgj1ZwcjESoejpQKgQYTYdT6
	hkYuqPHQ5u9ioIerDECTObh+QUnsu3Psxzl2DRF4q/OjFhXwfQ0KFmnnkLGsuIgiFciix2KNX/LMI
	J06hViDRpY088AiFgFDNhMSu2juznzgNIExdx5R+NRBt7oFBaNiCGbkASq3Y/M+h1ALaad4W7mDaO
	caekBeZV7d6ucWcIQME72DTDyFFpK/qAK6sCwmGW3og/7Un81//X1aHEQKoed3ODbCGU7W+XStOXJ
	393xy1npt2rMBkxy+RFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyNm-0001WT-UO; Fri, 26 Jul 2019 11:27:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNU-0001W4-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id y17so26578331ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ZeEPeRDOknxPoC0/mlXSl8BxnaCt+PLZvPwsv+/Wqg=;
 b=oFWvs4MvlL5GP1gOZX6EZCUM2DYpnzic9Y3aW+lbwp2ZlxCnqCK7T5Bah4HG/joNOs
 hV63e0w5+svVL8XhftgWoWP/xCsWoblTf6/31WWKzPb/CwML3ON89eWY42RteRNyjwNS
 I197pa9xb3Qz6rxDm9hDLNq5ZbkJvSiwlFXcR8fDGrI/kDNBHrhXDuf88fagsz5HwmT7
 MpJtdv/j3qYcrqljuvU0aunOcizbibYaxbPC/XFelw2VXEj2hKS0CyZoB45ls2x83PYh
 RbSW/E8DfU+T4TjCdPusX2d4I4gsNutKuwZXekucTrsBKtxPwVCvIaPHjB+M/RwiEKaA
 KCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ZeEPeRDOknxPoC0/mlXSl8BxnaCt+PLZvPwsv+/Wqg=;
 b=GCGWBB5gBVxekUSmTKlyWWPIigBaqrQ4IaXDtvpVrUooGZX0gBFgjS+kLlr4VGyLZ/
 LuToqMVvd+vgOQXNWvYoLqGXDhEL/ffIBalyTVV+XekD0VuZX0JQVjwDfRy8keVL/DIE
 xAJDy+kqFpfIyIHQYBkrJRYunem1W+k4NIb615lZBVx6ZXgh54XO20BiaMNU5G3v2HVD
 C7c2VaO98kwuCnu9gpjyMgUPHJr1LIdCiKQVakyUfszMb0vJmMIM5wJAqacPnPGpdmzj
 Pa+Wev4WALSNMejT9ZQnJQ8lSgYgCH3WhWTEByGd1eazTdQ9lxuN4zwSD1gWeEaHCxiF
 h1dg==
X-Gm-Message-State: APjAAAXGbv99swVgC/HaKG5pZzdmuytaAOUWujeoZIy9fXuE2NEbaQSJ
 qmqk8DF786aAuWb0bpswaZvjuML2FiAt8A==
X-Google-Smtp-Source: APXvYqzBzw39/qTQ5qot67rMP7b47yVgMBStFTk75r4a7FEttMNWySTKLQVrAfua6AJQua/mT8NDOA==
X-Received: by 2002:a2e:9593:: with SMTP id w19mr1978301ljh.69.1564140430346; 
 Fri, 26 Jul 2019 04:27:10 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id q2sm8196273lfj.25.2019.07.26.04.27.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:09 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 1/2] arm64: KVM: regmap: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:05 +0200
Message-Id: <20190726112705.19000-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042712_853004_6734AAF8 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCwgY29tbWl0
IGQ5MzUxMmVmMGYwZQooIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdh
cm5pbmciKSwgdGhlIGZvbGxvd2luZwp3YXJuaW5ncyB3YXMgc3RhcnRpbmcgdG8gc2hvdyB1cDoK
CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9lbXVs
YXRlLmg6MTksCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAu
YzoxMzoKLi4vYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6IEluIGZ1bmN0aW9uIOKAmHZjcHVfd3Jp
dGVfc3BzcjMy4oCZOgouLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaDozMTozOiB3
YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCiAgIGFzbSB2b2xhdGlsZShBTFRFUk5BVElWRShfX21zcl9zKHIjI252aCwgIiV4
MCIpLCBcCiAgIF5+fgouLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaDo0NjozMTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHdyaXRlX3N5c3JlZ19lbHjigJkKICNkZWZp
bmUgd3JpdGVfc3lzcmVnX2VsMSh2LHIpIHdyaXRlX3N5c3JlZ19lbHgodiwgciwgX0VMMSwgX0VM
MTIpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+Ci4uL2Fy
Y2gvYXJtNjQva3ZtL3JlZ21hcC5jOjE4MDozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
4oCYd3JpdGVfc3lzcmVnX2VsMeKAmQogICB3cml0ZV9zeXNyZWdfZWwxKHYsIFNZU19TUFNSKTsK
ICAgXn5+fn5+fn5+fn5+fn5+fgouLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxODE6Mjogbm90
ZTogaGVyZQogIGNhc2UgS1ZNX1NQU1JfQUJUOgogIF5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IC4uL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oOjEzMiwKICAgICAgICAgICAgICAg
ICBmcm9tIC4uL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY2FjaGUuaDo4LAogICAgICAgICAgICAg
ICAgIGZyb20gLi4vaW5jbHVkZS9saW51eC9jYWNoZS5oOjYsCiAgICAgICAgICAgICAgICAgZnJv
bSAuLi9pbmNsdWRlL2xpbnV4L3ByaW50ay5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9p
bmNsdWRlL2xpbnV4L2tlcm5lbC5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20gLi4vaW5jbHVk
ZS9hc20tZ2VuZXJpYy9idWcuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC4uL2FyY2gvYXJt
NjQvaW5jbHVkZS9hc20vYnVnLmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRl
L2xpbnV4L2J1Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRlL2xpbnV4L21t
ZGVidWcuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gLi4vaW5jbHVkZS9saW51eC9tbS5oOjks
CiAgICAgICAgICAgICAgICAgZnJvbSAuLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxMToKLi4v
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaDo4Mzc6Mjogd2FybmluZzogdGhpcyBzdGF0
ZW1lbnQgbWF5IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogIGFzbSB2
b2xhdGlsZSgibXNyICIgX19zdHJpbmdpZnkocikgIiwgJXgwIiAgXAogIF5+fgouLi9hcmNoL2Fy
bTY0L2t2bS9yZWdtYXAuYzoxODI6Mzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHdy
aXRlX3N5c3JlZ+KAmQogICB3cml0ZV9zeXNyZWcodiwgc3Bzcl9hYnQpOwogICBefn5+fn5+fn5+
fn4KLi4vYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTgzOjI6IG5vdGU6IGhlcmUKICBjYXNlIEtW
TV9TUFNSX1VORDoKICBefn5+CgpSZXdvcmsgdG8gYWRkIGEgJ2JyZWFrOycgaW4gdGhlIHN3aWNo
LWNhc2Ugc2luY2UgaXQgZGlkbid0IGhhdmUgdGhhdC4KVGhhdCBhbHNvIG1hZGUgdGhlIGNvbXBp
bGVyIGhhcHB5IGFuZCBkaWRuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guCgpDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZyAjIHYzLjE2KwpGaXhlczogYTg5MjgxOTU2MGM0ICgiS1ZNOiBhcm02
NDogUHJlcGFyZSB0byBoYW5kbGUgZGVmZXJyZWQgc2F2ZS9yZXN0b3JlIG9mIDMyLWJpdCByZWdp
c3RlcnMiKQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFy
by5vcmc+Ci0tLQogYXJjaC9hcm02NC9rdm0vcmVnbWFwLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hh
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
