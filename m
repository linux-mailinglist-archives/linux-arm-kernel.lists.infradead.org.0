Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD8175F07
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSJfLHbRZ03omfq8ERzFMETkzaYQxd9qmWnblSknClA=; b=m3MItu6/7VFcEG
	KbwRXghsznoBjWeToe2COmYMjI7paxg4L2o7eh0/Zmjq3EZl9kGy2SxTr0HHQ35buWImmd3bObulO
	j4IL4uqIqxcyZjqJEsifP48WgOOWJpfHjTkhHLSeS8G6CnSM1oATNDtSUpRapjngm1c3c169iBo+8
	yCftoUsQQI8ockHybDOWXq8V3hf4AdxYTMPgnqp//lnjufIE28UuJKA5Z//vaHg6IDLceA0bG4t9u
	Yju8YRJlea8z+6sPG7y8KRa89N7LfoEimhiAGMK+O0ItuU7oGqqsAVslG3dllDfeGnEwcz1tQTbDA
	iqWk8GDB4u8DnAUbVuXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nTj-00067Y-KK; Mon, 02 Mar 2020 15:59:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nSj-0005Km-N7; Mon, 02 Mar 2020 15:58:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id E1E61295BA8
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: linux@armlinux.org.uk, heiko@sntech.de, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH 2/2] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Mon,  2 Mar 2020 16:57:03 +0100
Message-Id: <20200302155703.278421-3-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302155703.278421-1-mylene.josserand@collabora.com>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075833_939341_4AD7FCC9 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mylene.josserand@collabora.com, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJldmlzaW9uIHJrMzI4OHcgaGFzIGEgZGlmZmVyZW50IGNsb2NrIHRyZWUgYWJvdXQKImhj
bGtfdmlvIiBjbG9jaywgYWNjb3JkaW5nIHRvIHRoZSBCU1Aga2VybmVsIGNvZGUgWzFdLgoKVGhp
cyBwYXRjaCBoYW5kbGVzIHRoaXMgZGlmZmVyZW5jZSBieSBkZXRlY3Rpbmcgd2hpY2ggU09DIGl0
IGlzCmFuZCBjcmVhdGluZyB0aGUgZGl2IGFjY29yZGluZ2x5LgoKWzFdOiBodHRwczovL2dpdGh1
Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLXJrMzI4OC5jI0w5NjAuLkw5NjQKClNpZ25lZC1vZmYtYnk6IE15bMOobmUg
Sm9zc2VyYW5kIDxteWxlbmUuam9zc2VyYW5kQGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9j
bGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5jIHwgMjEgKysrKysrKysrKysrKysrKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstcmszMjg4LmMKaW5kZXggY2MyYTE3N2JiZGJmLi5lN2Q2ZTNhMDk1YTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYworKysgYi9kcml2ZXJzL2Nsay9y
b2NrY2hpcC9jbGstcmszMjg4LmMKQEAgLTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlIDxsaW51eC9v
Zl9hZGRyZXNzLmg+CiAjaW5jbHVkZSA8bGludXgvc3lzY29yZV9vcHMuaD4KICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9jbG9jay9yazMyODgtY3J1Lmg+CisjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3Jl
dmlzaW9uLmg+CiAjaW5jbHVkZSAiY2xrLmgiCiAKICNkZWZpbmUgUkszMjg4X0dSRl9TT0NfQ09O
KHgpCSgweDI0NCArIHggKiA0KQpAQCAtNDI1LDggKzQyNiw2IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9j
a2NoaXBfY2xrX2JyYW5jaCByazMyODhfY2xrX2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKIAlD
T01QT1NJVEUoMCwgImFjbGtfdmlvMCIsIG11eF9wbGxfc3JjX2NwbGxfZ3BsbF91c2I0ODBtX3As
IENMS19JR05PUkVfVU5VU0VELAogCQkJUkszMjg4X0NMS1NFTF9DT04oMzEpLCA2LCAyLCBNRkxB
R1MsIDAsIDUsIERGTEFHUywKIAkJCVJLMzI4OF9DTEtHQVRFX0NPTigzKSwgMCwgR0ZMQUdTKSwK
LQlESVYoMCwgImhjbGtfdmlvIiwgImFjbGtfdmlvMCIsIDAsCi0JCQlSSzMyODhfQ0xLU0VMX0NP
TigyOCksIDgsIDUsIERGTEFHUyksCiAJQ09NUE9TSVRFKDAsICJhY2xrX3ZpbzEiLCBtdXhfcGxs
X3NyY19jcGxsX2dwbGxfdXNiNDgwbV9wLCBDTEtfSUdOT1JFX1VOVVNFRCwKIAkJCVJLMzI4OF9D
TEtTRUxfQ09OKDMxKSwgMTQsIDIsIE1GTEFHUywgOCwgNSwgREZMQUdTLAogCQkJUkszMjg4X0NM
S0dBVEVfQ09OKDMpLCAyLCBHRkxBR1MpLApAQCAtODE5LDYgKzgxOCwxNiBAQCBzdGF0aWMgc3Ry
dWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszMjg4X2Nsa19icmFuY2hlc1tdIF9faW5pdGRhdGEg
PSB7CiAJSU5WRVJURVIoMCwgInBjbGtfaXNwIiwgInBjbGtfaXNwX2luIiwgUkszMjg4X0NMS1NF
TF9DT04oMjkpLCAzLCBJRkxBR1MpLAogfTsKIAorc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtf
YnJhbmNoIHJrMzI4OHdfaGNsa3Zpb19icmFuY2hbXSBfX2luaXRkYXRhID0geworCURJVigwLCAi
aGNsa192aW8iLCAiYWNsa192aW8xIiwgMCwKKwkgICAgUkszMjg4X0NMS1NFTF9DT04oMjgpLCA4
LCA1LCBERkxBR1MpLAorfTsKKworc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJr
MzI4OF9oY2xrdmlvX2JyYW5jaFtdIF9faW5pdGRhdGEgPSB7CisJRElWKDAsICJoY2xrX3ZpbyIs
ICJhY2xrX3ZpbzAiLCAwLAorCSAgICBSSzMyODhfQ0xLU0VMX0NPTigyOCksIDgsIDUsIERGTEFH
UyksCit9OworCiBzdGF0aWMgY29uc3QgY2hhciAqY29uc3QgcmszMjg4X2NyaXRpY2FsX2Nsb2Nr
c1tdIF9faW5pdGNvbnN0ID0gewogCSJhY2xrX2NwdSIsCiAJImFjbGtfcGVyaSIsCkBAIC05MzEs
NiArOTQwLDE0IEBAIHN0YXRpYyB2b2lkIF9faW5pdCByazMyODhfY2xrX2luaXQoc3RydWN0IGRl
dmljZV9ub2RlICpucCkKIAkJcmV0dXJuOwogCX0KIAorCS8qIENoZWNrIGZvciB0aGUgcmszMjg4
dyByZXZpc2lvbiBhcyBDbG9jayB0cmVlIGlzIGRpZmZlcmVudCAqLworCWlmIChzb2NfaXNfcmsz
Mjg4dygpKQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMyODh3X2hj
bGt2aW9fYnJhbmNoLAorCQkJCQkgICAgICAgQVJSQVlfU0laRShyazMyODh3X2hjbGt2aW9fYnJh
bmNoKSk7CisJZWxzZQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMy
ODhfaGNsa3Zpb19icmFuY2gsCisJCQkJCSAgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9oY2xrdmlv
X2JyYW5jaCkpOworCiAJcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX3BsbHMoY3R4LCByazMyODhfcGxs
X2Nsa3MsCiAJCQkJICAgQVJSQVlfU0laRShyazMyODhfcGxsX2Nsa3MpLAogCQkJCSAgIFJLMzI4
OF9HUkZfU09DX1NUQVRVUzEpOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
