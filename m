Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027A10EF36
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xk4ynwsixCzERokChl3D6Ngp4HaXb9bjPJ41a0ZhSHc=; b=U+gYLBc+g5LLqP
	Stl2HLrcdVsVHI1qY88gvE5rmWfUV7fYCdlPVdStqfYlzjZSKRoZwvJ1kDFchf7IRusNM1ePi8due
	prfivvvXEc8h5ZZBbOWZ0pZaIxFpj4DEJqFXJ+rvpfZseLVQN7eT3LVk2pSuZAtYVOD8uFgUpdXT3
	/GXp6xsPyUxqRYWvpckyIg8WFq4Ox0pO6X2/bm+mUv1KEptIUmj/FAM04uXFPCAF/QDT3fy8y1bRx
	S8GGr1nMZ9KPtNX8gq20BSbq3skDGON+vjo16hn+T2mZO3/U/jUoKlQVK167h8OuFOlVKO6gd4eZU
	Gat6oBhR+u2pv3wezWEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqLr-00052G-FS; Mon, 02 Dec 2019 18:23:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKu-0004Et-AT; Mon, 02 Dec 2019 18:22:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 14E9AAEC6;
 Mon,  2 Dec 2019 18:22:15 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 04/14] arm64: dts: realtek: rtd16xx: Introduce iso and misc
 syscon
Date: Mon,  2 Dec 2019 19:21:54 +0100
Message-Id: <20191202182205.14629-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102216_524534_053F9433 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R3JvdXAgVUFSVDAgaW50byBhbiBJc29sYXRpb24gc3lzY29uIG1mZCBub2RlLgpHcm91cCBVQVJU
MSBhbmQgVUFSVDIgaW50byBhIE1pc2NlbGxhbmVvdXMgc3lzY29uIG1mZCBub2RlLgoKQ2M6IEph
bWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbD
pHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDE2eHguZHRzaSB8IDcwICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kKaW5kZXggNjljYzBkOTQxYzhkLi44ZjhmMmIz
MjhjZDEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQpAQCAtMTE4
LDM0ICsxMTgsMjIgQEAKIAkJCSNzaXplLWNlbGxzID0gPDE+OwogCQkJcmFuZ2VzID0gPDB4MCAw
eDk4MDAwMDAwIDB4MjAwMDAwPjsKIAotCQkJdWFydDA6IHNlcmlhbDBANzgwMCB7Ci0JCQkJY29t
cGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCQlyZWcgPSA8MHg3ODAwIDB4NDAwPjsK
LQkJCQlyZWctc2hpZnQgPSA8Mj47CisJCQlpc286IHN5c2NvbkA3MDAwIHsKKwkJCQljb21wYXRp
YmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJCQlyZWcgPSA8MHg3MDAwIDB4MTAwMD47
CiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA2OCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKLQkJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Owot
CQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJ
I3NpemUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2VzID0gPDB4MCAweDcwMDAgMHgxMDAwPjsKIAkJ
CX07CiAKLQkJCXVhcnQxOiBzZXJpYWwxQDFiMjAwIHsKLQkJCQljb21wYXRpYmxlID0gInNucHMs
ZHctYXBiLXVhcnQiOwotCQkJCXJlZyA9IDwweDFiMjAwIDB4NDAwPjsKLQkJCQlyZWctc2hpZnQg
PSA8Mj47CisJCQltaXNjOiBzeXNjb25AMWIwMDAgeworCQkJCWNvbXBhdGlibGUgPSAic3lzY29u
IiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9IDwweDFiMDAwIDB4MTAwMD47CiAJCQkJcmVnLWlv
LXdpZHRoID0gPDQ+OwotCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA4OSBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKLQkJCQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKLQkJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwotCQkJfTsKLQotCQkJdWFydDI6IHNlcmlhbDJAMWI0MDAgewotCQkJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7Ci0JCQkJcmVnID0gPDB4MWI0MDAgMHg0MDA+
OwotCQkJCXJlZy1zaGlmdCA9IDwyPjsKLQkJCQlyZWctaW8td2lkdGggPSA8ND47Ci0JCQkJaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDkwIElSUV9UWVBFX0xFVkVMX0hJR0g+OwotCQkJCWNsb2NrLWZy
ZXF1ZW5jeSA9IDw0MzIwMDAwMDA+OwotCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2VzID0g
PDB4MCAweDFiMDAwIDB4MTAwMD47CiAJCQl9OwogCQl9OwogCkBAIC0xNTksMyArMTQ3LDM3IEBA
CiAJCX07CiAJfTsKIH07CisKKyZpc28geworCXVhcnQwOiBzZXJpYWwwQDgwMCB7CisJCWNvbXBh
dGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCXJlZyA9IDwweDgwMCAweDQwMD47CisJCXJl
Zy1zaGlmdCA9IDwyPjsKKwkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgNjggSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAw
MDAwMD47CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJfTsKK307CisKKyZtaXNjIHsKKwl1YXJ0
MTogc2VyaWFsMUAyMDAgeworCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOworCQly
ZWcgPSA8MHgyMDAgMHg0MDA+OworCQlyZWctc2hpZnQgPSA8Mj47CisJCXJlZy1pby13aWR0aCA9
IDw0PjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg5IElSUV9UWVBFX0xFVkVMX0hJR0g+Owor
CQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsK
Kwl9OworCisJdWFydDI6IHNlcmlhbDJANDAwIHsKKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFw
Yi11YXJ0IjsKKwkJcmVnID0gPDB4NDAwIDB4NDAwPjsKKwkJcmVnLXNoaWZ0ID0gPDI+OworCQly
ZWctaW8td2lkdGggPSA8ND47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSA5MCBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKKwkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47CisJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CisJfTsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
