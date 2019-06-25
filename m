Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614A655459
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVkE5eS3XzfIt+LR9CtS5nKVdtpPHT9aNTyrd9PtvUo=; b=tJnI8sUwtkLKhm
	Bp36pvigZ9tZkwmlYtER/3ys2Gj0PzhHPAhJ1LB5W2sRmva5WWS20j6rTTzbOmMgtFXmWSPgyNn3Z
	GavBMqlRVtBu6qbplstSKnUkStQ0CYGO5vX9u/I0AUAKpV9zW8RAPMnsAMEUXVG5PAy2QW2lEYWFO
	+lIl9VenuXZ7b3EGuHk8yqOtU8LrabJRMtTMGDBMepGjgq3ZsWGrZU1Vgsg+gwkjTquoBbaCb7AO2
	cbOw7vGwmkPRaGY7EWUIrvMG76gwKeiZSWRTH3wuk4r7ebWWZZ/v4jqh9OUzw5e1NcApyLxnsPbnZ
	y5PYHWVe52ZcCrtBYRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoDm-00066H-6m; Tue, 25 Jun 2019 16:23:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoDd-00065f-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:22:55 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hfoDT-0000pR-BA; Tue, 25 Jun 2019 18:22:43 +0200
Message-ID: <1561479762.2587.18.camel@pengutronix.de>
Subject: Re: [PATCH RESEND] PCI: Kconfig: Simplify PCI_IMX6 depends on
From: Lucas Stach <l.stach@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Date: Tue, 25 Jun 2019 18:22:42 +0200
In-Reply-To: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
References: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_092253_846844_202DB995 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Stefan Agner <stefan@agner.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Trent Piepho <tpiepho@impinj.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAyOC4wNS4yMDE5LCAwODowNiArMDAwMCBzY2hyaWViIExlb25hcmQg
Q3Jlc3RlejoKPiBUaGlzIGRyaXZlciBjYW4gYmUgdXNlZCBvbiBpbXg2c3ggd2l0aG91dCBlbmFi
bGluZyBzdXBwb3J0IGZvcgo+IGlteDZxIG9yIGlteDdkIGJ1dCB0aGUgImRlcGVuZHMgb24iIGNv
bmRpdGlvbiBkb2Vzbid0IGFsbG93IHRoYXQuCj4gCj4gSW5zdGVhZCBvZiBtYWtpbmcgdGhlIGNv
bmRpdGlvbiBldmVuIGxvbmdlciBqdXN0IGRyb3AgdGhlIHBlci1zb2MKPiBkZWZpbmVzIGFuZCBt
YWtlIGl0IGRlcGVuZCBvbiAiQVJDSF9NWEMgfHwgQ09NUElMRV9URVNUIiBpbnN0ZWFkLAo+IHNp
bWlsYXIgdG8gbWFueSBvdGhlciBkcml2ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQg
Q3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+CgpVcmdoLCBzb3JyeSBJIHRob3VnaHQg
SSBoYWQgZG9uZSB0aGlzIGxvbmcgdGltZSBhZ286CgpBY2tlZC1ieTogTHVjYXMgU3RhY2ggPGwu
c3RhY2hAcGVuZ3V0cm9uaXguZGU+Cgo+IC0tLQo+IMKgZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvS2NvbmZpZyB8IDIgKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IExpbmsgdG8gdjE6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTA4NDgxNDMvCj4gCj4gTm8gb2JqZWN0aW9ucyB3ZXJlIHJhaXNlZCBvdGhlciB0aGFu
IGEgcmVxdWVzdCBmb3IgTHVjYXMgdG8gQWNrIHRoZQo+IHBhdGNoLgo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvS2NvbmZpZwo+IGluZGV4IDZlYTc0YjFjMGQ5NC4uMjE3NDdmZDBlNzk5IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiArKysgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnCj4gQEAgLTg4LDExICs4OCwxMSBAQCBjb25m
aWcgUENJX0VYWU5PUwo+ID4gwqAJZGVwZW5kcyBvbiBQQ0lfTVNJX0lSUV9ET01BSU4KPiA+IMKg
CXNlbGVjdCBQQ0lFX0RXX0hPU1QKPiDCoAo+IMKgY29uZmlnIFBDSV9JTVg2Cj4gPiDCoAlib29s
ICJGcmVlc2NhbGUgaS5NWDYvNy84IFBDSWUgY29udHJvbGxlciIKPiA+IC0JZGVwZW5kcyBvbiBT
T0NfSU1YNlEgfHwgU09DX0lNWDdEIHx8IChBUk02NCAmJiBBUkNIX01YQykgfHwgQ09NUElMRV9U
RVNUCj4gPiArCWRlcGVuZHMgb24gQVJDSF9NWEMgfHwgQ09NUElMRV9URVNUCj4gPiDCoAlkZXBl
bmRzIG9uIFBDSV9NU0lfSVJRX0RPTUFJTgo+ID4gwqAJc2VsZWN0IFBDSUVfRFdfSE9TVAo+IMKg
Cj4gwqBjb25maWcgUENJRV9TUEVBUjEzWFgKPiA+IMKgCWJvb2wgIlNUTWljcm9lbGVjdHJvbmlj
cyBTUEVBciBQQ0llIGNvbnRyb2xsZXIiCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
