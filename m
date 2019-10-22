Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0134DE04CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrUojrIJbLij/K6qRdwVzaM/Vajwm1b8mM6fBwb4V8w=; b=GS7mKsp6ndQwBv
	7RfMO1miXOxveEyWIEqSgUeO7pYWN6dG9B7gzPmXj1Ck3s/lKwRtvaFZPfKIsOeX6aKPDbtAmE9LN
	k0nQqYlpEWtzv06qtDfb01WKgH9c9wZIbmPb8MAiFywbb6HjHPkae/kJJhXkUDKAnVkG+87H9i5BB
	JG1FXR2loVa1apC2Oim6OJxhIUUtOYglXwS1BaYiBySQHr66Ddyo+IQ3+drAbb6+SkFJHQ/JCfxP9
	tYqxSqQWp6UXiT9Rgv8y+dR0Gw7MjXTeCxYguEK7Ji+KpIy5i1AdOasBUrwRF8L5WdpSnL11pQmW+
	hTXxtR1P652dT83cpKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu5A-0000ud-VL; Tue, 22 Oct 2019 13:20:16 +0000
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu47-00009v-K7
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:19:13 +0000
Received: from player793.ha.ovh.net (unknown [10.109.146.106])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 7879F2531ED
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:19:08 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 13FCFB3E4332;
 Tue, 22 Oct 2019 13:18:52 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 6/9] ARM: dts: imx6qdl-apf6dev: add RTC support
Date: Tue, 22 Oct 2019 15:16:52 +0200
Message-Id: <20191022131655.25737-7-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 129478490415060037
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061911_822807_D4A93836 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.47.167 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN1cHBvcnQgb2YgTUNQNzk0MDAgUlRDLgoKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBT
enltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtYXBmNmRldi5kdHNpIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwt
YXBmNmRldi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2ZGV2LmR0c2kKaW5k
ZXggN2NmNDFhOTQ1MGI4Li4zMzFkNTVhZTlhYzkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZxZGwtYXBmNmRldi5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwt
YXBmNmRldi5kdHNpCkBAIC0xNjksNiArMTY5LDExIEBACiAJCVZEREEtc3VwcGx5ID0gPCZyZWdf
M3Azdj47CiAJCVZERElPLXN1cHBseSA9IDwmcmVnXzNwM3Y+OwogCX07CisKKwlydGNANmYgewor
CQljb21wYXRpYmxlID0gIm1pY3JvY2hpcCxtY3A3OTQweCI7CisJCXJlZyA9IDwweDZmPjsKKwl9
OwogfTsKIAogJmkyYzMgewotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
