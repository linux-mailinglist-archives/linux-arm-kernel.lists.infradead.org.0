Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7C62C708
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMmkVUTkGIm/bQdxLhIlqels1o3XlVEfP/kYiO8T30s=; b=ejjZvU+sJoi7Lp
	3+L9G7BrHtdqG/H6cUnZ8zWWItI5zJbq4lp4A57emFaNAUUKVb7Sxse125hYDYtjxBMkQoVPkeE2r
	GFhLn/HIGassETgT6+h8R89ucAB6cc/c2w+rjkccmgooNFyg92NabmhT+4UMAD+NMRCO6I8U3MH+h
	zCrhmh/hrpDhMte5QZ7UO0ehwaIJqWV4npm29962R7NDILFcVKSmIk7t1i8oKsEEJfq2QLB6gcW+u
	85NZa6yZH6rro4P5qw3bfvg+rETnyetDj9oQz1okV4dWmSwcKySYl6cdquiTJpapw4tsGbl0DNOiU
	TJdlTk4hg2WXqgwaxcFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbaL-0003jV-EA; Tue, 28 May 2019 12:52:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbaE-0003j2-1V
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:52:03 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hVbZz-0003P1-Qv; Tue, 28 May 2019 14:51:47 +0200
Message-ID: <1559047905.4039.15.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: fsl: imx8mq: enable the svns power key
From: Lucas Stach <l.stach@pengutronix.de>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>, angus.ainslie@puri.sm
Date: Tue, 28 May 2019 14:51:45 +0200
In-Reply-To: <20190528124406.29730-1-angus@akkea.ca>
References: <20190528124406.29730-1-angus@akkea.ca>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_055202_245335_B2C97ED9 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5ndXMsCgpBbSBEaWVuc3RhZywgZGVuIDI4LjA1LjIwMTksIDA1OjQ0IC0wNzAwIHNjaHJp
ZWIgQW5ndXMgQWluc2xpZSAoUHVyaXNtKToKPiBBZGQgdGhlIHNudnMgcG93ZXIga2V5Lgo+IAo+
ID4gU2lnbmVkLW9mZi1ieTogQW5ndXMgQWluc2xpZSAoUHVyaXNtKSA8YW5ndXNAYWtrZWEuY2E+
Cj4gLS0tCj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSB8IDkg
KysrKysrKysrCj4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBpbmRleCA0NWQxMGQ4ZWZkMTQu
LjVmOTNmZDk2NjJhZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDht
cS5kdHNpCj4gQEAgLTgsNiArOCw3IEBACj4gwqAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIv
aW14OG1xLXBvd2VyLmg+Cj4gwqAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvaW14OG1xLXJl
c2V0Lmg+Cj4gwqAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gKyNpbmNsdWRl
ICJkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oIgo+IMKgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiDCoCNpbmNsdWRlIDxkdC1iaW5kaW5ncy90
aGVybWFsL3RoZXJtYWwuaD4KPiDCoCNpbmNsdWRlICJpbXg4bXEtcGluZnVuYy5oIgo+IEBAIC00
NjMsNiArNDY0LDE0IEBACj4gPiDCoAkJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE5IElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+ID4gwqAJCQkJCQk8R0lDX1NQSSAyMCBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPiA+IMKgCQkJCX07Cj4gKwo+ID4gKwkJCQlzbnZzX3B3cmtleTogc252cy1wb3dlcmtl
eSB7Cj4gPiArCQkJCQljb21wYXRpYmxlID0gImZzbCxzZWMtdjQuMC1wd3JrZXkiOwo+ID4gKwkJ
CQkJcmVnbWFwID0gPCZzbnZzPjsKPiA+ICsJCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0IElS
UV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4gKwkJCQkJbGludXgsa2V5Y29kZSA9IDxLRVlfUE9XRVI+
Owo+ICsJCQkJCXdha2V1cC1zb3VyY2U7CgpOb3QgYWxsIGkuTVg4TVEgc3lzdGVtcyB3aWxsIGhh
dmUgdGhpcyBmdW5jdGlvbmFsaXR5IHdpcmVkIHVwIGF0IHRoZQpib2FyZCBsZXZlbCwgc28gdGhp
cyBub2RlIG5lZWRzIHRvIGJlIGRpc2FibGVkIGJ5IGRlZmF1bHQuIFRoZSBleGlzdGluZwogaS5N
WDYgYW5kIGkuTVg3IERUcyBzZWVtIHRvIGdldCB0aGlzIHdyb25nLgoKUmVnYXJkcywKTHVjYXMK
Cj4gKwkJCQl9Owo+ID4gwqAJCQl9Owo+IMKgCj4gPiA+IMKgCQkJY2xrOiBjbG9jay1jb250cm9s
bGVyQDMwMzgwMDAwIHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
