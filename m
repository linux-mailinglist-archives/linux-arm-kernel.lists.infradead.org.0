Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B159619E895
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 04:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tjNkCrpUE66272oMBhkXHAWl8BWV1d2uPUMJ845dQM=; b=cu+t5JUEiJ2BWv
	dSa7RxD65NgQ3ZrzF3lZ6vyp8Mh2fea9+xXLxb4pcoM0w8Nf2v70kC7MzCTgDCqEE4iqP0BkgC9Ox
	JmDcev82gQc4Qh3eUxmkYW+MePh+bnKEzFDUEnkk33RXEvV/jKWJKvLhH/7hvx1ifMCvxlbUpvPx6
	PsfN2e0p3rIg0R4XE1RieSEXy4DT/5aDp3OP/Fv6DBMgz03GtWFzh8zTzKwNM2Mzr0E79BoiyzQhO
	EyT1XXiZO5HDxCVIUmmfy/Lm1vD0wrTIB2dEAgBspLdR2vQC/zNHkF7xZQjS3QM+7AZpReaFC4nYS
	WSr+TsUVi3Li+VuXTliw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvO3-00064i-Fn; Sun, 05 Apr 2020 02:51:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvNf-0005zc-E2
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 02:51:28 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 183AC20737;
 Sun,  5 Apr 2020 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586055085;
 bh=I7W7FJME/6CvgaEZ/xEBHMa5YsA6VclfpczMDvsnz5o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=peuxm+CkX3K/skuYFDcioLXovQjHlR2QlAIXU56fgsPztuSb+KxbXOoj+V5JNPrYs
 wDFLY5oW/f6CO517XXnFFVlL3wrx/ssib11FJlb1w1tKNeJEIhcD/GhdQqIXXxizrC
 JWVOYvc09R0IY9t8Tt/jdc0lpYuvszE9Bfj0V1lE=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 1/9] ARM: Remove redundant COMMON_CLK selects
Date: Sat,  4 Apr 2020 19:51:15 -0700
Message-Id: <20200405025123.154688-2-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200405025123.154688-1-sboyd@kernel.org>
References: <20200405025123.154688-1-sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_195127_498337_69826B85 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
CgpDYzogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+CkNjOiBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgpDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+CkNjOiBBbGV4YW5kZXIgU2hpeWFuIDxzaGNf
d29ya0BtYWlsLnJ1PgpDYzogTHVib21pciBSaW50ZWwgPGxrdW5kcmFrQHYzLnNrPgpDYzogPGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4KQ2M6IEFybmQgQmVyZ21hbm4gPGFy
bmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9y
Zz4KLS0tCiBhcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZyAgfCAxIC0KIGFyY2gvYXJtL21h
Y2gtY2xwczcxMXgvS2NvbmZpZyB8IDEgLQogYXJjaC9hcm0vbWFjaC1tbXAvS2NvbmZpZyAgICAg
IHwgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZp
ZwppbmRleCBiNWUwYWM5NjVlYzAuLjAwZmI0YmFiY2NkZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
bWFjaC1hY3Rpb25zL0tjb25maWcKKysrIGIvYXJjaC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcK
QEAgLTcsNyArNyw2IEBAIG1lbnVjb25maWcgQVJDSF9BQ1RJT05TCiAJc2VsZWN0IEFSTV9HTE9C
QUxfVElNRVIKIAlzZWxlY3QgQ0FDSEVfTDJYMAogCXNlbGVjdCBDTEtTUkNfQVJNX0dMT0JBTF9U
SU1FUl9TQ0hFRF9DTE9DSwotCXNlbGVjdCBDT01NT05fQ0xLCiAJc2VsZWN0IEdFTkVSSUNfSVJR
X0NISVAKIAlzZWxlY3QgSEFWRV9BUk1fU0NVIGlmIFNNUAogCXNlbGVjdCBIQVZFX0FSTV9UV0Qg
aWYgU01QCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWNscHM3MTF4L0tjb25maWcgYi9hcmNo
L2FybS9tYWNoLWNscHM3MTF4L0tjb25maWcKaW5kZXggZmM5MTg4YjU0ZGQ2Li5iYTQ5N2EyMDMy
ZTkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtY2xwczcxMXgvS2NvbmZpZworKysgYi9hcmNo
L2FybS9tYWNoLWNscHM3MTF4L0tjb25maWcKQEAgLTUsNyArNSw2IEBAIG1lbnVjb25maWcgQVJD
SF9DTFBTNzExWAogCXNlbGVjdCBBVVRPX1pSRUxBRERSCiAJc2VsZWN0IFRJTUVSX09GCiAJc2Vs
ZWN0IENMUFM3MTFYX1RJTUVSCi0Jc2VsZWN0IENPTU1PTl9DTEsKIAlzZWxlY3QgQ1BVX0FSTTcy
MFQKIAlzZWxlY3QgR0VORVJJQ19DTE9DS0VWRU5UUwogCXNlbGVjdCBHUElPTElCCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnIGIvYXJjaC9hcm0vbWFjaC1tbXAvS2NvbmZp
ZwppbmRleCBiNThhMDNiMThiZGUuLjZmZTE1NTBmNDNlYyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
bWFjaC1tbXAvS2NvbmZpZworKysgYi9hcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnCkBAIC0xMTAs
NyArMTEwLDYgQEAgY29uZmlnIE1BQ0hfTU1QX0RUCiAJZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y1
CiAJc2VsZWN0IFBJTkNUUkwKIAlzZWxlY3QgUElOQ1RSTF9TSU5HTEUKLQlzZWxlY3QgQ09NTU9O
X0NMSwogCXNlbGVjdCBBUkNIX0hBU19SRVNFVF9DT05UUk9MTEVSCiAJc2VsZWN0IENQVV9NT0hB
V0sKIAloZWxwCi0tIApTZW50IGJ5IGEgY29tcHV0ZXIsIHVzaW5nIGdpdCwgb24gdGhlIGludGVy
bmV0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
