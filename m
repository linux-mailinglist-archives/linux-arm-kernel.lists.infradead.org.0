Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE3B147634
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daM5Kh5gBlGlL/me+iEOGsq8YRVpnVHrb0zqGKUf56A=; b=HjZcTWnKNTHraE
	Ky2xve3mSNVeeGsBS1qtRjlsaZslB69LG9/yxDToq205uBUeSffCJkdSKTZK1qWA/KaooSwPEVHWR
	opGch3BwhX3SyZqVSY27d1R7EGpYO90aDp7+cz8U9qHHgoo7EaZv61fkl9lRuJZjIe3ZBtQVDGHIF
	H3Ihw5RHEpOcDVvinS7f/rSIsV/KDTmi7hymvhmCSBVNRqsETGtYKZOkVliTP3Xz84BRq83YiJwj1
	qpIQ8MxQmMaU3Uk41/EiECChx6U636L8zqN0L+6WbA5SqtC8kgMz5sS7u+n5W9hsWa2MfmXSTvvV2
	WXvqZDUs3gNLxVKFBmFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuncM-0003VF-HC; Fri, 24 Jan 2020 01:18:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunbq-00039b-4l
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:18:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A409322464;
 Fri, 24 Jan 2020 01:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828685;
 bh=Mwbos0zWY2rX9HbtysjU/n4dNOCI04QklGPwEbcFCp4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wG+3tRAwpXoF0/4lmmfmYFyGCIPJ1IFG7R3GM52LDRZEnY2eV/SP9rdP9NymCXxJJ
 R0ykqekTTLNuM1zn+YYIiK9o0QOsuk1zZZlK9/5asbbjkYH+yNjvVDYGq++LC9tIQQ
 BTVWJB8a7RJKq6K5iP87ZbWq0Bs4Xz92UNBIppPE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 3/5] ARM: config: aspeed-g5: Enable 8250_DW quirks
Date: Thu, 23 Jan 2020 20:17:59 -0500
Message-Id: <20200124011801.18712-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011801.18712-1-sashal@kernel.org>
References: <20200124011801.18712-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171806_336059_59206F77 
X-CRM114-Status: GOOD (  10.00  )
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
YXNwZWVkX2c1X2RlZmNvbmZpZwppbmRleCBjMGFkN2I4MjA4NmJkLi5jYjIzZjhhZGUzZTJiIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKKysrIGIvYXJj
aC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCkBAIC0xMTAsNiArMTEwLDcgQEAgQ09O
RklHX1NFUklBTF84MjUwX1JVTlRJTUVfVUFSVFM9NgogQ09ORklHX1NFUklBTF84MjUwX0VYVEVO
REVEPXkKIENPTkZJR19TRVJJQUxfODI1MF9BU1BFRURfVlVBUlQ9eQogQ09ORklHX1NFUklBTF84
MjUwX1NIQVJFX0lSUT15CitDT05GSUdfU0VSSUFMXzgyNTBfRFc9eQogQ09ORklHX1NFUklBTF9P
Rl9QTEFURk9STT15CiBDT05GSUdfQVNQRUVEX0JUX0lQTUlfQk1DPXkKICMgQ09ORklHX0hXX1JB
TkRPTSBpcyBub3Qgc2V0Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
