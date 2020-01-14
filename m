Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823513A379
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bLr6jahWYPDcxAR8vSSkdUFmGKPO7jSxUgleFrH3FY=; b=VRXRUBYfKKAOgh
	deC/YS4yYIrGR+nG46QBogR4xxZmVmJcBzSmO0mM0/T1zAZsnggnoFLksnvB/bkbNKx2jeXpIn9XO
	yKlcTZ4xf4R20KoV3s7cXvjB3qQ+PscHu0V1kWRg9DfaOjRCsZ3IP9tNbyUBJs2j1WjX71Cljsam9
	IGnTLTA+/fwO6SEgDkbfNYSy1Sv5vr+D3gYuXb7RjUDbkSqpnBX7egN4oDvELBqEyaCJU/HxGwbpH
	kBYrtGvWmS0W4aciC8eItp6Sqxju6dwsT6i3PLn9RnmRDTSQz7FC/6MImWOAsNXZmouQaoLMoMoWc
	EF+AQw9cuSDH5W8If1Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irI9x-0000m8-3H; Tue, 14 Jan 2020 09:06:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irI9T-0000ZZ-Tg
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:06:25 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7378217BA;
 Tue, 14 Jan 2020 09:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578992779;
 bh=mPgCwspC2Gdb6VmnE5JZXmFnOgnZUW49uwGxw9FEZbI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=oNOtFLJe/GXxJ5ySHI6C6N7+iMc6zu29dmwk+7GowZAJ9Yb1mon4kJiTQzxeckCLs
 fNoHvgdx6w6adIp7DTTYmfCIERIAXjkKqz9dY5Qt3/Th4hx+6i/gFO5/2SH2yVn3Vw
 2NVetF0s5/Pk1OaJjahGIkY6KQlTJGS92smKlhb0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: [PATCH v2 2/4] i2c: pnx: Use proper printk format for resource_size_t
Date: Tue, 14 Jan 2020 10:06:03 +0100
Message-Id: <1578992765-1418-2-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578992765-1418-1-git-send-email-krzk@kernel.org>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_010619_975224_C814610F 
X-CRM114-Status: GOOD (  10.75  )
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

cmVzb3VyY2Vfc2l6ZV90IHNob3VsZCBiZSBwcmludGVkIHdpdGggaXRzIG93biBzaXplLWluZGVw
ZW5kZW50IGZvcm1hdAp0byBmaXggd2FybmluZ3Mgd2hlbiBjb21waWxpbmcgb24gNjQtYml0IHBs
YXRmb3JtIChlLmcuIHdpdGgKQ09NUElMRV9URVNUKToKCiAgICBkcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXBueC5jOiBJbiBmdW5jdGlvbiDigJhpMmNfcG54X3Byb2Jl4oCZOgogICAgZHJpdmVycy9p
MmMvYnVzc2VzL2kyYy1wbnguYzo3Mzc6NDc6IHdhcm5pbmc6CiAgICAgICAgZm9ybWF0IOKAmCV4
4oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJh1bnNpZ25lZCBpbnTigJksCiAgICAgICAg
YnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg4oCYcmVzb3VyY2Vfc2l6ZV90IHtha2EgbG9uZyBsb25n
IHVuc2lnbmVkIGludH3igJkgWy1XZm9ybWF0PV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCi0tLQoKQ2hhbmdlcyBzaW5jZSB2MToKMS4gVXNl
ICVwYXAsIG5vdCAlcGFbcF0uCi0tLQogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbnguYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBueC5jIGIvZHJpdmVycy9pMmMvYnVz
c2VzL2kyYy1wbnguYwppbmRleCA2ZTBlNTQ2ZWY4M2YuLjc5YmIxYzY4ZDQ4NSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbnguYworKysgYi9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXBueC5jCkBAIC03MzQsOCArNzM0LDggQEAgc3RhdGljIGludCBpMmNfcG54X3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCA8IDApCiAJCWdvdG8gb3V0X2Ns
b2NrOwogCi0JZGV2X2RiZygmcGRldi0+ZGV2LCAiJXM6IE1hc3RlciBhdCAlIzh4LCBpcnEgJWQu
XG4iLAotCQlhbGdfZGF0YS0+YWRhcHRlci5uYW1lLCByZXMtPnN0YXJ0LCBhbGdfZGF0YS0+aXJx
KTsKKwlkZXZfZGJnKCZwZGV2LT5kZXYsICIlczogTWFzdGVyIGF0ICVwYXAsIGlycSAlZC5cbiIs
CisJCWFsZ19kYXRhLT5hZGFwdGVyLm5hbWUsICYocmVzLT5zdGFydCksIGFsZ19kYXRhLT5pcnEp
OwogCiAJcmV0dXJuIDA7CiAKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
