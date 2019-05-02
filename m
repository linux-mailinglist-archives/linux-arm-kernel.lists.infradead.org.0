Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F8A119C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LywX4OX0dVaId34+jd48W/zf5SF+zXC7xHsaoEdqdqw=; b=HpEW8q1iNz1Sea
	M6pJt/OvY/wbcFuz2ff8Cc2tRyrNjGb/PtZbSM1C89cF/7G6gPIk82iIHrgDeIe7HmnwbG8ccFazl
	QC1pB2OZU/uHYZAqO/f+lcNXV89b66Fny+EFEbeLtJVuytXCh2xUu9XuWexxNQeF332nxjIsvPEIk
	ndRB+uivgOASEuJDASdcQSYS//DzUcSi1Om725p5LTlyn4AnPylP93z4b6/cmNmbBQKM+tm6/zOX3
	zEEQKIUXySzEyMbr0e04xqD2xhC3F5tp+6/CUcjkwUEgLqn7aJIE4Job/dEjm44ZE2tsrlVbaAi7+
	uC5FCKuF3zrTe/DaQsWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBRI-0007vg-Lt; Thu, 02 May 2019 13:07:52 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBR9-0007uc-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:07:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 88C42FB03;
 Thu,  2 May 2019 15:07:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zGDN90Q_6sjD; Thu,  2 May 2019 15:07:38 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1F8C5472C0; Thu,  2 May 2019 15:07:38 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Carlo Caione <ccaione@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] clk: imx8mq: Add dsi_ipg_div
Date: Thu,  2 May 2019 15:07:38 +0200
Message-Id: <55a0abac1c2efc4921588ee87986da43af1eb35a.1556802190.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_060744_049698_ECA632CC 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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

SXQncyBkZWZpbmVkIGluIGlteDhtcS1jbG9jay5oIGJ1dCB3YXNuJ3QgYXNzaWduZWQgeWV0LiBJ
dCdzIHVzZWQgYXMKY2xrX3R4X2VzYyBpbiB0aGUgbndsIGRzaSBob3N0IGNvbnRyb2xsZXIgKGku
TVg4TVEgUk0sIFJldi4gMCwgMDEvMjAxOApTZWN0LiAxMy41LjMuNy40KS4KClNpZ25lZC1vZmYt
Ynk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQpUaGlzIGlzIGJhc2ljYWxs
eSBhIHJlc2VuZCBKYW51YXJ5IHdpdGggYSBzbGlnaHRseSBtb3JlIGV4aGF1c3RpdmUKY29tbWl0
IG1lc3NhZ2UuCgogZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bXEuYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvaW14L2Nsay1p
bXg4bXEuYyBiL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1xLmMKaW5kZXggYTliMzg4OGFlZjBj
Li5kYWYxODQxYjJhZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1xLmMK
KysrIGIvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bXEuYwpAQCAtNDU4LDYgKzQ1OCw3IEBAIHN0
YXRpYyBpbnQgaW14OG1xX2Nsb2Nrc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogCWNsa3NbSU1YOE1RX0NMS19EU0lfREJJXSA9IGlteDhtX2Nsa19jb21wb3NpdGUoImRzaV9k
YmkiLCBpbXg4bXFfZHNpX2RiaV9zZWxzLCBiYXNlICsgMHhiYzAwKTsKIAljbGtzW0lNWDhNUV9D
TEtfRFNJX0VTQ10gPSBpbXg4bV9jbGtfY29tcG9zaXRlKCJkc2lfZXNjIiwgaW14OG1xX2RzaV9l
c2Nfc2VscywgYmFzZSArIDB4YmM4MCk7CiAJY2xrc1tJTVg4TVFfQ0xLX0RTSV9BSEJdID0gaW14
OG1fY2xrX2NvbXBvc2l0ZSgiZHNpX2FoYiIsIGlteDhtcV9kc2lfYWhiX3NlbHMsIGJhc2UgKyAw
eDkyMDApOworCWNsa3NbSU1YOE1RX0NMS19EU0lfSVBHX0RJVl0gPSBpbXhfY2xrX2RpdmlkZXIy
KCJkc2lfaXBnX2RpdiIsICJkc2lfYWhiIiwgYmFzZSArIDB4OTI4MCwgMCwgNik7CiAJY2xrc1tJ
TVg4TVFfQ0xLX0NTSTFfQ09SRV0gPSBpbXg4bV9jbGtfY29tcG9zaXRlKCJjc2kxX2NvcmUiLCBp
bXg4bXFfY3NpMV9jb3JlX3NlbHMsIGJhc2UgKyAweGJkMDApOwogCWNsa3NbSU1YOE1RX0NMS19D
U0kxX1BIWV9SRUZdID0gaW14OG1fY2xrX2NvbXBvc2l0ZSgiY3NpMV9waHlfcmVmIiwgaW14OG1x
X2NzaTFfcGh5X3NlbHMsIGJhc2UgKyAweGJkODApOwogCWNsa3NbSU1YOE1RX0NMS19DU0kxX0VT
Q10gPSBpbXg4bV9jbGtfY29tcG9zaXRlKCJjc2kxX2VzYyIsIGlteDhtcV9jc2kxX2VzY19zZWxz
LCBiYXNlICsgMHhiZTAwKTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
