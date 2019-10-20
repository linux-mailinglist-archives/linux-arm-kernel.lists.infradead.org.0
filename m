Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B62DDC54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+k0EQuAb88sJTJpD5RNvM8nvrLrg/bOGitXxcCYjGwQ=; b=FbqhiKaXb5J9bo
	ccuKkBFgE6wmAHhLUNVVAr4QJmRYH61+AWCRqm+jro3OFr6wusXM5QfXrKeYsaT0TghwrP7ckNZkR
	boj7ARZ/5Ec/aaoTSDmyyhrlZ7vcUQHoCZr2PyQphCj8EuaIWx2dLhX/CLbHsJhVJtCSsyw5C8GVT
	7bUsJtcPM6XvKD4R8gPendtzvpU70luGY763ofKptlBRDzyOCb9zGVCY1uyOrek7KsGbjQOQa7Fth
	UmL1YfixjUx9kLqbuARk+x5RLzz/qZTZ9mySKhP4HPE+vyRYatU3GQR4aWRLh+hUZBTY6vJMy+KPC
	qmejyxR7AdJTeLmQSESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2Xr-0005BB-OA; Sun, 20 Oct 2019 04:10:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W7-0002Vc-TV; Sun, 20 Oct 2019 04:08:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ACD5CAF87;
 Sun, 20 Oct 2019 04:08:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 5/8] arm64: dts: realtek: Change dual-license from MIT to
 BSD
Date: Sun, 20 Oct 2019 06:08:14 +0200
Message-Id: <20191020040817.16882-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210832_124393_4EF72942 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW92ZSB0aGUgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdG8gdGhlIHRvcCBsaW5lIGFuZCB1cGRh
dGUgdG8gU1BEWCAyLjAuCldoaWxlIGF0IGl0LCBzd2l0Y2ggZnJvbSBHUEx2MisvTUlUIHRvIEdQ
THYyKy9CU0QyYyBiZWZvcmUgYWRkaW5nIG1vcmUuCgpTdWdnZXN0ZWQtYnk6IFJvYiBIZXJyaW5n
IDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6IE5l
dwogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRvby14OXMuZHRzIHwg
MyArLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgICAgICAgICAg
fCAzICstLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSAgICAgICAg
ICB8IDMgKy0tCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRv
by14OXMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlz
LmR0cwppbmRleCBkYTE5ZmFhYjI5ZDUuLmU5OGU1MDhiOTUxNCAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlzLmR0cworKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS16aWRvby14OXMuZHRzCkBAIC0xLDcgKzEsNiBA
QAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0y
LUNsYXVzZSkKIC8qCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTYtMjAxNyBBbmRyZWFzIEbDpHJiZXIK
LSAqCi0gKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKICAqLwog
CiAvZHRzLXYxLzsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mjk1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCmluZGV4
IDQxZDc4NThkYTgyNi4uOTNmMGUxZDk3NzIxIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxMjk1LmR0c2kKQEAgLTEsOSArMSw4IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQogLyoKICAqIFJlYWx0ZWsgUlRE
MTI5NSBTb0MKICAqCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTYtMjAxNyBBbmRyZWFzIEbDpHJiZXIK
LSAqCi0gKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKICAqLwog
CiAjaW5jbHVkZSAicnRkMTI5eC5kdHNpIgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mjl4LmR0c2kKaW5kZXggYjljYjkyNDY2ZmM3Li5hMjZjMzc1ZWUxYmIgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtMSw5ICsxLDggQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCiAvKgog
ICogUmVhbHRlayBSVEQxMjkzL1JURDEyOTUvUlREMTI5NiBTb0MKICAqCiAgKiBDb3B5cmlnaHQg
KGMpIDIwMTYtMjAxNyBBbmRyZWFzIEbDpHJiZXIKLSAqCi0gKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjArIE9SIE1JVCkKICAqLwogCiAvbWVtcmVzZXJ2ZS8JMHgwMDAwMDAwMDAw
MDAwMDAwIDB4MDAwMDAwMDAwMDAzMDAwMDsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
