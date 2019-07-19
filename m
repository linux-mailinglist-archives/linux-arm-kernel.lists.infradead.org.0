Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED826E489
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZfC7I5rs0fYvKhSC7135t4YWVXzdP/3lRatEY0zwkA=; b=jjtKDM2nDP6QSu
	YQkl+4Rb3Y+UzySs4T0MX+SyPYKUcLqDiCKqPW3AxJNibKd0591JFd3mroyk7e6LO+mAu9zAKRNCe
	YnLse80Fbf6VIHsNhcwM5ma/LUKVdVm2qsMD8C6XCG2sIUw8b3lUFJLNOIRVagyqiCveJDfa2TxXJ
	eTVIttLdhEr7qoB0+OD4ThzqeEvuTTyNwGRq19SNSPhWJlw7orC2876XOHnZxlYWwig+FMH2Fm6Wu
	EAlsSPqeTLJ68Q07gx6c5ExDGzXjF12ipFUxudeirG52cU3LBmfHi6lvnSkLTRMdE/dW6ejb4hOTS
	fDuAtLw+UsBGs03KGF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQU0-00050Z-Jg; Fri, 19 Jul 2019 10:51:24 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQTm-0004ze-Bb
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:51:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id AB1B89C01AF;
 Fri, 19 Jul 2019 06:51:09 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UITvdYQh0lmp; Fri, 19 Jul 2019 06:51:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id CD8AD9C0279;
 Fri, 19 Jul 2019 06:51:08 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DuBALd-RrgDk; Fri, 19 Jul 2019 06:51:08 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [192.168.48.237])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 9CA4D9C01AF;
 Fri, 19 Jul 2019 06:51:08 -0400 (EDT)
Date: Fri, 19 Jul 2019 06:51:08 -0400 (EDT)
From: Gilles Doffe <gilles.doffe@savoirfairelinux.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <405527661.6507550.1563533468485.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20190712135541.55fgchvyp33cl3uv@pengutronix.de>
References: <20190712124522.571-1-gilles.doffe@savoirfairelinux.com>
 <20190712135541.55fgchvyp33cl3uv@pengutronix.de>
Subject: Re: [PATCH] arm: dts: imx6qdl: add gpio expander pca9535
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC75 (Linux)/8.8.11_GA_3737)
Thread-Topic: imx6qdl: add gpio expander pca9535
Thread-Index: vpg0c/hPAh+Ul1ZzEvqvEtVCDcLJKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_035110_536878_CE809D0E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 shawnguo@kernel.org, s hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTWFyY28sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKQ29ycmVjdGVkIGluIHYyLgoK
UmVnYXJkcywKR2lsbGVzCgotLS0tLSBMZSAxMiBKdWlsIDE5LCDDoCAxNTo1NSwgTWFyY28gRmVs
c2NoIG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlIGEgw6ljcml0IDoKCkhpLAoKT24gMTktMDctMTIg
MTQ6NDUsIEdpbGxlcyBET0ZGRSB3cm90ZToKPiBUaGUgcGNhOTUzNSBncGlvIGV4cGFuZGVyIGlz
IHByZXNlbnQgb24gdGhlIFJleCBiYXNlYm9hcmQsIGJ1dCBtaXNzaW5nCj4gZnJvbSB0aGUgZHRz
aS4KPiAKPiBBZGQgdGhlIG5ldyBncGlvIGNvbnRyb2xsZXIgYW5kIHRoZSBhc3NvY2lhdGVkIGlu
dGVycnVwdCBsaW5lCj4gTVg2UURMX1BBRF9OQU5ERl9DUzNfX0dQSU82X0lPMTYuCj4gCj4gU2ln
bmVkLW9mZi1ieTogR2lsbGVzIERPRkZFIDxnaWxsZXMuZG9mZmVAc2F2b2lyZmFpcmVsaW51eC5j
b20+Cj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kgfCAxOSArKysr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2cWRsLXJleC5kdHNpCj4gaW5kZXggOTdmMTY1OTE0NGVhLi5kNTMyNGM2
NzYxYzEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1yZXguZHRzaQo+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kKPiBAQCAtMTM2LDYgKzEz
NiwxOSBAQAo+ICAJCWNvbXBhdGlibGUgPSAiYXRtZWwsMjRjMDIiOwo+ICAJCXJlZyA9IDwweDU3
PjsKPiAgCX07Cj4gKwo+ICsJZ3Bpbzg6IHBjYTk1MzVAMjcgewoKSnVzdCBhIG5pdHBpY2ssIEkg
d291bGQgY2hhbmdlIHRoYXQgdG8KCglwY2E5NTM1OiBncGlvOEAyNyB7CgpSZWdhcmRzLAogIE1h
cmNvCgo+ICsJCWNvbXBhdGlibGUgPSAibnhwLHBjYTk1MzUiOwo+ICsJCXJlZyA9IDwweDI3PjsK
PiArCQlncGlvLWNvbnRyb2xsZXI7Cj4gKwkJI2dwaW8tY2VsbHMgPSA8Mj47Cj4gKwkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfcGNhOTUzNT47
Cj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzY+Owo+ICsJCWludGVycnVwdHMgPSA8MTYg
SVJRX1RZUEVfTEVWRUxfTE9XPjsKPiArCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKPiArCQkjaW50
ZXJydXB0LWNlbGxzID0gPDI+Owo+ICsJfTsKPiAgfTsKPiAgCj4gICZpMmMzIHsKPiBAQCAtMjM3
LDYgKzI1MCwxMiBAQAo+ICAJCQk+Owo+ICAJCX07Cj4gIAo+ICsJCXBpbmN0cmxfcGNhOTUzNTog
cGNhOTUzNSB7Cj4gKwkJCWZzbCxwaW5zID0gPAo+ICsJCQkJTVg2UURMX1BBRF9OQU5ERl9DUzNf
X0dQSU82X0lPMTYJMHgwMDAxNzA1OQo+ICsJCSAgID47Cj4gKwkJfTsKPiArCj4gIAkJcGluY3Ry
bF91YXJ0MTogdWFydDFncnAgewo+ICAJCQlmc2wscGlucyA9IDwKPiAgCQkJCU1YNlFETF9QQURf
Q1NJMF9EQVQxMF9fVUFSVDFfVFhfREFUQQkweDFiMGIxCj4gLS0gCj4gMi4xOS4xCj4gCj4gCj4g
CgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04
LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAg
IHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0
OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
