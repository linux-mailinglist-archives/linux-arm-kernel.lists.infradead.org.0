Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC33113A36A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5xb7WNJJ5hi8qCAOS8a7oojaLKuKmbkijfwQajeYlJw=; b=uYt1iNYx3vLQEP
	u3qeRcxLOstXdCC7c0Poo6aht0hzojs7829YOZllVJxjbeHSGYP0IlPbnle1mR1an61F/kOgdpu6h
	CdjFNpoRZL1z0iSf6eF65pm8MNIchnF+Q2ezvOlXjsIR1p0miinc/Yd8HYoKFDmV+APbXi9K+jbKE
	WoA9A33woATQoC5nbHa8qxriYsW44vq+/7HHu/iYaedaiR/MvSfF1wc3mJ4Q2+zRrlObhdHUwzxRv
	4GIbwvXuOG+Q2Z5qisD2376lYDSdHI4L6SbHAFRxzKU3/G1S7crhgdpY9Sh1kXyw3gxz5pE38cyNN
	hQNJhv5qzHP37yO1GZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irI9i-0000b0-Eq; Tue, 14 Jan 2020 09:06:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irI9R-0000Z5-Uj
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:06:23 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74F3C2075B;
 Tue, 14 Jan 2020 09:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578992777;
 bh=ktitPwpINdb7kf8coUvwzu/zTyz4WiGC9/yS2YXnWbA=;
 h=From:To:Subject:Date:From;
 b=xBzALEYWggLEPVN0C0sYgPtF2g9zm2aT+4ajRu689psD1Fpn7Miyatn+JWWcFJd76
 UCD76aeyI1Er7/WfyT3IIN7vMIedcEp46TZDGAmj/Et+gPVOxrLDWwF1paWLr0VL8N
 Xn8gMPYj4/svJ2cgF7OhnevThf/l88keZrhZ4dnc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: [PATCH v2 1/4] i2c: pmcmsp: Use proper printk format for
 resource_size_t
Date: Tue, 14 Jan 2020 10:06:02 +0100
Message-Id: <1578992765-1418-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_010618_009115_6B468C09 
X-CRM114-Status: GOOD (  11.44  )
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
aTJjLXBtY21zcC5jOiBJbiBmdW5jdGlvbiDigJhwbWNtc3B0d2lfcHJvYmXigJk6CiAgICBkcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXBtY21zcC5jOjI3NjoyNTogd2FybmluZzoKICAgICAgICBmb3Jt
YXQg4oCYJXjigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmHVuc2lnbmVkIGludOKAmSwK
ICAgICAgICBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhyZXNvdXJjZV9zaXplX3Qge2FrYSBs
b25nIGxvbmcgdW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQoKU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKLS0tCgpDaGFuZ2VzIHNpbmNlIHYx
OgoxLiBVc2UgJXBhcCwgbm90ICVwYVtwXS4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXBt
Y21zcC5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNtc3AuYyBi
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcG1jbXNwLmMKaW5kZXggNGZkZTc0ZWIzNGE3Li45YTJh
Y2YwOWYxY2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcG1jbXNwLmMKKysr
IGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNtc3AuYwpAQCAtMjc0LDggKzI3NCw4IEBAIHN0
YXRpYyBpbnQgcG1jbXNwdHdpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBsZGV2KQog
CWlmICghcmVxdWVzdF9tZW1fcmVnaW9uKHJlcy0+c3RhcnQsIHJlc291cmNlX3NpemUocmVzKSwK
IAkJCQlwbGRldi0+bmFtZSkpIHsKIAkJZGV2X2VycigmcGxkZXYtPmRldiwKLQkJCSJVbmFibGUg
dG8gZ2V0IG1lbW9yeS9pbyBhZGRyZXNzIHJlZ2lvbiAweCUwOHhcbiIsCi0JCQlyZXMtPnN0YXJ0
KTsKKwkJCSJVbmFibGUgdG8gZ2V0IG1lbW9yeS9pbyBhZGRyZXNzIHJlZ2lvbiAlcGFwXG4iLAor
CQkJJihyZXMtPnN0YXJ0KSk7CiAJCXJjID0gLUVCVVNZOwogCQlnb3RvIHJldF9lcnI7CiAJfQpA
QCAtMjg1LDcgKzI4NSw3IEBAIHN0YXRpYyBpbnQgcG1jbXNwdHdpX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBsZGV2KQogCQkJCQkJcmVzb3VyY2Vfc2l6ZShyZXMpKTsKIAlpZiAoIXBt
Y21zcHR3aV9kYXRhLmlvYmFzZSkgewogCQlkZXZfZXJyKCZwbGRldi0+ZGV2LAotCQkJIlVuYWJs
ZSB0byBpb3JlbWFwIGFkZHJlc3MgMHglMDh4XG4iLCByZXMtPnN0YXJ0KTsKKwkJCSJVbmFibGUg
dG8gaW9yZW1hcCBhZGRyZXNzICVwYXBcbiIsICYocmVzLT5zdGFydCkpOwogCQlyYyA9IC1FSU87
CiAJCWdvdG8gcmV0X3VucmVzZXJ2ZTsKIAl9Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
