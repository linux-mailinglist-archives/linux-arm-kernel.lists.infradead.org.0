Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD961FDC59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JXmGbvyea0iMZSEguVVIFp10mJH9LHS2VX8hnBYzBI=; b=V3n5cd+65//efd
	axwT4GfgWjjrAbDyFbouIfsLEOB3n49mA7DD11vzUMoyy8Wp2STFuRfEZq2mEhwlQ8lEVo/hHspIn
	oI90q+gw7us5hf+TtUtaf/k+zUSFkUqyy6WfkpTaeM3z7vgfJ7EuyOB7SuivCU9b/dB4Ggq2ytFsH
	+UlgaPKqWRtsuXknD5ePSyn5VfEXLFVjkGG4ht/NiLI/XK2yFSvU8lfp+BpqgmEZOof+JJJoaX8VB
	lW0SDGlXOYb65+8mnhVwqrKXIxghp6woASrtASGp3GmmwYnh9OWbxt/ckywtp06j32aZmD4r0RMI4
	w9HjWVkPGzfzV/v0lNMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljCe-0000Xs-On; Thu, 18 Jun 2020 01:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj4s-0000c5-17
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:10:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 507F72089D;
 Thu, 18 Jun 2020 01:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442649;
 bh=wM5/3fhrr5hm7+nYevMQXH53D3Fdmtgqhuy6Kc3sOwA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wqvo3ZC1P/tX2WkEDgak13KH2oOMw1wy48e89VmuYaMBYOIN6LikWdTuVYGeEdfU2
 04YKpC/dvijr82b5x6YH3QXtqQLvkXI19q6sB25QbkuyI0fOqw+o1gWIuTtPYNr4Jw
 f68cE+OQG+jj1MMAdyoatDG8/env889jkBLYBTVI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 122/388] ARM: dts: sun8i-h2-plus-bananapi-m2-zero:
 Fix led polarity
Date: Wed, 17 Jun 2020 21:03:39 -0400
Message-Id: <20200618010805.600873-122-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181050_324652_65B4E0B2 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVmluY2VudCBTdGVobMOpIDx2aW5jZW50LnN0ZWhsZUBsYXBvc3RlLm5ldD4KClsgVXBz
dHJlYW0gY29tbWl0IDM0YjY4MjZkZjc0NjJjNTQxNzUyY2Y4YjFkZTI2OTFiMjZkNzhhZTAgXQoK
VGhlIFBXUi1MRUQgb24gdGhlIGJhbmFuYXBpIG0yIHplcm8gYm9hcmQgaXMgb24gd2hlbiBncGlv
IFBMMTAgaXMgbG93LgpUaGlzIGhhcyBiZWVuIHZlcmlmaWVkIG9uIGEgYm9hcmQgYW5kIGluIHRo
ZSBzY2hlbWF0aWNzIFsxXS4KClsxXTogaHR0cDovL3dpa2kuYmFuYW5hLXBpLm9yZy9CYW5hbmFf
UGlfQlBJLU0yX1pFUk8jRG9jdW1lbnRzCgpGaXhlczogOGI4MDYxZmNiZmFlICgiQVJNOiBkdHM6
IHN1bjhpOiBoMis6IGFkZCBzdXBwb3J0IGZvciBCYW5hbmEgUGkgTTIgWmVybyBib2FyZCIpClNp
Z25lZC1vZmYtYnk6IFZpbmNlbnQgU3RlaGzDqSA8dmluY2VudC5zdGVobGVAbGFwb3N0ZS5uZXQ+
CkNjOiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+CkNjOiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBj
ZXJuby50ZWNoPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+
Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDItcGx1cy1iYW5hbmFwaS1tMi16ZXJvLmR0
cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgyLXBsdXMtYmFuYW5hcGktbTIt
emVyby5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMi1wbHVzLWJhbmFuYXBpLW0yLXpl
cm8uZHRzCmluZGV4IGQyNzdkMDQzMDMxYi4uNGM2NzA0ZTRjNTdlIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9ib290L2R0cy9zdW44aS1oMi1wbHVzLWJhbmFuYXBpLW0yLXplcm8uZHRzCisrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgyLXBsdXMtYmFuYW5hcGktbTItemVyby5kdHMKQEAgLTMx
LDcgKzMxLDcgQEAgbGVkcyB7CiAKIAkJcHdyX2xlZCB7CiAJCQlsYWJlbCA9ICJiYW5hbmFwaS1t
Mi16ZXJvOnJlZDpwd3IiOwotCQkJZ3Bpb3MgPSA8JnJfcGlvIDAgMTAgR1BJT19BQ1RJVkVfSElH
SD47IC8qIFBMMTAgKi8KKwkJCWdwaW9zID0gPCZyX3BpbyAwIDEwIEdQSU9fQUNUSVZFX0xPVz47
IC8qIFBMMTAgKi8KIAkJCWRlZmF1bHQtc3RhdGUgPSAib24iOwogCQl9OwogCX07Ci0tIAoyLjI1
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
