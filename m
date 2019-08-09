Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F3A87FD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjtMHP6iyEBDbE1a08jqoVzM8+r1W0WvyYxjP/dJqlg=; b=NVCXRj9+g9MpcG
	xyekZnrqviWuWFKfyInMmt1PY1XgL7SmYArYPHEYFWc1aWjV+zLE69GqflXCw9f+U1KHlD8wQWAcY
	A8lwpCIrgoeAvpwxryggRPnc1GkytSjIGPMTQrU4XJ3rMF8qeuvJhPGshzTCpECONHJ0yVEGvjED+
	IKcMibUiFMQX3iS6SRH0LH78w/rR5CenOJ/GGHNbKcUjVSTXqs/lieLQM6QT61lbj1gdlUdSasMSz
	H3oDOwJLLd3tcpTd4bVsmtvBL1y9FSn4Sej/vT/ba1wNLp2s7XA0KJ42/d1J8CmkYq7E13unSzk5v
	esi4FW/jSdTLF1P4JIjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7h8-0006SE-Ve; Fri, 09 Aug 2019 16:24:47 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7gu-0006QF-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:24:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 8677FFB06;
 Fri,  9 Aug 2019 18:24:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhSWzhnDUXoG; Fri,  9 Aug 2019 18:24:24 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id B0B2540B40; Fri,  9 Aug 2019 18:24:23 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
Date: Fri,  9 Aug 2019 18:24:21 +0200
Message-Id: <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565367567.git.agx@sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092432_447386_AE18F47F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

VGhpcyBhZGRzIGFsbCB0aGUgZ3ByIHJlZ2lzdGVycyBhbmQgdGhlIGRlZmluZSBuZWVkZWQgZm9y
IHNlbGVjdGluZwp0aGUgaW5wdXQgc291cmNlIGluIHRoZSBpbXgtbndsIGRybSBicmlkZ2UuCgpT
aWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGluY2x1
ZGUvbGludXgvbWZkL3N5c2Nvbi9pbXg4bXEtaW9tdXhjLWdwci5oIHwgNjIgKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA2NDQgaW5jbHVkZS9saW51eC9tZmQvc3lzY29uL2lteDhtcS1pb211eGMtZ3ByLmgKCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9zeXNjb24vaW14OG1xLWlvbXV4Yy1ncHIuaCBiL2lu
Y2x1ZGUvbGludXgvbWZkL3N5c2Nvbi9pbXg4bXEtaW9tdXhjLWdwci5oCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNjJlODVmZmFjZmFkCi0tLSAvZGV2L251bGwKKysr
IGIvaW5jbHVkZS9saW51eC9tZmQvc3lzY29uL2lteDhtcS1pb211eGMtZ3ByLmgKQEAgLTAsMCAr
MSw2MiBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLworLyoK
KyAqIENvcHlyaWdodCAoQykgMjAxNyBOWFAKKyAqICAgICAgICAgICAgICAgMjAxOSBQdXJpc20g
U1BDCisgKi8KKworI2lmbmRlZiBfX0xJTlVYX0lNWDhNUV9JT01VWENfR1BSX0gKKyNkZWZpbmUg
X19MSU5VWF9JTVg4TVFfSU9NVVhDX0dQUl9ICisKKyNkZWZpbmUgSU9NVVhDX0dQUjAJMHgwMAor
I2RlZmluZSBJT01VWENfR1BSMQkweDA0CisjZGVmaW5lIElPTVVYQ19HUFIyCTB4MDgKKyNkZWZp
bmUgSU9NVVhDX0dQUjMJMHgwYworI2RlZmluZSBJT01VWENfR1BSNAkweDEwCisjZGVmaW5lIElP
TVVYQ19HUFI1CTB4MTQKKyNkZWZpbmUgSU9NVVhDX0dQUjYJMHgxOAorI2RlZmluZSBJT01VWENf
R1BSNwkweDFjCisjZGVmaW5lIElPTVVYQ19HUFI4CTB4MjAKKyNkZWZpbmUgSU9NVVhDX0dQUjkJ
MHgyNAorI2RlZmluZSBJT01VWENfR1BSMTAJMHgyOAorI2RlZmluZSBJT01VWENfR1BSMTEJMHgy
YworI2RlZmluZSBJT01VWENfR1BSMTIJMHgzMAorI2RlZmluZSBJT01VWENfR1BSMTMJMHgzNAor
I2RlZmluZSBJT01VWENfR1BSMTQJMHgzOAorI2RlZmluZSBJT01VWENfR1BSMTUJMHgzYworI2Rl
ZmluZSBJT01VWENfR1BSMTYJMHg0MAorI2RlZmluZSBJT01VWENfR1BSMTcJMHg0NAorI2RlZmlu
ZSBJT01VWENfR1BSMTgJMHg0OAorI2RlZmluZSBJT01VWENfR1BSMTkJMHg0YworI2RlZmluZSBJ
T01VWENfR1BSMjAJMHg1MAorI2RlZmluZSBJT01VWENfR1BSMjEJMHg1NAorI2RlZmluZSBJT01V
WENfR1BSMjIJMHg1OAorI2RlZmluZSBJT01VWENfR1BSMjMJMHg1YworI2RlZmluZSBJT01VWENf
R1BSMjQJMHg2MAorI2RlZmluZSBJT01VWENfR1BSMjUJMHg2NAorI2RlZmluZSBJT01VWENfR1BS
MjYJMHg2OAorI2RlZmluZSBJT01VWENfR1BSMjcJMHg2YworI2RlZmluZSBJT01VWENfR1BSMjgJ
MHg3MAorI2RlZmluZSBJT01VWENfR1BSMjkJMHg3NAorI2RlZmluZSBJT01VWENfR1BSMzAJMHg3
OAorI2RlZmluZSBJT01VWENfR1BSMzEJMHg3YworI2RlZmluZSBJT01VWENfR1BSMzIJMHg4MAor
I2RlZmluZSBJT01VWENfR1BSMzMJMHg4NAorI2RlZmluZSBJT01VWENfR1BSMzQJMHg4OAorI2Rl
ZmluZSBJT01VWENfR1BSMzUJMHg4YworI2RlZmluZSBJT01VWENfR1BSMzYJMHg5MAorI2RlZmlu
ZSBJT01VWENfR1BSMzcJMHg5NAorI2RlZmluZSBJT01VWENfR1BSMzgJMHg5OAorI2RlZmluZSBJ
T01VWENfR1BSMzkJMHg5YworI2RlZmluZSBJT01VWENfR1BSNDAJMHhhMAorI2RlZmluZSBJT01V
WENfR1BSNDEJMHhhNAorI2RlZmluZSBJT01VWENfR1BSNDIJMHhhOAorI2RlZmluZSBJT01VWENf
R1BSNDMJMHhhYworI2RlZmluZSBJT01VWENfR1BSNDQJMHhiMAorI2RlZmluZSBJT01VWENfR1BS
NDUJMHhiNAorI2RlZmluZSBJT01VWENfR1BSNDYJMHhiOAorI2RlZmluZSBJT01VWENfR1BSNDcJ
MHhiYworCisvKiBpLk1YOE1xIGlvbXV4IGdwciByZWdpc3RlciBmaWVsZCBkZWZpbmVzICovCisj
ZGVmaW5lIElNWDhNUV9HUFIxM19NSVBJX01VWF9TRUwJCUJJVCgyKQorCisjZW5kaWYgLyogX19M
SU5VWF9JTVg4TVFfSU9NVVhDX0dQUl9IICovCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
