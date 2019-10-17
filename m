Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA6DA801
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WvQc+YK8KErTfp3AWkhchtRSygbCnwpM16xGqBBnUw=; b=KQcPtanWky9nqL
	IVusPoTCNCrjPPocVtIT2lQHoqYe/fgx/pYX+NHmGYoQ2kdug/BE6GeR9P5h4Ftp88Bq1BYnFh6dc
	de/ULhzLZMTgYO4esNIphv9eBCTC1Bo0Me2z2pApK9uYrl68MsWmrzaHcxRKHIxjyRo/n69FvttJ/
	i7FtPA0TjTLeObPslTo4pP+0nq+kGzlDe9PDfi1sAP59GbWs4WXzfUX9AkxdIAs7FLsW92l6/vf/N
	bBfPTjl2agWDkJgj7DmKiHLe0VxLxw8dJ02v9VBJ8RQodEpHakF+KqTNuRM1bOyL4B/U9TxjxaRZo
	RQQwsKr4yr8dfLz8C15w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1i7-0001ZA-Jw; Thu, 17 Oct 2019 09:04:43 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1hw-0001Y8-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:04:34 +0000
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 68FB3100007;
 Thu, 17 Oct 2019 09:04:28 +0000 (UTC)
Date: Thu, 17 Oct 2019 11:04:27 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add a common kizbox2 dtsi file
Message-ID: <20191017110427.66bccdfb@windsurf>
In-Reply-To: <20191017085405.12599-3-kamel.bouhara@bootlin.com>
References: <20191017085405.12599-1-kamel.bouhara@bootlin.com>
 <20191017085405.12599-3-kamel.bouhara@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_020432_879487_CDB37E89 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: overkiz.com]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mickael GARDET <m.gardet@overkiz.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?S8Op?= =?UTF-8?B?dmlu?= RAYMOND <k.raymond@overkiz.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gS2FtZWwsCgpPbiBUaHUsIDE3IE9jdCAyMDE5IDEwOjU0OjA1ICswMjAwCkthbWVsIEJv
dWhhcmEgPGthbWVsLmJvdWhhcmFAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBUaGVyZSBhcmUgdGhy
ZWUgZGlmZmVyZW50IGJvYXJkcyBhdmFpbGFibGUgZGVwZW5kaW5nIG9uIHRoZSBQQ0IKPiAoMyBh
bnRlbm5hcyBzdXBwb3J0IGFuZCBzZXZlcmFsIHJldmlzb24pLiBBZGQgYSBkdHNpIGZpbGUgdG8g
c2hhcmUKPiBjb21tb24gYmluZGluZyBiZXR3ZWVuIGFsbCBraXpib3gyIGJvYXJkcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBLYW1lbCBCb3VoYXJhIDxrYW1lbC5ib3VoYXJhQGJvb3RsaW4uY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEvDqXZpbiBSQVlNT05EIDxrLnJheW1vbmRAb3Zlcmtpei5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTWlja2FlbCBHQVJERVQgPG0uZ2FyZGV0QG92ZXJraXouY29tPgo+IC0t
LQo+ICBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDYgKy0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3guZHRzICAgICAgICAgIHwgMTczICsrKysr
KystLS0tLS0tCgpUaGUgY2hhbmdlcyB0byB0aGlzIGZpbGUgKGNoYW5nZSB0byB1c2UgcGhhbmRs
ZXMpIHNlZW0gdW5yZWxhdGVkIHRvIHRoZQpjdXJyZW50IHBhdGNoLCB1bmxlc3MgSSdtIG1pc3Np
bmcgc29tZXRoaW5nLgoKPiAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3gyLTAuZHRzICAg
ICAgIHwgIDE3ICsrCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi0xLmR0cyAgICAg
ICB8ICAyMiArKwo+ICBhcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveDItMi5kdHMgICAgICAg
fCAgMjYgKysrCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEta2l6Ym94Mi0zLmR0cyAgICAgICB8
ICAzMCArKysKPiAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MS1raXpib3gyLXJldjIuZHRzICAgIHwg
IDM0ICsrKwo+ICBhcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveDIuZHRzICAgICAgICAgfCAy
NDQgLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9hdDkxLWtpemJveDJf
Y29tbW9uLmR0c2kgfCAyNTggKysrKysrKysrKysrKysrKysrKysrCgoiLSIgc2VlbXMgdG8gYmUg
YSBtdWNoIG1vcmUgY29tbW9uIHNlcGFyYXRvciBmb3IgRFQgbmFtZXMsIGluY2x1ZGluZyBpbgp0
aGlzIGZpbGUsIHNvIHdoYXQgYWJvdXQgYXQ5MS1raXpib3gyLWNvbW1vbi5kdHNpID8KCj4gKy8v
IFdNQlVTIChpbnZlcnRlZCB3aXRoIElPIGluIHRoZSBsYXRlc3Qgc2NoZW1hdGljKQoKSSBhbSBu
b3Qgc3VyZSBDKysgY29tbWVudHMgYXJlIGNvbW1vbiBpbiBEZXZpY2UgVHJlZSBmaWxlcy4KCkJl
c3QgcmVnYXJkcywKClRob21hcwotLSAKVGhvbWFzIFBldGF6em9uaSwgQ1RPLCBCb290bGluCkVt
YmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
