Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0DB11C447
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcGAnfuEiNfaMkTr6Zs0TWv30sto0EK3Tbf5/Vai+zs=; b=bD2xIEUFI7GJUQ
	p34C9IYMcnWMxDWn/dyJlI5HTt7y8rrg+FwlNyUrVq5ozRZoTVicuJI1cJJ2B3xH0Kgz5y+ffjomj
	u0TiRHvkIN4rVJEB9D7n0LnRXvGkIPGBtjWF7QJ9FOrCpjYB6FldWxcT8fX8hl6O8/WZ01IMrRbOo
	28mDVC419OnDhf/3zIWNJlYJ/0TIleso3kEpdr/fhugSS415nVY0haZRnL9A4Ihs3oQmTyMNmpFNC
	1dUEH5QyNdrvfH8PxiR7H9fVb6fC3hzAmqP6L+IU2oPU/239a1UVcgfgEU6eouA+c9Hpr9z2A2I0D
	mH6MRrZLOXpIG1I4yr4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFOL-00054Y-WC; Thu, 12 Dec 2019 03:43:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKe-0000VN-Sg; Thu, 12 Dec 2019 03:40:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 601BDAD5F;
 Thu, 12 Dec 2019 03:40:03 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 14/25] arm64: dts: realtek: rtd1295-xnano-x5: Add regular LEDs
 to FD628
Date: Thu, 12 Dec 2019 04:39:41 +0100
Message-Id: <20191212033952.5967-15-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194005_108537_351CF159 
X-CRM114-Status: UNSURE (   8.62  )
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

QWRkIGNoaWxkIG5vZGVzIGZvciBpbmRpdmlkdWFsIExFRCBpbmRpY2F0b3JzIHBsdXMgdGhlIGhh
bGYtc2Vjb25kIGNvbG9uLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXhuYW5v
LXg1LmR0cyB8IDUyICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDUy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTI5NS14bmFuby14NS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5
NS14bmFuby14NS5kdHMKaW5kZXggZWE5ZTlhOTZmMWQzLi45ZDY3OGIzMDBjN2IgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXhuYW5vLXg1LmR0cworKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5kdHMKQEAgLTYs
NiArNiw3IEBACiAvZHRzLXYxLzsKIAogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5o
PgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+CiAKICNpbmNsdWRlICJydGQx
Mjk1LmR0c2kiCiAKQEAgLTQzLDYgKzQ0LDU3IEBACiAJCQlzcGktcngtZGVsYXktdXMgPSA8MT47
CiAJCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDA+OwogCQkJI2dyaWRzID0gPDc+OworCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8Mj47CisJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQkJYXBwc0Ax
LDQgeworCQkJCXJlZyA9IDwxIDQ+OworCQkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47
CisJCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fSU5ESUNBVE9SOworCQkJCWZ1bmN0aW9uLWVu
dW1lcmF0b3IgPSA8MT47CisJCQl9OworCisJCQlzZXR1cEAyLDQgeworCQkJCXJlZyA9IDwyIDQ+
OworCQkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47CisJCQkJZnVuY3Rpb24gPSBMRURf
RlVOQ1RJT05fSU5ESUNBVE9SOworCQkJCWZ1bmN0aW9uLWVudW1lcmF0b3IgPSA8Mj47CisJCQl9
OworCisJCQl1c2JAMyw0IHsKKwkJCQlyZWcgPSA8MyA0PjsKKwkJCQljb2xvciA9IDxMRURfQ09M
T1JfSURfV0hJVEU+OworCQkJCWZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX0lORElDQVRPUjsKKwkJ
CQlmdW5jdGlvbi1lbnVtZXJhdG9yID0gPDM+OworCQkJfTsKKworCQkJY2FyZEA0LDQgeworCQkJ
CXJlZyA9IDw0IDQ+OworCQkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47CisJCQkJZnVu
Y3Rpb24gPSBMRURfRlVOQ1RJT05fSU5ESUNBVE9SOworCQkJCWZ1bmN0aW9uLWVudW1lcmF0b3Ig
PSA8ND47CisJCQl9OworCisJCQljb2xvbkA1LDQgeworCQkJCXJlZyA9IDw1IDQ+OworCQkJCWNv
bG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47CisJCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05f
U1RBVFVTOworCQkJCWZ1bmN0aW9uLWVudW1lcmF0b3IgPSA8NT47CisJCQl9OworCisJCQloZG1p
QDYsNCB7CisJCQkJcmVnID0gPDYgND47CisJCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX1dISVRF
PjsKKwkJCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9JTkRJQ0FUT1I7CisJCQkJZnVuY3Rpb24t
ZW51bWVyYXRvciA9IDw2PjsKKwkJCX07CisKKwkJCWN2YnNANyw0IHsKKwkJCQlyZWcgPSA8NyA0
PjsKKwkJCQljb2xvciA9IDxMRURfQ09MT1JfSURfV0hJVEU+OworCQkJCWZ1bmN0aW9uID0gTEVE
X0ZVTkNUSU9OX0lORElDQVRPUjsKKwkJCQlmdW5jdGlvbi1lbnVtZXJhdG9yID0gPDc+OworCQkJ
fTsKIAkJfTsKIAl9OwogfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
