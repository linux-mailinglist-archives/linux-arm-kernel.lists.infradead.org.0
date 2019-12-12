Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99111C44F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/ZO7mIRMn1uADZJ4HD6l9LarIEQZQ54Y7M2yPLI1Iw=; b=E38UmXMkZpSISh
	M5KpM9eCoY6cpy5HYRM5ihC/VBFIHz2U/MH46UhW3uMpsvwSsZsy/siNFGRx+hFKaJz/UQEPJkv69
	TtV187Cb41k+hCvS10maxKHM6ne9ff1hxHGslA8R9osFlSrUt9FOKtBkw5BK6RbbN1xv6kHv+QVJc
	O0h49FqBQQLOZuQq23nWhJyV6jMEqd6zC7CegzUEyWXkuHu48mplTQSATxMUDyjSkEgnk8jTBZmCb
	9Y2Uq4nCrpHAkEA2tS29avQu1NZiVzCbiDlcaTyMZOlbz+eNiGK7v5ysFMov4BnC3lzjNaEUovkYt
	pEJ7EJ12FmgTLnAhf89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFQM-00088m-Mc; Thu, 12 Dec 2019 03:45:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKk-0000t8-9v; Thu, 12 Dec 2019 03:40:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E4FFBAD7B;
 Thu, 12 Dec 2019 03:40:06 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 21/25] arm64: dts: realtek: rtd1295-xnano-x5: Add display to
 FD628
Date: Thu, 12 Dec 2019 04:39:48 +0100
Message-Id: <20191212033952.5967-22-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194010_549607_66706D2C 
X-CRM114-Status: UNSURE (   8.06  )
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgY2hpbGQgbm9kZSBmb3IgNC1kaWdpdCA3LXNlZ21lbnQgZGlzcGxheS4KClNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5kdHMgfCA0ICsrKysKIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvcnRkMTI5NS14bmFuby14NS5kdHMKaW5kZXggOWQ2NzhiMzAwYzdiLi4wN2RlOTU0Mjc4NzQg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXhuYW5vLXg1
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5k
dHMKQEAgLTQ3LDYgKzQ3LDEwIEBACiAJCQkjYWRkcmVzcy1jZWxscyA9IDwyPjsKIAkJCSNzaXpl
LWNlbGxzID0gPDA+OwogCisJCQlkaXNwbGF5QDAsOCB7CisJCQkJcmVnID0gPDAgOD4sIDwwIDc+
LCA8MCA2PiwgPDAgNT47CisJCQl9OworCiAJCQlhcHBzQDEsNCB7CiAJCQkJcmVnID0gPDEgND47
CiAJCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX1dISVRFPjsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
