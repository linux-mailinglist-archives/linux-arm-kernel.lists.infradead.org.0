Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D741EA6A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zyKrqHBh83ktwA8m8fkQNywY1pFGQ2kFrj0cdeOApI=; b=gNTFwg40BI+0DV
	cqJxCuomvkiWU6D9x5BYmtvO5vSDLZlr6CVffdwpNqY2ZA7Mof7WXzEHgkezzSW76noUF5YA0JuCF
	L8qASkS/YTmitW3d53Z2vEfZkKSp0L7V+3Pi+RWluHBn8cNUx4wfQFGAapQ8U8E/xhdkku/ui1/Wj
	RBjcyHJI/iUOhHUeQ6sgtyJXEcbFSItjcSdZX3H9HZWcf4CkD5H8UO2Qcn6IX+UGJbYP/aNCvhHog
	y1dHbgcjcKB50iNlgcYdU/zSOMhbBOhWpHw/0OXcID+tzwh5AVcNgW2WKemOvtwvg6P5xFCDcPZH1
	W8SQ8vXjkkan0PrF4ogw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmAS-0005Cc-1D; Mon, 01 Jun 2020 15:16:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm9l-0003lK-3D; Mon, 01 Jun 2020 15:15:22 +0000
Received: from ni.home (unknown [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0E92A2A2167;
 Mon,  1 Jun 2020 16:15:10 +0100 (BST)
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH v3 1/1] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Mon,  1 Jun 2020 17:14:42 +0200
Message-Id: <20200601151442.156184-2-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601151442.156184-1-mylene.josserand@collabora.com>
References: <20200601151442.156184-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081517_370141_7C387ACC 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mylene.josserand@collabora.com, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJldmlzaW9uIHJrMzI4OHcgaGFzIGEgZGlmZmVyZW50IGNsb2NrIHRyZWUgYWJvdXQgImhj
bGtfdmlvIgpjbG9jaywgYWNjb3JkaW5nIHRvIHRoZSBCU1Aga2VybmVsIGNvZGUuCgpUaGlzIHBh
dGNoIGhhbmRsZXMgdGhpcyBkaWZmZXJlbmNlIGJ5IGRldGVjdGluZyB3aGljaCBkZXZpY2UtdHJl
ZQp3ZSBhcmUgdXNpbmcuIElmIGl0IGlzIGEgInJvY2tjaGlwLHJrMzI4OC1jcnUiLCBsZXQncyBy
ZWdpc3Rlcgp0aGUgY2xvY2sgdHJlZSBhcyBpdCB3YXMgYmVmb3JlLiBJZiB0aGUgY29tcGF0aWJs
ZSBpcwoicm9ja2NoaXAscmszMjg4dy1jcnUiLCB3ZSB3aWxsIGFwcGx5IHRoZSBkaWZmZXJlbmNl
IGFjY29yZGluZyB0byB0aGlzCnZlcnNpb24gb2YgdGhpcyBTb0MuCgpOb3RpY2VkIHRoYXQgdGhp
cyBuZXcgZGV2aWNlLXRyZWUgY29tcGF0aWJsZSBtdXN0IGJlIGhhbmRsZWQgYnkKYm9vdGxvYWRl
ci4KClNpZ25lZC1vZmYtYnk6IE15bMOobmUgSm9zc2VyYW5kIDxteWxlbmUuam9zc2VyYW5kQGNv
bGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5jIHwgMjAg
KysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMy
ODguYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYwppbmRleCBjYzJhMTc3YmJk
YmYuLjUwMThkMmYxZTU0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJr
MzI4OC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYwpAQCAtNDI1LDgg
KzQyNSw2IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMyODhfY2xrX2Jy
YW5jaGVzW10gX19pbml0ZGF0YSA9IHsKIAlDT01QT1NJVEUoMCwgImFjbGtfdmlvMCIsIG11eF9w
bGxfc3JjX2NwbGxfZ3BsbF91c2I0ODBtX3AsIENMS19JR05PUkVfVU5VU0VELAogCQkJUkszMjg4
X0NMS1NFTF9DT04oMzEpLCA2LCAyLCBNRkxBR1MsIDAsIDUsIERGTEFHUywKIAkJCVJLMzI4OF9D
TEtHQVRFX0NPTigzKSwgMCwgR0ZMQUdTKSwKLQlESVYoMCwgImhjbGtfdmlvIiwgImFjbGtfdmlv
MCIsIDAsCi0JCQlSSzMyODhfQ0xLU0VMX0NPTigyOCksIDgsIDUsIERGTEFHUyksCiAJQ09NUE9T
SVRFKDAsICJhY2xrX3ZpbzEiLCBtdXhfcGxsX3NyY19jcGxsX2dwbGxfdXNiNDgwbV9wLCBDTEtf
SUdOT1JFX1VOVVNFRCwKIAkJCVJLMzI4OF9DTEtTRUxfQ09OKDMxKSwgMTQsIDIsIE1GTEFHUywg
OCwgNSwgREZMQUdTLAogCQkJUkszMjg4X0NMS0dBVEVfQ09OKDMpLCAyLCBHRkxBR1MpLApAQCAt
ODE5LDYgKzgxNywxNiBAQCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszMjg4
X2Nsa19icmFuY2hlc1tdIF9faW5pdGRhdGEgPSB7CiAJSU5WRVJURVIoMCwgInBjbGtfaXNwIiwg
InBjbGtfaXNwX2luIiwgUkszMjg4X0NMS1NFTF9DT04oMjkpLCAzLCBJRkxBR1MpLAogfTsKIAor
c3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzI4OHdfaGNsa3Zpb19icmFuY2hb
XSBfX2luaXRkYXRhID0geworCURJVigwLCAiaGNsa192aW8iLCAiYWNsa192aW8xIiwgMCwKKwkg
ICAgUkszMjg4X0NMS1NFTF9DT04oMjgpLCA4LCA1LCBERkxBR1MpLAorfTsKKworc3RhdGljIHN0
cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzI4OF9oY2xrdmlvX2JyYW5jaFtdIF9faW5pdGRh
dGEgPSB7CisJRElWKDAsICJoY2xrX3ZpbyIsICJhY2xrX3ZpbzAiLCAwLAorCSAgICBSSzMyODhf
Q0xLU0VMX0NPTigyOCksIDgsIDUsIERGTEFHUyksCit9OworCiBzdGF0aWMgY29uc3QgY2hhciAq
Y29uc3QgcmszMjg4X2NyaXRpY2FsX2Nsb2Nrc1tdIF9faW5pdGNvbnN0ID0gewogCSJhY2xrX2Nw
dSIsCiAJImFjbGtfcGVyaSIsCkBAIC05MzYsNiArOTQ0LDE0IEBAIHN0YXRpYyB2b2lkIF9faW5p
dCByazMyODhfY2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAkJCQkgICBSSzMyODhf
R1JGX1NPQ19TVEFUVVMxKTsKIAlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCBy
azMyODhfY2xrX2JyYW5jaGVzLAogCQkJCSAgQVJSQVlfU0laRShyazMyODhfY2xrX2JyYW5jaGVz
KSk7CisKKwlpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJyb2NrY2hpcCxyazMyODh3
LWNydSIpKQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMyODh3X2hj
bGt2aW9fYnJhbmNoLAorCQkJCQkgICAgICAgQVJSQVlfU0laRShyazMyODh3X2hjbGt2aW9fYnJh
bmNoKSk7CisJZWxzZQorCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMy
ODhfaGNsa3Zpb19icmFuY2gsCisJCQkJCSAgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9oY2xrdmlv
X2JyYW5jaCkpOworCiAJcm9ja2NoaXBfY2xrX3Byb3RlY3RfY3JpdGljYWwocmszMjg4X2NyaXRp
Y2FsX2Nsb2NrcywKIAkJCQkgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9jcml0aWNhbF9jbG9ja3Mp
KTsKIAotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
