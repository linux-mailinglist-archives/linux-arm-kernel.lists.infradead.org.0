Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19BC13A37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ncziea2sqFphg6X+MXbcAyT1yv6hov9DVnVhkdn7ZQ=; b=Fmqp4WC9QSb9N+
	xpMne9eMFqaAwiz0WJVk2xiVDLW+YjoMXua6LtpXICyLjJOTcBtiB3/XQLDQKkgVl/9jlJenmEZTS
	tMYsdZVkb2dDMakpVycwoUEpOkm8p0UAv5OIrfJU39Y0nQ3yjUiq+N32NXmIrnHCBL8HdFfpWRf6d
	WMiNOe0N70V4V6H4O0+R709Gdmn/OTx/VksmN0vsvDApMCnKTEnCqSnLwThN3ew561ssnOMIJfoL1
	I6O+9XXwNj2EAQzpA8TlWchCvfsADHtux0VcOgzxHRLWbakqHaq7d/3AJdb00/dta96Msw5ArOAo+
	jUbD6zdYNjn+/LJUl09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIAA-00011R-Ff; Tue, 14 Jan 2020 09:07:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irI9W-0000a6-5o
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:06:27 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 028CD2187F;
 Tue, 14 Jan 2020 09:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578992781;
 bh=1QdT5zcgMqUV9FQI8pZN69jmKogFDORtHYamRxk5D/w=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=kMbXRtDbiem2zAJQlpe6HEH7Wj6+6TPStJ8CTlaxOdYOqvaq3+TZ6flAKq0lkTH7b
 LhSzd0v0DO5K2RlNP6DKiY1VndN6F77ikf/vj/1/uFFfZv/SBHNKarqpPr5MT++82y
 ZqZKfBNovlw6o1U2FrRxZ27llN4WsBtGaVYL8jSs=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: [PATCH v2 3/4] i2c: highlander: Use proper printk format for iomem
 pointer
Date: Tue, 14 Jan 2020 10:06:04 +0100
Message-Id: <1578992765-1418-3-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578992765-1418-1-git-send-email-krzk@kernel.org>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_010622_236977_A5FBB1BA 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKLS0tCgpDaGFuZ2VzIHNpbmNl
IHYxOgoxLiBOb25lCi0tLQogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWhpZ2hsYW5kZXIuYyBiL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtaGlnaGxhbmRlci5jCmluZGV4IGFiZmUzMDk0YzA0Ny4uODAzZGFkNzBlMmE3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWhpZ2hsYW5kZXIuYworKysgYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLWhpZ2hsYW5kZXIuYwpAQCAtMzIyLDcgKzMyMiw3IEBAIHN0
YXRpYyBpbnQgaGlnaGxhbmRlcl9pMmNfc21idXNfeGZlcihzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFk
YXAsIHUxNiBhZGRyLAogCQl0bXAgfD0gKFNNTVJfTU9ERTAgfCBTTU1SX01PREUxKTsKIAkJYnJl
YWs7CiAJZGVmYXVsdDoKLQkJZGV2X2VycihkZXYtPmRldiwgInVuc3VwcG9ydGVkIHhmZXIgc2l6
ZSAlZFxuIiwgZGV2LT5idWZfbGVuKTsKKwkJZGV2X2VycihkZXYtPmRldiwgInVuc3VwcG9ydGVk
IHhmZXIgc2l6ZSAlenVcbiIsIGRldi0+YnVmX2xlbik7CiAJCXJldHVybiAtRUlOVkFMOwogCX0K
IAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
