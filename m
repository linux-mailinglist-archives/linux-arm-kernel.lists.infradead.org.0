Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294B3F6D18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sb3e5hs3vMRlh3s7QOfmvMh+HLazOtrhIwMSX4lf7po=; b=Z30QnJvBvUsNvW
	pFCnGLZPSibT2u5WGPM0rYU6s8a7AStLF2/FsLY7nfXlEhYVLAZcKx+opKAZQr39JpQvEItzi7zJm
	XKQbpW7bALIb65Rte0YAQ12dCxAQrIbXkcIyzbaWPgTH/53Ap+fYSb/sBvM+HesyLct+9m13FJGv1
	Ufqkx9jtgLwlM0XCPf10r6RGfqVw6G1wRyeFLuOj3ne0td4OckQbY2TYPysfxhQyHxALeOVPnaVmC
	GaCN+s13eRRXepWOM3THHZMRiD1O2dp9AmBoE9IK39tSBZ6eZeWc/jPBp/rZ9ghqHpgX+7nxMa0Y3
	vjQ+4WlWcBXwncVTN6Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU017-00042F-Vw; Mon, 11 Nov 2019 03:05:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00Z-0002eP-Oi; Mon, 11 Nov 2019 03:04:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 224DDAE55;
 Mon, 11 Nov 2019 03:04:48 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 0/7] arm64: dts: Initial RTD1395 and BPi-M4 support
Date: Mon, 11 Nov 2019 04:04:27 +0100
Message-Id: <20191111030434.29977-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190451_949888_95CF8BF5 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: devicetree@vger.kernel.org, James Tai <james.tai@realtek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGluaXRpYWwgRGV2aWNlIFRyZWVzIGZvciBS
ZWFsdGVrIFJURDEzOTUgU29DIGFuZApCYW5hbmEgUGkgQlBJLU00IFNCQy4KCkl0IGlzIGJhc2Vk
IG9uIG15IFJURDExOTUgc2VyaWVzIGFuZCBKYW1lcycgcGVuZGluZyBSVEQxNjE5IERUIGJpbmRp
bmdzIHBhdGNoLgoKSXQgc3RhcnRzIHdpdGggc29tZSByZWZhY3RvcmluZ3MgdG8gYWxpZ24gdGhl
IHZhcmlvdXMgU29DcyBhbmQgdG8gZGVtb25zdHJhdGUKdG8gSmFtZXMgd2hhdCBJIG1lYW50IHdp
dGggdGhlIHItYnVzIG5vZGUgYW5kIEdJQyBtYXNrIGluIFJURDE2MTkgRFQgdjEgcmV2aWV3LgoK
UlREMTM5NSBmYW1pbHkgc2VlbXMgcHJldHR5IHNpbWlsYXIgdG8gUlREMTI5NSBmYW1pbHksIGJ1
dCBhbGxvd3MgZm9yIG1vcmUgUkFNCmFuZCB0aGVyZWZvcmUgdXNlcyAjYWRkcmVzcy1jZWxscyBv
ZiAyIHZzLiAxLCBhbmQgaXQgdXNlcyBhIGRpZmZlcmVudCByZXNlcnZlZAptZW1vcnkgcmVnaW9u
IGZvciBSUEMuIFJURDEyOTUgcmVzZXRzIGFwcGVhciBzdWZmaWNpZW50bHkgY29tcGF0aWJsZSBm
b3Igbm93LgoKTW9yZSBkZXRhaWxzIGF0OgpodHRwczovL2VuLm9wZW5zdXNlLm9yZy9IQ0w6QmFu
YW5hUGlfTTQKCkxhdGVzdCBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoKaHR0cHM6Ly9naXRodWIu
Y29tL2FmYWVyYmVyL2xpbnV4L2NvbW1pdHMvcnRkMTI5NS1uZXh0CgpIYXZlIGEgbG90IG9mIGZ1
biEKCkNoZWVycywKQW5kcmVhcwoKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlA
cmVhbHRlay5jb20+CgpBbmRyZWFzIEbDpHJiZXIgKDcpOgogIGFybTY0OiBkdHM6IHJlYWx0ZWs6
IHJ0ZDEyOXg6IEZpeCBHSUMgQ1BVIG1hc2tzIGZvciBSVEQxMjkzCiAgYXJtNjQ6IGR0czogcmVh
bHRlazogcnRkMTI5eDogVXNlIHJlc2VydmVkLW1lbW9yeSBmb3IgUlBDIHJlZ2lvbnMKICBhcm02
NDogZHRzOiByZWFsdGVrOiBydGQxMjl4OiBJbnRyb2R1Y2Ugci1idXMKICBBUk06IGR0czogcnRk
MTE5NTogRml4IEdJQyBDUFUgbWFzawogIEFSTTogZHRzOiBydGQxMTk1OiBJbnRyb2R1Y2Ugci1i
dXMKICBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBBZGQgUlREMTM5NSBhbmQgQmFuYW5hIFBp
IEJQSS1NNAogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IEFkZCBSVEQxMzk1IGFuZCBCUGktTTQKCiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8ICAgNiAr
CiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgICAgICAgICAgICAgICAgICAgICB8ICA2
MCArKysrLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL01ha2VmaWxlICAgICAgICAg
ICAgICAgfCAgIDIgKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaSAg
ICAgICAgICAgfCAgMTIgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0
c2kgICAgICAgICAgIHwgIDIxICstLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEy
OTYuZHRzaSAgICAgICAgICAgfCAgIDggKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjl4LmR0c2kgICAgICAgICAgIHwgMTU5ICsrKysrKysrKysrKy0tLS0tLS0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOTUtYnBpLW00LmR0cyAgICAgfCAgMzAgKysrKwog
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOTUuZHRzaSAgICAgICAgICAgfCAgNjUg
KysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpICAgICAg
ICAgICB8IDE0MSArKysrKysrKysrKysrKysrKysKIDEwIGZpbGVzIGNoYW5nZWQsIDM4NyBpbnNl
cnRpb25zKCspLCAxMTcgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOTUtYnBpLW00LmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzk1LmR0c2kKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCgotLSAKMi4xNi40
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
