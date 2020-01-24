Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09665147635
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kHU7mJgU87b9VV3MwVDAA4bLYgfVFSVfy8GMTAmbyrU=; b=sQ8Pe3rQEY3fDj
	NzUGRju4JaDgFT1aOMa4yZ4YbruiHPleF5o2mk0vXNryyXXGM70wsRY3UqJemg9v7ujGYsTHHyEdt
	rx5JP+rOenx2Dpk2GGsKd8eTwd7RoyUoToTPcbwfLYs6gNgzYKuAEWKvRL85qA1FSoxyBgLv5RAl7
	dwZ4pkEzkqze6NdKgctAFyTwOaLaJWpG/TBOVBqz6BGy/enX3gqnh+vJSB0bXajsMcWbPvNWIRjtG
	AoAhA1Mv0nN+14pPOjCnTJuQz20YsctDWu3odB2SYJAymJ8BSODH+AAt0yCyXWOfSJGX5ea0nYcHO
	25AfOPI57tXDN8n3eP6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuncb-0003s5-Jz; Fri, 24 Jan 2020 01:18:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunbu-0003Dh-SI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:18:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 909CC2087E;
 Fri, 24 Jan 2020 01:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828690;
 bh=ny9PYva32ScPOAXGjxJcNlDJIh1SjBwEbovcV72cTa0=;
 h=From:To:Cc:Subject:Date:From;
 b=OUFpA+2RzxPXdvOaBhcavl1bUxi7eaTo/Yk9BY/Dh2a7d5qEA/2ZKFWT42tghfAms
 T/96pTpN9/f5SAwcpYqqkXSlS1uQKL96jbIyBYbN5/azrR9Et4/n6q5kuG5aZf5/R6
 fS0ZPZMqlHVbGTc10EI16y7dGmowM/h1YJnS2RrE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 1/2] ARM: config: aspeed-g5: Enable 8250_DW quirks
Date: Thu, 23 Jan 2020 20:18:07 -0500
Message-Id: <20200124011808.18801-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171810_958381_8122BB44 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5hdT4KClsgVXBzdHJlYW0gY29tbWl0IGE1
MzMxYTdhODdlYzgxZDUyMjhiNzQyMWFjZjgzMWIyZDBjMGRlMjYgXQoKVGhpcyBkcml2ZXIgb3B0
aW9uIGlzIHVzZWQgYnkgdGhlIEFTVDI2MDAgQTAgYm9hcmRzIHRvIHdvcmsgYXJvdW5kIGEKaGFy
ZHdhcmUgaXNzdWUuCgpSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9y
Zz4KQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6
IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmlu
IDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZj
b25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3Mv
YXNwZWVkX2c1X2RlZmNvbmZpZwppbmRleCA0ZjM2NmIwMzcwZTkzLi4zZmI2YmNiYTc5OTQyIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKKysrIGIvYXJj
aC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCkBAIC01Myw2ICs1Myw3IEBAIENPTkZJ
R19TRVJJQUxfODI1MF9OUl9VQVJUUz02CiBDT05GSUdfU0VSSUFMXzgyNTBfUlVOVElNRV9VQVJU
Uz02CiBDT05GSUdfU0VSSUFMXzgyNTBfRVhURU5ERUQ9eQogQ09ORklHX1NFUklBTF84MjUwX1NI
QVJFX0lSUT15CitDT05GSUdfU0VSSUFMXzgyNTBfRFc9eQogQ09ORklHX1NFUklBTF9PRl9QTEFU
Rk9STT15CiAjIENPTkZJR19IV19SQU5ET00gaXMgbm90IHNldAogIyBDT05GSUdfVVNCX1NVUFBP
UlQgaXMgbm90IHNldAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
