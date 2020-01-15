Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA51A13CDA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPdxtFXVf3iDc+Z222eNQXTp9+cr3rwYif+Et8dURdk=; b=QSzfl5fnFfC9by
	xaqivMVjdJlLhuY6/jOvtIQP/wE1JDcmfHMERu41yX7BKjJYloVQocv2u0bX/zk6cjktzzi1Zyi+3
	ZgQlIrvKjiUq/tgxcLR1mukXMDQ3Z3dDluDsA5tpdsWY44TsevFpJA5tc3O/c452ChTjnVZjmmHNq
	CZ+WtdoLCxvtgTybraoOEqfQ0mugHwiYvg2dwLm2NWUEoxCnhsso+JuM4FyxT3ZKiy1d0YW7j8aea
	zV2U2T4M0ttzsVmO0tjftEqTxffD+kO3uCfB/TU3DUHVF/DbWutS+P/SkuHckbWd4vtbRtLCDUEWu
	klH4BdONnvSVPGZOmukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irot5-0006ht-TP; Wed, 15 Jan 2020 20:03:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irosd-0006Vb-Gk
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:03:13 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEF4E2465A;
 Wed, 15 Jan 2020 20:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579118587;
 bh=9g6+dZpdTD4bqzARd0MbhKZ9rSsEMK9QC14qdMzDSzw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AVhGUWuiAfSORCjGMfcuZ8sZjSjgQ/qarkNsPAhLbxzLEvxzoj7FeIDFQ2AWZJl9o
 Gc/Wbz4LROqMns6yBmLJ8sY4z5CkOxsBNkyLxiCoqJALQwPUMvc4IoI5hV8R6xCsuT
 JzPoyuYaleAzxQslbf4QWQWLDhchd6kbAI4YlIvA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH v3 2/3] i2c: pnx: Use proper printk format for resource_size_t
Date: Wed, 15 Jan 2020 21:02:49 +0100
Message-Id: <20200115200250.10849-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200115200250.10849-1-krzk@kernel.org>
References: <20200115200250.10849-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120307_579819_7C9A2481 
X-CRM114-Status: GOOD (  12.41  )
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

cmVzb3VyY2Vfc2l6ZV90IHNob3VsZCBiZSBwcmludGVkIHdpdGggaXRzIG93biBzaXplLWluZGVw
ZW5kZW50IGZvcm1hdAp0byBmaXggd2FybmluZ3Mgd2hlbiBjb21waWxpbmcgb24gNjQtYml0IHBs
YXRmb3JtIChlLmcuIHdpdGgKQ09NUElMRV9URVNUKToKCiAgICBkcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXBueC5jOiBJbiBmdW5jdGlvbiDigJhpMmNfcG54X3Byb2Jl4oCZOgogICAgZHJpdmVycy9p
MmMvYnVzc2VzL2kyYy1wbnguYzo3Mzc6NDc6IHdhcm5pbmc6CiAgICAgICAgZm9ybWF0IOKAmCV4
4oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJh1bnNpZ25lZCBpbnTigJksCiAgICAgICAg
YnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg4oCYcmVzb3VyY2Vfc2l6ZV90IHtha2EgbG9uZyBsb25n
IHVuc2lnbmVkIGludH3igJkgWy1XZm9ybWF0PV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCi0tLQoKQ2hhbmdlcyBzaW5jZSB2MjoKMS4gUmVt
b3ZlIHBhcmVudGhlc2VzIGFyb3VuZCByZXMtPnN0YXJ0LgoKQ2hhbmdlcyBzaW5jZSB2MToKMS4g
VXNlICVwYXAsIG5vdCAlcGFbcF0uCi0tLQogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbnguYyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBueC5jIGIvZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy1wbnguYwppbmRleCA2ZTBlNTQ2ZWY4M2YuLjY4NmMwNmYzMTYyNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbnguYworKysgYi9kcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLXBueC5jCkBAIC03MzQsOCArNzM0LDggQEAgc3RhdGljIGludCBpMmNfcG54X3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCA8IDApCiAJCWdvdG8gb3V0
X2Nsb2NrOwogCi0JZGV2X2RiZygmcGRldi0+ZGV2LCAiJXM6IE1hc3RlciBhdCAlIzh4LCBpcnEg
JWQuXG4iLAotCQlhbGdfZGF0YS0+YWRhcHRlci5uYW1lLCByZXMtPnN0YXJ0LCBhbGdfZGF0YS0+
aXJxKTsKKwlkZXZfZGJnKCZwZGV2LT5kZXYsICIlczogTWFzdGVyIGF0ICVwYXAsIGlycSAlZC5c
biIsCisJCWFsZ19kYXRhLT5hZGFwdGVyLm5hbWUsICZyZXMtPnN0YXJ0LCBhbGdfZGF0YS0+aXJx
KTsKIAogCXJldHVybiAwOwogCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
