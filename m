Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5E91E33C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6M/crnjFWnYaWQ2tx9PxogFcLpMmqsYuvDDgdbWD744=; b=TjGcguIo56aaaK
	Om6XlS0ag8Rbj0sJiXyA2MKAlP1X7ai76KbuQXVcbXoGEInzPE9rDotwmRCmWr+gJeJr7284d79OU
	ibJfL26IaVVGEN+MrhX4vQ29RYj6KstWDF3aydgHiONS4p+wLaoxsaisWhsgoDbOTYRzOURG4QsZb
	0HSMOVssrxuUs8GjFipNuPzsMTp8zpE/hjo3sxAz00LILP0b8SumaKMylxvgwoXW3PCygvNLOS5C8
	py5i6cQfpnSAwlBDJkSz53Df2kTXJKPYyqzIcXpKSWmHAZ0JvdxUgDeGZU+QavgLAXnAgRb6Q/AxG
	eb5o3rBCrFptfroSKAcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdj4u-0007vi-N7; Tue, 26 May 2020 23:33:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdj4k-0007v6-Se
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:33:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88649101E;
 Tue, 26 May 2020 16:33:36 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 655AF3F52E;
 Tue, 26 May 2020 16:33:36 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 11265682B70; Wed, 27 May 2020 00:33:35 +0100 (BST)
Date: Wed, 27 May 2020 00:33:35 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 11/21] drm/malidp: Use GEM CMA object functions
Message-ID: <20200526233335.GF159988@e110455-lin.cambridge.arm.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-12-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522135246.10134-12-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_163339_009745_CB52F694 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 stefan@agner.ch, philippe.cornu@st.com, paul@crapouillou.net,
 laurent.pinchart@ideasonboard.com, benjamin.gaignard@linaro.org,
 mihail.atanassov@arm.com, sam@ravnborg.org, alexandre.torgue@st.com,
 marex@denx.de, festevam@gmail.com, abrodkin@synopsys.com,
 ludovic.desroches@microchip.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com, james.qian.wang@arm.com,
 joel@jms.id.au, linux-imx@nxp.com, p.zabel@pengutronix.de,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, john.stultz@linaro.org,
 jsarha@ti.com, wens@csie.org, vincent.abriou@st.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 noralf@tronnes.org, bbrezillon@kernel.org, andrew@aj.id.au,
 dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch, khilman@baylibre.com,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjIsIDIwMjAgYXQgMDM6NTI6MzZQTSArMDIwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gVGhlIG1hbGlkcCBkcml2ZXIgdXNlcyB0aGUgZGVmYXVsdCBpbXBsZW1lbnRh
dGlvbiBmb3IgQ01BIGZ1bmN0aW9uczsgZXhjZXB0Cj4gZm9yIHRoZSAuZHVtYl9jcmVhdGUgY2Fs
bGJhY2suIFRoZSBfX0RSTV9HRU1fQ01BX0RSSVZFUl9PUFMgbWFjcm8gbm93IHNldHMKPiB0aGVz
ZSBkZWZhdWx0cyBhbmQgLmR1bWJfY3JlYXRlIGluIHN0cnVjdCBkcm1fZHJpdmVyLiBBbGwgcmVt
YWluaW5nCj4gb3BlcmF0aW9ucyBhcmUgcHJvdmlkZWQgYnkgQ01BIEdFTSBvYmplY3QgZnVuY3Rp
b25zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgoKQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQmVz
dCByZWdhcmRzLApMaXZpdQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2
LmMgfCAxMSArLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEw
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlk
cF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gaW5kZXggZGVmOGM5
ZmZhZmNhZi4uOTJlMGJjYTZhYTJmNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXJt
L21hbGlkcF9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4g
QEAgLTU2MywxNiArNTYzLDcgQEAgc3RhdGljIHZvaWQgbWFsaWRwX2RlYnVnZnNfaW5pdChzdHJ1
Y3QgZHJtX21pbm9yICptaW5vcikKPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBtYWxp
ZHBfZHJpdmVyID0gewo+ICAJLmRyaXZlcl9mZWF0dXJlcyA9IERSSVZFUl9HRU0gfCBEUklWRVJf
TU9ERVNFVCB8IERSSVZFUl9BVE9NSUMsCj4gLQkuZ2VtX2ZyZWVfb2JqZWN0X3VubG9ja2VkID0g
ZHJtX2dlbV9jbWFfZnJlZV9vYmplY3QsCj4gLQkuZ2VtX3ZtX29wcyA9ICZkcm1fZ2VtX2NtYV92
bV9vcHMsCj4gLQkuZHVtYl9jcmVhdGUgPSBtYWxpZHBfZHVtYl9jcmVhdGUsCj4gLQkucHJpbWVf
aGFuZGxlX3RvX2ZkID0gZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCj4gLQkucHJpbWVfZmRf
dG9faGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCj4gLQkuZ2VtX3ByaW1lX2dl
dF9zZ190YWJsZSA9IGRybV9nZW1fY21hX3ByaW1lX2dldF9zZ190YWJsZSwKPiAtCS5nZW1fcHJp
bWVfaW1wb3J0X3NnX3RhYmxlID0gZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAo+
IC0JLmdlbV9wcmltZV92bWFwID0gZHJtX2dlbV9jbWFfcHJpbWVfdm1hcCwKPiAtCS5nZW1fcHJp
bWVfdnVubWFwID0gZHJtX2dlbV9jbWFfcHJpbWVfdnVubWFwLAo+IC0JLmdlbV9wcmltZV9tbWFw
ID0gZHJtX2dlbV9jbWFfcHJpbWVfbW1hcCwKPiArCV9fRFJNX0dFTV9DTUFfRFJJVkVSX09QUyht
YWxpZHBfZHVtYl9jcmVhdGUpLAo+ICAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCj4gIAkuZGVidWdm
c19pbml0ID0gbWFsaWRwX2RlYnVnZnNfaW5pdCwKPiAgI2VuZGlmCj4gLS0gCj4gMi4yNi4yCj4g
CgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8gfAp8IGZpeCB0aGUg
d29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhlICAgfAogXCBzb3Vy
Y2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8vwq8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
