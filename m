Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5831F25DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9mRCz1gxy2qhzBVZQCuZkJzSQFBcjzx8L6yqcZ+a7M=; b=KZoKxjxzVDUKeQ
	ZUcDINB59LB0EvOiqVJqgNE2QVbfCebHKoDk31HoSz6gr97fzJrHdx9Fi0Fx02PIheys4UhSW8+s4
	/ah5QEcp1zJvDYQKUuSNMMq6PhPrqdBgFSjafTKzxbveoX5x+u7lwyhX03d/ayuMUWzN95siYbCXS
	9w3lqzQnd8lLxv6GMp3J6j1fgfllyA0BxBqT83ERYzmFmIUUJnWzcLDsYQodMGjeqg4zGzT5yf8Cp
	UVRiRumiGIbLxZDkjgZX/spJZV0+GxALgDBVZeJ8cSuLdDic3mHz2LC8xp6HtdHt8h/znvdrvfuTQ
	QmDnr3nuvOLWIdof8v+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRHC-0000GO-2Q; Mon, 08 Jun 2020 23:33:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1y-0004hZ-Cv
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30CE12086A;
 Mon,  8 Jun 2020 23:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658293;
 bh=QxLNTLoFkVAQRZFL6FP0AaYyx28XvLeBWZ3LvlBhJ8E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CVQxpcZXnkpB7zmBcH2XkpHeUfuUVaQCwvw6MyoIZ18Pf7H3JSYzta9d/F5waAduO
 DjookbKN+nVbiZ+TnN77DH9XXQ9QaCuXaZNo6IpQhRnN0MIaWZAMFDnKZaUi8EPtI2
 tzumfTXm8NUykWbRGxdbdpQSTx5C88lygfHt1e2E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 297/606] ARM: 8970/1: decompressor: increase tag
 size
Date: Mon,  8 Jun 2020 19:07:02 -0400
Message-Id: <20200608231211.3363633-297-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161814_478903_CE15C00C 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KClsgVXBzdHJl
YW0gY29tbWl0IDJjOTYyMzY5ZDcyZjI4NjY1OWU2NDQ2OTE5Zjg4ZDY5Yjk0M2NiNGQgXQoKVGhl
IHNpemUgZmllbGQgb2YgdGhlIHRhZyBoZWFkZXIgc3RydWN0dXJlIGlzIHN1cHBvc2VkIHRvIGJl
IHNldCB0byB0aGUKc2l6ZSBvZiBhIHRhZyBzdHJ1Y3R1cmUgaW5jbHVkaW5nIHRoZSBoZWFkZXIu
CgpGaXhlczogYzc3MjU2ODc4OGI1ZjAgKCJBUk06IGFkZCBhZGRpdGlvbmFsIHRhYmxlIHRvIGNv
bXByZXNzZWQga2VybmVsIikKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVs
bWFjaEBzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTogUnVzc2VsbCBLaW5nIDxybWsra2VybmVs
QGFybWxpbnV4Lm9yZy51az4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPgotLS0KIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC92bWxpbnV4Lmxkcy5TIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgYi9hcmNoL2FybS9i
b290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUwppbmRleCBmYzdlZDAzZDhiOTMuLjUxYjA3ODYw
NDk3OCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMK
KysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKQEAgLTQzLDcgKzQz
LDcgQEAgU0VDVElPTlMKICAgfQogICAudGFibGUgOiBBTElHTig0KSB7CiAgICAgX3RhYmxlX3N0
YXJ0ID0gLjsKLSAgICBMT05HKFpJTUFHRV9NQUdJQygyKSkKKyAgICBMT05HKFpJTUFHRV9NQUdJ
Qyg0KSkKICAgICBMT05HKFpJTUFHRV9NQUdJQygweDVhNTM0YzRiKSkKICAgICBMT05HKFpJTUFH
RV9NQUdJQyhfX3BpZ2d5X3NpemVfYWRkciAtIF9zdGFydCkpCiAgICAgTE9ORyhaSU1BR0VfTUFH
SUMoX2tlcm5lbF9ic3Nfc2l6ZSkpCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
