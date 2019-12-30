Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B142112D2B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSvfnXWnzSK5Jj5laXPsz9bjDTONqfIPRhpsISsEBVk=; b=ZvnALOuPqQPlNn
	QgIiCEkX9+zrD3xiL80pjtA5uW1BAuTSnjBagXEeHvGWTlVZ3JOmqJlSUG+Askh9C5lu4t80hVSNk
	31WTEdz1aZu0Ane3TnaTTsvL9xtnrWNb6kzBtsxpiwp9QeV2UIQOQ2/GJ5Hz8ADXJLp3B1Ygkp5K+
	1GAk+oSAPRFhK+en7RxXHH8cCnFNTRRL4ExME7r91HnRz+HrH2DLJr3kvCluUKlFDoZRTK9YawsY2
	9H5F+L3li53DXOpvesvYzxEq4iGOwB7qPolFe4/jZYGGR5pTPoLBS6nZ3Sf54IBqWYGaboWoxN1bb
	ed5VxpDt7O5UYeAEHPBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyqP-0002hL-7T; Mon, 30 Dec 2019 17:28:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilypq-0002LV-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:28:08 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99C7F2077B;
 Mon, 30 Dec 2019 17:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726886;
 bh=k8CPM6BW2PVS9PMxVy+ar41ppg5zunSy4syN8in4/c4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cSh6/dKUCMROG2xOErpjYStNBbcTGXO/Dk1nPTT5VrWTqt3OiGYhGk6xoylm/aFLv
 LLXwqwWOKhWDvXW74xXWTQbNYnbOD0LlZueTpUj3BXoSPfpENWKVJDAwTfPJf3TxcN
 Pw2ZdigonOCeHKfKf0qold9wNb55ieT/1Qq5XyaA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Max Staudt <max@enpas.org>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Elie Morisse <syniurge@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] i2c: highlander: Use proper printk format for iomem
 pointer
Date: Mon, 30 Dec 2019 18:27:49 +0100
Message-Id: <20191230172751.17985-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230172751.17985-1-krzk@kernel.org>
References: <20191230172751.17985-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092806_783137_C16AAAA4 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aW9tZW0gcG9pbnRlcnMgc2hvdWxkIGJlIHByaW50ZWQgd2l0aCBwb2ludGVyIGZvcm1hdCB0byBo
aWRlIHRoZQphY3R1YWwgdmFsdWUgYW5kIGZpeCB3YXJuaW5ncyB3aGVuIGNvbXBpbGluZyBvbiA2
NC1iaXQgcGxhdGZvcm0gKGUuZy4gd2l0aApDT01QSUxFX1RFU1QpOgoKICAgIGRyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtaGlnaGxhbmRlci5jOiBJbiBmdW5jdGlvbiDigJhoaWdobGFuZGVyX2kyY19z
bWJ1c194ZmVy4oCZOgogICAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmM6MzI1
OjIyOiB3YXJuaW5nOgogICAgICAgIGZvcm1hdCDigJglZOKAmSBleHBlY3RzIGFyZ3VtZW50IG9m
IHR5cGUg4oCYaW504oCZLAogICAgICAgIGJ1dCBhcmd1bWVudCAzIGhhcyB0eXBlIOKAmHNpemVf
dCB7YWthIGxvbmcgdW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQoKU2lnbmVkLW9mZi1ieTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtaGlnaGxhbmRlci5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1o
aWdobGFuZGVyLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWhpZ2hsYW5kZXIuYwppbmRleCBh
YmZlMzA5NGMwNDcuLjgwM2RhZDcwZTJhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1oaWdobGFuZGVyLmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVy
LmMKQEAgLTMyMiw3ICszMjIsNyBAQCBzdGF0aWMgaW50IGhpZ2hsYW5kZXJfaTJjX3NtYnVzX3hm
ZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwLCB1MTYgYWRkciwKIAkJdG1wIHw9IChTTU1SX01P
REUwIHwgU01NUl9NT0RFMSk7CiAJCWJyZWFrOwogCWRlZmF1bHQ6Ci0JCWRldl9lcnIoZGV2LT5k
ZXYsICJ1bnN1cHBvcnRlZCB4ZmVyIHNpemUgJWRcbiIsIGRldi0+YnVmX2xlbik7CisJCWRldl9l
cnIoZGV2LT5kZXYsICJ1bnN1cHBvcnRlZCB4ZmVyIHNpemUgJXp1XG4iLCBkZXYtPmJ1Zl9sZW4p
OwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
