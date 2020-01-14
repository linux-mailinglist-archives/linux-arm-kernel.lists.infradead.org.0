Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4713A37B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR+qHYPcQJJUbqsg2GXaBW1KUvPh21FIR3sf4mABHIE=; b=nl9RTN7HRDfRBb
	274/Y9WDnaGZddiBMj9ighBH2wFgrRdPqQEDe5QXm6jHXy+sHQNAiDCABT0I9lX6zGXKUNWbbSbdV
	3Xtr47c+jm4yYujRm3Fri7mCS72p/MxvcrZYgb1ZmqAfQrz191ibC7pwsh//Q9BQFxLO3nLCfgs4F
	X3W2exWZ+TjeqszUe3dW6UeUus0P/LJZCR2IdiTJXzt6FavKRX20IpdSuTn6WoPVZsQnrwWQ86Jv2
	ipgqtIdWu17i9EfhsVyBWyN/e3rzFARABSDlV8BAJQepruIOpJ+zq42U4DjmVjRYe/tn8DE6sV18E
	Iah1ENDXmTxfvcbqy30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIAP-0001GZ-2O; Tue, 14 Jan 2020 09:07:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irI9Y-0000al-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:06:28 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 426A324655;
 Tue, 14 Jan 2020 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578992784;
 bh=xHEq0cIdKqev7KZs75cgmcmftzh7L7N3M6qGIbXNz8Y=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=gaul7AfCo4oNymqOZlbeiUthJaRz3l3JrhQqXcivr1KLkJIUe2AuQxY95K2XO7deh
 kq8I+w6VvUE1rOAaWom1uTtBRLo5wE6mD77Ka3bDlaArwGa712UU4D0k5aYwzixBkq
 kdF/mhDlq5auEQrNSOTzx8W1uQ/iJo+ipm+wIND0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: [PATCH v2 4/4] i2c: stu300: Use proper printk format for iomem pointer
Date: Tue, 14 Jan 2020 10:06:05 +0100
Message-Id: <1578992765-1418-4-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578992765-1418-1-git-send-email-krzk@kernel.org>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_010624_521689_5E7E280C 
X-CRM114-Status: GOOD (  11.36  )
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
L2J1c3Nlcy9pMmMtc3R1MzAwLmM6IEluIGZ1bmN0aW9uIOKAmHN0dTMwMF93YWl0X3doaWxlX2J1
c3nigJk6CiAgICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0dTMwMC5jOjQ0Njo3Njogd2Fybmlu
ZzoKICAgICAgICBjYXN0IGZyb20gcG9pbnRlciB0byBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXpl
IFstV3BvaW50ZXItdG8taW50LWNhc3RdCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnprQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53
YWxsZWlqQGxpbmFyby5vcmc+CgotLS0KCkNoYW5nZXMgc2luY2UgdjE6CjEuIEFkZCBMaW51cycg
cmV2aWV3IHRhZy4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0dTMwMC5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1zdHUzMDAuYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtc3R1MzAwLmMKaW5kZXggOGMzZTJkNDA5ZDYzLi40MmUwYTUzZTdmYTQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtc3R1MzAwLmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1zdHUzMDAuYwpAQCAtNDQ0LDcgKzQ0NCw3IEBAIHN0YXRpYyBpbnQgc3R1MzAwX3dhaXRf
d2hpbGVfYnVzeShzdHJ1Y3Qgc3R1MzAwX2RldiAqZGV2KQogCQkgICAgICAgIkF0dGVtcHQ6ICVk
XG4iLCBpKzEpOwogCiAJCWRldl9lcnIoJmRldi0+cGRldi0+ZGV2LCAiYmFzZSBhZGRyZXNzID0g
IgotCQkJIjB4JTA4eCwgcmVpbml0IGhhcmR3YXJlXG4iLCAodTMyKSBkZXYtPnZpcnRiYXNlKTsK
KwkJCSIweCVwLCByZWluaXQgaGFyZHdhcmVcbiIsIGRldi0+dmlydGJhc2UpOwogCiAJCSh2b2lk
KSBzdHUzMDBfaW5pdF9odyhkZXYpOwogCX0KLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
