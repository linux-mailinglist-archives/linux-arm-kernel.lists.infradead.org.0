Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6BA12B722
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:47:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIv5/xfhqz8xcGVrXu8mkNVn/N4nmmUa1tuMLKbb3OM=; b=j94OzrRGUY8RYb
	T2bwyiX+Yh/8Wxtjok745P5JYk+Pr+Zwur4EdLEFk78FxycxNjg/THJUrINxFY8ktKQbiNe2Q07LF
	Y70HrgDMIXSvZ8HznRsyNdAchwM4RizEbhV1ygs1Zbj3jBsByOtA1kVSV6aOFuskrWB+P6YmUb4Dh
	d65BloDGQqPW6qS2y9xjEADFzIi7WmnlcerHyezN3TKg19Yvwene6J/zHl5EYBCBPaMyIvEKljmfR
	94LSE7pSbO17QfKCgCVcjXJAMDtljQZXAuL0FKsesM483xyrANtw/5Zm6Cr0nBLWCE67kG+suX+IX
	GiGXAVNLEiowBxz9n4zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikthy-0005Cg-1f; Fri, 27 Dec 2019 17:47:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktfK-0001qf-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:44:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D246206F4;
 Fri, 27 Dec 2019 17:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468686;
 bh=7O06fsqhjkB+bXQLYcomHu5IzcG2iatiptgUEdZPqac=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NFXAaFnXmYYYdIGSqdTUa3yw1u1aeKiutvlTkjcYhjpxo9S7onjMg6L2C9+XARIfN
 ZHyk+HnPRuiRhW6lcqc3gj4PSqI9b6QBOHKDNOkhe3tKrxXvKeaQxJYd294xzk5mfF
 lJLrHQpWlMS2kuvTgXcj+SAsAxj2G4RbiuiM/bT0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 44/84] ARM: shmobile: defconfig: Restore debugfs
 support
Date: Fri, 27 Dec 2019 12:43:12 -0500
Message-Id: <20191227174352.6264-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174352.6264-1-sashal@kernel.org>
References: <20191227174352.6264-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094446_804418_417A20B6 
X-CRM114-Status: GOOD (  11.43  )
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
Y29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9zaG1vYmlsZV9kZWZjb25maWcKaW5kZXggZjhmYWYz
NzI5NDY0Li5hMGU0ODdlOTVkNjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3Mvc2htb2Jp
bGVfZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtL2NvbmZpZ3Mvc2htb2JpbGVfZGVmY29uZmlnCkBA
IC0yMTEsNSArMjExLDYgQEAgQ09ORklHX05MU19JU084ODU5XzE9eQogQ09ORklHX1BSSU5US19U
SU1FPXkKICMgQ09ORklHX0VOQUJMRV9XQVJOX0RFUFJFQ0FURUQgaXMgbm90IHNldAogIyBDT05G
SUdfRU5BQkxFX01VU1RfQ0hFQ0sgaXMgbm90IHNldAorQ09ORklHX0RFQlVHX0ZTPXkKIENPTkZJ
R19ERUJVR19LRVJORUw9eQogIyBDT05GSUdfQVJNX1VOV0lORCBpcyBub3Qgc2V0Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
