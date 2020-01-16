Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C5213ED5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsTSkq39vJWEHYC6wA/pCJKw8a8s2+rQcWnhL+XGFjY=; b=ks4aDAh5l29PGr
	GahwQyty9/7wodNo+exDmHns3fu540ofKx8AhFL3BGDzL2SYEUnecsuG8kpP36k63WtIFW6Sp/lnw
	aXvsXkYQMhIoCJ5eDN7yQj5VRBPoIZlRiDOId9XDq/st+UCzsFfv2lYjTilgIVJPMc8Yn0r0prUYL
	NhAWocyokPoX4RTRJ6Y2JC1yTXqA6PaCcXpVUSRcwzvayaU5eoHWyF0UgLpQSMDR8izGD6K+DhMKV
	3l4NBcgZ5vDn/UUoVynUj1nZMn8uN4IfRxevDECJ68983ddImI7NIaVnKLDYeGg3bp3YiGcwf7on6
	sG7LkexU3yHMregDC9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9TJ-0007Th-L1; Thu, 16 Jan 2020 18:02:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8vH-0004pJ-61; Thu, 16 Jan 2020 17:27:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14059246D3;
 Thu, 16 Jan 2020 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195630;
 bh=PFQWB6yhTiykWY+nO5wBabV+FH2+zy+I/JKuaKCtjec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U0YzvyhaJFjLqtLm8YZrzczSOtjXijCMiyt/9T61eo0k39YLGB1YGOh7MVSru++Sw
 KsqW9SvIFVFoeotndmgtxdzodiTvqAHt9PtlOJSs2tHhRdQssT+VnFLSMEdvrcZHO/
 lBH+9+5CYmm+IxK+1wwy7Td7BrH5WEnMJRzbLi00=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 198/371] pwm: meson: Consider 128 a valid
 pre-divider
Date: Thu, 16 Jan 2020 12:21:10 -0500
Message-Id: <20200116172403.18149-141-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092711_291836_E529DF30 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: Sasha Levin <sashal@kernel.org>, linux-pwm@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFydGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWls
LmNvbT4KClsgVXBzdHJlYW0gY29tbWl0IDUxNDk2ZTQ0NDY4NzU3MjZkNTBhNTYxN2E2ZTBlMGRh
YmJjMmU2ZGEgXQoKVGhlIHByZS1kaXZpZGVyIGFsbG93cyBjb25maWd1cmluZyBsb25nZXIgUFdN
IHBlcmlvZHMgY29tcGFyZWQgdG8gdXNpbmcKdGhlIGlucHV0IGNsb2NrIGRpcmVjdGx5LiBUaGUg
cHJlLWRpdmlkZXIgaXMgNyBiaXQgd2lkZSwgbWVhbmluZyBpdCdzCm1heGltdW0gdmFsdWUgaXMg
MTI4ICh0aGUgcmVnaXN0ZXIgdmFsdWUgaXMgb2ZmLWJ5LW9uZTogMHg3ZiBvciAxMjcpLgoKQ2hh
bmdlIHRoZSBsb29wIHRvIGFsc28gYWxsb3cgZm9yIHRoZSBtYXhpbXVtIHBvc3NpYmxlIHZhbHVl
IHRvIGJlCmNvbnNpZGVyZWQgdmFsaWQuCgpGaXhlczogMjExZWQ2MzA3NTNkMmYgKCJwd206IEFk
ZCBzdXBwb3J0IGZvciBNZXNvbiBQV00gQ29udHJvbGxlciIpClNpZ25lZC1vZmYtYnk6IE1hcnRp
biBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CkFja2Vk
LWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpS
ZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9w
d20vcHdtLW1lc29uLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLW1lc29uLmMgYi9k
cml2ZXJzL3B3bS9wd20tbWVzb24uYwppbmRleCA5Yjc5Y2JjN2E3MTUuLjk1NTFmODk2ZGQ2ZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLW1lc29uLmMKKysrIGIvZHJpdmVycy9wd20vcHdt
LW1lc29uLmMKQEAgLTE4OCw3ICsxODgsNyBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0
cnVjdCBtZXNvbl9wd20gKm1lc29uLAogCWRvX2RpdihmaW5fcHMsIGZpbl9mcmVxKTsKIAogCS8q
IENhbGMgcHJlX2RpdiB3aXRoIHRoZSBwZXJpb2QgKi8KLQlmb3IgKHByZV9kaXYgPSAwOyBwcmVf
ZGl2IDwgTUlTQ19DTEtfRElWX01BU0s7IHByZV9kaXYrKykgeworCWZvciAocHJlX2RpdiA9IDA7
IHByZV9kaXYgPD0gTUlTQ19DTEtfRElWX01BU0s7IHByZV9kaXYrKykgewogCQljbnQgPSBESVZf
Uk9VTkRfQ0xPU0VTVF9VTEwoKHU2NClwZXJpb2QgKiAxMDAwLAogCQkJCQkgICAgZmluX3BzICog
KHByZV9kaXYgKyAxKSk7CiAJCWRldl9kYmcobWVzb24tPmNoaXAuZGV2LCAiZmluX3BzPSVsbHUg
cHJlX2Rpdj0ldSBjbnQ9JXVcbiIsCkBAIC0xOTcsNyArMTk3LDcgQEAgc3RhdGljIGludCBtZXNv
bl9wd21fY2FsYyhzdHJ1Y3QgbWVzb25fcHdtICptZXNvbiwKIAkJCWJyZWFrOwogCX0KIAotCWlm
IChwcmVfZGl2ID09IE1JU0NfQ0xLX0RJVl9NQVNLKSB7CisJaWYgKHByZV9kaXYgPiBNSVNDX0NM
S19ESVZfTUFTSykgewogCQlkZXZfZXJyKG1lc29uLT5jaGlwLmRldiwgInVuYWJsZSB0byBnZXQg
cGVyaW9kIHByZV9kaXZcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
