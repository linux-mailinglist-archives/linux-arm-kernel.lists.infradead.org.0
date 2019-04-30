Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159A7FBB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 16:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hbRk++8AoRBmU2DMQsXsxm42x2DbvtriMlHC9ZCAghU=; b=gH4SBNdrwPEBhi
	kACgEpwX9DRSXgumVSOvz6qyYgEJLKlu7IfdOlaHbwwbvqaX5oS6qZPhBWsDeaifGvkkiUtPR17PP
	zREN7DxiCOqrrX0YFv7nQbmi9cH6+eOMcn+ufHruVDPto43qB9VUfES6T/yHz6+F5ahxwvYfstQkq
	2WoCB1+Wy2mTxPiRZvQiP6qSI260Yozi5F4Bs0LCWpDb1UVtQrS3aPGD/6mjgjZgQ5RAs56loPV2P
	YnQangKAGJzv8+CGUDpjytRuGwWvRqBMyKCF6hNRfUlvBhJv5E61CNcoNVL7gg5ejAeYpH6rVVVaS
	6yRFsvqRGY3yGa1JvCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTvz-0004kU-Ei; Tue, 30 Apr 2019 14:40:39 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTve-0004Vh-CK
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 14:40:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D653FFB03;
 Tue, 30 Apr 2019 16:40:15 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZxhPMDPfx7vw; Tue, 30 Apr 2019 16:40:12 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5A6FE4027E; Tue, 30 Apr 2019 16:40:11 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Thierry Reding <treding@nvidia.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Johan Hovold <johan@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Li Jun <jun.li@nxp.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Robert Chiras <robert.chiras@nxp.com>,
 Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v9 0/2] Mixel MIPI DPHY support for NXPs i.MX8 SOCs
Date: Tue, 30 Apr 2019 16:40:09 +0200
Message-Id: <cover.1556633413.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_074018_731036_C48A96FE 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBiYXNpY2FsbHkgYSByZXNlbmQgb2Ygdjggd2l0aCBvbmUgbWlub3IgZGVidWcgcHJp
bnRrIGZpeGVkIGFuZApSb2IncyBSZXZpZXdlZC1ieSBmb3IgYmluZGluZyBkb2NzIGNvbGx0ZXRl
ZC4gVGhhbmtzIFJvYiEKClRoaXMgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZSBNaXhlbCBJ
UCBiYXNlZCBtaXBpIGRwaHkgYXMgZm91bmQgb24gaS5NWDgKcHJvY2Vzc29ycy4gIEl0IGhhcyBz
dXBwb3J0IGZvciB0aGUgaS5NWDhNUSwgc3VwcG9ydCBmb3Igb3RoZXIgdmFyaWFudHMgY2FuIGJl
CmFkZGVkIC0gb25jZSB0aGUgcGxhdGZvcm0gc3BlY2lmaWMgcGFydHMgYXJlIGluIC0gdmlhIHRo
ZSBwcm92aWRlZCBkZXZkYXRhLgpUaGUgZHJpdmVyIGlzIHNvbWV3aGF0IGJhc2VkIG9uIHdoYXQn
cyBmb3VuZCBpbiBOWFBzIEJTUC4KClB1YmxpYyBkb2N1bWVudGF0aW9uIG9uIHRoZSBEUEhZJ3Mg
cmVnaXN0ZXJzIGlzIGN1cnJlbnRseSB0aGluIGluIHRoZSBpLk1YOApyZWZlcmVuY2UgbWFudWFs
cyAoZXZlbiBvbiB0aGUgaS5NWDhRWFAgZm9ybSAxMS8xOCkgc28gbW9zdCBvZiB0aGUgdmFsdWVz
IHdlcmUKdGFrZW4gZnJvbSBleGlzdGluZyBkcml2ZXJzLiBOZXdlciBOWFAgZHJpdmVycyBoYXZl
IGEgYml0IG1vcmUgZGV0YWlscyBzbyB3aGVyZQpwb3NzaWJsZSB0aGUgdGltaW5ncyBhcmUgY2Fs
Y3VsYXRlZCBhbmQgdmFsaWRhdGVkLgoKVGhpcyB3YXMgdGVzdGVkIHdpdGggYW4gaW5pdGlhbCB2
ZXJzaW9uIG9mIGEgTldMIE1JUEkgRFNJIGhvc3QKY29udHJvbGxlciBkcml2ZXIKCiAgICBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1NYXJjaC8y
MDk2ODUuaHRtbAoKYW5kIGEgZm9yd2FyZCBwb3J0ZWQgRENTUyBkcml2ZXIgb24gbGludXgtbmV4
dCAyMDE5MDQwOC4KClJvYmVydCBDaGlyYXMgKHRoZSBhdXRob3Igb2YgdGhlIGNvcnJlc3BvbmRp
bmcgZHJpdmVyIGluIE5YUHMgdmVuZG9yCnRyZWUpIGdvdCB0aGlzIGRyaXZlciB0byB3b3JrIGlu
IGhpcyB0cmVlIGFzIHdlbGwgdXNpbmcgbXhzZmI6CgogICAgaHR0cHM6Ly93d3cuc3Bpbmljcy5u
ZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2c3MTE5NTAuaHRtbAoKQ2hhbmdlcyBmcm9tIHY4CiogQ29s
bGVjdCBSZXZpZXdlZC1ieSBmcm9tIFJvYiBIZXJyaW5nCiogRml4IHtocyxjbGt9X3ByZXBhcmUg
dnMge2hzLGNsa31femVybyBkZWJ1ZyBwcmludCBvdXQKCkNoYW5nZXMgZnJvbSB2NwoqIEFzIHBl
ciByZXZpZXcgY29tbWVudHMgZnJvbSBSb2IgSGVycmluZwogICogVXNlIGZzbCwgYXMgdmVuZG9y
IHByZWZpeAogICogRHJvcCBjaGFuZ2VzIHRvIHZlbmRvci1wcmVmaXhlcy50eHQgZHVlIHRvIHRo
YXQKICAqIFNob3J0ZW4gbWl4ZWxfZHBoeSB0byBkcGh5IGluIHRoZSBleGFtcGxlCiogRml4IGFu
IGluZGVudGF0aW9uIGVycm9yIG5vdGljZWQgYnkgY2hlY2twYXRjaCB0aGF0IGdvdCBpbnRyb2R1
Y2VkIGluIHY2CiogVXNlIGxvd2VyY2FzZSBsZXR0ZXJzIGluIGhleCBhZGRyZXNzZXMgaW4gRFQg
YmluZGluZ3MgZXhhbXBsZQoKQ2hhbmdlcyBmcm9tIHY2CiogRGVwZW5kIG9uIEhBU19JT01FTSAo
Zml4ZXMgYSBidWlsZCBwcm9ibGVtIG9uIFVNIHNwb3R0ZWQgYnkga2J1aWxkKQoKQ2hhbmdlcyBm
cm9tIHY1CiogRml4IGJ1aWxkIHByb2JsZW1zIG9uIG1pcHMgKHNwb3R0ZWQgYnkgdGhlIGtidWls
ZCB0ZXN0IHJvYm90KSBieSB1c2luZyB1MzIKICBjb25zaXN0ZW50bHkgYW5kIGxvbmcgbG9uZyBm
b3IgbHBfdC4KCkNoYW5nZXMgZnJvbSB2NAoqIEJ1aWxkIGJ5IGRlZmF1bHQgb24gQVJDSF9NWEMg
JiYgQVJNNjQKCkNoYW5nZXMgZm9ybSB2MwoqIENoZWNrIGNvcnJlY3QgdmFyaWFibGUgYWZ0ZXIg
ZGV2bV9pb3JlbWFwX3Jlc291cmNlCiogQWRkIFJvYmVydCBDaGlyYXMgYXMgQ28tYXV0aG9yZWQt
Ynkgc2luY2UgaGUncyB0aGUgYXV0aG9yCiAgb2YgdGhlIGRyaXZlciBpbiBOWFBzIEJTUC4KCkNo
YW5nZXMgZnJvbSB2MgoqIEFzIHBlciByZXZpZXcgY29tbWVudHMgZnJvbSBGYWJpbyBFc3RldmFt
CiAgKiBLQ29uZmlnOiBzZWxlY3QgUkVHTUFQX01NSU8KICAqIERyb3AgcGh5X3JlYWQKICAqIERv
bid0IG1ha2UgcGh5X3dyaXRlIGlubGluZQogICogUmVtb3ZlIGR1cGxpY2F0ZSBkZWJ1Z2dpbmcg
b3V0cHV0CiAgKiBDb21tZW50IHN0eWxlIGFuZCB0eXBvIGZpeGVzCiAgKiBBZGQgI2RlZmluZXMn
cyBmb3IgUExMIGxvY2sgdGltaW5nIHZhbHVlcwogICogUmV0dXJuIGNvcnJlY3QgZXJyb3IgdmFs
dWUgd2hlbiBQTEwgZmFpbHMgdG8gbG9jawogICogQ2hlY2sgZXJyb3Igd2hlbiBlbmFibGluZyBj
bG9jawogICogVXNlIGRldm1faW9yZW1hcF9yZXNvdXJjZQoqIEFzIHBlciByZXZpZXcgY29tbWVu
dHMgZnJvbSBSb2JlcnQgQ2hpcmFzCiAgKiBEZWFzc2VydCBQRF9EUEhZIGFmdGVyIFBMTCBsb2Nr
IChhcyBwZXIgbWl4ZWwgcmVmIG1hbnVhbCkKICAqIEFzc2VydCBQRF97RFBIWSxQTEx9IGJlZm9y
ZSBwb3dlciBvbiAoYXMgcGVyIG1peGVsIHJlZiBtYW51YWwpbWFudWFsCiogQWRkIGV4aXQgcGh5
X29wIHRvIHJlc2V0IENOL0NNL0NPCgpDaGFuZ2VzIGZyb20gdjEKKiBBcyBwZXIgcmV2aWV3IGNv
bW1lbnRzIGZyb20gRmFiaW8gRXN0ZXZhbQogICogS2NvbmZpZzogdHJpc3RhdGUgbWl4ZWwgZHBo
eSBzdXBwb3J0LgogICogRHJvcCB1bnVzZWQgJ3JldCcgaW4gbWl4ZWxfZHBoeV9yZWZfcG93ZXJf
b2ZmLgogICogTWF0Y2ggdmFsdWVzIG9mIERQSFlfUlhMe1BSUCxEUlB9IHRvIHRob3NlIG9mCiAg
ICBodHRwczovL3NvdXJjZS5jb2RlYXVyb3JhLm9yZy9leHRlcm5hbC9pbXgvbGludXgtaW14L2xv
Zy8/aD1pbXhfNC4xNC43OF8xLjAuMF9nYQogICAgVGhlIHByZXZpb3VzIHZhbHVlcyB3ZXJlIGJh
c2VkIG9uIDQuOS4KICAqIFVzZSByZXNvdXJjZSBzaXplIG9uIGRldm1faW9yZW1hcCwgd2UgaGF2
ZSB0aGF0IGluIGR0IGFscmVhZHkuCiAgKiBVc2UgcmVnbWFwIHNvIGl0J3Mgc2ltcGxlIHRvIGR1
bXAgdGhlIHJlZ2lzdGVycy4KICAqIFVzZSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQgaW5zdGVh
ZCBvZiBvcGVuIGNvZGVkIGxvb3AuCiAgKiBBZGQgdW5kb2N1bWVudGVkIHJ4aHNfc2V0dGxlIHJl
Z2lzdGVyCiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFNhbSBSYXZuYm9yZwogICogTW92
ZSBkcml2ZXIgdG8gZC9waHkvZnJlZXNjYWxlLwogICogTW92ZSBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllciB0byB0b3Agb2YgZmlsZS4KICAqIERyb3AgJy8qICNkZWZpbmUgREVCVUcgMSAqLycuCiAg
KiBVc2UgR1BMLTIuMCsgc2luY2UgdGhlIHZlbmRvciBkcml2ZXIgdXNlcyB0aGF0IGFzIHdlbGwu
CiAgKiBEcm9wIHRoZSBtdXRleCwgcmVnaXN0ZXIgYWNjZXNzIGlzIG5vdyBwcm90ZWN0ZWQgYnkg
cmVnbWFwLgogICogRml4IHZhcmlvdXMgc3R5bGUgLyBpbmRlbnRhdGlvbiBpc3N1ZXMuCiogQ2hl
Y2sgZm9yIHJlZ2lzdGVyIHJlYWQsIHdyaXRlIGFuZCBpb3JlbWFwIGVycm9ycwoqIEltcHJvdmUg
cGh5IHRpbWluZyBjYWxjdWxhdGlvbnMKICAqIFVzZSBMUCBjbG9jayByYXRlIHdoZXJlIHNlbnNp
YmxlLCBjaGVjayBmb3IgZXJyb3JzCiAgKiBVc2UgYWQgaG9jIGZvcnVtdWxhcyBmb3IgdGltaW5n
cyBpbnZvbHZpbmcgaHMgY2xvY2sKKiBTd2l0Y2ggZnJvbSBkcGh5X29wcyB0byBkZXZkYXRhLiBP
dGhlciBpLk1YOCB2YXJpYW50cwogIGRpZmZlciBpbiByZWdpc3RlciBsYXlvdXQgdG9vCiogQWRk
IE1peGVsIEluYyB0byB2ZW5kb3ItcHJlZml4ZXMudHh0CgpUbzogS2lzaG9uIFZpamF5IEFicmFo
YW0gSSA8a2lzaG9uQHRpLmNvbT4sUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4sTWFy
ayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4sU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJu
ZWwub3JnPixTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+LFBlbmd1dHJvbml4
IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+LEZhYmlvIEVzdGV2YW0gPGZlc3Rl
dmFtQGdtYWlsLmNvbT4sTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPixUaGllcnJ5
IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPiwiQW5kcmVhcyBGw6RyYmVyIiA8YWZhZXJiZXJA
c3VzZS5kZT4sTWFydGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVt
YWlsLmNvbT4sSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4sSm9oYW4gSG92b2xkIDxq
b2hhbkBrZXJuZWwub3JnPixMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4sQWJl
bCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4sTGkgSnVuIDxqdW4ubGlAbnhwLmNvbT4sbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZyxkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyxsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcsZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZyxSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+LFNhbSBSYXZuYm9yZyA8
c2FtQHJhdm5ib3JnLm9yZz4sTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNv
bT4KCgpHdWlkbyBHw7xudGhlciAoMik6CiAgZHQtYmluZGluZ3M6IHBoeTogQWRkIGRvY3VtZW50
YXRpb24gZm9yIG1peGVsIGRwaHkKICBwaHk6IEFkZCBkcml2ZXIgZm9yIG1peGVsIG1pcGkgZHBo
eSBmb3VuZCBvbiBOWFAncyBpLk1YOCBTb0NzCgogLi4uL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBp
LWRzaS1waHkudHh0ICAgICAgIHwgIDI5ICsKIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmln
ICAgICAgICAgICAgICAgICB8ICAxMSArCiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgfCAgIDEgKwogLi4uL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4LW1p
cGktZHBoeS5jICAgIHwgNTA2ICsrKysrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCA1
NDcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnR4dAogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDgtbWlwaS1kcGh5LmMKCi0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
