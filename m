Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5A0470E0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 17:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puRyi9wEJpkq1LhKBp6nJpptGsnZ09r/w9NxZevIETc=; b=qHa3OI+y+u4xz1
	XX9+tRjVISYC3v7vFix5LsrkIt9MXDElsNe0tMYDzcoLG9tpG0KhBplAUaIJ4jYt/PTZ1gzOzQIGK
	NfP352NEtJUq6OOwVJJ/VRfYKCAsxqCTAEKf4z2BT7lvIxjCm0fp4eHskxwZ8ct04mKUCOljYGYjS
	DA3Kmgdak+u+/Fncx+2vE17uHyT3Ju8NrdYK40++41QFJ8Eu/CDs1g8w6Z5WNT6vkgX5Exo804s6R
	vEjjGVppAu7cfIEC0Edv5hCZ4ZFbYc+68f1nfYXCav18/SQuyByEO9lpv+30v0zj0xx/7HmbNWGiF
	FoYtTmCnEWm1T/eyPa8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAdy-00077e-Cx; Sat, 15 Jun 2019 15:31:03 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAdV-00076q-N0
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 15:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=3mO79wbTLM7Uk7ncpNncVYBV43dXaPlnMxaji8/9EsM=; 
 b=uun+0SHUmxVAzH5km2fpUoNYKDClZ7cOLvNRRhaSPZC8SBCBUSwJwSqfRB92fKihrK0V5jY6zy6k3v04Wgbm5UXkspUiUZ8jWbCznN5E2lv6LjuvQ7ZjlLqpYtXgMdsmoU5WEi/pip6NusoMgev29OiAuM+WeDKriY767jI8hSrmsQoWka3XMJVkAufgfkIQ7LoJL+1Gg264KmBAiSPZk3RSMvvYookH9icl+5KHaKrnssY+DEIIIEwUz6DioZkgX3JmsgKSS46/7mVs2Aer0jqMOFvpp7RoXrvvcV/xMChY1b54sO6FhYB+chHo+F7wZ8iE9ndguO7kb1INpDqDaQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54304
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hcAdS-00055W-Fp; Sat, 15 Jun 2019 17:30:30 +0200
Subject: Re: [PATCH v4 09/12] drm/atomic: Add a function to reset connector TV
 properties
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <da8097de4e52e677933707eddcf202ba89790876.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <bd088fee-ecca-fc7d-8f8a-766ac3e3ea7c@tronnes.org>
Date: Sat, 15 Jun 2019 17:30:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <da8097de4e52e677933707eddcf202ba89790876.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_083033_930491_5C449CBE 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBEdXJpbmcgdGhl
IGNvbm5lY3RvciByZXNldCwgaWYgdGhhdCBjb25uZWN0b3IgaGFzIGEgVFYgcHJvcGVydHksIGl0
IG5lZWRzCj4gdG8gYmUgcmVzZXQgdG8gdGhlIHZhbHVlIHByb3ZpZGVkIG9uIHRoZSBjb21tYW5k
IGxpbmUuCj4gCj4gUHJvdmlkZSBhIGhlbHBlciB0byBkbyB0aGF0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCgpUaGlz
IHBhdGNoIHVzZXMgZHJtX2NtZGxpbmVfbW9kZS0+dHZfbWFyZ2lucyBiZWZvcmUgaXQgaXMgYWRk
ZWQsIHNvIGl0Cm5lZWRzIHRvIGJlIG1vdmVkIGFmdGVyIHRoZSBwYXRjaCB0aGF0IGFkZHMgaXQu
CgpXaXRoIHRoYXQgZml4ZWQ6CgpSZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZA
dHJvbm5lcy5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
