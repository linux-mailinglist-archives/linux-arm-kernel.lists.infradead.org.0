Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9A11D4E9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZrayyXAwD+bbE1xJgtZ1agOTjFjeYtJ9vt533sEVyA=; b=d/4u/3BOSEr6em
	okTgnb6afQd1vJel4xyxJzW98blmT3SH0ewsS03PSrQ3YsvX24uUNd6ZXDKsoKm/L6ususz89K+00
	riDk8xzZCB/ytGHnRJlzHIpIjJN7/KDcFtsmdieSTTeaaOttr3st3XXFIFHTk8qWAZUJSbuAeV1vu
	YSPRT0zE/Juv77Sz0uSpXHpI9ILvd69oJVQLPm1eOoFwbtDKC9U0xgYi06uhunJZUoVKdC469i34M
	WvvjkKjkEz4QgWTjDDL24oh5MS2/aQm2mEbu0SWtLVWPtt2vB6xjpDuEmIcjoEMw1sBREBNcH/5XH
	rzngnDiPxjYbI5+DC9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZa8w-0000Y1-MC; Fri, 15 May 2020 13:12:50 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZa8Y-0000JL-7w
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:12:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 76D87FB03;
 Fri, 15 May 2020 15:12:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8I1dDNq2x7s; Fri, 15 May 2020 15:12:18 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 78087445AA; Fri, 15 May 2020 15:12:15 +0200 (CEST)
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
Subject: [RFC PATCH 3/6] dt-bindings: display/bridge/nwl-dsi: Drop mux handling
Date: Fri, 15 May 2020 15:12:12 +0200
Message-Id: <9884c56219e9bdbeec179c27ea2b734dbb5f1289.1589548223.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1589548223.git.agx@sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061226_480942_1BE0677C 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

Tm8gbmVlZCB0byBlbmNvZGUgdGhlIFNvQyBzcGVjaWZpY3MgaW4gdGhlIGJyaWRnZSBkcml2ZXIu
IEZvciB0aGUKaW14OG1xIHdlIGNhbiB1c2UgdGhlIG11eC1pbnB1dC1icmlkZ2UuCgpTaWduZWQt
b2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbCAgICAgICAgIHwgNiAtLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55
YW1sCmluZGV4IDhhZmYyZDY4ZmMzMy4uZDJjMmQ0ZTE5YTI1IDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvbndsLWRzaS55YW1sCisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wt
ZHNpLnlhbWwKQEAgLTQ2LDEwICs0Niw2IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGNvbnN0OiBw
aHlfcmVmCiAgICAgICAtIGNvbnN0OiBsY2RpZgogCi0gIG11eC1jb250cm9sczoKLSAgICBkZXNj
cmlwdGlvbjoKLSAgICAgIG11eCBjb250cm9sbGVyIG5vZGUgdG8gdXNlIGZvciBvcGVyYXRpbmcg
dGhlIGlucHV0IG11eAotCiAgIHBoeXM6CiAgICAgbWF4SXRlbXM6IDEKICAgICBkZXNjcmlwdGlv
bjoKQEAgLTE1MSw3ICsxNDcsNiBAQCByZXF1aXJlZDoKICAgLSBjbG9ja3MKICAgLSBjb21wYXRp
YmxlCiAgIC0gaW50ZXJydXB0cwotICAtIG11eC1jb250cm9scwogICAtIHBoeS1uYW1lcwogICAt
IHBoeXMKICAgLSBwb3J0cwpAQCAtMTgwLDcgKzE3NSw2IEBAIGV4YW1wbGVzOgogICAgICAgICAg
ICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0xDRElGX1BJWEVMPjsKICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiY29yZSIsICJyeF9lc2MiLCAidHhfZXNjIiwgInBoeV9yZWYiLCAi
bGNkaWYiOwogICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzQgSVJRX1RZUEVf
TEVWRUxfSElHSD47Ci0gICAgICAgICAgICAgIG11eC1jb250cm9scyA9IDwmbXV4IDA+OwogICAg
ICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfbWlwaT47CiAgICAgICAgICAgICAgIHJl
c2V0cyA9IDwmc3JjIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9SRVNFVF9CWVRFX04+LAogICAgICAg
ICAgICAgICAgICAgICAgICA8JnNyYyBJTVg4TVFfUkVTRVRfTUlQSV9EU0lfRFBJX1JFU0VUX04+
LAotLSAKMi4yNi4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
