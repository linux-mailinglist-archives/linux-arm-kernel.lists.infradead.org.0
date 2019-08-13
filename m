Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C739B8B92B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTwTDDqo7aFT+KrKfmJYkaq0KGvI5E9zABRijup5O24=; b=rEvC2mrfbar/TM
	fG3IczI7Z64swY7bZJKBNZDtIKv80KiLqbcXcFDt9oPt59f/vOsO2swrT24QujthHEF3pyjfkA+ih
	xT1duZ1xiEMb9KDOgdCfHvHydbZ/nuLiG/6xJSA4bz7GC7Vdy/5cvAUUnxJfmFVYjC77qeAuL+DgE
	BQ2nW9OGHI4QUOoG/IW5ZZz1F7LetGcEiSp3iwuKNyRDo8qznKszfCLxLiLYLf6y5mqkxjWQBT5qH
	9XNwL2XdHz0K/Va/XCZKNv6epAnBizTO5Q5x7tu5PP29DdqlQEP7W3BBPPEGQhQSlPtz14kFgf+/C
	MhEneXGiYborjcdOBfKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWHb-0008Ro-3G; Tue, 13 Aug 2019 12:52:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWHQ-0008QH-C1
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:52:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id DF87028A5AE
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: dafna.hirschfeld@collabora.com
Subject: [PATCH v3 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
Date: Tue, 13 Aug 2019 14:51:47 +0200
Message-Id: <20190813125147.29605-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190813125147.29605-1-dafna.hirschfeld@collabora.com>
References: <20190813125147.29605-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_055200_543278_CE291FCE 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ezequiel@collabora.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>, robh+dt@kernel.org,
 kernel@pengutronix.de, kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogR2FyeSBCaXNzb24gPGdhcnkuYmlzc29uQGJvdW5kYXJ5ZGV2aWNlcy5jb20+CgpUaGUg
Tml0cm9nZW44TSBpcyBhbiBBUk0gYmFzZWQgc2luZ2xlIGJvYXJkIGNvbXB1dGVyIChTQkMpCmRl
c2lnbmVkIHRvIGxldmVyYWdlIHRoZSBmdWxsIGNhcGFiaWxpdGllcyBvZiBOWFDigJlzIGkuTVg4
TQpRdWFkIHByb2Nlc3Nvci4KClNpZ25lZC1vZmYtYnk6IEdhcnkgQmlzc29uIDxnYXJ5LmJpc3Nv
bkBib3VuZGFyeWRldmljZXMuY29tPgpTaWduZWQtb2ZmLWJ5OiBUcm95IEtpc2t5IDx0cm95Lmtp
c2t5QGJvdW5kYXJ5ZGV2aWNlcy5jb20+CltEYWZuYTogcG9ydGluZyB2ZW5kb3IncyBjb2RlIHRv
IG1haW5saW5lXQpTaWduZWQtb2ZmLWJ5OiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYS5oaXJzY2hm
ZWxkQGNvbGxhYm9yYS5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9mc2wueWFtbCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwKaW5kZXggMzYy
YmY4MjdjYWQxLi4xNmRiMWM2OTliYTcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9mc2wueWFtbApAQCAtMjI0LDYgKzIyNCw3IEBAIHByb3BlcnRpZXM6CiAg
ICAgICAtIGRlc2NyaXB0aW9uOiBpLk1YOE1RIGJhc2VkIEJvYXJkcwogICAgICAgICBpdGVtczoK
ICAgICAgICAgICAtIGVudW06CisgICAgICAgICAgICAgIC0gYm91bmRhcnksaW14OG1xLW5pdHJv
Z2VuOG0gIyBpLk1YOE1RIE5JVFJPR0VOIEJvYXJkCiAgICAgICAgICAgICAgIC0gZnNsLGlteDht
cS1ldmsgICAgICAgICAgICAjIGkuTVg4TVEgRVZLIEJvYXJkCiAgICAgICAgICAgICAgIC0gcHVy
aXNtLGxpYnJlbTUtZGV2a2l0ICAgICAjIFB1cmlzbSBMaWJyZW01IGRldmtpdAogICAgICAgICAg
ICAgICAtIHRlY2huZXhpb24scGljby1waS1pbXg4bSAgIyBUZWNoTmV4aW9uIFBJQ08tUEktOE0g
ZXZrCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
