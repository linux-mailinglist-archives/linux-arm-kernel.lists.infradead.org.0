Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E371B2A64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=duJt6EpquPf9ip9wVezbXqXl92SoWp8VhxUB9xGuMwc=; b=GNWpFBZFb9FpqM
	ih0GWIuWcAyWU+tecJorYKPvL1awKI2C1HD+Yu7i6UArHG+nKKqxoO6UX++Hm09Do2WonGHHjRqqQ
	1WKr0q6y8Ia4vqkpcH8FrfuL+gAnncRtKDlCk/BZoYmZHOb3nvWDjgiO99YyK1pQtQBICEs/UyQLK
	ocw//DEWpIPYtPL7pqL1FGAG8MX3mrmWazYcVlp7oBC6lMvzFos+qrqhrwf758B7Q4bORVG1uWpf/
	7Nshb3JjunesDqPYd5V9THej03kagX9ItMszSyRMXnrqAkfHq/gCZacV35SC/1XSpAtGGiWjafCwC
	FIW31gExGqieYp2sN20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu8l-00032B-O6; Tue, 21 Apr 2020 14:44:47 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQu8J-0002p6-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:44:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 10FFFFB05;
 Tue, 21 Apr 2020 16:44:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sxK6Q_KX8VC; Tue, 21 Apr 2020 16:44:14 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 55E64400FB; Tue, 21 Apr 2020 16:44:14 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "Rob Herring" <robh+dt@kernel.org>, "Shawn Guo" <shawnguo@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Fabio Estevam" <festevam@gmail.com>, "NXP Linux Team" <linux-imx@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 "Martin Kepplinger" <martink@posteo.de>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Abel Vesa" <abel.vesa@nxp.com>, "Anson Huang" <Anson.Huang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Date: Tue, 21 Apr 2020 16:44:12 +0200
Message-Id: <cover.1587480093.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_074419_405183_9B11A6D7 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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

QWNjb3JkaW5nIHRvIHRoZSBpbXg4bXEgZGF0YSBzaGVldCBydW5uaW5nIFZERF9HUFUgYXQgMC45
ViBpcyBlbm91Z2gKd2hlbiBub3Qgb3ZlcmNsb2NraW5nIHRvIDFHSHogKHdoaWNoIHdlIGN1cnJl
bnRseSBkb24ndCBkbykuCgpjaGFuZ2VzIGZyb20gdjI6CiAtIHJlYmFzZSBhZ2luc3QgU2hhd24n
cyB0cmVlCiAtIGZpeCBhIHdhcm5pbmcgZm9yIHRoZSB0eXBlYyBjb25uZWN0b3IKCkd1aWRvIEfD
vG50aGVyICgyKToKICBhcm02NDogZHRzOiBpbXg4bXEtbGlicmVtNS1kZXZraXQ6IFVzZSAwLjlW
IGZvciBWRERfR1BVCiAgYXJtNjQ6IGR0czogRG9uJ3QgdXNlIHVuZGVyc2NvcmUgaW4gbm9kZSBu
YW1lCgogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0
LmR0cyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCi0tIAoyLjI2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
