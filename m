Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874D017D4D5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3UCdn1IGfR4/xpUse5QVROmn2K7en9YdNnoUWDBkGM=; b=FqHmr56+xvDFKA
	w4Baswst8TL83qMzyyuk8rRApB5k/g6DGYs1Qs0AAubx7932S16Ajb9Vn7VItYYZ2uj6KyjNzALYj
	AnY32rUMoxtZ9HUzFffxgeaLNmjarTvMfDLI3XikVUKwM/prdRK0Ig/rYEyQxLF5PrIQDKzZj2ZVf
	qAwvXOP1/AFqGOP07cvFqcQiY/WAP++5y3Sm8j020RBDlXrLb6wx18DkHJMsCUeCAycaoBmHYkSVK
	33xoRb7SzHdjpPJOh0SXJR6UX7yACYf/YoPuobmDzSBsG8U8JDMiziqI6+rg9PEumchQ6UTNjhH1/
	S7UBTLZJeQunEBVpn6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAyt0-00029P-Bp; Sun, 08 Mar 2020 16:34:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrI-0000f4-5p
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 32982B1A2;
 Sun,  8 Mar 2020 16:32:48 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 06/11] tty: serial: Add Sunplus Plus1 UART earlycon
Date: Sun,  8 Mar 2020 17:32:24 +0100
Message-Id: <20200308163230.4002-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093256_557834_4148B1B8 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJlcGFyZSBhbiBlYXJseWNvbiBkcml2ZXIgZm9yIFN1bnBsdXMgUGx1czEgU1A3MDIxIFNvQy4K
CkJhc2VkIG9uIEJQSS1GMlMtYnNwIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogZHJpdmVycy90dHkvc2VyaWFsL0tjb25maWcgICAg
ICAgIHwgMTkgKysrKysrKysrCiBkcml2ZXJzL3R0eS9zZXJpYWwvTWFrZWZpbGUgICAgICAgfCAg
MSArCiBkcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMgfCA5MCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlv
bnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0
LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvS2NvbmZpZyBiL2RyaXZlcnMvdHR5
L3NlcmlhbC9LY29uZmlnCmluZGV4IDg4MGI5NjIwMTUzMC4uYWM2ZGNlNzVjMmYzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvS2NvbmZpZworKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwv
S2NvbmZpZwpAQCAtMTU2Miw2ICsxNTYyLDI1IEBAIGNvbmZpZyBTRVJJQUxfTUlMQkVBVVRfVVNJ
T19DT05TT0xFCiAJICByZWNlaXZlcyBhbGwga2VybmVsIG1lc3NhZ2VzIGFuZCB3YXJuaW5ncyBh
bmQgd2hpY2ggYWxsb3dzIGxvZ2lucyBpbgogCSAgc2luZ2xlIHVzZXIgbW9kZSkuCiAKK2NvbmZp
ZyBTRVJJQUxfUExVUzEKKwlib29sICJTdW5wbHVzIFBsdXMxIHNlcmlhbCBwb3J0IHN1cHBvcnQi
CisJZGVwZW5kcyBvbiBBUkNIX1NVTlBMVVMgfHwgQ09NUElMRV9URVNUCisJc2VsZWN0IFNFUklB
TF9DT1JFCisJaGVscAorCSAgVGhpcyBkcml2ZXIgaXMgZm9yIFN1bnBsdXMgUGx1czEgU1A3MDIx
IFNvQydzIFVBUlQuCisJICBTYXkgJ1knIGhlcmUgaWYgeW91IHdpc2ggdG8gdXNlIHRoZSBvbi1i
b2FyZCBzZXJpYWwgcG9ydC4KKwkgIE90aGVyd2lzZSwgc2F5ICdOJy4KKworY29uZmlnIFNFUklB
TF9QTFVTMV9DT05TT0xFCisJYm9vbCAiQ29uc29sZSBvbiBTdW5wbHVzIFBsdXMxIHNlcmlhbCBw
b3J0IgorCWRlcGVuZHMgb24gU0VSSUFMX1BMVVMxPXkKKwlzZWxlY3QgU0VSSUFMX0NPUkVfQ09O
U09MRQorCXNlbGVjdCBTRVJJQUxfRUFSTFlDT04KKwlkZWZhdWx0IHkKKwloZWxwCisJICBTYXkg
J1knIGhlcmUgaWYgeW91IHdpc2ggdG8gdXNlIFN1bnBsdXMgU1A3MDIxIFVBUlQKKwkgIGFzIHRo
ZSBzeXN0ZW0gY29uc29sZS4gT25seSBlYXJseWNvbiBpcyBpbXBsZW1lbnRlZCBjdXJyZW50bHku
CisKIGVuZG1lbnUKIAogY29uZmlnIFNFUklBTF9NQ1RSTF9HUElPCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3R0eS9zZXJpYWwvTWFrZWZpbGUgYi9kcml2ZXJzL3R0eS9zZXJpYWwvTWFrZWZpbGUKaW5k
ZXggZDA1NmVlNmNjYTMzLi5mZWQ0MGZiMTllZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdHR5L3Nl
cmlhbC9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvTWFrZWZpbGUKQEAgLTg5LDYg
Kzg5LDcgQEAgb2JqLSQoQ09ORklHX1NFUklBTF9PV0wpCSs9IG93bC11YXJ0Lm8KIG9iai0kKENP
TkZJR19TRVJJQUxfUkRBKQkrPSByZGEtdWFydC5vCiBvYmotJChDT05GSUdfU0VSSUFMX01JTEJF
QVVUX1VTSU8pICs9IG1pbGJlYXV0X3VzaW8ubwogb2JqLSQoQ09ORklHX1NFUklBTF9TSUZJVkUp
CSs9IHNpZml2ZS5vCitvYmotJChDT05GSUdfU0VSSUFMX1BMVVMxKQkrPSBzdW5wbHVzLXVhcnQu
bwogCiAjIEdQSU9MSUIgaGVscGVycyBmb3IgbW9kZW0gY29udHJvbCBsaW5lcwogb2JqLSQoQ09O
RklHX1NFUklBTF9NQ1RSTF9HUElPKQkrPSBzZXJpYWxfbWN0cmxfZ3Bpby5vCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwv
c3VucGx1cy11YXJ0LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi45
NTlkZmFiNWUwN2IKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1
cy11YXJ0LmMKQEAgLTAsMCArMSw5MCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb3ItbGF0ZXIKKy8qCisgKiBDb3B5cmlnaHQgKGMpIDIwMjAgQW5kcmVhcyBGw6RyYmVy
CisgKi8KKworI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgorI2luY2x1ZGUgPGxpbnV4L2NvbnNv
bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9pby5oPgorI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgor
I2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
CisjaW5jbHVkZSA8bGludXgvc2VyaWFsLmg+CisjaW5jbHVkZSA8bGludXgvc2VyaWFsX2NvcmUu
aD4KKworI2RlZmluZSBSRUdfREFUQQkJMHgwMAorI2RlZmluZSBSRUdfTFNSCQkJMHgwNAorCisj
ZGVmaW5lIFBMVVMxX1VBUlRfTFNSX1RYCUJJVCgwKQorCitzdGF0aWMgaW5saW5lIHZvaWQgcGx1
czFfdWFydF93cml0ZShzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCB1bnNpZ25lZCBpbnQgb2ZmLCB1
MzIgdmFsKQoreworCXdyaXRlbF9yZWxheGVkKHZhbCwgcG9ydC0+bWVtYmFzZSArIG9mZik7Cit9
CisKK3N0YXRpYyBpbmxpbmUgdTMyIHBsdXMxX3VhcnRfcmVhZChzdHJ1Y3QgdWFydF9wb3J0ICpw
b3J0LCB1bnNpZ25lZCBpbnQgb2ZmKQoreworCXJldHVybiByZWFkbF9yZWxheGVkKHBvcnQtPm1l
bWJhc2UgKyBvZmYpOworfQorCisjaWZkZWYgQ09ORklHX1NFUklBTF9QTFVTMV9DT05TT0xFCisK
K3N0YXRpYyB2b2lkIHBsdXMxX2NvbnNvbGVfcHV0Y2hhcihzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0
LCBpbnQgY2gpCit7CisJaWYgKCFwb3J0LT5tZW1iYXNlKQorCQlyZXR1cm47CisKKwl3aGlsZSAo
IShwbHVzMV91YXJ0X3JlYWQocG9ydCwgUkVHX0xTUikgJiBQTFVTMV9VQVJUX0xTUl9UWCkpCisJ
CWNwdV9yZWxheCgpOworCisJcGx1czFfdWFydF93cml0ZShwb3J0LCBSRUdfREFUQSwgY2gpOwor
fQorCitzdGF0aWMgdm9pZCBwbHVzMV91YXJ0X3BvcnRfd3JpdGUoc3RydWN0IHVhcnRfcG9ydCAq
cG9ydCwgY29uc3QgY2hhciAqcywKKwkJCQkgIHVfaW50IGNvdW50KQoreworCXVuc2lnbmVkIGxv
bmcgZmxhZ3M7CisJaW50IGxvY2tlZDsKKworCWxvY2FsX2lycV9zYXZlKGZsYWdzKTsKKworCWlm
IChwb3J0LT5zeXNycSkKKwkJbG9ja2VkID0gMDsKKwllbHNlIGlmIChvb3BzX2luX3Byb2dyZXNz
KQorCQlsb2NrZWQgPSBzcGluX3RyeWxvY2soJnBvcnQtPmxvY2spOworCWVsc2UgeworCQlzcGlu
X2xvY2soJnBvcnQtPmxvY2spOworCQlsb2NrZWQgPSAxOworCX0KKworCXVhcnRfY29uc29sZV93
cml0ZShwb3J0LCBzLCBjb3VudCwgcGx1czFfY29uc29sZV9wdXRjaGFyKTsKKworCWlmIChsb2Nr
ZWQpCisJCXNwaW5fdW5sb2NrKCZwb3J0LT5sb2NrKTsKKworCWxvY2FsX2lycV9yZXN0b3JlKGZs
YWdzKTsKK30KKworc3RhdGljIHZvaWQgcGx1czFfdWFydF9lYXJseV9jb25zb2xlX3dyaXRlKHN0
cnVjdCBjb25zb2xlICpjbywKKwkJCQkJICAgY29uc3QgY2hhciAqcywKKwkJCQkJICAgdV9pbnQg
Y291bnQpCit7CisJc3RydWN0IGVhcmx5Y29uX2RldmljZSAqZGV2ID0gY28tPmRhdGE7CisKKwlw
bHVzMV91YXJ0X3BvcnRfd3JpdGUoJmRldi0+cG9ydCwgcywgY291bnQpOworfQorCitzdGF0aWMg
aW50IF9faW5pdAorcGx1czFfdWFydF9lYXJseV9jb25zb2xlX3NldHVwKHN0cnVjdCBlYXJseWNv
bl9kZXZpY2UgKmRldmljZSwgY29uc3QgY2hhciAqb3B0KQoreworCWlmICghZGV2aWNlLT5wb3J0
Lm1lbWJhc2UpCisJCXJldHVybiAtRU5PREVWOworCisJZGV2aWNlLT5jb24tPndyaXRlID0gcGx1
czFfdWFydF9lYXJseV9jb25zb2xlX3dyaXRlOworCisJcmV0dXJuIDA7Cit9CitPRl9FQVJMWUNP
Tl9ERUNMQVJFKHN1bnBsdXMsICJzdW5wbHVzLHNwNzAyMS11YXJ0IiwKKwkJICAgIHBsdXMxX3Vh
cnRfZWFybHlfY29uc29sZV9zZXR1cCk7CisKKyNlbmRpZgotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
