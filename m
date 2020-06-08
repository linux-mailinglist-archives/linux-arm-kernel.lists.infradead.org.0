Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D201F25E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKvh0wXuZFhKnR6gZzajhsKXFByVLAK04WNAdLPMLi0=; b=rh1o4icEfKUK80
	p9QAnEbHIEQ6KEyJMDHyy6nh1TqtiGJhFPogDgwq2TGWPuQmRqx8kDM++gf+7A/VjdG25Q9Fm0RI9
	If1vvSMGPXQWNOW4MWS0upNtEIz+Nmo0O8V3+J1za9qgNIGXpXGDQjFoGOhM+0W5MPdY03YhWNSmi
	UgAVcL3aGx6ehUQ3Hby0H6mYKPOdbjoAWVFoh4VO5Zj66Vtk7vZiAbVYsnSGJk6XPbH7lEvCDFL+Q
	LUZirypFrrQve4zW4+wvhs5tY7QgCugodiEQQnYuYAdqMteo7RZiEAG0bZSOhsipsHwi0eyCiNeXR
	ZYKxh7zz4DhjVi58hByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRJo-0004kg-Bw; Mon, 08 Jun 2020 23:36:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR2B-0004x2-UU; Mon, 08 Jun 2020 23:18:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0238020842;
 Mon,  8 Jun 2020 23:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658307;
 bh=8b9zH6eVMXjgPhVYw/rObHNDZocC7Ajg5i92YTFjfuc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CcylEYTRcdWeiuL7S8ML0+RwNKH96IcGZZLMoOKnXmFPJ0cO3knduSE2E8dnBpG10
 WYI5S6DZOy0ol02zQvGCB2qOrZRaoSfTv1IW3z0LBuXWp9qXHl5WMHkye4/Xl1BFLw
 ij57yVH4Oqd4qqRj9w7iGcS0jrPu3uNKQYCvxBvg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 308/606] ARM: dts: bcm2835-rpi-zero-w: Fix led
 polarity
Date: Mon,  8 Jun 2020 19:07:13 -0400
Message-Id: <20200608231211.3363633-308-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161828_121968_260D482B 
X-CRM114-Status: GOOD (  12.38  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVmluY2VudCBTdGVobMOpIDx2aW5jZW50LnN0ZWhsZUBsYXBvc3RlLm5ldD4KClsgVXBz
dHJlYW0gY29tbWl0IDU4YmI5MGFiNDE1NTYyZWVkZWRiOTMyNDU1MDQ2OTI0ZTY1ZGYzNDIgXQoK
VGhlIHN0YXR1cyAiQUNUIiBsZWQgb24gdGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcgaXMgb24gd2hl
biBHUElPIDQ3IGlzIGxvdy4KClRoaXMgaGFzIGJlZW4gdmVyaWZpZWQgb24gYSBib2FyZCBhbmQg
c29tZXdoYXQgY29uZmlybWVkIGJ5IGJvdGggdGhlIEdQSU8KbmFtZSAoIlNUQVRVU19MRURfTiIp
IGFuZCB0aGUgcmVkdWNlZCBzY2hlbWF0aWNzIFsxXS4KClsxXTogaHR0cHM6Ly93d3cucmFzcGJl
cnJ5cGkub3JnL2RvY3VtZW50YXRpb24vaGFyZHdhcmUvcmFzcGJlcnJ5cGkvc2NoZW1hdGljcy9y
cGlfU0NIX1plcm9XXzFwMV9yZWR1Y2VkLnBkZgoKRml4ZXM6IDJjN2MwNDBjNzNlOSAoIkFSTTog
ZHRzOiBiY20yODM1OiBBZGQgUmFzcGJlcnJ5IFBpIFplcm8gVyIpClNpZ25lZC1vZmYtYnk6IFZp
bmNlbnQgU3RlaGzDqSA8dmluY2VudC5zdGVobGVAbGFwb3N0ZS5uZXQ+CkNjOiBTdGVmYW4gV2Fo
cmVuIDxzdGVmYW4ud2FocmVuQGkyc2UuY29tPgpDYzogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWlu
ZWxsaUBnbWFpbC5jb20+ClRlc3RlZC1ieTogU3RlZmFuIFdhaHJlbiA8c3RlZmFuLndhaHJlbkBp
MnNlLmNvbT4KU2lnbmVkLW9mZi1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0t
CiBhcmNoL2FybS9ib290L2R0cy9iY20yODM1LXJwaS16ZXJvLXcuZHRzIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvYmNtMjgzNS1ycGktemVyby13LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2JjbTI4MzUtcnBpLXplcm8tdy5kdHMKaW5kZXggNGMzZjYwNmU1YjhkLi5mNjU0NDhjMDFlMzEg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTI4MzUtcnBpLXplcm8tdy5kdHMKKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNS1ycGktemVyby13LmR0cwpAQCAtMjQsNyArMjQs
NyBAQCBjaG9zZW4gewogCiAJbGVkcyB7CiAJCWFjdCB7Ci0JCQlncGlvcyA9IDwmZ3BpbyA0NyBH
UElPX0FDVElWRV9ISUdIPjsKKwkJCWdwaW9zID0gPCZncGlvIDQ3IEdQSU9fQUNUSVZFX0xPVz47
CiAJCX07CiAJfTsKIAotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
