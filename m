Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910591A2F50
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MykoDHuYNI1iCordRgK0qMR1mgNXcBVpxDnRRmTEXX8=; b=ejy0EfJ4iOImkt
	KYnznx0n//BSnpfKzrNk8gbARK0Y+BHGXo7DdfsPIF3qcQAkNW5FsZ8viseTlgW8LikCqHQDAhGcm
	NtIk64B3D+qQ+ScdQK5qwUqD7I2c6U4bszL4lE7Np4gV84rqqOvQWpkx7zX5sXb2PntCoZ68SyirT
	RTjfpZIdozmQ0MCsugoNrbzPHh5OzxnDdrfoMNZr0yuTKgBfGBWLMuyVbxbu3r+ClKVw2Jh7Z+myF
	kNeBpZK6QF/+xxIGYObnFM5CY2C7LsHHo+B28uTTSJuZvskqNA0nqkw017Qi/3wSNozPVGFOwtr3G
	O3knlAYS3fOHkFQa3KNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQvM-0004A4-QH; Thu, 09 Apr 2020 06:44:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQvF-00048M-80
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:44:22 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 837A42082D;
 Thu,  9 Apr 2020 06:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586414658;
 bh=pPnMeZ9CzhB/flZSg9Rx5zESoGByic5+qaFEBZTGzB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k+OQa4Yk2YcwcQqzV3RNGTuqVUE5DeyV+B3PqH7XEy2IXHvEEK62ycua1tSZG0M4G
 U9xllOc2dyx4jYzFppwfg3DqlQ0C5lUpqPYN5+84mcZERZVT/icregelTQ1rb3hZAi
 xvQn15wfW2sPNHZSVv7NHfzj/40aBZHn8otrTZ2Y=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 01/10] ARM: Remove redundant COMMON_CLK selects
Date: Wed,  8 Apr 2020 23:44:07 -0700
Message-Id: <20200409064416.83340-2-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200409064416.83340-1-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_234421_305565_DEE9C49E 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 linux-clk@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG11bGl0cGxhdGZvcm0gY29uZmlnIGFscmVhZHkgc2VsZWN0cyBDT01NT05fQ0xLLCBzbyBz
ZWxlY3RpbmcgaXQKYWdhaW4gaXMgbm90IHVzZWZ1bC4gUmVtb3ZlIHRoZXNlIHNlbGVjdHMgZnJv
bSBBUk0gcGxhdGZvcm1zIHRoYXQgYXJlCnBhcnQgb2YgdGhlIG11bHRpcGxhdGZvcm0gYnVpbGQu
CgpSZXZpZXdlZC1ieTogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+ICMgYWN0
aW9ucwpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1AbGluYXJvLm9yZz4gIyBhY3Rpb25zCkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4
Lm9yZy51az4KQ2M6IEFsZXhhbmRlciBTaGl5YW4gPHNoY193b3JrQG1haWwucnU+CkNjOiBMdWJv
bWlyIFJpbnRlbCA8bGt1bmRyYWtAdjMuc2s+CkNjOiA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnPgpDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KU2lnbmVkLW9m
Zi1ieTogU3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwub3JnPgotLS0KIGFyY2gvYXJtL21hY2gt
YWN0aW9ucy9LY29uZmlnICB8IDEgLQogYXJjaC9hcm0vbWFjaC1jbHBzNzExeC9LY29uZmlnIHwg
MSAtCiBhcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnICAgICAgfCAxIC0KIDMgZmlsZXMgY2hhbmdl
ZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2Nv
bmZpZyBiL2FyY2gvYXJtL21hY2gtYWN0aW9ucy9LY29uZmlnCmluZGV4IGI1ZTBhYzk2NWVjMC4u
MDBmYjRiYWJjY2RkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwor
KysgYi9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwpAQCAtNyw3ICs3LDYgQEAgbWVudWNv
bmZpZyBBUkNIX0FDVElPTlMKIAlzZWxlY3QgQVJNX0dMT0JBTF9USU1FUgogCXNlbGVjdCBDQUNI
RV9MMlgwCiAJc2VsZWN0IENMS1NSQ19BUk1fR0xPQkFMX1RJTUVSX1NDSEVEX0NMT0NLCi0Jc2Vs
ZWN0IENPTU1PTl9DTEsKIAlzZWxlY3QgR0VORVJJQ19JUlFfQ0hJUAogCXNlbGVjdCBIQVZFX0FS
TV9TQ1UgaWYgU01QCiAJc2VsZWN0IEhBVkVfQVJNX1RXRCBpZiBTTVAKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL21hY2gtY2xwczcxMXgvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtY2xwczcxMXgvS2Nv
bmZpZwppbmRleCBmYzkxODhiNTRkZDYuLmJhNDk3YTIwMzJlOSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vbWFjaC1jbHBzNzExeC9LY29uZmlnCisrKyBiL2FyY2gvYXJtL21hY2gtY2xwczcxMXgvS2Nv
bmZpZwpAQCAtNSw3ICs1LDYgQEAgbWVudWNvbmZpZyBBUkNIX0NMUFM3MTFYCiAJc2VsZWN0IEFV
VE9fWlJFTEFERFIKIAlzZWxlY3QgVElNRVJfT0YKIAlzZWxlY3QgQ0xQUzcxMVhfVElNRVIKLQlz
ZWxlY3QgQ09NTU9OX0NMSwogCXNlbGVjdCBDUFVfQVJNNzIwVAogCXNlbGVjdCBHRU5FUklDX0NM
T0NLRVZFTlRTCiAJc2VsZWN0IEdQSU9MSUIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtbW1w
L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnCmluZGV4IGI1OGEwM2IxOGJkZS4u
NmZlMTU1MGY0M2VjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnCisrKyBi
L2FyY2gvYXJtL21hY2gtbW1wL0tjb25maWcKQEAgLTExMCw3ICsxMTAsNiBAQCBjb25maWcgTUFD
SF9NTVBfRFQKIAlkZXBlbmRzIG9uIEFSQ0hfTVVMVElfVjUKIAlzZWxlY3QgUElOQ1RSTAogCXNl
bGVjdCBQSU5DVFJMX1NJTkdMRQotCXNlbGVjdCBDT01NT05fQ0xLCiAJc2VsZWN0IEFSQ0hfSEFT
X1JFU0VUX0NPTlRST0xMRVIKIAlzZWxlY3QgQ1BVX01PSEFXSwogCWhlbHAKLS0gClNlbnQgYnkg
YSBjb21wdXRlciwgdXNpbmcgZ2l0LCBvbiB0aGUgaW50ZXJuZXQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
