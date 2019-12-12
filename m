Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE3D11C42E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVSrukpvqY+yNpWnaMSHodGCHZzj9dZ6GCzYBfV3pww=; b=Fxlx1iUgx5Gz6a
	+J0Qgr1ePNnl8Cva35Hc4Zrfmu+Epj0K/nMqfAPsLuRshWmmJ8Rny4oZ3dPkf+GD4BGv3yR4NgdH+
	SDprQW2h3xko8rfj2p5vWDtw5z/Ien+hl9jV8r9UNS47ZD2EhUAni7bU6jldLRx+n8oT93SEGuw5K
	PmlpmImbB2ZSKgWL+qdxW3QoaS2/ltCmzUp1YgEbjc1txwdZg1ALnqT6Wag1xchLD+NmLo/QcZLJ+
	uboHH5J5+h3lrNLS7grxuwzicieB5qqR+0pGD4OfelIr4H5KuZ2Z6m3dAQ+53obyW+rWOIJE/dNxz
	yml5loB4wbNJVciUpUqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFN0-0003Ya-7G; Thu, 12 Dec 2019 03:42:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKb-0000Oq-LZ; Thu, 12 Dec 2019 03:40:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 54FADADBB;
 Thu, 12 Dec 2019 03:40:00 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 08/25] arm64: dts: realtek: rtd129x-zidoo-x9s: Add TM1628 LED
 controller
Date: Thu, 12 Dec 2019 04:39:35 +0100
Message-Id: <20191212033952.5967-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194001_892160_0DD8A088 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Roc He <hepeng@zidoo.tv>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgc3BpLWdwaW8gbm9kZSBhbmQgTEVEIGNvbnRyb2xsZXIgc2xhdmUgbm9kZS4KCkNjOiBS
b2MgSGUgPGhlcGVuZ0B6aWRvby50dj4KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1
LXppZG9vLXg5cy5kdHMgfCAyMiArKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXppZG9vLXg5cy5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRvby14OXMuZHRzCmluZGV4IDYyOGRmZDEyM2ZhMS4u
NTE4M2FjZDg1MWE4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTI5NS16aWRvby14OXMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mjk1LXppZG9vLXg5cy5kdHMKQEAgLTEsNiArMSw2IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQogLyoKLSAqIENvcHlyaWdo
dCAoYykgMjAxNi0yMDE3IEFuZHJlYXMgRsOkcmJlcgorICogQ29weXJpZ2h0IChjKSAyMDE2LTIw
MTkgQW5kcmVhcyBGw6RyYmVyCiAgKi8KIAogL2R0cy12MS87CkBAIC00Miw2ICs0MiwyNiBAQAog
CQlncGlvID0gPCZtaXNjX2dwaW8gMTYgR1BJT19BQ1RJVkVfSElHSD47CiAJCWVuYWJsZS1hY3Rp
dmUtaGlnaDsKIAl9OworCisJc3BpIHsKKwkJY29tcGF0aWJsZSA9ICJzcGktZ3BpbyI7CisJCXNj
ay1ncGlvcyA9IDwmaXNvX2dwaW8gNCBHUElPX0FDVElWRV9ISUdIPjsKKwkJbW9zaS1ncGlvcyA9
IDwmaXNvX2dwaW8gMyBHUElPX0FDVElWRV9ISUdIPjsKKwkJY3MtZ3Bpb3MgPSA8Jmlzb19ncGlv
IDIgR1BJT19BQ1RJVkVfTE9XPjsKKwkJbnVtLWNoaXBzZWxlY3RzID0gPDE+OworCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJdG0xNjI4OiBsZWQtY29u
dHJvbGxlckAwIHsKKwkJCWNvbXBhdGlibGUgPSAidGl0YW5tZWMsdG0xNjI4IjsKKwkJCXJlZyA9
IDwwPjsKKwkJCXNwaS0zd2lyZTsKKwkJCXNwaS1sc2ItZmlyc3Q7CisJCQlzcGktcngtZGVsYXkt
dXMgPSA8MT47CisJCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDA+OworCQkJI2dyaWRzID0g
PDc+OworCQl9OworCX07CiB9OwogCiAmY3B1MCB7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
