Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE519AEDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 17:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQwcTOcDFopbe3yLGoTMYrH/n3ntrSLRHodqc+56GHw=; b=hfmAiA82PmXvv7
	LolxT6j8gTtOPj94AtIzdJNYlimmhiIk80/p3Ags5oVpYqTJ903KpDnRvPMJmLjA2TokR0n2h6GEM
	fJH7L2i3n9brAGquueKzwXUeNqgyQc7In6vHQfTFWrNXmSKDfegQraF3lJBHFwwkQXJDbOeExXxIa
	FORn9A9aeJAfw1AbPQa512MnVoIiUNbR6JdUDxyyB2nLzwKFo9t0tmUMzrvuJ91oZ6TtxJNebd/Oy
	cSJe6V+oEvTB1/dMkQZ0qESe9WsLe/ByyAh9lIvLth6rJzVQLtgMJWuJxRrOjXbx01wvn1EgExyFX
	dO8JtNUhj85TYy0UCHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJfPb-000449-PM; Wed, 01 Apr 2020 15:36:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJfP4-0003bu-DI; Wed, 01 Apr 2020 15:35:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 4BE02291334
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 2/2] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Wed,  1 Apr 2020 17:35:13 +0200
Message-Id: <20200401153513.423683-3-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401153513.423683-1-mylene.josserand@collabora.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_083542_595343_14B0A3B5 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

VGhlIHJldmlzaW9uIHJrMzI4OHcgaGFzIGEgZGlmZmVyZW50IGNsb2NrIHRyZWUgYWJvdXQKImhj
bGtfdmlvIiBjbG9jaywgYWNjb3JkaW5nIHRvIHRoZSBCU1Aga2VybmVsIGNvZGUuCgpUaGlzIHBh
dGNoIGhhbmRsZXMgdGhpcyBkaWZmZXJlbmNlIGJ5IGRldGVjdGluZyB3aGljaCBTT0MgaXQgaXMK
YW5kIGNyZWF0aW5nIHRoZSBkaXYgYWNjb3JkaW5nbHkuIEJlY2F1c2Ugd2UgYXJlIHVzaW5nCnNv
Y19kZXZpY2VfbWF0Y2ggZnVuY3Rpb24sIHdlIG5lZWQgdG8gZGVsYXkgdGhlIHJlZ2lzdHJhdGlv
bgpvZiB0aGlzIGNsb2NrIGxhdGVyIHRoYW4gb3RoZXJzIHRvIGhhdmUgdGltZSB0byBnZXQgU29D
IHJldmlzaW9uLgoKT3RoZXJ3aXNlLCBiZWNhdXNlIG9mIENMS19PRl9ERUNMQVJFIHVzZXMsIGNs
b2NrIHRyZWUgd2lsbCBiZQpjcmVhdGVkIHRvbyBzb29uIHRvIGhhdmUgdGltZSB0byBkZXRlY3Qg
U29DJ3MgcmV2aXNpb24uCgpTaWduZWQtb2ZmLWJ5OiBNeWzDqG5lIEpvc3NlcmFuZCA8bXlsZW5l
Lmpvc3NlcmFuZEBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1y
azMyODguYyB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1y
azMyODguYwppbmRleCBjYzJhMTc3YmJkYmYuLjE5NTBkMWVmZTFiOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazMyODguYwpAQCAtOSw2ICs5LDcgQEAKICNpbmNsdWRlIDxsaW51eC9vZi5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KICNpbmNsdWRlIDxsaW51eC9zeXNjb3JlX29wcy5o
PgorI2luY2x1ZGUgPGxpbnV4L3N5c19zb2MuaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9j
ay9yazMyODgtY3J1Lmg+CiAjaW5jbHVkZSAiY2xrLmgiCiAKQEAgLTQyNSw4ICs0MjYsNiBAQCBz
dGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszMjg4X2Nsa19icmFuY2hlc1tdIF9f
aW5pdGRhdGEgPSB7CiAJQ09NUE9TSVRFKDAsICJhY2xrX3ZpbzAiLCBtdXhfcGxsX3NyY19jcGxs
X2dwbGxfdXNiNDgwbV9wLCBDTEtfSUdOT1JFX1VOVVNFRCwKIAkJCVJLMzI4OF9DTEtTRUxfQ09O
KDMxKSwgNiwgMiwgTUZMQUdTLCAwLCA1LCBERkxBR1MsCiAJCQlSSzMyODhfQ0xLR0FURV9DT04o
MyksIDAsIEdGTEFHUyksCi0JRElWKDAsICJoY2xrX3ZpbyIsICJhY2xrX3ZpbzAiLCAwLAotCQkJ
UkszMjg4X0NMS1NFTF9DT04oMjgpLCA4LCA1LCBERkxBR1MpLAogCUNPTVBPU0lURSgwLCAiYWNs
a192aW8xIiwgbXV4X3BsbF9zcmNfY3BsbF9ncGxsX3VzYjQ4MG1fcCwgQ0xLX0lHTk9SRV9VTlVT
RUQsCiAJCQlSSzMyODhfQ0xLU0VMX0NPTigzMSksIDE0LCAyLCBNRkxBR1MsIDgsIDUsIERGTEFH
UywKIAkJCVJLMzI4OF9DTEtHQVRFX0NPTigzKSwgMiwgR0ZMQUdTKSwKQEAgLTgxOSw2ICs4MTgs
MTYgQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzI4OF9jbGtfYnJhbmNo
ZXNbXSBfX2luaXRkYXRhID0gewogCUlOVkVSVEVSKDAsICJwY2xrX2lzcCIsICJwY2xrX2lzcF9p
biIsIFJLMzI4OF9DTEtTRUxfQ09OKDI5KSwgMywgSUZMQUdTKSwKIH07CiAKK3N0YXRpYyBzdHJ1
Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMyODh3X2hjbGt2aW9fYnJhbmNoW10gX19pbml0ZGF0
YSA9IHsKKwlESVYoMCwgImhjbGtfdmlvIiwgImFjbGtfdmlvMSIsIDAsCisJICAgIFJLMzI4OF9D
TEtTRUxfQ09OKDI4KSwgOCwgNSwgREZMQUdTKSwKK307CisKK3N0YXRpYyBzdHJ1Y3Qgcm9ja2No
aXBfY2xrX2JyYW5jaCByazMyODhfaGNsa3Zpb19icmFuY2hbXSBfX2luaXRkYXRhID0geworCURJ
VigwLCAiaGNsa192aW8iLCAiYWNsa192aW8wIiwgMCwKKwkgICAgUkszMjg4X0NMS1NFTF9DT04o
MjgpLCA4LCA1LCBERkxBR1MpLAorfTsKKwogc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IHJrMzI4
OF9jcml0aWNhbF9jbG9ja3NbXSBfX2luaXRjb25zdCA9IHsKIAkiYWNsa19jcHUiLAogCSJhY2xr
X3BlcmkiLApAQCAtOTE0LDEwICs5MjMsMTUgQEAgc3RhdGljIHN0cnVjdCBzeXNjb3JlX29wcyBy
azMyODhfY2xrX3N5c2NvcmVfb3BzID0gewogCS5yZXN1bWUgPSByazMyODhfY2xrX3Jlc3VtZSwK
IH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgcmszMjg4d1td
ID0geworCXsgLnNvY19pZCA9ICJSSzMyeHgiLCAucmV2aXNpb24gPSAiUkszMjg4dyIgfSwKKwl7
IC8qIHNlbnRpbmVsICovIH0KK307CisKK3N0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3Zp
ZGVyICpjdHg7CisKIHN0YXRpYyB2b2lkIF9faW5pdCByazMyODhfY2xrX2luaXQoc3RydWN0IGRl
dmljZV9ub2RlICpucCkKIHsKLQlzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHg7Ci0K
IAlyazMyODhfY3J1X2Jhc2UgPSBvZl9pb21hcChucCwgMCk7CiAJaWYgKCFyazMyODhfY3J1X2Jh
c2UpIHsKIAkJcHJfZXJyKCIlczogY291bGQgbm90IG1hcCBjcnUgcmVnaW9uXG4iLCBfX2Z1bmNf
Xyk7CkBAIC05NTUsMyArOTY5LDE3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCByazMyODhfY2xrX2lu
aXQoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAlyb2NrY2hpcF9jbGtfb2ZfYWRkX3Byb3ZpZGVy
KG5wLCBjdHgpOwogfQogQ0xLX09GX0RFQ0xBUkUocmszMjg4X2NydSwgInJvY2tjaGlwLHJrMzI4
OC1jcnUiLCByazMyODhfY2xrX2luaXQpOworCitzdGF0aWMgaW50IF9faW5pdCByazMyODhfaGNs
a3Zpb19yZWdpc3Rlcih2b2lkKQoreworCS8qIENoZWNrIGZvciB0aGUgcmszMjg4dyByZXZpc2lv
biBhcyBjbG9jayB0cmVlIGlzIGRpZmZlcmVudCAqLworCWlmIChzb2NfZGV2aWNlX21hdGNoKHJr
MzI4OHcpKQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMyODh3X2hj
bGt2aW9fYnJhbmNoLAorCQkJCQkgICAgICAgQVJSQVlfU0laRShyazMyODh3X2hjbGt2aW9fYnJh
bmNoKSk7CisJZWxzZQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMy
ODhfaGNsa3Zpb19icmFuY2gsCisJCQkJCSAgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9oY2xrdmlv
X2JyYW5jaCkpOworCisJcmV0dXJuIDA7Cit9CitzdWJzeXNfaW5pdGNhbGwocmszMjg4X2hjbGt2
aW9fcmVnaXN0ZXIpOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
