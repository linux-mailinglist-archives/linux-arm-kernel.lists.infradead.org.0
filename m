Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3889E1FDD46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OShqZHJV6cBQLDEHqP+h6+vBOuuMC3KxIEogEBhmur0=; b=adZLuTw6NPlgwg
	TnXMNsJM1tKg0+nO8KtWpfRiNoBIjheWeOp6RilVe974QYaveB8znc3Lwf/VREjl8oTqYmb3smpNI
	OOWse/dTxXcuH4zB4B7vizj9nT9VDB1zVwKtT+tBObPUkw+mhsW1f7H5+DgP2QqJIYCGZNyUSPSQB
	kMD4rlnktEbJtucowI7zSsB4BJv6LlAO5q0oa1VdyezYSxhi1DrY3iMU1tuO+J0oI6UYXiuOARBWN
	407ZkEy5sGRrCLm3typMYV0gR6Ptrfh04KOSOfE83QJPsav9HioXcuwSUhyPaEMDYsmm9TwKN8MgJ
	MMz0yZdjnT1KjcpnjYCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljJ5-00082k-1H; Thu, 18 Jun 2020 01:25:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj6v-0002U3-R6
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:12:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4590C221ED;
 Thu, 18 Jun 2020 01:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442777;
 bh=Ofauh1tBppSKUpqFNfZSf4nuYCyIJ5cLtkEC6ulDfek=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y5itvmspFirUGLJ7e4a4hbJeCNnbdXNJ81Lek596J2A8OXmbCLtcg2roRUb8aowDn
 /gW1dwnCKHocalOTC6uxHXstGX56M9VCj9tWfJiiVpKUuLIHtQmHCVkbcygGUMJFYJ
 v3SaIX/1KpgXnOoJUOGyCS11unp6HeMOVHg7gGm8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 223/388] PCI: aardvark: Issue PERST via GPIO
Date: Wed, 17 Jun 2020 21:05:20 -0400
Message-Id: <20200618010805.600873-223-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181257_928745_CB13A01E 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>, Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClsgVXBzdHJlYW0gY29tbWl0IDUx
NjlhOTg1MWRhYWEyNzgyYTdiZDJiYjgzZDViMWJkMjI0YjI4NzkgXQoKQWRkIHN1cHBvcnQgZm9y
IGlzc3VpbmcgUEVSU1QgdmlhIEdQSU8gc3BlY2lmaWVkIGluICdyZXNldC1ncGlvcycKcHJvcGVy
dHkgKGFzIGRlc2NyaWJlZCBpbiBQQ0kgZGV2aWNlIHRyZWUgYmluZGluZ3MpLgoKU29tZSBidWdn
eSBjYXJkcyAoZS5nLiBDb21wZXggV0xFOTAwVlggb3IgV0xFMTIxNikgYXJlIG5vdCBkZXRlY3Rl
ZAphZnRlciByZWJvb3Qgd2hlbiBQRVJTVCBpcyBub3QgaXNzdWVkIGR1cmluZyBkcml2ZXIgaW5p
dGlhbGl6YXRpb24uCgpJZiBib290bG9hZGVyIGFscmVhZHkgZW5hYmxlZCBsaW5rIHRyYWluaW5n
IHRoZW4gaXNzdWluZyBQRVJTVCBoYXMgbm8KZWZmZWN0IGZvciBzb21lIGJ1Z2d5IGNhcmRzIChl
LmcuIENvbXBleCBXTEU5MDBWWCkgYW5kIHRoZXNlIGNhcmRzIGFyZQpub3QgZGV0ZWN0ZWQuIFdl
IHRoZXJlZm9yZSBjbGVhciB0aGUgTElOS19UUkFJTklOR19FTiByZWdpc3RlciBiZWZvcmUuCgpJ
dCB3YXMgb2JzZXJ2ZWQgdGhhdCBDb21wZXggV0xFOTAwVlggY2FyZCBuZWVkcyB0byBiZSBpbiBQ
RVJTVCByZXNldApmb3IgYXQgbGVhc3QgMTBtcyBpZiBib290bG9hZGVyIGVuYWJsZWQgbGluayB0
cmFpbmluZy4KClRlc3RlZCBvbiBUdXJyaXMgTU9YLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDIwMDQzMDA4MDYyNS4yNjA3MC02LXBhbGlAa2VybmVsLm9yZwpUZXN0ZWQtYnk6
IFRvbWFzeiBNYWNpZWogTm93YWsgPHRtbjUwNUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBh
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IExvcmVuem8gUGllcmFs
aXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgpBY2tlZC1ieTogVGhvbWFzIFBldGF6em9u
aSA8dGhvbWFzLnBldGF6em9uaUBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2
aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFh
cmR2YXJrLmMgfCA0MyArKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA0MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
LWFhcmR2YXJrLmMKaW5kZXggZTIwMmY5NTRlYjg0Li4yZWNjNzljMDNhZGUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwpAQCAtOSw2ICs5LDcgQEAKICAqLwogCiAjaW5jbHVk
ZSA8bGludXgvZGVsYXkuaD4KKyNpbmNsdWRlIDxsaW51eC9ncGlvLmg+CiAjaW5jbHVkZSA8bGlu
dXgvaW50ZXJydXB0Lmg+CiAjaW5jbHVkZSA8bGludXgvaXJxLmg+CiAjaW5jbHVkZSA8bGludXgv
aXJxZG9tYWluLmg+CkBAIC0xOCw2ICsxOSw3IEBACiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1f
ZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvbXNpLmg+CiAjaW5jbHVkZSA8bGludXgvb2ZfYWRk
cmVzcy5oPgorI2luY2x1ZGUgPGxpbnV4L29mX2dwaW8uaD4KICNpbmNsdWRlIDxsaW51eC9vZl9w
Y2kuaD4KIAogI2luY2x1ZGUgIi4uL3BjaS5oIgpAQCAtMjA0LDYgKzIwNiw3IEBAIHN0cnVjdCBh
ZHZrX3BjaWUgewogCWludCByb290X2J1c19ucjsKIAlpbnQgbGlua19nZW47CiAJc3RydWN0IHBj
aV9icmlkZ2VfZW11bCBicmlkZ2U7CisJc3RydWN0IGdwaW9fZGVzYyAqcmVzZXRfZ3BpbzsKIH07
CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBhZHZrX3dyaXRlbChzdHJ1Y3QgYWR2a19wY2llICpwY2ll
LCB1MzIgdmFsLCB1NjQgcmVnKQpAQCAtMzMwLDEwICszMzMsMzEgQEAgc3RhdGljIHZvaWQgYWR2
a19wY2llX3RyYWluX2xpbmsoc3RydWN0IGFkdmtfcGNpZSAqcGNpZSkKIAlkZXZfZXJyKGRldiwg
ImxpbmsgbmV2ZXIgY2FtZSB1cFxuIik7CiB9CiAKK3N0YXRpYyB2b2lkIGFkdmtfcGNpZV9pc3N1
ZV9wZXJzdChzdHJ1Y3QgYWR2a19wY2llICpwY2llKQoreworCXUzMiByZWc7CisKKwlpZiAoIXBj
aWUtPnJlc2V0X2dwaW8pCisJCXJldHVybjsKKworCS8qIFBFUlNUIGRvZXMgbm90IHdvcmsgZm9y
IHNvbWUgY2FyZHMgd2hlbiBsaW5rIHRyYWluaW5nIGlzIGVuYWJsZWQgKi8KKwlyZWcgPSBhZHZr
X3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9DVFJMMF9SRUcpOworCXJlZyAmPSB+TElOS19UUkFJTklO
R19FTjsKKwlhZHZrX3dyaXRlbChwY2llLCByZWcsIFBDSUVfQ09SRV9DVFJMMF9SRUcpOworCisJ
LyogMTBtcyBkZWxheSBpcyBuZWVkZWQgZm9yIHNvbWUgY2FyZHMgKi8KKwlkZXZfaW5mbygmcGNp
ZS0+cGRldi0+ZGV2LCAiaXNzdWluZyBQRVJTVCB2aWEgcmVzZXQgR1BJTyBmb3IgMTBtc1xuIik7
CisJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDEpOworCXVzbGVl
cF9yYW5nZSgxMDAwMCwgMTEwMDApOworCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChwY2llLT5y
ZXNldF9ncGlvLCAwKTsKK30KKwogc3RhdGljIHZvaWQgYWR2a19wY2llX3NldHVwX2h3KHN0cnVj
dCBhZHZrX3BjaWUgKnBjaWUpCiB7CiAJdTMyIHJlZzsKIAorCWFkdmtfcGNpZV9pc3N1ZV9wZXJz
dChwY2llKTsKKwogCS8qIFNldCB0byBEaXJlY3QgbW9kZSAqLwogCXJlZyA9IGFkdmtfcmVhZGwo
cGNpZSwgQ1RSTF9DT05GSUdfUkVHKTsKIAlyZWcgJj0gfihDVFJMX01PREVfTUFTSyA8PCBDVFJM
X01PREVfU0hJRlQpOwpAQCAtNDA2LDcgKzQzMCw4IEBAIHN0YXRpYyB2b2lkIGFkdmtfcGNpZV9z
ZXR1cF9odyhzdHJ1Y3QgYWR2a19wY2llICpwY2llKQogCiAJLyoKIAkgKiBQRVJTVCMgc2lnbmFs
IGNvdWxkIGhhdmUgYmVlbiBhc3NlcnRlZCBieSBwaW5jdHJsIHN1YnN5c3RlbSBiZWZvcmUKLQkg
KiBwcm9iZSgpIGNhbGxiYWNrIGhhcyBiZWVuIGNhbGxlZCwgbWFraW5nIHRoZSBlbmRwb2ludCBn
b2luZyBpbnRvCisJICogcHJvYmUoKSBjYWxsYmFjayBoYXMgYmVlbiBjYWxsZWQgb3IgaXNzdWVk
IGV4cGxpY2l0bHkgYnkgcmVzZXQgZ3BpbworCSAqIGZ1bmN0aW9uIGFkdmtfcGNpZV9pc3N1ZV9w
ZXJzdCgpLCBtYWtpbmcgdGhlIGVuZHBvaW50IGdvaW5nIGludG8KIAkgKiBmdW5kYW1lbnRhbCBy
ZXNldC4gQXMgcmVxdWlyZWQgYnkgUENJIEV4cHJlc3Mgc3BlYyBhIGRlbGF5IGZvciBhdAogCSAq
IGxlYXN0IDEwMG1zIGFmdGVyIHN1Y2ggYSByZXNldCBiZWZvcmUgbGluayB0cmFpbmluZyBpcyBu
ZWVkZWQuCiAJICovCkBAIC0xMDQ2LDYgKzEwNzEsMjIgQEAgc3RhdGljIGludCBhZHZrX3BjaWVf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl9CiAJcGNpZS0+cm9vdF9idXNf
bnIgPSBidXMtPnN0YXJ0OwogCisJcGNpZS0+cmVzZXRfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0X2Zy
b21fb2Zfbm9kZShkZXYsIGRldi0+b2Zfbm9kZSwKKwkJCQkJCSAgICAgICAicmVzZXQtZ3Bpb3Mi
LCAwLAorCQkJCQkJICAgICAgIEdQSU9EX09VVF9MT1csCisJCQkJCQkgICAgICAgInBjaWUxLXJl
c2V0Iik7CisJcmV0ID0gUFRSX0VSUl9PUl9aRVJPKHBjaWUtPnJlc2V0X2dwaW8pOworCWlmIChy
ZXQpIHsKKwkJaWYgKHJldCA9PSAtRU5PRU5UKSB7CisJCQlwY2llLT5yZXNldF9ncGlvID0gTlVM
TDsKKwkJfSBlbHNlIHsKKwkJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKKwkJCQlkZXZfZXJy
KGRldiwgIkZhaWxlZCB0byBnZXQgcmVzZXQtZ3BpbzogJWlcbiIsCisJCQkJCXJldCk7CisJCQly
ZXR1cm4gcmV0OworCQl9CisJfQorCiAJcmV0ID0gb2ZfcGNpX2dldF9tYXhfbGlua19zcGVlZChk
ZXYtPm9mX25vZGUpOwogCWlmIChyZXQgPD0gMCB8fCByZXQgPiAzKQogCQlwY2llLT5saW5rX2dl
biA9IDM7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
