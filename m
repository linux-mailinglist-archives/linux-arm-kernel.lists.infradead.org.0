Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6386ED167
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrXIJN0XEiLc2JL9EZOORhYGGKqJgDeAjH51ufDZF6M=; b=WtIrTd0VNsc0qJ
	v1+l+dKusWZQ90Q6o4CxFgFsQYQfNS5MfXjR8AnrLRB7FLfbH78we/tZA6GtD30Juc7Ln2N7ykyMJ
	xDXmQAr6UHn2S0iCnRx8WS3u1eTHGhXFXd/+KxH3htlemUTsEjFoWMLvr2wUWTFE5ebn9j7Gysb/s
	tpMbMAbeOOZTjHB1372/fXUm2+Bb+ClHIm3EwzK3xL/OJGoQjPFVT1IY+Zkt2rmzQxzxQEV58ZpIn
	uZBu44BCywsjQCTgwa4+l7BbXmGQQwwrrMUwvFA8GAJ5vF+ciLb3+vOlJqHy/XANyg9yaO90o1FKb
	ClND6BHjJVjfayZRPosA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4pa-00054n-3H; Sun, 03 Nov 2019 01:37:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4p7-0004n6-OZ; Sun, 03 Nov 2019 01:36:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DAAC3AF26;
 Sun,  3 Nov 2019 01:36:52 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 01/11] dt-bindings: soc: Add Realtek RTD1195 chip info binding
Date: Sun,  3 Nov 2019 02:36:35 +0100
Message-Id: <20191103013645.9856-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183657_956445_789C1517 
X-CRM114-Status: GOOD (  12.08  )
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGEgYmluZGluZyBmb3IgUlREMTE5NSBhbmQgbGF0ZXIgU29DcycgY2hpcCBpbmZvIHJl
Z2lzdGVycy4KQWRkIHRoZSBuZXcgZGlyZWN0b3J5IHRvIE1BSU5UQUlORVJTLgoKU2lnbmVkLW9m
Zi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIE5vdGU6IFRoZSBi
aW5kaW5nIGdldHMgZXh0ZW5kZWQgY29tcGF0aWJseSBsYXRlciBmb3IgdXAgdG8gdGhyZWUgcmVn
IGVudHJpZXMuCiAKIC4uLi9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hp
cC55YW1sIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKwogTUFJTlRBSU5FUlMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMz
IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc29jL3JlYWx0ZWsvcmVhbHRlayxydGQxMTk1LWNoaXAueWFtbAoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFs
dGVrLHJ0ZDExOTUtY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NvYy9yZWFsdGVrL3JlYWx0ZWsscnRkMTE5NS1jaGlwLnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi41NjVhZDI0MTk1NTMKLS0tIC9kZXYvbnVsbAorKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JlYWx0ZWsvcmVhbHRlayxydGQx
MTk1LWNoaXAueWFtbApAQCAtMCwwICsxLDMyIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlk
OiAiaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvc29jL3JlYWx0ZWsvcmVhbHRlayxydGQx
MTk1LWNoaXAueWFtbCMiCiskc2NoZW1hOiAiaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2No
ZW1hcy9jb3JlLnlhbWwjIgorCit0aXRsZTogUmVhbHRlayBSVEQxMTk1IGNoaXAgaWRlbnRpZmlj
YXRpb24KKworbWFpbnRhaW5lcnM6CisgIC0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgorCitkZXNjcmlwdGlvbjogfAorICBUaGUgUmVhbHRlayBTb0NzIGhhdmUgc29tZSByZWdp
c3RlcnMgdG8gaWRlbnRpZnkgdGhlIGNoaXAgYW5kIHJldmlzaW9uLgorCitwcm9wZXJ0aWVzOgor
ICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiAicmVhbHRlayxydGQxMTk1LWNoaXAiCisKKyAgcmVn
OgorICAgIG1heEl0ZW1zOiAxCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcK
KworZXhhbXBsZXM6CisgIC0gfAorICAgIGNoaXAtaW5mb0AxODAxYTIwMCB7CisgICAgICAgIGNv
bXBhdGlibGUgPSAicmVhbHRlayxydGQxMTk1LWNoaXAiOworICAgICAgICByZWcgPSA8MHgxODAx
YTIwMCAweDg+OworICAgIH07CisuLi4KZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRB
SU5FUlMKaW5kZXggZjMzYWRjNDMwMjMwLi41YzYxY2Y1YTQ0Y2IgMTAwNjQ0Ci0tLSBhL01BSU5U
QUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0yMTg4LDYgKzIxODgsNyBAQCBMOglsaW51eC1y
ZWFsdGVrLXNvY0BsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3Jp
YmVycykKIFM6CU1haW50YWluZWQKIEY6CWFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay8KIEY6
CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sCitGOglE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JlYWx0ZWsvCiAKIEFSTS9SRU5F
U0FTIEFSTTY0IEFSQ0hJVEVDVFVSRQogTToJR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
