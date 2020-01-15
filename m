Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DF13CDA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sFnBM+n9jkuFt8b9bpkXNeheS159h/a4wU7p2Yy5XmU=; b=ea/j9QUS4LDafG
	P4OFz2wjQRIjMuqf3q+b37WVjxin2WAdk0T2/ksrxJKnP6RgUgf0GQ0hsr9cwXXvborWO/b0aNbyf
	NmrSh5JSfbWI057qOeq8DZ2wFgCRcfiFbd13NtTvXSyrql+rKUVKW8UwJBBOhGVD1UZ19HGGJKnRp
	/8yF+TRBiDG4tqaB9205odEPOcGWrqZR+/zC1nQ6uV/kADhHrNmSfb/pDOzQycGg8cGreulvqKPCU
	6SGDzihG5hAmjhTrCOssGFtvPbwT6iCeLzXIztJhvXiGqYvrorBDOgXMSBiMREdN7lN3UYk56xqVL
	zMPeXRt/OKiWvyZ4+wFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irosq-0006XU-EX; Wed, 15 Jan 2020 20:03:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irosb-0006Qp-Do
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:03:11 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58CF7222C3;
 Wed, 15 Jan 2020 20:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579118581;
 bh=Fjhdo6tlNS+TM3exEZ1PBARDjQL/dzKue6ba+z8ZYOo=;
 h=From:To:Cc:Subject:Date:From;
 b=OFIW95j6vpOtPHUV4Da+AM9JfDfFmXyWSd8Qe0zAg1LJJ1e9I9p0o6FKptZng7Ttt
 0z7cwdG3fmmy+KXQK7b2z59qzrmycXk0oS4ThcYm18a2z4TBN4kTeCmNreuOLYuo8A
 3KVwtJg+jgMx3U7faNDRY/x3uX7pgOSRvjQJwDX4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: [PATCH v3 1/3] i2c: pmcmsp: Use proper printk format for
 resource_size_t
Date: Wed, 15 Jan 2020 21:02:48 +0100
Message-Id: <20200115200250.10849-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120305_500154_9A55A623 
X-CRM114-Status: GOOD (  12.91  )
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
aTJjLXBtY21zcC5jOiBJbiBmdW5jdGlvbiDigJhwbWNtc3B0d2lfcHJvYmXigJk6CiAgICBkcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXBtY21zcC5jOjI3NjoyNTogd2FybmluZzoKICAgICAgICBmb3Jt
YXQg4oCYJXjigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmHVuc2lnbmVkIGludOKAmSwK
ICAgICAgICBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhyZXNvdXJjZV9zaXplX3Qge2FrYSBs
b25nIGxvbmcgdW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQoKU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKLS0tCgpDaGFuZ2VzIHNpbmNlIHYy
OgoxLiBSZW1vdmUgcGFyZW50aGVzZXMgYXJvdW5kIHJlcy0+c3RhcnQuCgpDaGFuZ2VzIHNpbmNl
IHYxOgoxLiBVc2UgJXBhcCwgbm90ICVwYVtwXS4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJj
LXBtY21zcC5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNtc3Au
YyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcG1jbXNwLmMKaW5kZXggNGZkZTc0ZWIzNGE3Li41
ZDg5YzdjMWIzYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcG1jbXNwLmMK
KysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1wbWNtc3AuYwpAQCAtMjc0LDggKzI3NCw4IEBA
IHN0YXRpYyBpbnQgcG1jbXNwdHdpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBsZGV2
KQogCWlmICghcmVxdWVzdF9tZW1fcmVnaW9uKHJlcy0+c3RhcnQsIHJlc291cmNlX3NpemUocmVz
KSwKIAkJCQlwbGRldi0+bmFtZSkpIHsKIAkJZGV2X2VycigmcGxkZXYtPmRldiwKLQkJCSJVbmFi
bGUgdG8gZ2V0IG1lbW9yeS9pbyBhZGRyZXNzIHJlZ2lvbiAweCUwOHhcbiIsCi0JCQlyZXMtPnN0
YXJ0KTsKKwkJCSJVbmFibGUgdG8gZ2V0IG1lbW9yeS9pbyBhZGRyZXNzIHJlZ2lvbiAlcGFwXG4i
LAorCQkJJnJlcy0+c3RhcnQpOwogCQlyYyA9IC1FQlVTWTsKIAkJZ290byByZXRfZXJyOwogCX0K
QEAgLTI4NSw3ICsyODUsNyBAQCBzdGF0aWMgaW50IHBtY21zcHR3aV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwbGRldikKIAkJCQkJCXJlc291cmNlX3NpemUocmVzKSk7CiAJaWYgKCFw
bWNtc3B0d2lfZGF0YS5pb2Jhc2UpIHsKIAkJZGV2X2VycigmcGxkZXYtPmRldiwKLQkJCSJVbmFi
bGUgdG8gaW9yZW1hcCBhZGRyZXNzIDB4JTA4eFxuIiwgcmVzLT5zdGFydCk7CisJCQkiVW5hYmxl
IHRvIGlvcmVtYXAgYWRkcmVzcyAlcGFwXG4iLCAmcmVzLT5zdGFydCk7CiAJCXJjID0gLUVJTzsK
IAkJZ290byByZXRfdW5yZXNlcnZlOwogCX0KLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
