Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EFFA375F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNttlXA3IcLkCs0f1l7o9HjbxgWw1+YexPCWc6h41y0=; b=eKY8wSys1hZEeL
	czPi1IM9nXtUsmOMS/KbJIvqOyDGJvZ7xPpwyg5JCnRcsjE/FA8Dtys24vs9kcLOBCxjMpjkf5vHn
	zinZ2esrPYlI8fT8OlSfn2aWsiBlYainrQMHGXR+kt3HaIRRxvZBh+OCe0StNUKCHhsPdlkgTJ9G2
	GEhsM7gm/I4G2XY5WL+byEuZxq9qYz7S3iEF0pSp+k24+20GQV/pqs2IKDWcYU7s0QkNxrD/FjbR0
	7Q0rpzeMW1Dtc8ojmTzP8E8+6XBqLwmskgRqjwri7a3mZm7sRPKvnTh34lOWf/i5fHybsDzrxwUby
	jmDxUbGfbPx2eMjIYA2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gUI-0007Fp-GU; Fri, 30 Aug 2019 12:58:46 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gU1-0007EV-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:58:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 377DEFB05;
 Fri, 30 Aug 2019 14:58:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLcyQJ8mYE1o; Fri, 30 Aug 2019 14:58:23 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 00AEF46CBD; Fri, 30 Aug 2019 14:58:22 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "To : David Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 0/2] drm: bridge: Add NWL MIPI DSI host controller support
Date: Fri, 30 Aug 2019 14:58:20 +0200
Message-Id: <cover.1567169464.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055829_920537_63E9B11E 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlIE5XTCBNSVBJIERTSSBIb3N0IGNvbnRy
b2xsZXIgZm91bmQgb24gaS5NWDgKU29Dcy4KCkl0IGFkZHMgc3VwcG9ydCBmb3IgdGhlIGkuTVg4
TVEgYnV0IHRoZSBzYW1lIElQIGNvcmUgY2FuIGFsc28gYmUgZm91bmQgb24gZS5nLgppLk1YOFFY
UC4gSSBhZGRlZCB0aGUgbmVjZXNzYXJ5IGhvb2tzIHRvIHN1cHBvcnQgb3RoZXIgaW14OCB2YXJp
YW50cyBidXQgc2luY2UKSSBvbmx5IGhhdmUgaW14OG1xIGJvYXJkcyB0byB0ZXN0IEkgb21pdHRl
ZCB0aGUgcGxhdGZvcm0gZGF0YSBmb3Igb3RoZXIgU29Dcy4KClRoZSBjb2RlIGlzIGJhc2VkIG9u
IE5YUHMgQlNQIHNvIEkgYWRkZWQgUm9iZXJ0IENoaXJhcyBhcwpDby1hdXRob3JlZC1ieS4KClRo
ZSBtb3N0IG5vdGFibGUgY2hhbmdlcyBvdmVyIHRoZSBCU1AgZHJpdmVyIGFyZQogLSBDYWxjdWxh
dGUgSFMgbW9kZSB0aW1pbmcgZnJvbSBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5CiAtIFBl
cmZvcm0gYWxsIGNsb2NrIHNldHVwIHZpYSBEVAogLSBNZXJnZSBud2wtaW14IGFuZCBud2wgZHJp
dmVycwogLSBBZGQgQjAgc2lsaW9uIHJldmlzaW9uIHF1aXJrCiAtIGJlY29tZSBhIGJyaWRnZSBk
cml2ZXIgdG8gaG9vayBpbnRvIG14c2ZiIChmcm9tIHdoYXQgSSByZWFkWzBdIERDU1MsIHdoaWNo
CiAgIGFsc28gY2FuIGRyaXZlIHRoZSBud2wgb24gdGhlIGlteDhtcSB3aWxsIGxpa2VseSBub3Qg
YmVjb21lIHBhcnQgb2YKICAgaW14LWRpc3BsYXktc3Vic3lzdGVtIHNvIGl0IG1ha2VzIHNlbnNl
IHRvIG1ha2UgaXQgZHJpdmUgYSBicmlkZ2UgZm9yIGRzaSBhcwogICB3ZWxsKS4KIC0gVXNlIHBh
bmVsX2JyaWRnZSB0byBhdHRhY2ggdGhlIHBhbmVsCiAtIFVzZSBtdWx0aXBsZXggZnJhbWV3b3Jr
IGluc3RlYWQgb2YgYWNjZXNzaW5nIHN5c2NvbiBkaXJlY3RseQoKVGhpcyBoYXMgYmVlbiB0ZXN0
ZWQgb24gYSBMaWJyZW0gNSBkZXZraXQgdXNpbmcgbXhzZmIgd2l0aCBSb2JlcnQncyBwYXRjaGVz
WzFdCmFuZCB0aGUgcm9ja3RlY2gtamgwNTduMDA5MDAgcGFuZWwgZHJpdmVyIG9uIG5leHQtMjAx
OTA4MDcuIFRoZSBEQ1NTIGNhbiBsYXRlcgpvbiBhbHNvIGFjdCBhcyBpbnB1dCBzb3VyY2UgdG9v
LgoKQ2hhbmdlcyBmcm9tIHYzOgotIFBlciByZXZpZXcgY29tbWVudHMgYnkgUm9iZXJ0IENoaXJh
cwogIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE5
LUF1Z3VzdC8yMzI1ODAuaHRtbAogIC0gQWRkIFJvYmVydCdzIHtTaWduZWQtb2ZmLFRlc3RlZH0t
Ynk6CiAgLSBSZXNwZWN0IG51bWJlciBvZiBsYW5lcyB3aGVuIGNhbGN1bHRpbmcgYmFuZHdpZHRo
IGxpbWl0cwogIC0gRHJvcCBkdXBsaWNhdGUgTldMX0RTSV9FTkFCTEVfTVVMVF9QS1RTIHNldHVw
Ci0gUGVyIHRlc3RpbmcgYnkgUm9iZXIgQ2hpcmFzCiAgaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktQXVndXN0LzIzMzY4OC5odG1sCiAgLSBEcm9w
IGR1cGxpY2F0ZSAoYW5kIHRvbyBlYXJseSkgZHJtX2JyaWRnZV9hZGQoKSBpbiBud2xfZGlyX3By
b2JlKCkgdGhhdAogICAgbWFkZSBteHNmYiBmYWlsIHRvIGNvbm5lY3QgdG8gdGhlIGJyaWRnZSBz
aW5jZSB0aGUgcGFuZWxfYnJpZGdlIHdhcyBub3QgdXAKICAgIHlldC4gZHJtX2JyaWRnZV9hZGQo
KSBoYXBwZW5zIGluIG53bF9kc2lfaG9zdF9hdHRhY2goKSBhZnRlciB0aGUKICAgIHBhbmVsX2Jy
aWRnZSB3YXMgc2V0IHVwLgotIFBlciByZXZpZXcgY29tbWVudHMgYnkgUm9iIEhlcnJpbmcgb24g
YmluZGluZ3MKICBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2
ZWwvMjAxOS1BdWd1c3QvMjMzMTk2Lmh0bWwKICAtIGRyb3AgZGVzY3JpcHRpb24gZnJvbSBwb3dl
ci1kb21haW5zIGFuZCByZXNldHMKICAtIGFsbG93IEJTRCAyIGNsYXVzZSBsaWNlbnNlIGFzIHdl
bGwKICAtIG1ha2UgcG9ydHMgbW9yZSBzcGVjaWZpYwogIC0gYWRkICNhZGRyZXNzLWNlbGxzLCAj
c2l6ZS1jZWxscyBhcyByZXF1aXJlZAogIC0gdXNlIGFkZGl0aW9uYWxQcm9wZXJ0aWVzCiAgLSBw
YW5lbCBpcyBvZiB0eXBlIG9iamVjdAoKQ2hhbmdlcyBmcm9tIHYyOgotIFBlciByZXZpZXcgY29t
bWVudHMgYnkgUm9iIEhlcnJpbmcKICBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNo
aXZlcy9kcmktZGV2ZWwvMjAxOS1BdWd1c3QvMjMwNDQ4Lmh0bWwKICAtIGJpbmRpbmdzOgogICAg
LSBTaW1wbGlmeSBieSByZXN0cmljdGluZyB0byBmc2wsaW14OG1xLW53bC1kc2kKICAgIC0gZG9j
dW1lbnQgcmVzZXQgbGluZXMKICAgIC0gYWRkIHBvcnRAezAsMX0KICAgIC0gdXNlIGEgcmVhbCBj
b21wYXRpYmxlIHN0cmluZyBmb3IgdGhlIHBhbmVsCiAgICAtIHJlc2V0cyBhcmUgcmVxdWlyZWQK
LSBQZXIgcmV2aWV3IGNvbW1lbnRzIGJ5IEFybmQgQmVyZ21hbm4KICBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1BdWd1c3QvMjMwODY4Lmh0bWwK
ICAtIERvbid0IGFjY2VzcyBpb211eGNfZ3ByIHJlZ3MgZGlyZWN0bHkuIFRoaXMgYWxsb3dzIHVz
IHRvIGRyb3AgdGhlCiAgICBmaXJzdCBwYXRjaCBpbiB0aGUgc2VyaWVzIHdpdGggdGhlIGlvbXV4
Y19ncHIgZmllbGQgZGVmaW5lcy4KLSBQZXIgcmV2aWV3IGNvbW1lbnRzIGJ5IExhdXJlbnQgUGlu
Y2hhcnQKICBGaXggd29yZGluZyBpbiBiaW5kaW5ncwotIEFkZCBtdXgtY29udHJvbHMgdG8gYmlu
ZGluZ3MKLSBEb24ndCBwcmludCBlcnJvciBtZXNzYWdlIG9uIGRwaHkgcHJvYmUgZGVmZXJyYWwK
CkNoYW5nZXMgZnJvbSB2MToKLSBQZXIgcmV2aWV3IGNvbW1lbnRzIGJ5IFNhbSBSYXZuYm9yZwog
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE5LUp1
bHkvMjI4MTMwLmh0bWwKICAtIENoYW5nZSBiaW5kaW5nIGRvY3MgdG8gWUFNTAogIC0gYnVpbGQ6
IERvbid0IGFsd2F5cyB2aXNpdCBpbXgtbndsLwogIC0gYnVpbGQ6IEFkZCBoZWFkZXItdGVzdC15
CiAgLSBTb3J0IGhlYWRlcnMgYWNjb3JkaW5nIHRvIERSTSBjb252ZW50aW9uCiAgLSBVc2UgZHJt
X2Rpc3BsYXlfbW9kZSBpbnN0ZWFkIG9mIHZpZGVtb2RlCi0gUGVyIHJldmlldyBjb21tZW50cyBi
eSBGYWJpbyBFc3RldmFtCiAgaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMv
ZHJpLWRldmVsLzIwMTktSnVseS8yMjgyOTkuaHRtbAogIC0gRG9uJ3QgcmVzdHJpY3QgYnVpbGQg
dG8gQVJDSF9NWEMKICAtIERyb3AgdW51c2VkIGluY2x1ZGVzCiAgLSBEcm9wIHVucmVhY2hhYmxl
IGNvZGUgaW4gaW14X253bF9kc2lfYnJpZGdlX21vZGVfZml4dXAoKQogIC0gRHJvcCByZW1haW5p
bmcgY2FsbHMgb2YgZGV2X2VycigpIGFuZCB1c2UgRFJNX0RFVl9FUlIoKQogICAgY29uc2lzdGVu
dGx5LgogIC0gVXNlIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCiAgLSBEcm9wIGRl
dm1fZnJlZV9pcnEoKSBpbiBwcm9iZSgpIGVycm9yIHBhdGgKICAtIFVzZSBzaW5nbGUgbGluZSBj
b21tZW50cyB3aGVyZSBzdWZmaWNpZW50CiAgLSBVc2UgPGxpbnV4L3RpbWU2NC5oPiBpbnN0ZWFk
IG9mIGRlZmluaW5nIFVTRUNfUEVSX1NFQwogIC0gTWFrZSBpbnB1dCBzb3VyY2Ugc2VsZWN0IGlt
eDggc3BlY2lmaWMKICAtIERyb3AgPGFzbS91bmFsaWduZWQuaD4gaW5jbHVzaW9uIChhZnRlciBy
ZW1vdmFsIG9mIGdldF91bmFsaWduZWRfbGUzMikKICAtIERyb3AgYWxsIEVYUE9SVF9TWU1CT0xf
R1BMKCkgZm9yIGZ1bmN0aW9ucyB1c2VkIGluIHRoZSBzYW1lIG1vZHVsZQogICAgYnV0IGRpZmZl
cmVudCBzb3VyY2UgZmlsZXMuCiAgLSBEcm9wIG53bF9kc2lfZW5hYmxlX3tyeCx0eH1fY2xvY2so
KSBieSBpbnZva2luZyBjbGtfcHJlcGFyZV9lbmFibGUoKQogICAgZGlyZWN0bHkKICAtIFJlbW92
ZSBwb2ludGxlc3MgY29tbWVudAotIExhdXJlbnQgUGluY2hhcnQKICBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1KdWx5LzIyODMxMy5odG1sCiAg
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktSnVs
eS8yMjgzMDguaHRtbAogIC0gRHJvcCAob24gaU1YOE1RKSB1bnVzZWQgY3NyIHJlZ21hcAogIC0g
VXNlIE5XTF9NQVhfUExBVEZPUk1fQ0xPQ0tTIGV2ZXJ5d2hlcmUKICAtIERyb3AgZ2V0X3VuYWxp
Z25lZF9sZTMyKCkgdXNhZ2UKICAtIHJlbW92ZSBkdXBsaWNhdGUgJ2ZvciB0aGUnIGluIGJpbmRp
bmcgZG9jcwogIC0gRG9uJ3QgaW5jbHVkZSB1bnVzZWQgPGxpbnV4L2Nsay1wcm92aWRlci5oPgog
IC0gRG9uJ3QgaW5jbHVkZSB1bnVzZWQgPGxpbnV4L2NvbXBvbmVudC5oPgogIC0gRHJvcCBkcG1z
X21vZGUgZm9yIHRyYWNraW5nIHN0YXRlLCB0cnVzdCB0aGUgZHJtIGxheWVyIG9uIHRoYXQKICAt
IFVzZSBwbV9ydW50aW1lX3B1dCgpIGluc3RlYWQgb2YgcG1fcnVudGltZV9wdXRfc3luYygpCiAg
LSBEb24ndCBvdmVyd3JpdGUgZW5jb2RlciB0eXBlCiAgLSBNYWtlIGlteF9ud2xfcGxhdGZvcm1f
ZGF0YSBjb25zdAogIC0gVXNlIHRoZSByZXNldCBjb250cm9sbGVyIEFQSSBpbnN0ZWFkIG9mIG9w
ZW4gY29kaW5nIHRoYXQgcGxhdGZvcm0gc3BlY2lmaWMKICAgIHBhcnQKICAtIFVzZSA8bGludXgv
Yml0ZmllbGQuaD4gaW50ZWFkIG9mIG1ha2luZyB1cCBvdXIgb3duIGRlZmluZXMKICAtIG5hbWUg
bWlwaV9kc2lfdHJhbnNmZXIgbGVzcyBnZW5lcmljOiBud2xfZHNpX3RyYW5zZmVyCiAgLSBlbnN1
cmUgY2xlYW4gaW4gLnJlbW92ZSBieSBjYWxsaW5nIG1pcGlfZHNpX2hvc3RfdW5yZWdpc3Rlci4K
ICAtIHByZWZpeCBjb25zdGFudHMgYnkgTldMX0RTSV8KICAtIHByb3Blcmx5IGZvcm1hdCB0cmFu
c2Zlcl9kaXJlY3Rpb24gZW51bQogIC0gc2ltcGxpZnkgcGxhdGZvcm0gY2xvY2sgaGFuZGxpbmcK
ICAtIERvbid0IG1vZGlmeSBzdGF0ZSBpbiBtb2RlX2ZpeHVwKCkgYW5kIHVzZSBtb2RlX3NldCgp
IGluc3RlYWQKICAtIERyb3AgYnJpZGdlIGRldGFjaCgpLCBhbHJlYWR5IGhhbmRsZSBieSBud2xf
ZHNpX2hvc3RfZGV0YWNoKCkKICAtIERyb3AgVVNFXypfUVVJUksoKSBtYWNyb3MKLSBEcm9wIChm
b3Igbm93KSB1bnVzZWQgY2xvY2sgZGVmbml0aW9ucy4gJ3BpeGVsJyBhbmQgJ2J5cGFzcycgY2xv
Y2sgd2lsbCBiZQogIHVzZWQgZm9yIGkuTVg4IFNvQ3MgYnV0IHNpbmNlIHRoZXkncmUgdW51c2Vk
IGF0bSBkcm9wIHRoZSBkZWZpbml0aW9ucyAtIGJ1dAogIGtlZXAgdGhlIGxvZ2ljIHRvIGVuYWJs
ZS9kaXNhYmxlIHNldmVyYWwgY2xvY2tzIGluIHBsYWNlIHNpbmNlIHdlIGtub3cgd2UnbGwKICBu
ZWVkIGl0IGluIHRoZSBmdXR1cmUuCgpDaGFuZ2VzIGZyb20gdjA6Ci0gQWRkIHF1aXJrIGZvciBJ
TVE4TVEgc2lsaWNvbiBCMCByZXZpc2lvbiB0byBub3QgbWVzcyB3aXRoIHRoZQogIHN5c3RlbSBy
ZXNldCBjb250cm9sbGVyIG9uIHBvd2VyIGRvd24gc2luY2UgZW5hYmxlKCkgd29uJ3Qgd29yawog
IG90aGVyd2lzZS4KLSBEcm9wIGRldm1fZnJlZV9pcnEoKSBoYW5kbGVkIGJ5IHRoZSBkZXZpY2Ug
ZHJpdmVyIGNvcmUKLSBEaXNhYmxlIHR4IGVzYyBjbG9jayBhZnRlciB0aGUgcGh5IHBvd2VyIGRv
d24gdG8gdW5icmVhawogIGRpc2FibGUvZW5hYmxlICh1bmJsYW5rL2JsYW5rKQotIEFkZCBwb3J0
cyB0byBkdCBiaW5kaW5nIGRvY3MKLSBTZWxlY3QgR0VORVJJQ19QSFlfTUlQSV9EUEhZIGluc3Rl
YWQgb2YgR0VORVJJQ19QSFkgZm9yCiAgcGh5X21pcGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWcK
LSBTZWxlY3QgRFJNX01JUElfRFNJCi0gSW5jbHVkZSBkcm1fcHJpbnQuaCB0byBmaXggYnVpbGQg
b24gbmV4dC0yMDE5MDQwOAotIERyb3Agc29tZSBkZWJ1Z2dpbmcgbWVzc2FnZXMKLSBOZXdsaW5l
IHRlcm1pbmF0ZSBhbGwgRFJNXyBwcmludG91dHMKLSBUdXJuIGNvbXBvbmVudCBkcml2ZXIgaW50
byBhIGRybSBicmlkZ2UKClswXTogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2
ZXMvZHJpLWRldmVsLzIwMTktTWF5LzIxOTQ4NC5odG1sClsxXTogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjgyMi8KCkd1aWRvIEfDvG50aGVyICgyKToKICBkdC1i
aW5kaW5nczogZGlzcGxheS9icmlkZ2U6IEFkZCBiaW5kaW5nIGZvciBOV0wgbWlwaSBkc2kgaG9z
dAogICAgY29udHJvbGxlcgogIGRybS9icmlkZ2U6IEFkZCBOV0wgTUlQSSBEU0kgaG9zdCBjb250
cm9sbGVyIHN1cHBvcnQKCiAuLi4vYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1s
ICAgICAgfCAxNzYgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZpZyAgICAgICAg
ICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpL0tjb25maWcgICAg
ICAgIHwgIDE2ICsKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS9NYWtlZmlsZSAgICAg
ICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kvbndsLWRydi5jICAgICAg
fCA0OTkgKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpL253bC1k
cnYuaCAgICAgIHwgIDY1ICsrCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kvbndsLWRz
aS5jICAgICAgfCA2OTkgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L253bC1kc2kvbndsLWRzaS5oICAgICAgfCAxMTIgKysrCiA5IGZpbGVzIGNoYW5nZWQsIDE1NzQg
aW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kvS2NvbmZpZwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS9NYWtlZmlsZQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS9ud2wtZHJ2LmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kvbndsLWRydi5oCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpL253bC1kc2kuYwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS9ud2wtZHNp
LmgKCi0tIAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
