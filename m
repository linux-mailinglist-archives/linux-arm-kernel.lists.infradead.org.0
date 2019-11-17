Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519F2FF861
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYMWedtw7cQISZTFcMgBwlkZvJUA0vDL00IXq9YmGns=; b=Ur1AMNBh17Cboy
	w33asku4BmdtJHUdWk/99NT1g1F3TGTwLQcZN8GEXwkK/1TTka39f4n2jnY/3XhQCt/mZROtVxGiA
	XWzwNiYyM5kx8LsY5KsgTujF8Br1zq2VwFlS2b0Ydr04Hs2pTgUom1F2FGRDQPAYdnHA4x5G71I1s
	VDhW34HfdwbtqWmWMYpUXAjhGji71u5rbLpAoTDg9b0r7HlO/cF7NXC7P7HMeBTg4+Gyvum8lIRfh
	9MDTy4OZmBcNEXqryYgMlZiGm7DJjHPk85rgltbh70XF4UGBhEbUW2RAxeFSXmrINjryj/ey4rJtf
	bQdXayKnsaEt6E4M5KzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEsv-0000CM-Ie; Sun, 17 Nov 2019 07:22:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEs7-00083T-6F; Sun, 17 Nov 2019 07:21:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CA4DFB22C;
 Sun, 17 Nov 2019 07:21:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 2/8] ARM: Prepare Realtek RTD1195
Date: Sun, 17 Nov 2019 08:21:03 +0100
Message-Id: <20191117072109.20402-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232123_529962_3EBA35F5 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW50cm9kdWNlIEFSQ0hfUkVBTFRFSyBLY29uZmlnIG9wdGlvbiBhbHNvIGZvciAzMi1iaXQgQXJt
LgoKT3ZlcnJpZGUgdGhlIHRleHQgb2Zmc2V0IHRvIGNvcGUgd2l0aCBib290IFJPTSBvY2N1cHlp
bmcgZmlyc3QgMHhhODAwCmJ5dGVzIGFuZCBmdXJ0aGVyIHJlc2VydmF0aW9ucyB1cCB0byAweGY0
MDAwIChjb21wYXJlIERldmljZSBUcmVlKS4KCkFkZCBhIGN1c3RvbSBtYWNoaW5lX2Rlc2MgdG8g
ZW5mb3JjZSBtZW1vcnkgY2FydmVvdXQgZm9yIEkvTyByZWdpc3RlcnMuCgpTaWduZWQtb2ZmLWJ5
OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjIgLT4gdjM6CiAqIEZp
eGVkIHItYnVzIHNpemUgaW4gLnJlc2VydmUgZnJvbSAweDEwMDAwMCB0byAweDcwMDAwIChKYW1l
cykKIAogdjEgLT4gdjI6CiAqIERyb3BwZWQgc2VsZWN0aW9uIG9mIENPTU1PTl9DTEsgKEFybmQp
CiAqIERyb3BwZWQgc2VsZWN0aW9uIG9mIEFNQkEsIFNDVSwgVFdECiAqIEFkZGVkIGNvbW1lbnQg
YWJvdXQgdGV4dCBvZmZzZXQgdG8gZGlzdGluZ3Vpc2ggZnJvbSBIVEMgY29tbWVudCBhYm92ZQog
KiBBZGRlZCBtYWNoaW5lX2Rlc2Mgd2l0aCAucmVzZXJ2ZSB0byBleGNsdWRlIHBlcmlwaGVyYWwg
c3BhY2VzIChSb2IpCiAKIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMiArKwog
YXJjaC9hcm0vTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAzICsrKwogYXJjaC9hcm0vbWFjaC1y
ZWFsdGVrL0tjb25maWcgICB8IDExICsrKysrKysrKysrCiBhcmNoL2FybS9tYWNoLXJlYWx0ZWsv
TWFrZWZpbGUgIHwgIDIgKysKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgfCAzNyAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDU1
IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsv
S2NvbmZpZwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmls
ZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9LY29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCA5Nzcx
YjU2ZTc5ZjEuLmNkMzdiNWU5Zjg2ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vS2NvbmZpZworKysg
Yi9hcmNoL2FybS9LY29uZmlnCkBAIC02OTksNiArNjk5LDggQEAgc291cmNlICJhcmNoL2FybS9t
YWNoLXFjb20vS2NvbmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXJkYS9LY29uZmlnIgog
Citzb3VyY2UgImFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnIgorCiBzb3VyY2UgImFyY2gv
YXJtL21hY2gtcmVhbHZpZXcvS2NvbmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXJvY2tj
aGlwL0tjb25maWciCmRpZmYgLS1naXQgYS9hcmNoL2FybS9NYWtlZmlsZSBiL2FyY2gvYXJtL01h
a2VmaWxlCmluZGV4IGRiODU3ZDA3MTE0Zi4uMTZkNDFlZmVhN2YyIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9NYWtlZmlsZQpAQCAtMTQ4LDYgKzE0OCw4IEBA
IGhlYWQteQkJOj0gYXJjaC9hcm0va2VybmVsL2hlYWQkKE1NVUVYVCkubwogdGV4dG9mcy15CTo9
IDB4MDAwMDgwMDAKICMgV2UgZG9uJ3Qgd2FudCB0aGUgaHRjIGJvb3Rsb2FkZXIgdG8gY29ycnVw
dCBrZXJuZWwgZHVyaW5nIHJlc3VtZQogdGV4dG9mcy0kKENPTkZJR19QTV9IMTk0MCkgICAgICA6
PSAweDAwMTA4MDAwCisjIFJURDExOTUgaGFzIEJvb3QgUk9NIGF0IHN0YXJ0IG9mIGFkZHJlc3Mg
c3BhY2UKK3RleHRvZnMtJChDT05GSUdfQVJDSF9SRUFMVEVLKSAgOj0gMHgwMDEwODAwMAogIyBT
QTExMTEgRE1BIGJ1Zzogd2UgZG9uJ3Qgd2FudCB0aGUga2VybmVsIHRvIGxpdmUgaW4gcHJlY2lv
dXMgRE1BLWFibGUgbWVtb3J5CiBpZmVxICgkKENPTkZJR19BUkNIX1NBMTEwMCkseSkKIHRleHRv
ZnMtJChDT05GSUdfU0ExMTExKSA6PSAweDAwMjA4MDAwCkBAIC0yMDcsNiArMjA5LDcgQEAgbWFj
aGluZS0kKENPTkZJR19BUkNIX1BJQ09YQ0VMTCkJKz0gcGljb3hjZWxsCiBtYWNoaW5lLSQoQ09O
RklHX0FSQ0hfUFhBKQkJKz0gcHhhCiBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUUNPTSkJCSs9IHFj
b20KIG1hY2hpbmUtJChDT05GSUdfQVJDSF9SREEpCQkrPSByZGEKK21hY2hpbmUtJChDT05GSUdf
QVJDSF9SRUFMVEVLKQkJKz0gcmVhbHRlawogbWFjaGluZS0kKENPTkZJR19BUkNIX1JFQUxWSUVX
KQkJKz0gcmVhbHZpZXcKIG1hY2hpbmUtJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkJCSs9IHJvY2tj
aGlwCiBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUlBDKQkJKz0gcnBjCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmln
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMTlmZGNmMDkzZmQxCi0t
LSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcKQEAgLTAsMCAr
MSwxMSBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgorbWVu
dWNvbmZpZyBBUkNIX1JFQUxURUsKKwlib29sICJSZWFsdGVrIFNvQ3MiCisJZGVwZW5kcyBvbiBB
UkNIX01VTFRJX1Y3CisJc2VsZWN0IEFSTV9HSUMKKwlzZWxlY3QgQVJNX0dMT0JBTF9USU1FUgor
CXNlbGVjdCBDTEtTUkNfQVJNX0dMT0JBTF9USU1FUl9TQ0hFRF9DTE9DSworCXNlbGVjdCBHRU5F
UklDX0lSUV9DSElQCisJc2VsZWN0IFJFU0VUX0NPTlRST0xMRVIKKwloZWxwCisJICBUaGlzIGVu
YWJsZXMgc3VwcG9ydCBmb3IgdGhlIFJlYWx0ZWsgUlREMTE5NSBTb0MgZmFtaWx5LgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlIGIvYXJjaC9hcm0vbWFjaC1yZWFs
dGVrL01ha2VmaWxlCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTM4
MmQ1YmJkZDNjCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2Vm
aWxlCkBAIC0wLDAgKzEsMiBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
ci1sYXRlcgorb2JqLXkgKz0gcnRkMTE5NS5vCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJl
YWx0ZWsvcnRkMTE5NS5jIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmIzMWE0MDY2YmU4NwotLS0gL2Rldi9u
dWxsCisrKyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKQEAgLTAsMCArMSwzNyBA
QAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBS
ZWFsdGVrIFJURDExOTUKKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAxOSBBbmRyZWFzIEbD
pHJiZXIKKyAqLworCisjaW5jbHVkZSA8bGludXgvbWVtYmxvY2suaD4KKyNpbmNsdWRlIDxhc20v
bWFjaC9hcmNoLmg+CisKK3N0YXRpYyB2b2lkIF9faW5pdCBydGQxMTk1X21lbWJsb2NrX3JlbW92
ZShwaHlzX2FkZHJfdCBiYXNlLCBwaHlzX2FkZHJfdCBzaXplKQoreworCWludCByZXQ7CisKKwly
ZXQgPSBtZW1ibG9ja19yZW1vdmUoYmFzZSwgc2l6ZSk7CisJaWYgKHJldCkKKwkJcHJfZXJyKCJG
YWlsZWQgdG8gcmVtb3ZlIG1lbWJsb2NrICVwYSAoJWQpXG4iLCAmYmFzZSwgcmV0KTsKK30KKwor
c3RhdGljIHZvaWQgX19pbml0IHJ0ZDExOTVfcmVzZXJ2ZSh2b2lkKQoreworCS8qIEV4Y2x1ZGUg
cGVyaXBoZXJhbCByZWdpc3RlciBzcGFjZXMgZnJvbSBSQU0gKi8KKwlydGQxMTk1X21lbWJsb2Nr
X3JlbW92ZSgweDE4MDAwMDAwLCAweDAwMDcwMDAwKTsKKwlydGQxMTk1X21lbWJsb2NrX3JlbW92
ZSgweDE4MTAwMDAwLCAweDAxMDAwMDAwKTsKK30KKworc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0
IHJ0ZDExOTVfZHRfY29tcGF0W10gX19pbml0Y29uc3QgPSB7CisJInJlYWx0ZWsscnRkMTE5NSIs
CisJTlVMTAorfTsKKworRFRfTUFDSElORV9TVEFSVChydGQxMTk1LCAiUmVhbHRlayBSVEQxMTk1
IikKKwkuZHRfY29tcGF0ID0gcnRkMTE5NV9kdF9jb21wYXQsCisJLnJlc2VydmUgPSBydGQxMTk1
X3Jlc2VydmUsCisJLmwyY19hdXhfdmFsID0gMHgwLAorCS5sMmNfYXV4X21hc2sgPSB+MHgwLAor
TUFDSElORV9FTkQKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
