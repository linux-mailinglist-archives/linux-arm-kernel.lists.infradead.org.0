Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAE6ED170
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Riv30RBT8wlAcnNAHQS0afDGnCtPacFvSDai07k5l8=; b=Xk5mxzWo8aKavQ
	342/fLdAU2z3/r8j6kPcFDqe7bI485sujS97Sd0qVBnPVyGOeU10VrCO/8DYgYe9KQDf3qIlNsdv7
	q8dmxU8iLDUf2yu98yjOGHRfRlgKvNYjf7A1MIdek83t1USe20nhUP2XBnGSkP05+lZPfsM4QoEou
	GBFANdiIWbxowMxh8jqdLPAwfeOVtcEMWub3Z5SKTZVI+mJPVeJoCLbyQWS2/b1jvL8q5i59EynyU
	yVSkifAtspf6Lp++AEVRtN/maS7OidQSEk3GC4xkSfFAQw0Ld2mlSIE8C42VQd1oJsT8FZiLYKaLL
	Roq9xY7THdaaNxYc1TqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4qE-0005sd-PD; Sun, 03 Nov 2019 01:38:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4p7-0004n7-Oa; Sun, 03 Nov 2019 01:37:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6EF21AF23;
 Sun,  3 Nov 2019 01:36:52 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 00/11] ARM: Realtek RTD1195/RTD1295 SoC info
Date: Sun,  3 Nov 2019 02:36:34 +0100
Message-Id: <20191103013645.9856-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183658_114458_3880C07F 
X-CRM114-Status: GOOD (  12.84  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIGEgc29jIGJ1cyBkcml2ZXIgZm9yIFJlYWx0ZWsgUlRE
MTE5NSBhbmQgUlREMTI5NSBTb0MgZmFtaWxpZXMuCgpUaGUgZGV0ZWN0aW9uIG1hZ2ljIGZvciBS
VEQxMjk1IGZhbWlseSB3YXMgbW9zdGx5IGJvcnJvd2VkIGZyb20gZG93bnN0cmVhbSBjb2RlCmFu
ZCB0aGUgYml0IG1lYW5pbmdzIGFyZSBlbnRpcmVseSB1bmRvY3VtZW50ZWQuIEluIGNhc2Ugb2Yg
UlREMTI5MyBJIGhhZCB0bwppbnZlbnQgbXkgb3duIGRldGVjdGlvbiBsb2dpYywgcG9zc2libHkg
Zmxhd2VkLgpJdCBpcyBleHBlY3RlZCB0aGF0IHRoaXMgZHJpdmVyIHdpbGwgbmVlZCB0byBiZSB0
d2Vha2VkIGFzIG5ldyBtb2RlbHMgZW1lcmdlLgoKT25lIGdlbmVyYWwgY29uc2lkZXJhdGlvbiBo
ZXJlIGlzIHRoYXQgc29tZSByZWdpc3RlciBhY2Nlc3NlcyBhcmUgbm90IHdlbGwKc2VsZi1jb250
YWluZWQgd2l0aGluIGEgYmxvY2sgc28gdGhhdCBhIHN5c2NvbiBtaWdodCBpbiB0aGVvcnkgaGVs
cCAtIGJ1dApmb3IgbGFjayBvZiBkb2N1bWVudGF0aW9uIHdlIGRvbid0IHJlYWxseSBoYXZlIGFu
IG92ZXJ2aWV3IG9mIHRoZSBJUCBibG9ja3MKYW5kIHRoZWlyIG5hbWVzLCBzdGFydHMgYW5kIHNp
emVzOyBkb3duc3RyZWFtIHRyZWVzIGp1c3QgaGFyZGNvZGVkIGFkZHJlc3Nlcy4KCkkgdGhlcmVm
b3JlIHNwbGl0IG9mZiB0aGUgRFQgY2hhbmdlIHRvIGFkZCBhIHNlY29uZC90aGlyZCByZWcgZW50
cnkgZm9yIG5vdywKc28gdGhhdCB3ZSBjb3VsZCBtb3ZlIGFoZWFkIHdpdGggYSBiYXNpYyBkcml2
ZXIgaW5pdGlhbGx5LgoKV2UgaGF2ZSBubyBSVEQxMjk0IERULCBzbyBpdCBpcyBpbmNsdWRlZCBo
ZXJlIG1haW5seSBmb3IgaWxsdXN0cmF0aW9uIG9mIHRoZQp1bnByZWRpY3RhYmxlIHJlZ2lzdGVy
IGRlcGVuZGVuY2llcyBhZmZlY3RpbmcgdGhpcyBiaW5kaW5nL2RyaXZlci4KClVzaW5nIHJlZy1u
YW1lcyBtaWdodCBjbGVhbiB0aGlzIHVwIGEgbGl0dGxlIGJ1dCB3b3VsZCBibG93IHVwIHRoZSBk
cml2ZXIgY29kZQphcyB0aGVyZSBhcHBlYXJzIHRvIGJlIG5vIGhhbmR5IGhlbHBlciBmdW5jdGlv
biBwcm92aWRlZC4KCkZpbmFsbHksIEkndmUgYmVlbiBzdHJ1Z2dsaW5nIHRvIGZpbmQgYW4gb3Zl
cmFyY2hpbmcgbmFtZSBmb3IgdGhlIFNvQyBmYW1pbGllcy4KUmVhbHRlay5jb20gZ3JvdXBzIHRo
ZW0gYXMgIkRpZ2l0YWwgSG9tZSBDZW50ZXIiIC0gbm90IHN1cmUgd2hldGhlciB0aGF0IGZpdHM/
CkZvciBub3cgSSB1c2UgUGhvZW5peC9LeWxpbi9ldGMuIHdpdGggREhDIG9ubHkgYXMgZmFsbGJh
Y2ssIGJ1dCBJIHdvbmRlcgp3aGV0aGVyIHRob3NlIGZhbWlseSBuYW1lcyBzaG91bGQgcmF0aGVy
IGJlIHNvY19pZCB0aGFuIGZhbWlseSBjb250ZW50cz8KClByZXBhcmVkIGJ1dCBub3QgaW5jbHVk
ZWQgaGVyZSBpczoKKiBSVEQxMzk1IGZhbWlseSwgd2hpY2ggd2UgZG9uJ3QgaGF2ZSBhIERUIGZv
ciB5ZXQsCiogUlREMTYxOSBmYW1pbHksIHdoaWNoIHdlIGRvbid0IGhhdmUgYSBEVCBmb3IgeWV0
LCBDaGlwIElEIHRvIGJlIHZlcmlmaWVkLAoqIFJURDEzMTkgZmFtaWx5LCB3aGljaCB3ZSBkb24n
dCBoYXZlIGEgRFQgZm9yIHlldCwgd2l0aCBUT0RPIGZvciBpdHMgQ2hpcCBJRC4KCkxhdGVzdCBl
eHBlcmltZW50YWwgcGF0Y2hlcyBhdDoKaHR0cHM6Ly9naXRodWIuY29tL2FmYWVyYmVyL2xpbnV4
L2NvbW1pdHMvcnRkMTI5NS1uZXh0CgpIYXZlIGEgbG90IG9mIGZ1biEKCkNoZWVycywKQW5kcmVh
cwoKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBSb2IgSGVycmluZyA8cm9iaCtk
dEBrZXJuZWwub3JnPgoKQW5kcmVhcyBGw6RyYmVyICgxMSk6CiAgZHQtYmluZGluZ3M6IHNvYzog
QWRkIFJlYWx0ZWsgUlREMTE5NSBjaGlwIGluZm8gYmluZGluZwogIHNvYzogQWRkIFJlYWx0ZWsg
Y2hpcCBpbmZvIGRyaXZlciBmb3IgUlREMTE5NSBhbmQgUlREMTI5NQogIGFybTY0OiBkdHM6IHJl
YWx0ZWs6IHJ0ZDEyOXg6IEFkZCBjaGlwIGluZm8gbm9kZQogIEFSTTogZHRzOiBydGQxMTk1OiBB
ZGQgY2hpcCBpbmZvIG5vZGUKICBkdC1iaW5kaW5nczogc29jOiByZWFsdGVrOiBydGQxMTk1LWNo
aXA6IEV4dGVuZCByZWcgcHJvcGVydHkKICBzb2M6IHJlYWx0ZWs6IGNoaXA6IERldGVjdCBSVEQx
Mjk2CiAgYXJtNjQ6IGR0czogcmVhbHRlazogcnRkMTI5eDogRXh0ZW5kIGNoaXAtaW5mbyByZWcg
d2l0aCBDSElQX0lORk8xCiAgc29jOiByZWFsdGVrOiBjaGlwOiBEZXRlY3QgUlREMTI5MwogIGR0
LWJpbmRpbmdzOiBzb2M6IHJlYWx0ZWs6IHJ0ZDExOTUtY2hpcDogRXh0ZW5kIHJlZyBub2RlIGFn
YWluCiAgc29jOiByZWFsdGVrOiBjaGlwOiBEZXRlY3QgUlREMTI5NAogIGFybTY0OiBkdHM6IHJl
YWx0ZWs6IHJ0ZDEyOXg6IEV4dGVuZCBjaGlwLWluZm8gcmVnIHdpdGggZWZ1c2UKCiAuLi4vYmlu
ZGluZ3Mvc29jL3JlYWx0ZWsvcmVhbHRlayxydGQxMTk1LWNoaXAueWFtbCB8ICA0NyArKysrKwog
TUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEg
KwogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpICAgICAgICAgICAgICAgICAgICAgfCAg
IDUgKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSAgICAgICAgICAg
fCAgIDcgKwogZHJpdmVycy9zb2MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9zb2MvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9zb2MvcmVhbHRlay9LY29uZmlnICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMTMgKysKIGRyaXZlcnMvc29jL3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMTkwICsrKysrKysrKysrKysrKysrKysrKwogOSBmaWxlcyBjaGFu
Z2VkLCAyNjcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hpcC55YW1s
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvcmVhbHRlay9LY29uZmlnCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvcmVhbHRlay9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jCgotLSAKMi4xNi40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
