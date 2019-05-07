Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCDF169FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKvhSDWRb4LaRP27Eoxtoei3wgfrSxxcCgN3Xov8OZc=; b=XlVM5McPC76ns4
	p6W6HttaIQ3kxiQSqd9owKNjEltckQwgalQN6iKlzAUEXt7lLpTsQSbNLFVX2Uz28c66W16ZLqPFa
	dWMqviYL5HUqDV3/cs4e/Isu4a68lAzIc5fuNTPMKFjjD+Lq/O/xH1bjrnjvRJGsDQ2dEjBZukV9V
	/mvqV+71Qdwx5HgRf7PhiG2aR9aQYkhBcLjnkA4z0UvWyy2gbX/del9cfmEFhUeH42YHp8LBmmUzJ
	o4m1d1pvIQ5Pm+fUxooauF83uwcWYkCgI7FE7zYGvqWA/Q8vZTBnofFhWXyLruaQgQ1YIXU2SKKYZ
	nX5NcwN3iP/2RL8n6mWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4Zw-00082u-Kb; Tue, 07 May 2019 18:12:36 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4Zp-00082Y-B1
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:12:30 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 993CD803CC;
 Tue,  7 May 2019 20:12:25 +0200 (CEST)
Date: Tue, 7 May 2019 20:12:23 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v10 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
Message-ID: <20190507181223.GC15122@ravnborg.org>
References: <cover.1557215047.git.agx@sigxcpu.org>
 <299e28042e0a24c0cde593873bdfb15e18187a92.1557215047.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <299e28042e0a24c0cde593873bdfb15e18187a92.1557215047.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=IkcTkHD0fZMA:10 a=7gkXJVJtAAAA:8
 a=LmRf8X1h8ZN8rbtOHcgA:9 a=QEXdDO2ut3YA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_111229_557228_A5270CBA 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8uCgpMb29rcyBnb29kIG5vdywgc3R1bWJsZWQgdXBvbiBhIGZldyBkZXRhaWxzIEkg
bWlzc2VkIGluIGxhc3Qgcm91bmQuCldpdGggdGhlc2UgY29uc2lkZXJlZCAvIGZpeGVkIHlvdSBj
YW4gYWRkIG15ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CgoJ
U2FtCgo+ICsjZGVmaW5lIENNKHgpCSgJCQkJXAo+ICsJCSgoeCkgPAkzMik/MHhlMHwoKHgpLTE2
KSA6CVwKPiArCQkoKHgpIDwJNjQpPzB4YzB8KCh4KS0zMikgOglcCj4gKwkJKCh4KSA8IDEyOCk/
MHg4MHwoKHgpLTY0KSA6CVwKPiArCQkoKHgpIC0gMTI4KSkKPiArI2RlZmluZSBDTih4KQkoKCh4
KSA9PSAxKT8weDFmIDogKCgoQ05fQlVGKT4+KCh4KS0xKSkmMHgxZikpCj4gKyNkZWZpbmUgQ08o
eCkJKChDT19CVUYpPj4oOC0oeCkpJjB4MykKCkEgZmV3IHNwYWNlcyBhcm91bmQgdGhlIG9wZXJh
dG9ycyBtYXkgaGVscCByZWFkYWJpbGl0eSBhIGxpdHRsZS4KCj4gK3N0YXRpYyBpbnQgcGh5X3dy
aXRlKHN0cnVjdCBwaHkgKnBoeSwgdTMyIHZhbHVlLCB1bnNpZ25lZCBpbnQgcmVnKQo+ICt7Cj4g
KwlzdHJ1Y3QgbWl4ZWxfZHBoeV9wcml2ICpwcml2ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4g
KwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IHJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIHJlZywg
dmFsdWUpOwo+ICsJaWYgKHJldCA8IDApCj4gKwkJZGV2X2VycigmcGh5LT5kZXYsICJGYWlsZWQg
dG8gd3JpdGUgRFBIWSByZWcgJWQ6ICVkIiwgcmVnLCByZXQpOwoKSSBoYXZlIHJlY2VudGx5IGxl
YXJuZWQgdGhhdCBvbmUgaGFzIHRvIHJlbWVtYmVyIHRyYWlsaWduICJcbiItIHBsZWFzZQphZGQu
CkNoZWNrIGFsbCBvdGhlciBkZXZfeHh4IGFzIEkgbm90aWNlZCB0aGUgbmV3bGluZSBpcyBtaXNz
aW5nIGluIGEgZmV3Cm1vcmUgcGxhY2VzLgoKPiArCj4gKwlkZXZfZGJnKCZwaHktPmRldiwgImhz
X2Nsay9yZWZfY2xrPSVsZC8lbGQg4qmwICVkLyVkXG4iLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgpUaGVyZSB3YXMgYW5vdGhlciBvZiB0aGUg
c3ltYm9scyBteSB0ZXJtaW5hbCBjYW5ub3Qgc2hvdy4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
