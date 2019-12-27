Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F4712B6C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njA3AYckzNVVTEm5Cg7CaiQs7TnTYP4QemB54naR8Qk=; b=U2mKOiDIHrUvbs
	nI9GLcHw8ftSKoasm6sXS90XkoWdW+3uf+8e5+KlH0ijaqVuyhdYnwcIvA1z6dPiJrqI3rISyNCdO
	bLw6TAdAzT9NIppEt5wlvJzYYdc/iPm0g+Osiv/0WFaK4zP/4yxUbcIIe01EeCjIb+gMQJ9Wg9+tl
	8SkxtcYwPDaFtNB1qWdGkeS/LulHZ3ywdiE3TvAIfitnrLJ/D8JBdeilhTrUiY08yO5ZIv9a8WSzi
	5GQ9eLNeOWgD7vQyqsZygPMMUKPuq0LhICIloXe93i0FKq8jyjc9ZxXv91CkWHwbewqoqUsRhIdS9
	4iKsxzcZJ7iwLWTT75+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktfp-00020T-Bm; Fri, 27 Dec 2019 17:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktdU-0000BR-Nl
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:42:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 022B522525;
 Fri, 27 Dec 2019 17:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468571;
 bh=WfW8d4aeEG0t7FRFjhEz85O0YvSM8OOhmFuRuzlY88k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g03klbOLQc3tszFW5V3xUcicWztX0Kwm1Jm9Y9PmsDI4XqPruFvO4+hcLVfEpEIFR
 OfUPBa2uzVBpwDZEndfBaE1JFIJPKRk5rh+lX4KzRh7THZ4NcyndhkmAJmDPpkuJ+8
 m6Tm8vDJGvXPCwliVC8vFFX29eXsJa0+rwzGAg/U=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 096/187] ARM: shmobile: defconfig: Restore debugfs
 support
Date: Fri, 27 Dec 2019 12:39:24 -0500
Message-Id: <20191227174055.4923-96-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094252_819413_211BA5CC 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, linux-renesas-soc@vger.kernel.org,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KClsgVXBz
dHJlYW0gY29tbWl0IGZhMmNkYjE3NjJkMTVmNzAxYjgzZWZhNjBiMDRmMGQwNGU3MWJmODkgXQoK
U2luY2UgY29tbWl0IDBlNGE0NTlmNTZjMzJkM2UgKCJ0cmFjaW5nOiBSZW1vdmUgdW5uZWNlc3Nh
cnkgREVCVUdfRlMKZGVwZW5kZW5jeSIpLCBDT05GSUdfREVCVUdfRlMgaXMgbm8gbG9uZ2VyIGF1
dG8tZW5hYmxlZC4gIFRoaXMgYnJlYWtzCmJvb3RpbmcgRGViaWFuIDksIGFzIHN5c3RlbWQgbmVl
ZHMgZGVidWdmczoKCiAgICBbRkFJTEVEXSBGYWlsZWQgdG8gbW91bnQgL3N5cy9rZXJuZWwvZGVi
dWcuCiAgICBTZWUgJ3N5c3RlbWN0bCBzdGF0dXMgc3lzLWtlcm5lbC1kZWJ1Zy5tb3VudCcgZm9y
IGRldGFpbHMuCiAgICBbREVQRU5EXSBEZXBlbmRlbmN5IGZhaWxlZCBmb3IgTG9jYWwgRmlsZSBT
eXN0ZW1zLgogICAgLi4uCiAgICBZb3UgYXJlIGluIGVtZXJnR2l2ZSByb290IHBhc3N3b3JkIGZv
ciBtYWludGVuYW5jZQogICAgKG9yIHByZXNzIENvbnRyb2wtRCB0byBjb250aW51ZSk6CgpGaXgg
dGhpcyBieSBlbmFibGluZyBDT05GSUdfREVCVUdfRlMgZXhwbGljaXRseS4KClNlZSBhbHNvIGNv
bW1pdCAxODk3NzAwOGY0NGM2NmJkICgiQVJNOiBtdWx0aV92N19kZWZjb25maWc6IFJlc3RvcmUK
ZGVidWdmcyBzdXBwb3J0IikuCgpTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpSZXZpZXdlZC1ieTogTmlrbGFzIFPDtmRlcmx1bmQgPG5p
a2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Ckxpbms6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAxOTEyMDkxMDEzMjcuMjY1NzEtMS1nZWVydCtyZW5lc2FzQGdsaWRlci5i
ZQpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogYXJj
aC9hcm0vY29uZmlncy9zaG1vYmlsZV9kZWZjb25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZpZ3Mvc2htb2JpbGVfZGVm
Y29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9zaG1vYmlsZV9kZWZjb25maWcKaW5kZXggYzZjNzAz
NTUxNDFjLi43ZTdiNjc4YWUxNTMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3Mvc2htb2Jp
bGVfZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtL2NvbmZpZ3Mvc2htb2JpbGVfZGVmY29uZmlnCkBA
IC0yMTUsNCArMjE1LDUgQEAgQ09ORklHX0RNQV9DTUE9eQogQ09ORklHX0NNQV9TSVpFX01CWVRF
Uz02NAogQ09ORklHX1BSSU5US19USU1FPXkKICMgQ09ORklHX0VOQUJMRV9NVVNUX0NIRUNLIGlz
IG5vdCBzZXQKK0NPTkZJR19ERUJVR19GUz15CiBDT05GSUdfREVCVUdfS0VSTkVMPXkKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
