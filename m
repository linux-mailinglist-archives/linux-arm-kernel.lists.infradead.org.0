Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823F619AED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 17:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVc6S/ZKQnK0EapZPRRsqaQDO1EXFIHewvM+J+KiFow=; b=uEYxjNUrTfIckk
	LW7ROmmN0oAyoho/Om5d4ooGFYkLVkW2PaOZ4cmbPMkbIq/6GNheJ6m9OLTYLtgcTo4VQjJiCD2JU
	DEgEg4oaMhKjxk9Y+rrgNXBiPL0gYjFbrdNVVQhjbHn0mmaf7qNGOLLcIA6dfR8gKpdSdkTEiGa4d
	X4ItK7ajJY2c6CLRyPqadENLo/qL0T4Sl3qEmuMn04y0E2ZYB1BE4yMN5W1/r75/FuGpfEkeIk6TN
	O1CaR5qffDSq26QzpGC/XNot/hFxye/C2mCFA53M6Kf7+ya0I8xG8PJA9HQMCFmD0p4d/TxRLRDJ4
	M7FXqgaC8BQ3YHGibpcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJfPK-0003it-9n; Wed, 01 Apr 2020 15:35:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJfP2-0003at-DA; Wed, 01 Apr 2020 15:35:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 3B75028A107
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve
 revision
Date: Wed,  1 Apr 2020 17:35:12 +0200
Message-Id: <20200401153513.423683-2-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401153513.423683-1-mylene.josserand@collabora.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_083540_572976_3C5C63B6 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mylene.josserand@collabora.com, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGV0ZXJtaW5lIHdoaWNoIHJldmlzaW9uIG9mIHJrMzI4OCBieSBjaGVja2luZyB0aGUgSERNSSB2
ZXJzaW9uLgpBY2NvcmRpbmcgdG8gdGhlIFJvY2tjaGlwIEJTUCBrZXJuZWwvdS1ib290LCBvbiBy
azMyODh3LCB0aGUgSERNSQpyZXZpc2lvbiBlcXVhbHMgMHgxQSB3aGljaCBpcyBub3QgdGhlIGNh
c2UgZm9yIHRoZSByazMyODguCgpBcyB0aGVzZSBTT0MgaGF2ZSBzb21lIGRpZmZlcmVuY2VzLCB0
aGlzIGRyaXZlciB3aWxsIGhlbHAgdXMKdG8ga25vdyBvbiB3aGljaCByZXZpc2lvbiB3ZSBhcmUg
YnkgdXNpbmcgJ3NvY19kZXZpY2UnIHJlZ2lzdHJhdGlvbgp0byBiZSBhYmxlIHRvIHVzZSAnc29j
X2RldmljZV9tYXRjaCcgdG8gZGV0ZWN0IHJrMzI4OC9yazMyODh3LgoKU2lnbmVkLW9mZi1ieTog
TXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4KLS0tCiBk
cml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZSB8ICAgMSArCiBkcml2ZXJzL3NvYy9yb2NrY2hp
cC9yazMyODguYyB8IDEyNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDEyNiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9zb2Mvcm9ja2NoaXAvcmszMjg4LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yb2NrY2hp
cC9NYWtlZmlsZSBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL01ha2VmaWxlCmluZGV4IGFmY2EwYTRj
NGI3Mi4uOWRiZjEyOTEzNTEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtl
ZmlsZQorKysgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtMiw1ICsyLDYgQEAK
ICMKICMgUm9ja2NoaXAgU29jIGRyaXZlcnMKICMKK29iai0kKENPTkZJR19BUkNIX1JPQ0tDSElQ
KSArPSByazMyODgubwogb2JqLSQoQ09ORklHX1JPQ0tDSElQX0dSRikgKz0gZ3JmLm8KIG9iai0k
KENPTkZJR19ST0NLQ0hJUF9QTV9ET01BSU5TKSArPSBwbV9kb21haW5zLm8KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL3JvY2tjaGlwL3JrMzI4OC5jIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvcmsz
Mjg4LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi44MzM3OWJhMmIz
MWIKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9yazMyODguYwpAQCAt
MCwwICsxLDEyNSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKy8qCisg
KiBDb3B5cmlnaHQgMjAyMCBDb2xsYWJvcmEgTHRkCisgKiBBdXRob3I6IE15bGVuZSBKb3NzZXJh
bmQgPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4KKyAqLworCisjaW5jbHVkZSA8bGlu
dXgvaW5pdC5oPgorI2luY2x1ZGUgPGxpbnV4L2lvLmg+CisjaW5jbHVkZSA8bGludXgvb2ZfYWRk
cmVzcy5oPgorI2luY2x1ZGUgPGxpbnV4L3N5c19zb2MuaD4KKyNpbmNsdWRlIDxsaW51eC9zbGFi
Lmg+CisjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CisjaW5jbHVkZSA8bGludXgv
b2YuaD4KKworI2RlZmluZSBSSzMyODhfSERNSV9SRVZfUkVHCTB4MDQKKyNkZWZpbmUgUkszMjg4
V19IRE1JX1JFVgkweDFBCisKK2VudW0gcmszMjg4X3NvY19yZXYgeworCVJLMzI4OF9TT0NfUkVW
X05PVF9ERVRFQ1QsCisJUkszMjg4X1NPQ19SRVZfUkszMjg4LAorCVJLMzI4OF9TT0NfUkVWX1JL
MzI4OFcsCit9OworCitzdGF0aWMgaW50IHJrMzI4OF9yZXZpc2lvbih2b2lkKQoreworCXN0YXRp
YyBpbnQgcmV2aXNpb24gPSBSSzMyODhfU09DX1JFVl9OT1RfREVURUNUOworCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqZG47CisJdm9pZCBfX2lvbWVtICpoZG1pX2Jhc2U7CisKKwlpZiAocmV2aXNpb24g
IT0gUkszMjg4X1NPQ19SRVZfTk9UX0RFVEVDVCkKKwkJcmV0dXJuIHJldmlzaW9uOworCisJZG4g
PSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShOVUxMLCBOVUxMLCAicm9ja2NoaXAscmszMjg4LWR3
LWhkbWkiKTsKKwlpZiAoIWRuKSB7CisJCXByX2VycigiJXM6IENvdWxkbid0IGZpbmQgSERNSSBu
b2RlXG4iLCBfX2Z1bmNfXyk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCWhkbWlfYmFzZSA9
IG9mX2lvbWFwKGRuLCAwKTsKKwlvZl9ub2RlX3B1dChkbik7CisKKwlpZiAoIWhkbWlfYmFzZSkg
eworCQlwcl9lcnIoIiVzOiBDb3VsZG4ndCBtYXAgJXBPRiByZWdzXG4iLCBfX2Z1bmNfXywKKwkJ
ICAgICAgIGhkbWlfYmFzZSk7CisJCXJldHVybiAtRU5YSU87CisJfQorCisJaWYgKHJlYWRsX3Jl
bGF4ZWQoaGRtaV9iYXNlICsgUkszMjg4X0hETUlfUkVWX1JFRykKKwkgICAgPT0gUkszMjg4V19I
RE1JX1JFVikKKwkJcmV2aXNpb24gPSBSSzMyODhfU09DX1JFVl9SSzMyODhXOworCWVsc2UKKwkJ
cmV2aXNpb24gPSBSSzMyODhfU09DX1JFVl9SSzMyODg7CisKKwlpb3VubWFwKGhkbWlfYmFzZSk7
CisKKwlyZXR1cm4gcmV2aXNpb247Cit9CisKK3N0YXRpYyBjb25zdCBjaGFyICpyazMyODhfc29j
aW5mb19yZXZpc2lvbih1MzIgcmV2KQoreworCWNvbnN0IGNoYXIgKnNvY19yZXY7CisKKwlzd2l0
Y2ggKHJldikgeworCWNhc2UgUkszMjg4X1NPQ19SRVZfUkszMjg4OgorCQlzb2NfcmV2ID0gIlJL
MzI4OCI7CisJCWJyZWFrOworCisJY2FzZSBSSzMyODhfU09DX1JFVl9SSzMyODhXOgorCQlzb2Nf
cmV2ID0gIlJLMzI4OHciOworCQlicmVhazsKKworCWNhc2UgUkszMjg4X1NPQ19SRVZfTk9UX0RF
VEVDVDoKKwkJc29jX3JldiA9ICIiOworCQlicmVhazsKKworCWRlZmF1bHQ6CisJCXNvY19yZXYg
PSAidW5rbm93biI7CisJCWJyZWFrOworCX0KKworCXJldHVybiBrc3RyZHVwX2NvbnN0KHNvY19y
ZXYsIEdGUF9LRVJORUwpOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBy
azMyODhfc29jX21hdGNoW10gPSB7CisJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMyODgi
LCB9LAorCXsgfQorfTsKKworc3RhdGljIGludCBfX2luaXQgcmszMjg4X3NvY19pbml0KHZvaWQp
Cit7CisJc3RydWN0IHNvY19kZXZpY2VfYXR0cmlidXRlICpzb2NfZGV2X2F0dHI7CisJc3RydWN0
IHNvY19kZXZpY2UgKnNvY19kZXY7CisJc3RydWN0IGRldmljZV9ub2RlICpucDsKKworCW5wID0g
b2ZfZmluZF9tYXRjaGluZ19ub2RlKE5VTEwsIHJrMzI4OF9zb2NfbWF0Y2gpOworCWlmICghbnAp
CisJCXJldHVybiAtRU5PREVWOworCisJc29jX2Rldl9hdHRyID0ga3phbGxvYyhzaXplb2YoKnNv
Y19kZXZfYXR0ciksIEdGUF9LRVJORUwpOworCWlmICghc29jX2Rldl9hdHRyKQorCQlyZXR1cm4g
LUVOT01FTTsKKworCXNvY19kZXZfYXR0ci0+ZmFtaWx5ID0gIlJvY2tjaGlwIjsKKwlzb2NfZGV2
X2F0dHItPnNvY19pZCA9ICJSSzMyeHgiOworCisJbnAgPSBvZl9maW5kX25vZGVfYnlfcGF0aCgi
LyIpOworCW9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKG5wLCAibW9kZWwiLCAmc29jX2Rldl9hdHRy
LT5tYWNoaW5lKTsKKwlvZl9ub2RlX3B1dChucCk7CisKKwlzb2NfZGV2X2F0dHItPnJldmlzaW9u
ID0gcmszMjg4X3NvY2luZm9fcmV2aXNpb24ocmszMjg4X3JldmlzaW9uKCkpOworCisJc29jX2Rl
diA9IHNvY19kZXZpY2VfcmVnaXN0ZXIoc29jX2Rldl9hdHRyKTsKKwlpZiAoSVNfRVJSKHNvY19k
ZXYpKSB7CisJCWtmcmVlX2NvbnN0KHNvY19kZXZfYXR0ci0+cmV2aXNpb24pOworCQlrZnJlZV9j
b25zdChzb2NfZGV2X2F0dHItPnNvY19pZCk7CisJCWtmcmVlKHNvY19kZXZfYXR0cik7CisJCXJl
dHVybiBQVFJfRVJSKHNvY19kZXYpOworCX0KKworCWRldl9pbmZvKHNvY19kZXZpY2VfdG9fZGV2
aWNlKHNvY19kZXYpLCAiUm9ja2NoaXAgJXMgJXMgZGV0ZWN0ZWRcbiIsCisJCSBzb2NfZGV2X2F0
dHItPnNvY19pZCwgc29jX2Rldl9hdHRyLT5yZXZpc2lvbik7CisKKwlyZXR1cm4gMDsKK30KK3Bv
c3Rjb3JlX2luaXRjYWxsKHJrMzI4OF9zb2NfaW5pdCk7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
