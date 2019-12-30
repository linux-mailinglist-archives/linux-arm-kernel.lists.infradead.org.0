Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BDC12D2AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E6Go0gL7ajIo1x95FZelAxSgZ8IowRiDbRUz/O+7X/Q=; b=QZOyafp4eb5kjD
	hAfwtY0gvUTnJ6x+JrS/e5MY99TQ3QnOPEV16TVi/joLFaDmOWZXqqEiAIq3zWY8lki8GG1EFaWCF
	h67jCfSED2tXgurk9oRUqtdeX8EWp4dC3kNMGFtew60fINE0xhUatyyDjz12akQW86UEm1uxuYPu6
	Z/pway4C5w7cOiQLSi6rOM5CsKws1Mq062lemixdxOC952/C9dg8kimWnECAyLMJh2cdXN5p9RhT0
	iahfTg3VpweSlw0N3RS5HX70WXNk5kDIL0AI8R0E1owf/6FIQBl62j9cs/KNN9UoCBv8UA2ZyeVUv
	GK2XQlIYLRB12e0Yy60Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilypt-0002Gg-NM; Mon, 30 Dec 2019 17:28:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilypk-0002GI-29
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:28:01 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7651206DB;
 Mon, 30 Dec 2019 17:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726879;
 bh=cb2Iaj0ggf2QTwJp6dt00bYXbNkMmqHeppfae+zRfzo=;
 h=From:To:Cc:Subject:Date:From;
 b=MsZteBXw7tmqiQErptqpbJHbDpozN7LSBUww1chEtMr1gL6lCeCMe+xzboAzkt8pG
 RjTgpmshR2e3cfqO6PUb0LUVJkX6hzaSRT6UDxsAacKcy1nyZIqKYavTQulwLNxjzw
 5C8N3R1ZmDIcpixkqwll5nza7IYTakzHIzvxow5Q=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Max Staudt <max@enpas.org>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Elie Morisse <syniurge@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] i2c: pmcmsp: Use proper printk format for resource_size_t
Date: Mon, 30 Dec 2019 18:27:47 +0100
Message-Id: <20191230172751.17985-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092800_126771_01A11567 
X-CRM114-Status: GOOD (  11.60  )
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

cmVzb3VyY2Vfc2l6ZV90IHNob3VsZCBiZSBwcmludGVkIHdpdGggaXRzIG93biBzaXplLWluZGVw
ZW5kZW50IGZvcm1hdAp0byBmaXggd2FybmluZ3Mgd2hlbiBjb21waWxpbmcgb24gNjQtYml0IHBs
YXRmb3JtIChlLmcuIHdpdGgKQ09NUElMRV9URVNUKToKCiAgICBkcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXBtY21zcC5jOiBJbiBmdW5jdGlvbiDigJhwbWNtc3B0d2lfcHJvYmXigJk6CiAgICBkcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXBtY21zcC5jOjI3NjoyNTogd2FybmluZzoKICAgICAgICBmb3Jt
YXQg4oCYJXjigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmHVuc2lnbmVkIGludOKAmSwK
ICAgICAgICBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhyZXNvdXJjZV9zaXplX3Qge2FrYSBs
b25nIGxvbmcgdW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQoKU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvaTJjL2J1c3Nl
cy9pMmMtcG1jbXNwLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBt
Y21zcC5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNtc3AuYwppbmRleCA0ZmRlNzRlYjM0
YTcuLjVkM2ExMmJkNDIwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNt
c3AuYworKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBtY21zcC5jCkBAIC0yNzQsOCArMjc0
LDggQEAgc3RhdGljIGludCBwbWNtc3B0d2lfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGxkZXYpCiAJaWYgKCFyZXF1ZXN0X21lbV9yZWdpb24ocmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6
ZShyZXMpLAogCQkJCXBsZGV2LT5uYW1lKSkgewogCQlkZXZfZXJyKCZwbGRldi0+ZGV2LAotCQkJ
IlVuYWJsZSB0byBnZXQgbWVtb3J5L2lvIGFkZHJlc3MgcmVnaW9uIDB4JTA4eFxuIiwKLQkJCXJl
cy0+c3RhcnQpOworCQkJIlVuYWJsZSB0byBnZXQgbWVtb3J5L2lvIGFkZHJlc3MgcmVnaW9uICVw
YVtwXVxuIiwKKwkJCSYocmVzLT5zdGFydCkpOwogCQlyYyA9IC1FQlVTWTsKIAkJZ290byByZXRf
ZXJyOwogCX0KQEAgLTI4NSw3ICsyODUsNyBAQCBzdGF0aWMgaW50IHBtY21zcHR3aV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwbGRldikKIAkJCQkJCXJlc291cmNlX3NpemUocmVzKSk7
CiAJaWYgKCFwbWNtc3B0d2lfZGF0YS5pb2Jhc2UpIHsKIAkJZGV2X2VycigmcGxkZXYtPmRldiwK
LQkJCSJVbmFibGUgdG8gaW9yZW1hcCBhZGRyZXNzIDB4JTA4eFxuIiwgcmVzLT5zdGFydCk7CisJ
CQkiVW5hYmxlIHRvIGlvcmVtYXAgYWRkcmVzcyAlcGFbcF1cbiIsICYocmVzLT5zdGFydCkpOwog
CQlyYyA9IC1FSU87CiAJCWdvdG8gcmV0X3VucmVzZXJ2ZTsKIAl9Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
