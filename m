Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAE71C0F92
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsSS53oy5x8TowlRvGvwQLjI8PYzqP2Br2cp8+4soeE=; b=XMsGXqrAOaOvll
	rzyKDSn1MDfxuH45qnk/IM+zuT0T9F/sJHoskPr160oFcOP8yp4VqiyCjHHSdLF8/ML4ryPrFWEew
	/grPq+M3AAIBQQzX0yqdbf0Vh+jvgIuJQfMQiEGOw5Age2QHFxucV7aV3ZsWiQEVZnBOSl9wqnyGY
	xBsTqBu5VfDCmtM31IQ1V19D62mrjY5PiQXl+UgPgHBoF846ba5a447hpp+1lEOezEJQtHfpDG4mK
	7pva9v4YR8Fl404aQPD84ALldXcyCtAtDf36dmd3vmnaIdIlHcyaupe4t+9W/FiEIiUrchnMLJEcK
	CBLraieRRwMFB0OSCmug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR74-0007jH-OW; Fri, 01 May 2020 08:33:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR6k-0007a7-Jx
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:33:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id AD5B72A2D1B
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [RFT PATCH 1/5] arm64: dts: draak: Reorder hdmi-encoder@39 reg and
 reg-names properties
Date: Fri,  1 May 2020 10:32:23 +0200
Message-Id: <20200501083227.10886-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_013318_786453_3AF07CAF 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVvcmRlciB0aGUgSTJDIHNsYXZlIGFkZHJlc3NlcyBvZiB0aGUgaGRtaS1lbmNvZGVyQDM5IG5v
ZGUgdG8gbWFrZSBpdApjb21wbGlhbnQgd2l0aCB0aGUgYWRpLGFkdjc1MTF3IERUIGJpbmRpbmcu
CgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9AY29sbGFi
b3JhLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTUtZHJhYWsu
ZHRzIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1k
cmFhay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTUtZHJhYWsuZHRz
CmluZGV4IDY3NjM0Y2IwMWQ2Yi4uMjhlZDg1MmJkNDE3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTUtZHJhYWsuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMKQEAgLTI3Miw4ICsyNzIsOCBAQAogCiAJ
aGRtaS1lbmNvZGVyQDM5IHsKIAkJY29tcGF0aWJsZSA9ICJhZGksYWR2NzUxMXciOwotCQlyZWcg
PSA8MHgzOT4sIDwweDNmPiwgPDB4Mzg+LCA8MHgzYz47Ci0JCXJlZy1uYW1lcyA9ICJtYWluIiwg
ImVkaWQiLCAicGFja2V0IiwgImNlYyI7CisJCXJlZyA9IDwweDM5PiwgPDB4M2Y+LCA8MHgzYz4s
IDwweDM4PjsKKwkJcmVnLW5hbWVzID0gIm1haW4iLCAiZWRpZCIsICJjZWMiLCAicGFja2V0IjsK
IAkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+OwogCQlpbnRlcnJ1cHRzID0gPDI4IElSUV9U
WVBFX0xFVkVMX0xPVz47CiAKLS0gCjIuMTguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
