Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1B01D4EAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93tjuKu/Xr9Qu//5Qfxn45eU4XRBSEIugmXg2zbP7cI=; b=Xm5E8d78yrCVic
	cG34rW0HROYs6CPt/svq0tyAZ92oFt0JjSZHbhd/mEcPeCOiHte0kPbDyq0wt6kg8nTg45AX3tPhu
	KYrhhQU1aF/OFObab4KUFJfcBeeEsZRtsw2mhEW4O1R+2bxDtos2cm/KA+J1fbt+DseIVeXk/3eir
	GgtO1Kf6/qhwL7EwoR8cH+zzWFfbBhM1KUpFK3LJYz7JaaztWG59qOCYCp3tRH1o1aFeZZzvYs9bQ
	8bEIHKhHRcZQoxext6uM1vqMTq+/xwnvGuPIdKgbqwN2FSjFcsR1UjCCnlsnIXqNrxQojUV7oLqdp
	U587yl5I+qlcVb5jleew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZa9c-0001KG-7H; Fri, 15 May 2020 13:13:32 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8Y-0000JE-7q
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 52D22FB09;
 Fri, 15 May 2020 15:12:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkNYiLtyIAdX; Fri, 15 May 2020 15:12:16 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5C6A9445A7; Fri, 15 May 2020 15:12:15 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/6] drm/bridge: Add mux input selection bridge
Date: Fri, 15 May 2020 15:12:09 +0200
Message-Id: <cover.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061226_513460_1F70BD0D 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBicmlkZ2UgZHJpdmVyIGFsbG93cyB0byBzZWxlY3QgdGhlIGlucHV0IHRvIGEgZG93bnN0
cmVhbSBicmlkZ2UgKG9yIHBhbmVsKQp2aWEgZGV2aWNlIHRyZWUuCgpJdCBjYW4gYmUgdXNlZnVs
IHRvIHNlcGFyYXRlIHRoZSBwaXhlbCBzb3VyY2Ugc2VsZWN0aW9uIGZyb20gdGhlIGFjdHVhbCBi
cmlkZ2UKcHJvY2Vzc2luZyB0aGUgcGl4ZWwgZGF0YS4gRS5nLiBOWFAncyBpbXg4bXEgaGFzIHR3
byBkaXNwbGF5IGNvbnRyb2xsZXJzLiBCb3RoCmNhbiBmZWVkIHRoZSBwaXhlbCBkYXRhIHRvIHRo
ZSBOV0wgRFNJIElQIGNvcmUuIFRoZSBpbnB1dCBzZWxlY3Rpb24gaXMgZG9uZSB2aWEKYSBzZXBh
cmF0ZSBtdXggcmVnaXN0ZXIgZWxzZXdoZXJlIG9uIHRoZSBjaGlwLCBzbyBzZXBhcmF0aW5nIHRo
aXMgb3V0IGF2b2lkcyBTb0MKc3BlY2lmaWMgY29kZSBpbiBzdWNoIGRyaXZlcnMuCgpUaGUgY3Vy
cmVudCBpbXBsZW1lbnRhdGlvbiBhbGxvd3MgdG8gc2VsZWN0IHRoZSBpbnB1dCBzb3VyY2Ugdmlh
IGRldmljZSB0cmVlLgpUaGUgbG9uZyB0ZXJtIGdvYWwgaXMgdG8gYWxsb3cgdG8gc3dpdGNoIHRo
ZSBpbnB1dCBzb3VyY2UgYXQgcnVuIHRpbWUuIFRoaXMKY2FuIGJlIHVzZWZ1bCB0byBlLmcuIHVz
ZSB0aGUgbGVzcyBwb3dlciBodW5ncnkgZGlzcGxheSBjb250cm9sbGVyIGZvciBub3JtYWwKb3Bl
cmF0aW9uIGJ1dCBzd2l0Y2ggdG8gYSB0aGUgb3RoZXIgZGlzcGxheSBjb250cm9sbGVyIHdoZW4g
cnVubmluZyBmdWxsIHNjcmVlbgpnYW1lcyAoc2luY2UgaXQgY2FuIGRldGlsZSB0ZXh0dXJlcyBt
b3JlIGVmZmljaWVudGx5KS4KClRoaXMgd2FzIGluaXRpYWxseSBzdWdnZXN0ZWQgYnkgTGF1cmVu
dCBQaW5jaGFydMK5LiBJdCBpcyBzaW1pbGFyIGluIHNwaXJpdCB0bwp0aGUgdmlkZW8tbXV4IGlu
IHRoZSBtZWRpYSBzdWJzeXN0ZW0gYnV0IGZvciBEUk0gYnJpZGdlcy4KCkJlc2lkZXMgdGhlIGFj
dHVhbCBkcml2ZXIgdGhpcyBzZXJpZXMgaW5jbHVkZXMgdGhlIG5lY2Vzc2FyeSBiaXRzIHRvIGRl
bW8gdGhlCnVzYWdlIGZvciB0aGUgTGlicmVtNSBkZXZraXQuCgpUaGUgc2VyaWVzIGlzIGJhc2Vk
IG9uIGxpbnV4LW5leHQgYXMgb2YgbmV4dC0yMDIwMDUxMi4KCsK5IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2RyaS1kZXZlbC8yMDIwMDQxNTAyMTkwOC5HSDE5ODE5QHBlbmRyYWdvbi5pZGVhc29u
Ym9hcmQuY29tLwoKR3VpZG8gR8O8bnRoZXIgKDYpOgogIGR0LWJpbmRpbmdzOiBkaXNwbGF5L2Jy
aWRnZTogQWRkIGJpbmRpbmcgZm9yIGlucHV0IG11eCBicmlkZ2UKICBkcm0vYnJpZGdlOiBBZGQg
bXV4LWlucHV0IGJyaWRnZQogIGR0LWJpbmRpbmdzOiBkaXNwbGF5L2JyaWRnZS9ud2wtZHNpOiBE
cm9wIG11eCBoYW5kbGluZwogIGRybS9icmlkZ2UvbndsLWRzaTogRHJvcCBtdXggaGFuZGxpbmcK
ICBhcm02NDogZHRzOiBpbXg4bXE6IEFkZCBOV0wgZHNpIGNvbnRyb2xsZXIKICBhcm02NDogZHRz
OiBpbXg4bXEtbGlicmVtNS1kZXZraXQ6IEVuYWJsZSBNSVBJIERTSSBwYW5lbAoKIC4uLi9kaXNw
bGF5L2JyaWRnZS9tdXgtaW5wdXQtYnJpZGdlLnlhbWwgICAgICB8IDEyMyArKysrKysrKysKIC4u
Li9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgICAgICB8ICAgNiAtCiAuLi4v
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzICAgfCAgODEgKysrKysrCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSAgICAgfCAgMzEgKysrCiBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTAgKy0KIGRy
aXZlcnMvZ3B1L2RybS9icmlkZ2UvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL211eC1pbnB1dC5jICAgICAgICAgICAgfCAyMzggKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAgICAgICAgICAgICAg
fCAgNjEgLS0tLS0KIDggZmlsZXMgY2hhbmdlZCwgNDgzIGluc2VydGlvbnMoKyksIDY4IGRlbGV0
aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L2JyaWRnZS9tdXgtaW5wdXQtYnJpZGdlLnlhbWwKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL211eC1pbnB1dC5jCgotLSAKMi4yNi4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
