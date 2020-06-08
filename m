Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A281F178B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRdUATG/LB9HUIoS+HFS19p44ewthJwCGKCvXqlsUxE=; b=HTds7p31tHiQKE
	o+Hs1I5VnFrDbXrS4tooSLeVnDGnQeUswRvAJFamGpHDAaxbayJWtBUyKLemcJHfQAvltc6l1JmuC
	BZBTl5TnHtB7OpGJWSB9D5tLrF4ErpHFFjrymTyrjXaxAxlUGrohb8rEiPeDJ+BmVZhjMFXFJhoPB
	gH4U5Aknjq2NiC9AAGsotEIOqXxstBnOJlY3xJ1AvmB1TRVhSw4gQ76Z0RMVb2OHIwb+6PD139zC7
	a6S2D5B/EoGaL78VT4oINjDSbGE+E2GoJLbAPuc3dH9zxj62ZGi7rnAlIR+srdblvJ9boa9TFQKCY
	3MMboiHyCL6zIYO8LO1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFrR-0007S6-8j; Mon, 08 Jun 2020 11:22:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFrE-0007RG-0l
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:22:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EEEA02A35BA
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCH v4 0/7] Support inhibiting input devices
Date: Mon,  8 Jun 2020 13:22:04 +0200
Message-Id: <20200608112211.12125-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_042224_322378_1878A909 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBhIHF1aWNrIHJlc3BpbiBvZiB2Mywgd2l0aCBqdXN0IHR3byBzbWFsbCBjaGFuZ2Vz
LCBwbGVhc2Ugc2VlCnRoZSBjaGFuZ2Vsb2cgYmVsb3cuCgpVc2Vyc3BhY2UgbWlnaHQgd2FudCB0
byBpbXBsZW1lbnQgYSBwb2xpY3kgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0CmZyb20g
Y2VydGFpbiBkZXZpY2VzLgoKQW4gZXhhbXBsZSB1c2UgY2FzZSBpcyBhIGNvbnZlcnRpYmxlIGxh
cHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZAp1bmRlciB0aGUgc2NyZWVuIHRvIGNy
ZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVuIG11c3QgaG9sZAp0aGUg
bGFwdG9wIGluIHN1Y2ggYSB3YXkgdGhhdCBpdCBpcyBkaWZmaWN1bHQgdG8gYXZvaWQgcHJlc3Np
bmcgdGhlIGtleWJvYXJkCmtleXMuIEl0IGlzIHRoZXJlZm9yZSBkZXNpcmFibGUgdG8gdGVtcG9y
YXJpbHkgZGlzcmVnYXJkIGlucHV0IGZyb20gdGhlCmtleWJvYXJkLCB1bnRpbCBpdCBpcyBmb2xk
ZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kgd2hpY2ggc2hvdWxkCmJlIGtlcHQg
b3V0IG9mIHRoZSBrZXJuZWwsIGJ1dCB0aGUga2VybmVsIG11c3QgcHJvdmlkZSBzdWl0YWJsZSBt
ZWFucyB0bwppbXBsZW1lbnQgc3VjaCBhIHBvbGljeS4KCkR1ZSB0byBpbnRlcmFjdGlvbnMgd2l0
aCBzdXNwZW5kL3Jlc3VtZSwgYSBoZWxwZXIgaGFzIGJlZW4gYWRkZWQgZm9yIGRyaXZlcnMKdG8g
ZGVjaWRlIGlmIHRoZSBkZXZpY2UgaXMgYmVpbmcgdXNlZCBvciBub3QgKFBBVENIIDEvNykgYW5k
IGl0IGhhcyBiZWVuCmFwcGxpZWQgdG8gcmVsZXZhbnQgZHJpdmVycyAoUEFUQ0ggMiw0LDUsNi83
KS4KClBBVENIIDcvNyBhZGRzIHN1cHBvcnQgZm9yIGluaGliaXRpbmcgaW5wdXQgZGV2aWNlcy4K
ClRoaXMgd29yayBpcyBpbnNwaXJlZCBieToKCmh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNl
LmNvbS9jaHJvbWl1bW9zL3RoaXJkX3BhcnR5L2tlcm5lbC8rLzQ1YzJkN2JiMzk4Zjc0YWRmYWUw
MDE3ZTIwYjIyNDE1MmZkZTM4MjIKCmFuZAoKaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2Uu
Y29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2VybmVsLysvNGNlMGU4YTM2OTdlZGI4ZmQwNzEx
MTBiM2FmNjUwMTQ1MTIwNjFjNwoKSW4gdGhpcyByZXNwaW4gdGhlIGVsYW5faTJjIHBhdGNoIGlz
IGRyb3BwZWQgYW5kIGNvbnZlcnRpbmcgaXQgd2lsbCBiZQphZGRyZXNzZWQgbGF0ZXIuCgp2My4u
djQ6Ci0gdXBkYXRlZCB0aGUgY29tbWVudCBpbiBpbnB1dF9vcGVuX2RldmljZSgpIChIYW5zKQot
IHVzZWQgbW9yZSBzdHJhaWdodGZvcndhcmQgbG9ja2luZyBwYXR0ZXJuIGluIGFkYy9leHlub3Mg
KE1pY2hhxYIpCgp2Mi4udjM6Ci0gaWdub3JlZCBhdXRvcmVwZWF0IGV2ZW50cyBpbiBpbnB1dF9n
ZXRfZGlzcG9zaXRpb24oKSBpZiBhIGtleSBpcyBub3QKcHJlc3NlZCAoSGFucykKLSBkcm9wcGVk
IGluaGliaXQoKS91bmluaGliaXQoKSBkcml2ZXIgY2FsbGJhY2tzIChIYW5zKQotIHNwbGl0IEFD
UEkgYnV0dG9uIHBhdGNoIGludG8gdGFraW5nIHRoZSBsb2NrIGFuZCB1c2luZyB0aGUgaGVscGVy
IChSYWZhZWwpCi0gZHJvcHBlZCB0aGUgZWxhbl9pMmMgY29udmVyc2lvbgotIGZpeGVkIHR5cG9z
IGluIGV4eW5vcyBhZGMKCnYxLi52MjoKLSBhZGRlZCBpbnB1dF9kZXZpY2VfZW5hYmxlZCgpIGhl
bHBlciBhbmQgdXNlZCBpdCBpbiBkcml2ZXJzIChEbWl0cnkpCi0gdGhlIGZhY3Qgb2Ygb3Blbigp
IGFuZCBjbG9zZSgpIGJlaW5nIGNhbGxlZCBpbiBpbmhpYml0L3VuaW5oaWJpdCBwYXRocyBoYXMK
YmVlbiBlbXBoYXNpemVkIGluIHRoZSBjb21taXQgbWVzc2FnZSBvZiBQQVRDSCA2LzcgKERtaXRy
eSkKCkFuZHJ6ZWogUGlldHJhc2lld2ljeiAoNik6CiAgSW5wdXQ6IGFkZCBpbnB1dF9kZXZpY2Vf
ZW5hYmxlZCgpCiAgSW5wdXQ6IHVzZSBpbnB1dF9kZXZpY2VfZW5hYmxlZCgpCiAgQUNQSTogYnV0
dG9uOiBBY2Nlc3MgaW5wdXQgZGV2aWNlJ3MgdXNlcnMgdW5kZXIgYXBwcm9wcmlhdGUgbXV0ZXgK
ICBBQ1BJOiBidXR0b246IFVzZSBpbnB1dF9kZXZpY2VfZW5hYmxlZCgpIGhlbHBlcgogIGlpbzog
YWRjOiBleHlub3M6IFVzZSBpbnB1dF9kZXZpY2VfZW5hYmxlZCgpCiAgcGxhdGZvcm0veDg2OiB0
aGlua3BhZF9hY3BpOiBVc2UgaW5wdXRfZGV2aWNlX2VuYWJsZWQoKQoKUGF0cmlrIEZpbW1sICgx
KToKICBJbnB1dDogQWRkICJpbmhpYml0ZWQiIHByb3BlcnR5CgogZHJpdmVycy9hY3BpL2J1dHRv
bi5jICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9paW8vYWRjL2V4eW5v
c19hZGMuYyAgICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9pbnB1dC9pbnB1dC5jICAg
ICAgICAgICAgICAgICAgICAgICB8IDEyNSArKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9p
bnB1dC9qb3lzdGljay94cGFkLmMgICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1
dC9rZXlib2FyZC9lcDkzeHhfa2V5cGFkLmMgICAgICB8ICAgMiArLQogZHJpdmVycy9pbnB1dC9r
ZXlib2FyZC9ncGlvX2tleXMuYyAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXli
b2FyZC9pbXhfa2V5cGFkLmMgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXlib2Fy
ZC9pcGFxLW1pY3JvLWtleXMuYyAgICB8ICAgMiArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9s
cGMzMnh4LWtleXMuYyAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9wbWlj
OHh4eC1rZXlwYWQuYyAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9weGEyN3hf
a2V5cGFkLmMgICAgICB8ICAgMiArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zYW1zdW5nLWtl
eXBhZC5jICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zcGVhci1rZXlib2Fy
ZC5jICAgICB8ICAgOCArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zdC1rZXlzY2FuLmMgICAg
ICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9rZXlib2FyZC90ZWdyYS1rYmMuYyAgICAgICAg
ICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC9taXNjL2RydjI2MHguYyAgICAgICAgICAgICAgICB8
ICAgNCArLQogZHJpdmVycy9pbnB1dC9taXNjL2RydjI2NjUuYyAgICAgICAgICAgICAgICB8ICAg
NCArLQogZHJpdmVycy9pbnB1dC9taXNjL2RydjI2NjcuYyAgICAgICAgICAgICAgICB8ICAgNCAr
LQogZHJpdmVycy9pbnB1dC9taXNjL2dwMmFwMDAyYTAwZi5jICAgICAgICAgICB8ICAgNCArLQog
ZHJpdmVycy9pbnB1dC9taXNjL2t4dGo5LmMgICAgICAgICAgICAgICAgICB8ICAgNCArLQogZHJp
dmVycy9pbnB1dC9taXNjL3NpcmZzb2Mtb25rZXkuYyAgICAgICAgICB8ICAgMiArLQogZHJpdmVy
cy9pbnB1dC9tb3VzZS9uYXZwb2ludC5jICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9p
bnB1dC90b3VjaHNjcmVlbi9hZDc4NzkuYyAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9pbnB1
dC90b3VjaHNjcmVlbi9hdG1lbF9teHRfdHMuYyAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90
b3VjaHNjcmVlbi9hdW8tcGl4Y2lyLXRzLmMgICB8ICAgOCArLQogZHJpdmVycy9pbnB1dC90b3Vj
aHNjcmVlbi9idTIxMDI5X3RzLmMgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNj
cmVlbi9jaGlwb25lX2ljbjgzMTguYyB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVl
bi9jeXR0c3BfY29yZS5jICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9l
ZXRpX3RzLmMgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9la3Rm
MjEyNy5jICAgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9pbXg2dWxf
dHNjLmMgICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9pcGFxLW1pY3Jv
LXRzLmMgICB8ICAgMiArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9pcXM1eHguYyAgICAg
ICAgICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9scGMzMnh4X3RzLmMgICAg
ICB8ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9tZWxmYXNfbWlwNC5jICAgICB8
ICAgNCArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9tbXMxMTQuYyAgICAgICAgICB8ICAg
NiArLQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9waXhjaXJfaTJjX3RzLmMgICB8ICAgOCAr
LQogZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi91Y2IxNDAwX3RzLmMgICAgICB8ICAgNCArLQog
ZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi93bTk3eHgtY29yZS5jICAgICB8ICAxNCArKy0KIGRy
aXZlcnMvaW5wdXQvdG91Y2hzY3JlZW4vemZvcmNlX3RzLmMgICAgICAgfCAgIDggKy0KIGRyaXZl
cnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAgfCAgIDQgKy0KIGluY2x1ZGUv
bGludXgvaW5wdXQuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgMTQgKystCiA0MiBmaWxlcyBj
aGFuZ2VkLCAyMjggaW5zZXJ0aW9ucygrKSwgOTYgZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6
IDNkNzdlNmE4ODA0YWJjYzA1MDRjOTA0YmQ2ZTVjZGYzYTVjZjgxNjIKLS0gCjIuMTcuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
