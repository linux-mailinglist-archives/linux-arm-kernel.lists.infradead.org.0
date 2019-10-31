Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B2EEB580
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRT2lXrY7yqYHPqZSlOniKAvdI7ceEBrSbZbzfjm2A4=; b=BVhy+fOnUF1TKd
	1644UQE5nd97qx5kRvssJx9EZBASY3lH1C71iXrC11MixQWQMucZe2sUicQWs+/FSx72tImFLS/Sy
	K2dvV/e0wQSegViQgbo+/H4YPUnUFp5a4CQjdtau0QGppoQyzp9ONCAhrAbX0+Xiu7+IqKFVu02Cs
	MYm+bTM8xB5I8OCziuHIGqTg31qa9VNAHqtUeFRy2JBz8te1N2muxPnZIFOdSj9ZPUCxUqybxs/PD
	sB3EoKfzy/7j1SVjauhm2P5woxzYZ1hcvNptBGKjp9hQW38Rd45nmrW3Y+bVsU/9LhdfrcKecYO7y
	BJd/9qs7s5fY5VbTaJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDjj-00078n-Ey; Thu, 31 Oct 2019 16:55:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDhD-0003sg-Ny; Thu, 31 Oct 2019 16:53:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 27ED6B302;
 Thu, 31 Oct 2019 16:53:12 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 2/4] ARM: Prepare Realtek RTD1195
Date: Thu, 31 Oct 2019 17:53:05 +0100
Message-Id: <20191031165308.14102-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191031165308.14102-1-afaerber@suse.de>
References: <20191031165308.14102-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095316_093409_C92AB328 
X-CRM114-Status: GOOD (  14.42  )
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
OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjEgLT4gdjI6CiAqIERy
b3BwZWQgc2VsZWN0aW9uIG9mIENPTU1PTl9DTEsgKEFybmQpCiAqIERyb3BwZWQgc2VsZWN0aW9u
IG9mIEFNQkEsIFNDVSwgVFdECiAqIEFkZGVkIGNvbW1lbnQgYWJvdXQgdGV4dCBvZmZzZXQgdG8g
ZGlzdGluZ3Vpc2ggZnJvbSBIVEMgY29tbWVudCBhYm92ZQogKiBBZGRlZCBtYWNoaW5lX2Rlc2Mg
d2l0aCAucmVzZXJ2ZSB0byBleGNsdWRlIHBlcmlwaGVyYWwgc3BhY2VzIChSb2IpCiAKIGFyY2gv
YXJtL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMiArKwogYXJjaC9hcm0vTWFrZWZpbGUgICAg
ICAgICAgICAgICB8ICAzICsrKwogYXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcgICB8IDEx
ICsrKysrKysrKysrCiBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvTWFrZWZpbGUgIHwgIDIgKysKIGFy
Y2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKykKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9L
Y29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCBiN2RiZWI2NTJjYjEuLmQ4MDBiMzI0MDc5
MCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vS2NvbmZpZworKysgYi9hcmNoL2FybS9LY29uZmlnCkBA
IC03MDAsNiArNzAwLDggQEAgc291cmNlICJhcmNoL2FybS9tYWNoLXFjb20vS2NvbmZpZyIKIAog
c291cmNlICJhcmNoL2FybS9tYWNoLXJkYS9LY29uZmlnIgogCitzb3VyY2UgImFyY2gvYXJtL21h
Y2gtcmVhbHRlay9LY29uZmlnIgorCiBzb3VyY2UgImFyY2gvYXJtL21hY2gtcmVhbHZpZXcvS2Nv
bmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWciCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9NYWtlZmlsZSBiL2FyY2gvYXJtL01ha2VmaWxlCmluZGV4IGRiODU3ZDA3
MTE0Zi4uMTZkNDFlZmVhN2YyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9NYWtlZmlsZQorKysgYi9h
cmNoL2FybS9NYWtlZmlsZQpAQCAtMTQ4LDYgKzE0OCw4IEBAIGhlYWQteQkJOj0gYXJjaC9hcm0v
a2VybmVsL2hlYWQkKE1NVUVYVCkubwogdGV4dG9mcy15CTo9IDB4MDAwMDgwMDAKICMgV2UgZG9u
J3Qgd2FudCB0aGUgaHRjIGJvb3Rsb2FkZXIgdG8gY29ycnVwdCBrZXJuZWwgZHVyaW5nIHJlc3Vt
ZQogdGV4dG9mcy0kKENPTkZJR19QTV9IMTk0MCkgICAgICA6PSAweDAwMTA4MDAwCisjIFJURDEx
OTUgaGFzIEJvb3QgUk9NIGF0IHN0YXJ0IG9mIGFkZHJlc3Mgc3BhY2UKK3RleHRvZnMtJChDT05G
SUdfQVJDSF9SRUFMVEVLKSAgOj0gMHgwMDEwODAwMAogIyBTQTExMTEgRE1BIGJ1Zzogd2UgZG9u
J3Qgd2FudCB0aGUga2VybmVsIHRvIGxpdmUgaW4gcHJlY2lvdXMgRE1BLWFibGUgbWVtb3J5CiBp
ZmVxICgkKENPTkZJR19BUkNIX1NBMTEwMCkseSkKIHRleHRvZnMtJChDT05GSUdfU0ExMTExKSA6
PSAweDAwMjA4MDAwCkBAIC0yMDcsNiArMjA5LDcgQEAgbWFjaGluZS0kKENPTkZJR19BUkNIX1BJ
Q09YQ0VMTCkJKz0gcGljb3hjZWxsCiBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUFhBKQkJKz0gcHhh
CiBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUUNPTSkJCSs9IHFjb20KIG1hY2hpbmUtJChDT05GSUdf
QVJDSF9SREEpCQkrPSByZGEKK21hY2hpbmUtJChDT05GSUdfQVJDSF9SRUFMVEVLKQkJKz0gcmVh
bHRlawogbWFjaGluZS0kKENPTkZJR19BUkNIX1JFQUxWSUVXKQkJKz0gcmVhbHZpZXcKIG1hY2hp
bmUtJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkJCSs9IHJvY2tjaGlwCiBtYWNoaW5lLSQoQ09ORklH
X0FSQ0hfUlBDKQkJKz0gcnBjCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2Nv
bmZpZyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uMTlmZGNmMDkzZmQxCi0tLSAvZGV2L251bGwKKysrIGIvYXJj
aC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcKQEAgLTAsMCArMSwxMSBAQAorIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgorbWVudWNvbmZpZyBBUkNIX1JFQUxURUsK
Kwlib29sICJSZWFsdGVrIFNvQ3MiCisJZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y3CisJc2VsZWN0
IEFSTV9HSUMKKwlzZWxlY3QgQVJNX0dMT0JBTF9USU1FUgorCXNlbGVjdCBDTEtTUkNfQVJNX0dM
T0JBTF9USU1FUl9TQ0hFRF9DTE9DSworCXNlbGVjdCBHRU5FUklDX0lSUV9DSElQCisJc2VsZWN0
IFJFU0VUX0NPTlRST0xMRVIKKwloZWxwCisJICBUaGlzIGVuYWJsZXMgc3VwcG9ydCBmb3IgdGhl
IFJlYWx0ZWsgUlREMTE5NSBTb0MgZmFtaWx5LgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1y
ZWFsdGVrL01ha2VmaWxlIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTM4MmQ1YmJkZDNjCi0tLSAvZGV2L251
bGwKKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlCkBAIC0wLDAgKzEsMiBAQAor
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgorb2JqLXkgKz0gcnRk
MTE5NS5vCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jIGIvYXJj
aC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjk5ZTVkM2U5NmE4ZQotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL21h
Y2gtcmVhbHRlay9ydGQxMTk1LmMKQEAgLTAsMCArMSwzNyBAQAorLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBSZWFsdGVrIFJURDExOTUKKyAqCisg
KiBDb3B5cmlnaHQgKGMpIDIwMTctMjAxOSBBbmRyZWFzIEbDpHJiZXIKKyAqLworCisjaW5jbHVk
ZSA8bGludXgvbWVtYmxvY2suaD4KKyNpbmNsdWRlIDxhc20vbWFjaC9hcmNoLmg+CisKK3N0YXRp
YyB2b2lkIF9faW5pdCBydGQxMTk1X21lbWJsb2NrX3JlbW92ZShwaHlzX2FkZHJfdCBiYXNlLCBw
aHlzX2FkZHJfdCBzaXplKQoreworCWludCByZXQ7CisKKwlyZXQgPSBtZW1ibG9ja19yZW1vdmUo
YmFzZSwgc2l6ZSk7CisJaWYgKHJldCkKKwkJcHJfZXJyKCJGYWlsZWQgdG8gcmVtb3ZlIG1lbWJs
b2NrICVwYSAoJWQpXG4iLCAmYmFzZSwgcmV0KTsKK30KKworc3RhdGljIHZvaWQgX19pbml0IHJ0
ZDExOTVfcmVzZXJ2ZSh2b2lkKQoreworCS8qIEV4Y2x1ZGUgcGVyaXBoZXJhbCByZWdpc3RlciBz
cGFjZXMgZnJvbSBSQU0gKi8KKwlydGQxMTk1X21lbWJsb2NrX3JlbW92ZSgweDE4MDAwMDAwLCAw
eDAwMTAwMDAwKTsKKwlydGQxMTk1X21lbWJsb2NrX3JlbW92ZSgweDE4MTAwMDAwLCAweDAxMDAw
MDAwKTsKK30KKworc3RhdGljIGNvbnN0IGNoYXIgKmNvbnN0IHJ0ZDExOTVfZHRfY29tcGF0W10g
X19pbml0Y29uc3QgPSB7CisJInJlYWx0ZWsscnRkMTE5NSIsCisJTlVMTAorfTsKKworRFRfTUFD
SElORV9TVEFSVChydGQxMTk1LCAiUmVhbHRlayBSVEQxMTk1IikKKwkuZHRfY29tcGF0ID0gcnRk
MTE5NV9kdF9jb21wYXQsCisJLnJlc2VydmUgPSBydGQxMTk1X3Jlc2VydmUsCisJLmwyY19hdXhf
dmFsID0gMHgwLAorCS5sMmNfYXV4X21hc2sgPSB+MHgwLAorTUFDSElORV9FTkQKLS0gCjIuMTYu
NAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
