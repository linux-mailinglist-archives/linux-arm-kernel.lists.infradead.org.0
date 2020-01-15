Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D099A13CDA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:03:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9ev6mpu7mkA72zj1oZOyv6RkcCqbTY+dxlhppBxPfU=; b=Xb/ieZP+N4XR21
	qznQLP2EFsAs/sc35iejslGD3PzKdnfKHixArIcQK6hlcIqBClUqrbmVPb4E6q04+OlcyV1q3Zjd1
	Qi81BwzU1i63WcxxMkGXdqNIHyYoPsxYRXd1J6iyQ+eCc3QSp3SXjQtzXOyUKnEluDqOgi94XN/as
	btaR29OjHbmyl+ppzYEBP02GrpoGmnDuuUv7HcfH8aGr+dj2DKm+jdLCxbA+wDcTYZ1jvHnu7mYlM
	EfTrRsgMO1amdweBJiwdUhtERRlj+unYP/6eT2u30bjwNGW0i8UtLhoj8V2LV68fxZdwRJ/Wh1aJ+
	umex0KLdty04MOmuv0yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irotH-0006wu-0u; Wed, 15 Jan 2020 20:03:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroso-0006eR-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:03:24 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59E9022522;
 Wed, 15 Jan 2020 20:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579118597;
 bh=0591tE+4OH/hfGGAGciUPBvAKhLxHKpVzkbvCGRvx8k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VH6MeVzg99G/HehQJLYXUFXW4Rqw09+KbJXBW9sNLmHoAqKXs7CNPgQ1QiErcktrP
 xrICDTpL9xzMyCqxaLfnlgmiZwaj9BnyOVa/uONPlKpn+jkQJIfQABTXTcNcxq/WJE
 1ve0NlpvZNqg1z3egUB48A+//tTacFb9UiCqFVNE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH v3 3/3] i2c: highlander: Use proper printk format for size_t
Date: Wed, 15 Jan 2020 21:02:50 +0100
Message-Id: <20200115200250.10849-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200115200250.10849-1-krzk@kernel.org>
References: <20200115200250.10849-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120318_672769_4B5B6DD6 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Jean Delvare <jdelvare@suse.de>, Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c2l6ZV90IHNob3VsZCBiZSBwcmludGVkIHdpdGggaXRzIG93biBmb3JtYXQgdG8gYmUgNjQtYml0
IGZyaWVuZGx5IGFuZApmaXggd2FybmluZyB3aGVuIGNvbXBpbGluZyBvbiA2NC1iaXQgcGxhdGZv
cm0gKGUuZy4gd2l0aCBDT01QSUxFX1RFU1QpOgoKICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
aGlnaGxhbmRlci5jOiBJbiBmdW5jdGlvbiDigJhoaWdobGFuZGVyX2kyY19zbWJ1c194ZmVy4oCZ
OgogICAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmM6MzI1OjIyOiB3YXJuaW5n
OgogICAgICAgIGZvcm1hdCDigJglZOKAmSBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUg4oCYaW50
4oCZLAogICAgICAgIGJ1dCBhcmd1bWVudCAzIGhhcyB0eXBlIOKAmHNpemVfdCB7YWthIGxvbmcg
dW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKLS0tCgpDaGFuZ2VzIHNpbmNlIHYyOgoxLiBSZXdy
aXRlIGluY29ycmVjdCBjb21taXQgbXNnLgoKQ2hhbmdlcyBzaW5jZSB2MToKMS4gTm9uZQotLS0K
IGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaGlnaGxhbmRlci5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9p
MmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWhpZ2hs
YW5kZXIuYwppbmRleCBhYmZlMzA5NGMwNDcuLjgwM2RhZDcwZTJhNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9pMmMvYnVzc2VzL2kyYy1oaWdobGFuZGVyLmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1oaWdobGFuZGVyLmMKQEAgLTMyMiw3ICszMjIsNyBAQCBzdGF0aWMgaW50IGhpZ2hsYW5k
ZXJfaTJjX3NtYnVzX3hmZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwLCB1MTYgYWRkciwKIAkJ
dG1wIHw9IChTTU1SX01PREUwIHwgU01NUl9NT0RFMSk7CiAJCWJyZWFrOwogCWRlZmF1bHQ6Ci0J
CWRldl9lcnIoZGV2LT5kZXYsICJ1bnN1cHBvcnRlZCB4ZmVyIHNpemUgJWRcbiIsIGRldi0+YnVm
X2xlbik7CisJCWRldl9lcnIoZGV2LT5kZXYsICJ1bnN1cHBvcnRlZCB4ZmVyIHNpemUgJXp1XG4i
LCBkZXYtPmJ1Zl9sZW4pOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMTcuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
