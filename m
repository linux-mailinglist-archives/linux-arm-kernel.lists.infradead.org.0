Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CB412D2AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kmx78DHx2X2eGSSKF50JuA59KhNAVgKRUd5o/vHR0q0=; b=HEq2ZQ6taNHX/r
	1lml+f5K1R5la9UaEbwu4Ek3nl6bglor8MV3XqTBlEGHYiCTS2JGflrVQbDgBtZG/kK9Iqvg5py+X
	YzFK2/kuY2Mnz8hssyWDTALwfADNV4xVUnHlx7oup4fyHA4lxTib5ntVtHEcjadyulyjvH+dz5D0x
	rDFygAjDsXcludLwTjtsuTmzsMEbxilmHAAagJz4P7W+aFfemXO29DFjhXQZiVx50X+Nn+gjxPFDz
	AT5yOPm50ESCKUGCWssD35xNI2OJ9WIx5LqQ3wmAX/iBdxpL/2ohLc/DvxioDTV93mkArIcZL/tw+
	mirmdBdbGDOMkZuilLUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyqD-0002RD-Tq; Mon, 30 Dec 2019 17:28:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilypn-0002HJ-Fd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:28:04 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5763F2071E;
 Mon, 30 Dec 2019 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726883;
 bh=/hvbWvEUGKZyj8PDCsO8CkkPdQuyd4EzT3CfyjXqoBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sjUJkJlFlXc7qvNGfbINWcfoWAUNZ1YWnfr9t+TFRgHuztwl3+qJ+Q+KNg+JBm5FR
 hnbj+8etvYUrjPYq8+o22doewO9DwZ7tLSUZ3wno8hLClGgguXfIvTUKQDu6S1fK67
 +/5ilxp1f9xoF1Hc8cLVTdPNIprISgNCk/2l4ryk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Max Staudt <max@enpas.org>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Elie Morisse <syniurge@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] i2c: pnx: Use proper printk format for resource_size_t
Date: Mon, 30 Dec 2019 18:27:48 +0100
Message-Id: <20191230172751.17985-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230172751.17985-1-krzk@kernel.org>
References: <20191230172751.17985-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092803_560059_01C4750F 
X-CRM114-Status: GOOD (  11.11  )
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
aTJjLXBueC5jOiBJbiBmdW5jdGlvbiDigJhpMmNfcG54X3Byb2Jl4oCZOgogICAgZHJpdmVycy9p
MmMvYnVzc2VzL2kyYy1wbnguYzo3Mzc6NDc6IHdhcm5pbmc6CiAgICAgICAgZm9ybWF0IOKAmCV4
4oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJh1bnNpZ25lZCBpbnTigJksCiAgICAgICAg
YnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg4oCYcmVzb3VyY2Vfc2l6ZV90IHtha2EgbG9uZyBsb25n
IHVuc2lnbmVkIGludH3igJkgWy1XZm9ybWF0PV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBu
eC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcG54LmMgYi9kcml2ZXJz
L2kyYy9idXNzZXMvaTJjLXBueC5jCmluZGV4IDZlMGU1NDZlZjgzZi4uMDUzYzM1ZDk5YWFkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBueC5jCisrKyBiL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtcG54LmMKQEAgLTczNCw4ICs3MzQsOCBAQCBzdGF0aWMgaW50IGkyY19wbnhf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAocmV0IDwgMCkKIAkJZ290
byBvdXRfY2xvY2s7CiAKLQlkZXZfZGJnKCZwZGV2LT5kZXYsICIlczogTWFzdGVyIGF0ICUjOHgs
IGlycSAlZC5cbiIsCi0JCWFsZ19kYXRhLT5hZGFwdGVyLm5hbWUsIHJlcy0+c3RhcnQsIGFsZ19k
YXRhLT5pcnEpOworCWRldl9kYmcoJnBkZXYtPmRldiwgIiVzOiBNYXN0ZXIgYXQgJXBhW3BdLCBp
cnEgJWQuXG4iLAorCQlhbGdfZGF0YS0+YWRhcHRlci5uYW1lLCAmKHJlcy0+c3RhcnQpLCBhbGdf
ZGF0YS0+aXJxKTsKIAogCXJldHVybiAwOwogCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
