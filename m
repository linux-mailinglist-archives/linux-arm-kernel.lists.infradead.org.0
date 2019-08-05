Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3422D816BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6L5Ft1Pyy10rNhMuLaIKPp+FbwZxH/GArOGm5DkagQ=; b=CizdSDuZmz8Cbs
	puAVSAVGuL9ObsWOirhc2/k8HHsABA9u50CIqZcGSj7qKMia1GbUGYvml31ar0yMm5zx/37iw6LfP
	vMz/2ekwPnfIfuFtF8uK6ThtMeNRY1tI09CoqBjMlv4U2aGdvCrsvUCepsjBvt+rThnS5VBqEAq+C
	kbRVlhS0hz7cz+b7O61Cfbq+kcETPqcsu0hpjNUePYR6KaOX7BN4zlZ2G6OTud6IVq4tyCxXGVuCe
	WPbargAnN7hCM0YSz914YyExThU3MnnfXUK1hiVx4jWqT/+K3R5TmIJluoKnvxqAK8gWFRMUwa6gJ
	wLuIFtLUBBMJ3xjeCngA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua2u-000426-Pm; Mon, 05 Aug 2019 10:16:52 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua2U-0003oE-40
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:16:28 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B1F542000F;
 Mon,  5 Aug 2019 10:16:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/3] CP115 pinctrl support
Date: Mon,  5 Aug 2019 12:16:04 +0200
Message-Id: <20190805101607.29811-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031626_313162_C53C0A4C 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-gpio@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIGlzIHRoZSBzZWNvbmQgYmF0Y2ggb2YgY2hhbmdlcyAob3V0IG9mIHRocmVl
KSB0byBzdXBwb3J0IHRoZSBicmFuZApuZXcgTWFydmVsbCBDTjkxMzAgU29DcyB3aGljaCBhcmUg
bWFkZSBvZiBvbmUgQVA4MDcgYW5kIG9uZSBDUDExNS4KCldlIGFkZCBhIG5ldyBjb21wYXRpYmxl
IChhbmQgdGhlIHJlbGV2YW50IHN1cHBvcnQgaW4gdGhlIHBpbmN0cmwKZHJpdmVyKSBiZWZvcmUg
dGhlIGFkZGl0aW9uIGluIGJhdGNoIDMvMyBvZiBDTjkxMzAgU29DcyBEVCB1c2luZyBpdC4KCjFz
dCBiYXRjaCB3YXMgY2xvY2tzIHN1cHBvcnQgYW5kIGlzIGluZGVwZW5kZW50IGZyb20gdGhpcyBv
bmUuCgpUaGFua3MsCk1pcXXDqGwKCgpHcnplZ29yeiBKYXN6Y3p5ayAoMik6CiAgZHQtYmluZGlu
Z3M6IGNwMTEwOiBkb2N1bWVudCB0aGUgbmV3IENQMTE1IHBpbmN0cmwgY29tcGF0aWJsZQogIHBp
bmN0cmw6IG12ZWJ1OiBhZGQgYWRkaXRpb25hbCB2YXJpYW50IGZvciBzdGFuZGFsb25lIENQMTE1
CgpLb25zdGFudGluIFBvcm90Y2hraW4gKDEpOgogIHBpbmN0cmw6IG12ZWJ1OiBBZGQgQ1AxMTAg
bWlzc2luZyBwaW4gZnVuY3Rpb25hbGl0eQoKIC4uLi9hcm0vbWFydmVsbC9jcDExMC1zeXN0ZW0t
Y29udHJvbGxlci50eHQgICB8ICA0ICsrLS0KIGRyaXZlcnMvcGluY3RybC9tdmVidS9waW5jdHJs
LWFybWFkYS1jcDExMC5jICB8IDIwICsrKysrKysrKysrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
