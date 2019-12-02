Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC2610F2AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWh0v3x9J77x7IYEImm2psotvL0DSKxH5iDLUsdVcl0=; b=ZKO9nJ+XMAFKQU
	s/zr0mbGUSOmarwACc7YnHi3DTFj3McjUfWlHM7Pf/lKXjwOIyD1YpCYxvIyCvRvC5rdVadgBXwAL
	qj5htnpHZwAkXnEElbkORY4iHSuMt1Az+p4boVIopeujH4Ojv14HNqbSUBmkD6e3kPfr6lFttLqHv
	ahQG4uwSVEhytDKyt68XWBKqMrk+Px/sWycDvwlh80Vid8jOFxOjf0LUc2MQ4pC7gVl3nC7MiePO9
	A5lPb5uWtztk98XUvREeTvC81YcnL8rC29GQ7Nb3vDR783ryO2EDCfAyUSCppUY1zieUhjGt3EgcV
	culJK9E/QjKiKLg54GGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtqY-0000iX-4p; Mon, 02 Dec 2019 22:07:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpF-0007uu-Lt; Mon, 02 Dec 2019 22:05:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 09520B2F2;
 Mon,  2 Dec 2019 22:05:47 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 5/5] arm64: dts: realtek: rtd139x: Add SB2 sem nodes
Date: Mon,  2 Dec 2019 23:05:35 +0100
Message-Id: <20191202220535.6208-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202220535.6208-1-afaerber@suse.de>
References: <20191202220535.6208-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140549_879013_A319FE47 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Cheng-Yu Lee <cylee12@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERUIG5vZGVzIHRvIFNCMiBmb3IgaGFyZHdhcmUgc2VtYXBob3JlcyBpbiBSVEQxMzk1IFNv
QyBmYW1pbHkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaSB8IDE0ICsr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzl4LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCmluZGV4IGEzYzEwY2VlYjU4Ni4uNTg2YjA1
MzUwMjc0IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5k
dHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzl4LmR0c2kKQEAgLTE5
MSwzICsxOTEsMTcgQEAKIAkJc3RhdHVzID0gImRpc2FibGVkIjsKIAl9OwogfTsKKworJnNiMiB7
CisJc2IyX2hkX3NlbTogaHdzcGlubG9ja0AwIHsKKwkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0
ZDExOTUtc2IyLXNlbSI7CisJCXJlZyA9IDwweDAgMHg0PjsKKwkJI2h3bG9jay1jZWxscyA9IDww
PjsKKwl9OworCisJc2IyX2hkX3NlbV9uZXc6IGh3c3BpbmxvY2tANjIwIHsKKwkJY29tcGF0aWJs
ZSA9ICJyZWFsdGVrLHJ0ZDExOTUtc2IyLXNlbSI7CisJCXJlZyA9IDwweDYyMCAweDIwPjsKKwkJ
I2h3bG9jay1jZWxscyA9IDwxPjsKKwl9OworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
