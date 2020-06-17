Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA291FCA23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fxJkpjmucvn89huLrK6b3k53EcTT3WxpJjVR0WWZQec=; b=TCRTy4N1ZtA80p
	wOICEbH2q0idIDbYmFct+LZd+rcriCjr24gqpcJug7BbXkvLrnY1Q3twSM3CtC2DDv/ogWDbqdYWC
	m+9PK1mLGx0q00Hj+e0JNABtHMdLLYg7RptAtzuUKpZTJctIwdOlYJS2QIpFOEJzMxCweUZOJjqCU
	2JjQTkKUzwkGC60nRVoJNh5ZYHhvyGvmq0tmsqv///Rcwf726E+WG5G4ZWaKCwfKBX1K6oQ71dx9R
	yxN34aXLu9LlqFt94lGNaK6r2SmwMmKZIfmXaLoKjcD9z1tHoHVM2IBgIKwWNWErFJhnsjgGY3V4h
	kvOcL11gOovgWH6wn3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUfB-0000S7-Cq; Wed, 17 Jun 2020 09:47:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUex-0000Oo-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:47:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id EA9E32A3876
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 0/4] dt-bindings: display: ti,tfp410.txt: convert to yaml
Date: Wed, 17 Jun 2020 11:46:29 +0200
Message-Id: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024707_550700_B5684156 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgY29udmVydHMgdGhlIERUIGJpbmRpbmcgZm9yIHRoZSBUSSBURlA0MTAgRFBJ
LXRvLURWSSBlbmNvZGVyCnRvIGpzb24tc2NoZW1hLgoKSXQgYWxzbyBmaXhlcyBhIG1pbm9yIGJ1
ZyBpbiB0aGUgdGktdGZwNDEwIGRyaXZlciB0aGF0IGNhdXNlcyBhCndyb25nIGNhbGN1bGF0aW9u
IG9mIHRoZSBzZXR1cCBhbmQgaG9sZCB0aW1lcyB3aGVuIHRoZSBkZS1za2V3IGZlYXR1cmUKaXMg
ZW5hYmxlZC4gVGhlIHJldHJpZXZhbCBvZiB0aGUgZGUtc2tldyB2YWx1ZSBmcm9tIHRoZSBEVCBo
YXMgYWxzbyBiZWVuCnVwZGF0ZWQgdG8gcmVmbGVjdCB0aGUgYmluZGluZyBjaGFuZ2VzLgoKQ2hh
bmdlcyBpbiB2NDoKCiAgLSB0aSx0ZnA0MTAueWFtbDoKICAgIC0gInBvcnRzIiBub2RlIHNldCBi
YWNrIGFzIHJlcXVpcmVkIChMYXVyZW50IFBpbmNoYXJ0KS4gVGhpcyBtZWFucwogICAgICB0aGF0
IGRvdmUtc2JjLWE1MTAuZHRzIHdpbGwgbm90IGNvbXBseSB3aXRoIHRoZSBiaW5kaW5nIGFuZCB3
aWxsCiAgICAgIGhhdmUgdG8gYmUgZml4ZWQgYXQgc29tZSBwb2ludC4KClRoZSBiaW5kaW5ncyBo
YXZlIGJlZW4gdGVzdGVkIHdpdGg6CgogIG1ha2UgZHRfYmluZGluZ19jaGVjayBBUkNIPTxhcmNo
PiBEVF9TQ0hFTUFfRklMRVM9PC4uLnRpLHRmcDQxMC55YW1sPgogIG1ha2UgZHRic19jaGVjayBB
UkNIPTxhcmNoPiBEVF9TQ0hFTUFfRklMRVM9PC4uLnRpLHRmcDQxMC55YW1sPgoKZm9yIDxhcmNo
PiA9IGFybSBhbmQgYXJtNjQuClRoaXMgdW5jb3ZlcmVkIGEgbnVtYmVyIG9mIGR0cyBmaWxlcyB0
aGF0IHVzZSB0aGUgVEZQNDEwIGJ1dCBub3QgdGhyb3VnaApJMkMgYW5kIGRvbid0IGRlZmluZSB0
aGUgdGksZGVza2V3IHByb3BlcnR5LiBUaGVzZSBzaG91bGQgYWxzbyBiZSBmaXhlZC4KClJpY2Fy
ZG8gQ2HDsXVlbG8gKDQpOgogIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiB0aSx0ZnA0MTAudHh0OiBj
b252ZXJ0IHRvIHlhbWwKICBkdC1iaW5kaW5nczogZGlzcGxheTogdGksdGZwNDEwLnlhbWw6IFJl
ZGVmaW5lIHRpLGRlc2tldyBwcm9wZXJ0eQogIGRybS9icmlkZ2U6IHRmcDQxMDogZml4IGRlLXNr
ZXcgdmFsdWUgcmV0cmlldmFsIGZyb20gRFQKICBkcm0vYnJpZGdlOiB0ZnA0MTA6IEZpeCBzZXR1
cCBhbmQgaG9sZCB0aW1lIGNhbGN1bGF0aW9uCgogLi4uL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdl
L3RpLHRmcDQxMC50eHQgICAgIHwgIDY2IC0tLS0tLS0tLQogLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
YnJpZGdlL3RpLHRmcDQxMC55YW1sICAgIHwgMTMxICsrKysrKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS90aS10ZnA0MTAuYyAgICAgICAgICAgIHwgIDEwICstCiAzIGZpbGVz
IGNoYW5nZWQsIDEzNiBpbnNlcnRpb25zKCspLCA3MSBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uv
dGksdGZwNDEwLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAueWFtbAoKLS0gCjIuMTguMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
