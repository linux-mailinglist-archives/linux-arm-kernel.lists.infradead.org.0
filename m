Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755F91EB70A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7dC5a0RhBfdeTy4oihrAdxDNWAa8GSK2ZgrOvSLdp8=; b=m/YrhxLcVx2oH0
	qOAAlnxyk6Uhz+IbkwuYdHzVJqG0Skm1KJ7S/9jz7HdcFXXlgkH5QfTCmFteyRZwdZD+7yU8tx95u
	Fpj91URyqsOuEHIZkfLo2CGZSZ/Ob3qF3uL0y8EhcM1mgT0sULYaXzenwWuzRn8lEgYXmUIPADqEH
	31C/G9s+Lj7zVkeFMYS7kdRUuDBbCQDeabUhufszRJngpafQrqt8XGW6s4rvn33wf22SNqGBGsdpH
	FJAhyXqaE/YaMzyVjsb2VndDGduvkXXlSY5wk1SP0hb1jRQTgnuAKLJghn8nvUNJlbzdrNxvckS0u
	47qYjjkCuOxp6I9gu0fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1xR-0008Bi-GQ; Tue, 02 Jun 2020 08:07:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1x8-000851-LE; Tue, 02 Jun 2020 08:07:20 +0000
Received: from ni.home (unknown [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 241792A223D;
 Tue,  2 Jun 2020 09:07:14 +0100 (BST)
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org
Subject: [PATCH v4 1/2] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Tue,  2 Jun 2020 10:06:43 +0200
Message-Id: <20200602080644.11333-2-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602080644.11333-1-mylene.josserand@collabora.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_010718_851923_7829A979 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, mylene.josserand@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJldmlzaW9uIHJrMzI4OHcgaGFzIGEgZGlmZmVyZW50IGNsb2NrIHRyZWUgYWJvdXQgImhj
bGtfdmlvIgpjbG9jaywgYWNjb3JkaW5nIHRvIHRoZSBCU1Aga2VybmVsIGNvZGUuCgpUaGlzIHBh
dGNoIGhhbmRsZXMgdGhpcyBkaWZmZXJlbmNlIGJ5IGRldGVjdGluZyB3aGljaCBkZXZpY2UtdHJl
ZQp3ZSBhcmUgdXNpbmcuIElmIGl0IGlzIGEgInJvY2tjaGlwLHJrMzI4OC1jcnUiLCBsZXQncyBy
ZWdpc3Rlcgp0aGUgY2xvY2sgdHJlZSBhcyBpdCB3YXMgYmVmb3JlLiBJZiB0aGUgZGV2aWNlLXRy
ZWUgbm9kZSBpcwoicm9ja2NoaXAscmszMjg4dy1jcnUiLCB3ZSB3aWxsIGFwcGx5IHRoZSBkaWZm
ZXJlbmNlIHdpdGggdGhpcwp2ZXJzaW9uIG9mIHRoaXMgU29DLgoKTm90aWNlZCB0aGF0IHRoaXMg
bmV3IGRldmljZS10cmVlIGNvbXBhdGlibGUgbXVzdCBiZSBoYW5kbGVkIGluCmJvb3Rsb2FkZXIg
c3VjaCBhcyB1LWJvb3QuCgpTaWduZWQtb2ZmLWJ5OiBNeWzDqG5lIEpvc3NlcmFuZCA8bXlsZW5l
Lmpvc3NlcmFuZEBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1y
azMyODguYyB8IDIwICsrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9jbGstcmszMjg4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMKaW5k
ZXggY2MyYTE3N2JiZGJmLi4yMDQ5NzZlMmQwY2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsay1yazMyODguYworKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4
LmMKQEAgLTQyNSw4ICs0MjUsNiBAQCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2gg
cmszMjg4X2Nsa19icmFuY2hlc1tdIF9faW5pdGRhdGEgPSB7CiAJQ09NUE9TSVRFKDAsICJhY2xr
X3ZpbzAiLCBtdXhfcGxsX3NyY19jcGxsX2dwbGxfdXNiNDgwbV9wLCBDTEtfSUdOT1JFX1VOVVNF
RCwKIAkJCVJLMzI4OF9DTEtTRUxfQ09OKDMxKSwgNiwgMiwgTUZMQUdTLCAwLCA1LCBERkxBR1Ms
CiAJCQlSSzMyODhfQ0xLR0FURV9DT04oMyksIDAsIEdGTEFHUyksCi0JRElWKDAsICJoY2xrX3Zp
byIsICJhY2xrX3ZpbzAiLCAwLAotCQkJUkszMjg4X0NMS1NFTF9DT04oMjgpLCA4LCA1LCBERkxB
R1MpLAogCUNPTVBPU0lURSgwLCAiYWNsa192aW8xIiwgbXV4X3BsbF9zcmNfY3BsbF9ncGxsX3Vz
YjQ4MG1fcCwgQ0xLX0lHTk9SRV9VTlVTRUQsCiAJCQlSSzMyODhfQ0xLU0VMX0NPTigzMSksIDE0
LCAyLCBNRkxBR1MsIDgsIDUsIERGTEFHUywKIAkJCVJLMzI4OF9DTEtHQVRFX0NPTigzKSwgMiwg
R0ZMQUdTKSwKQEAgLTgxOSw2ICs4MTcsMTYgQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtf
YnJhbmNoIHJrMzI4OF9jbGtfYnJhbmNoZXNbXSBfX2luaXRkYXRhID0gewogCUlOVkVSVEVSKDAs
ICJwY2xrX2lzcCIsICJwY2xrX2lzcF9pbiIsIFJLMzI4OF9DTEtTRUxfQ09OKDI5KSwgMywgSUZM
QUdTKSwKIH07CiAKK3N0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMyODh3X2hj
bGt2aW9fYnJhbmNoW10gX19pbml0ZGF0YSA9IHsKKwlESVYoMCwgImhjbGtfdmlvIiwgImFjbGtf
dmlvMSIsIDAsCisJCQlSSzMyODhfQ0xLU0VMX0NPTigyOCksIDgsIDUsIERGTEFHUyksCit9Owor
CitzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszMjg4X2hjbGt2aW9fYnJhbmNo
W10gX19pbml0ZGF0YSA9IHsKKwlESVYoMCwgImhjbGtfdmlvIiwgImFjbGtfdmlvMCIsIDAsCisJ
CQlSSzMyODhfQ0xLU0VMX0NPTigyOCksIDgsIDUsIERGTEFHUyksCit9OworCiBzdGF0aWMgY29u
c3QgY2hhciAqY29uc3QgcmszMjg4X2NyaXRpY2FsX2Nsb2Nrc1tdIF9faW5pdGNvbnN0ID0gewog
CSJhY2xrX2NwdSIsCiAJImFjbGtfcGVyaSIsCkBAIC05MzYsNiArOTQ0LDE0IEBAIHN0YXRpYyB2
b2lkIF9faW5pdCByazMyODhfY2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAkJCQkg
ICBSSzMyODhfR1JGX1NPQ19TVEFUVVMxKTsKIAlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNo
ZXMoY3R4LCByazMyODhfY2xrX2JyYW5jaGVzLAogCQkJCSAgQVJSQVlfU0laRShyazMyODhfY2xr
X2JyYW5jaGVzKSk7CisKKwlpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJyb2NrY2hp
cCxyazMyODh3LWNydSIpKQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCBy
azMyODh3X2hjbGt2aW9fYnJhbmNoLAorCQkJCQkgICAgICAgQVJSQVlfU0laRShyazMyODh3X2hj
bGt2aW9fYnJhbmNoKSk7CisJZWxzZQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMo
Y3R4LCByazMyODhfaGNsa3Zpb19icmFuY2gsCisJCQkJCSAgICAgICBBUlJBWV9TSVpFKHJrMzI4
OF9oY2xrdmlvX2JyYW5jaCkpOworCiAJcm9ja2NoaXBfY2xrX3Byb3RlY3RfY3JpdGljYWwocmsz
Mjg4X2NyaXRpY2FsX2Nsb2NrcywKIAkJCQkgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9jcml0aWNh
bF9jbG9ja3MpKTsKIAotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
