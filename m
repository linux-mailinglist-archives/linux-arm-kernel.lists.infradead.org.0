Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25AE12D2B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrkCwvFuH/aiKeG8yMMdwWcIA+ZIqnTCxEQcsGWNfvk=; b=PFQloYPH2MS1n1
	Zuduyu/qrjzVoYTe9/ez5rVnTSj2Yk8zpc9KE16mW36Vf+81ylRLh5A86BP9Yd6h3wqvTzJ23UBE8
	POC44sWFBExxUfmqBseew17SfmoVmD28DwuuZXpwKuGUscLo6rYoFsPVrlAZKW1LytnNxfH0i6ywQ
	FUeE7V3KpeD+NNeR8lXxC4Ji00NwKpzv6ocNvT4ILbjECf8byQ62WAacCTkUTSRxAmoQWXHfwr/IG
	BU0hcKQLhqk1IGYZXfktlskDr4bBKaFj/PVWKGZVdg1fKMpJruLQ/T6EVMFpMBLO/UYLFXjuTvv0P
	bfygK4wGSbH0D8b6zJ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyqY-0002ur-5W; Mon, 30 Dec 2019 17:28:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilypu-0002Pn-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:28:11 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B536820730;
 Mon, 30 Dec 2019 17:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726889;
 bh=pDY2jgrEvo3eCGKykGqpYhFSgX4nnKOmj1O3sl70LGU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yW/fGdwVeC/XZXDIQ8/J9YupbFrwIPe45lulGGilx3WLfB/M15RJog2O3ruzS6Uyl
 StHDrTongR2eAP293fgQ7dQyUlbJWGkUPV20CoTNBYy1qWOWe5ekVArtzzWng4wSxa
 5coDyCrdsfXtu1kAQe//Sq1R9v2RUp2m16IhC8mc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Max Staudt <max@enpas.org>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Elie Morisse <syniurge@gmail.com>,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] i2c: stu300: Use proper printk format for iomem pointer
Date: Mon, 30 Dec 2019 18:27:50 +0100
Message-Id: <20191230172751.17985-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230172751.17985-1-krzk@kernel.org>
References: <20191230172751.17985-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092810_504178_BB68DA69 
X-CRM114-Status: GOOD (  11.89  )
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

aW9tZW0gcG9pbnRlcnMgc2hvdWxkIGJlIHByaW50ZWQgd2l0aCBwb2ludGVyIGZvcm1hdCB0byBo
aWRlIHRoZQphY3R1YWwgdmFsdWUgYW5kIGZpeCB3YXJuaW5ncyB3aGVuIGNvbXBpbGluZyBvbiA2
NC1iaXQgcGxhdGZvcm0gKGUuZy4gd2l0aApDT01QSUxFX1RFU1QpOgoKICAgIGRyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtc3R1MzAwLmM6IEluIGZ1bmN0aW9uIOKAmHN0dTMwMF93YWl0X3doaWxlX2J1
c3nigJk6CiAgICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0dTMwMC5jOjQ0Njo3Njogd2Fybmlu
ZzoKICAgICAgICBjYXN0IGZyb20gcG9pbnRlciB0byBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXpl
IFstV3BvaW50ZXItdG8taW50LWNhc3RdCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1zdHUzMDAu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtc3R1MzAwLmMgYi9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXN0dTMwMC5jCmluZGV4IDhjM2UyZDQwOWQ2My4uNDJlMGE1M2U3ZmE0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0dTMwMC5jCisrKyBiL2RyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMtc3R1MzAwLmMKQEAgLTQ0NCw3ICs0NDQsNyBAQCBzdGF0aWMgaW50IHN0
dTMwMF93YWl0X3doaWxlX2J1c3koc3RydWN0IHN0dTMwMF9kZXYgKmRldikKIAkJICAgICAgICJB
dHRlbXB0OiAlZFxuIiwgaSsxKTsKIAogCQlkZXZfZXJyKCZkZXYtPnBkZXYtPmRldiwgImJhc2Ug
YWRkcmVzcyA9ICIKLQkJCSIweCUwOHgsIHJlaW5pdCBoYXJkd2FyZVxuIiwgKHUzMikgZGV2LT52
aXJ0YmFzZSk7CisJCQkiMHglcCwgcmVpbml0IGhhcmR3YXJlXG4iLCBkZXYtPnZpcnRiYXNlKTsK
IAogCQkodm9pZCkgc3R1MzAwX2luaXRfaHcoZGV2KTsKIAl9Ci0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
