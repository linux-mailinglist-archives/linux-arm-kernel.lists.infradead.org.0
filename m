Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1F5E178F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mmIHB+rQMqRkIXNKtrR/tetK623ScWF6jeSm2OKLB4s=; b=gmHtAlW1IKdxOy
	sPt8UHwkH3GDfSUlGEPhBlLTTOg8l81OEfhj0WUfT/8U++fTDWpvbjLheFR8hFfLpC3GlnYnoJx4O
	ypHMeOErWqTQnRGVLC4meXoIoPiZl5zrEEtk0rHG9totTRlbxumk1DgZdt3slpAX51gk5atNZq4rJ
	c3MHK1MeM+zGfLNAIIogZrsllGV8ATYocft59pN7RXHgH399E14sKd6QLVqtTYInzJ5HF0nQi8TeZ
	0vAm/yCpzC9mvVKWEGkdC2v7/n23kpucxm3ko9PRxp2cYLDHAPprE/N0gCfTf7QZkalb6UHV473so
	O+itbiDqpL/zienmBEcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDel-00053c-6Y; Wed, 23 Oct 2019 10:14:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdy-0004iU-IL; Wed, 23 Oct 2019 10:13:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 546CEB4D6;
 Wed, 23 Oct 2019 10:13:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 00/11] arm64: Realtek RTD1295 reset controllers
Date: Wed, 23 Oct 2019 12:13:06 +0200
Message-Id: <20191023101317.26656-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031330_748945_3333E78D 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIHJlc2V0IGNvbnRyb2xsZXJzIGZvciB0aGUgUmVhbHRl
ayBSVEQxMjk1IGFuZCBSVEQxMTk1IFNvQ3MuCgp2MiBhZG9wdHMgcmVzZXQtc2ltcGxlIGRyaXZl
ciBhbmQgRGVzaWduV2FyZSBiaW5kaW5ncyBhcyBzaW1wbGlmaWNhdGlvbgphbmQgY292ZXJzIFJU
RDExOTUsIHRvby4KCk5vdGUgdGhhdCByZXNldC1zaW1wbGUgZHJpdmVyIHdvdWxkIGFsbG93IHRv
IGNvdmVyIFJURDExOTUncyByZXNldDEtMyBpbiBvbmUKRFQgbm9kZSwgYnV0IGl0IG9ubHkgbWFw
cyB0aGUgZmlyc3QgcmVzb3VyY2UsIHNvIFJURDEyOTUncyByZXNldDQgd291bGQgbmVlZAp0byBy
ZW1haW4gc2VwYXJhdGUgZHVlIHRvIGEgZ2FwIGluIGJldHdlZW4uIEkndmUgdGhlcmVmb3JlIGxl
ZnQgdGhlbSBhbGwgYXMKc2VwYXJhdGUgbm9kZXMgZm9yIG5vdy4KCkFsc28gbm90ZSB0aGF0IG15
IGluaXRpYWwgMzItYml0IGFybSBwYXRjaCBhbHJlYWR5IHNlbGVjdHMgUkVTRVRfQ09OVFJPTExF
UiwKdG8gYXZvaWQgbmVlZGluZyBhIHNlcGFyYXRlIHBhdGNoIGhlcmUgdG8gYWRkIHRoYXQgb25l
IGxpbmUgYXMgZG9uZSBmb3IgYXJtNjQuCgpJZiBJIGNhbiB0YWtlIHRoZSBiaW5kaW5ncyBwYXRj
aGVzIHRocm91Z2ggdGhlIFJlYWx0ZWsgdHJlZSB0aGVuIEkgY2FuIHNxdWFzaAp0aGUgdHdvIGZp
bmFsIERUIHBhdGNoZXMgZGVwZW5kaW5nIG9uIHRoZW0gaW50byB0aGUgcGF0Y2hlcyBhZGRlZCB0
aGUgcmVzZXRzLApvdGhlcndpc2UgdGhleSBuZWVkIHRvIGdvIGludG8gdjUuNiBvciBiZSBtZXJn
ZWQgdmlhIGEgdG9waWMgYnJhbmNoLgoKTW9yZSBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoKaHR0
cHM6Ly9naXRodWIuY29tL2FmYWVyYmVyL2xpbnV4L2NvbW1pdHMvcnRkMTI5NS1uZXh0CgpIYXZl
IGEgbG90IG9mIGZ1biEKCkNoZWVycywKQW5kcmVhcwoKdjEgLT4gdjI6CiogRHJvcCBjdXN0b20g
cmVzZXQgZHJpdmVyCiogRHJvcCAicmVhbHRlayxydGQxMjk1LXJlc2V0IiBiaW5kaW5nCiogUmVv
cmRlcmVkIHRvIG5vdCBkZXBlbmQgb24gaXJxY2hpcCBvciBjbGsgcGF0Y2hlcwoqIEV4dGVuZGVk
IHdpdGggUlREMTE5NSBwYXRjaGVzCgpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRy
b25peC5kZT4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCgpBbmRyZWFzIEbDpHJiZXIg
KDExKToKICBkdC1iaW5kaW5nczogcmVzZXQ6IEFkZCBSZWFsdGVrIFJURDEyOTUKICBkdC1iaW5k
aW5nczogcmVzZXQ6IEFkZCBSZWFsdGVrIFJURDExOTUKICByZXNldDogc2ltcGxlOiBLZWVwIGFs
cGhhYmV0aWNhbCBvcmRlcgogIHJlc2V0OiBzaW1wbGU6IEFkZCBSZWFsdGVrIFJURDExOTUvUlRE
MTI5NQogIGFybTY0OiByZWFsdGVrOiBTZWxlY3QgcmVzZXQgY29udHJvbGxlcgogIGFybTY0OiBk
dHM6IHJlYWx0ZWs6IEFkZCBSVEQxMjl4IHJlc2V0IGNvbnRyb2xsZXIgbm9kZXMKICBhcm02NDog
ZHRzOiByZWFsdGVrOiBBZGQgUlREMTI5eCBVQVJUIHJlc2V0cwogIEFSTTogZHRzOiBydGQxMTk1
OiBBZGQgcmVzZXQgbm9kZXMKICBBUk06IGR0czogcnRkMTE5NTogQWRkIFVBUlQgcmVzZXRzCiAg
YXJtNjQ6IGR0czogcmVhbHRlazogQWRvcHQgUlREMTI5eCByZXNldCBjb25zdGFudHMKICBBUk06
IGR0czogcnRkMTE5NTogQWRvcHQgcmVzZXQgY29uc3RhbnRzCgogYXJjaC9hcm0vYm9vdC9kdHMv
cnRkMTE5NS5kdHNpICAgICAgICAgICAgICB8ICAyNyArKysrKysrCiBhcmNoL2FybTY0L0tjb25m
aWcucGxhdGZvcm1zICAgICAgICAgICAgICAgIHwgICAxICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMjl4LmR0c2kgICAgfCAgMzQgKysrKysrKysrCiBkcml2ZXJzL3Jlc2V0L0tj
b25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCiBpbmNsdWRlL2R0LWJpbmRpbmdz
L3Jlc2V0L3JlYWx0ZWsscnRkMTE5NS5oIHwgIDc0ICsrKysrKysrKysrKysrKysrKysKIGluY2x1
ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1LmggfCAxMTEgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwogNiBmaWxlcyBjaGFuZ2VkLCAyNTAgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0
L3JlYWx0ZWsscnRkMTE5NS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUuaAoKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
