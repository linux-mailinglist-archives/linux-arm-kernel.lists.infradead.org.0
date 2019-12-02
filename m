Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C97610EF4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqohrKqVaUtkhpt3tvPoaVUD5MnqZL7kpXd92XhDKvI=; b=XxWfL8nQph9J9B
	0s9oJ+POtWyOVpXk8IXz7lIV+ymkXiz9g477BI8AdU10fRIWjfETDbRKSpHnOwJBPyr/iNbIUa/gz
	bKlroN8B+lTNWEXBFE+sOebM2Ya5wOxya+5/oSzYb/7/JG2b3WC5+UypoXDsFYaL57v07UhLIY7Pg
	wHzp3zgu9ZRN5/FeEWh9/Z2df5IDRwquTvCibKZ85gdjHpqgUR+2Wtk+Ht/6dO+0nCyyrPOXa4MzY
	mxmMEevzsjWUlc4nnimz5SLhKg70bC6kwWwKjqxQSxeN5dMVL9Eb02nOrYu3DahCg7xJrh2FhnqKO
	uv2hx8vjHtrY6nsnbVjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqO2-0008Qi-Ea; Mon, 02 Dec 2019 18:25:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKy-0004Hq-TA; Mon, 02 Dec 2019 18:22:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E725AD75;
 Mon,  2 Dec 2019 18:22:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 14/14] dt-bindings: reset: rtd1295: Add SB2 reset
Date: Mon,  2 Dec 2019 19:22:04 +0100
Message-Id: <20191202182205.14629-15-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102221_127453_E4F2AE81 
X-CRM114-Status: UNSURE (   9.39  )
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgY29uc3RhbnQgZm9yIHJlc2V0MyBTQjIsIGJhc2VkIG9uIGRvd25zdHJlYW0gY3J0X3N5
c19yZWcuaC4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4KLS0tCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oIHwgMyAr
KysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUuaAppbmRleCAyYzBjYjZhZmU4MTYuLmRkODllNGM4MDI2
NCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUu
aAorKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oCkBAIC03
NSw2ICs3NSw5IEBACiAjZGVmaW5lIFJURDEyOTVfUlNUTl9DQlVTX1RYCQkzMAogI2RlZmluZSBS
VEQxMjk1X1JTVE5fU0RTX1BIWQkJMzEKIAorLyogc29mdCByZXNldCAzICovCisjZGVmaW5lIFJU
RDEyOTVfUlNUTl9TQjIJCTAKKwogLyogc29mdCByZXNldCA0ICovCiAjZGVmaW5lIFJURDEyOTVf
UlNUTl9EQ1BIWV9DUlQJCTAKICNkZWZpbmUgUlREMTI5NV9SU1ROX0RDUEhZX0FMRVJUX1JYCTEK
LS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
