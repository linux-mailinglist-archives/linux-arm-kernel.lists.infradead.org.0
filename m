Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D229CFBAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 16:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMdhAIlK9n7YYsKA7eJoOps/MQz28FeThVFmQAZEgIw=; b=gOtL+Pwabaca12
	d/w/rb40/yWtZorhP/xrF+WAOXCd7bW1DOXTGY+IUFuiXTEU5VyUrNvqnit8U6RsJDvMIBIYt9ZXB
	G0w2WAkY74tY9E9rJQv6ODgCxdjWDiEx4iT3Zg1/suSC2qbpRXvfbs9ylWLrDL/n+4RuPA+5l9LFK
	r7R+JwvhkbZZUVni+U7Ki5JvGYokrVTj0j0KLrhFSnYuNMMxweKX3Pq7+PcfCukRnFJ3KBYC0pvcB
	YWqm+2E5SHxqHD02d6cdS0IiZyH4leoN+8OCwmn7Nsow41uQJKmpGIziHQa161KvF3d+/UnPMnv0A
	YuUuEQxI/2Ub39YT0tug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTvl-0004WR-7N; Tue, 30 Apr 2019 14:40:25 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTvd-0004VX-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 14:40:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 7FC6FFB05;
 Tue, 30 Apr 2019 16:40:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IniXqgjXMXa2; Tue, 30 Apr 2019 16:40:12 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 630A14027C; Tue, 30 Apr 2019 16:40:11 +0200 (CEST)
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
Subject: [PATCH v9 1/2] dt-bindings: phy: Add documentation for mixel dphy
Date: Tue, 30 Apr 2019 16:40:10 +0200
Message-Id: <528d957b8dddad219936013ee1684934f887ac92.1556633413.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556633413.git.agx@sigxcpu.org>
References: <cover.1556633413.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_074017_693289_2628B872 
X-CRM114-Status: GOOD (  12.30  )
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

QWRkIHN1cHBvcnQgZm9yIHRoZSBNSVhFTCBEUEhZIElQIGFzIGZvdW5kIG9uIE5YUCdzIGkuTVg4
TVEgU29Dcy4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+
ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+ClJldmlld2VkLWJ5
OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgotLS0KIC4uLi9iaW5kaW5ncy9waHkvbWl4
ZWwsbWlwaS1kc2ktcGh5LnR4dCAgICAgICB8IDI5ICsrKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0CgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBp
LWRzaS1waHkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhl
bCxtaXBpLWRzaS1waHkudHh0Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uOWIyMzQwNzIzM2MwCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0CkBAIC0wLDAgKzEsMjkgQEAK
K01peGVsIERTSSBQSFkgZm9yIGkuTVg4CisKK1RoZSBNaXhlbCBNSVBJLURTSSBQSFkgSVAgYmxv
Y2sgaXMgZS5nLiBmb3VuZCBvbiBpLk1YOCBwbGF0Zm9ybXMgKGFsb25nIHRoZQorTUlQSS1EU0kg
SVAgZnJvbSBOb3J0aHdlc3QgTG9naWMpLiBJdCByZXByZXNlbnRzIHRoZSBwaHlzaWNhbCBsYXll
ciBmb3IgdGhlCitlbGVjdHJpY2FsIHNpZ25hbHMgZm9yIERTSS4KKworUmVxdWlyZWQgcHJvcGVy
dGllczoKKy0gY29tcGF0aWJsZTogTXVzdCBiZToKKyAgLSAiZnNsLGlteDhtcS1taXBpLWRwaHki
CistIGNsb2NrczogTXVzdCBjb250YWluIGFuIGVudHJ5IGZvciBlYWNoIGVudHJ5IGluIGNsb2Nr
LW5hbWVzLgorLSBjbG9jay1uYW1lczogTXVzdCBjb250YWluIHRoZSBmb2xsb3dpbmcgZW50cmll
czoKKyAgLSAicGh5X3JlZiI6IHBoYW5kbGUgYW5kIHNwZWNpZmllciByZWZlcnJpbmcgdG8gdGhl
IERQSFkgcmVmIGNsb2NrCistIHJlZzogdGhlIHJlZ2lzdGVyIHJhbmdlIG9mIHRoZSBQSFkgY29u
dHJvbGxlcgorLSAjcGh5LWNlbGxzOiBudW1iZXIgb2YgY2VsbHMgaW4gUEhZLCBhcyBkZWZpbmVk
IGluCisgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LWJpbmRpbmdz
LnR4dAorICB0aGlzIG11c3QgYmUgPDA+CisKK09wdGlvbmFsIHByb3BlcnRpZXM6CistIHBvd2Vy
LWRvbWFpbnM6IHBoYW5kbGUgdG8gcG93ZXIgZG9tYWluCisKK0V4YW1wbGU6CisJZHBoeTogZHBo
eUAzMGEwMDMwIHsKKwkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW1pcGktZHBoeSI7CisJCWNs
b2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+OworCQljbG9jay1uYW1lcyA9ICJw
aHlfcmVmIjsKKwkJcmVnID0gPDB4MzBhMDAzMDAgMHgxMDA+OworCQlwb3dlci1kb21haW5zID0g
PCZwZF9taXBpMD47CisJCSNwaHktY2VsbHMgPSA8MD47CisgICAgICAgIH07Ci0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
