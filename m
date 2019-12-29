Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF3412CA74
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 19:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROG3IDze973n0NgkiG2NnDos3kqJ7r5SeWp6MhZgcw0=; b=azYmeSUCkyJK5j
	S2ef7q/yOPfgc6/JUaxh7pJsImazJSMWCSUJRUQoVP4ASycgXp9Nt3hxcV1wcYZ84sI5MX5mLSZJs
	7wyoPqj2RTbp1E84V3ZD99gNsczPJNFpNS2t+Rb7QPB4wmM16kYwvZpL4Bl88KzbydIz7dpY7hlLw
	+rDE6LJSrdNM+HT2bLdVSs86JETsIMJgd6/sHllNfzebPXMe+Tq345Cq1g8nhWqIZGOhASDo4H6Lm
	QjkOawbZDtrj0w78s9Nx9H9agF4fMAMwWXu9/RXHSLIpoak4VDfLVblEJJ9GK8s3GgP9Apmkpm8cx
	vsVYefsYKAUS1CtIBH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ildQo-0001Tk-MN; Sun, 29 Dec 2019 18:36:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ildQP-0001Li-Q7; Sun, 29 Dec 2019 18:36:27 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D70D2206DB;
 Sun, 29 Dec 2019 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577644584;
 bh=pSG4f8rUYFE6DclwpZXNN72lETzu7ybG9jDiwZbJeJ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2wPksXbndVe8M28WmimRsuIFr0SfJlJCss8o2cHMbfGzL61HnQSeHg62gQjiWAW6a
 0gcj65IjrfLLM1RCBB/UQHNGTjlW9XvyT3lNta5AP6iVBXckD6STSRV2EvVWbDd/EX
 DgREFWPI8x3I3QW7rnmzCD+xR6Gsp+T7lUga4S/E=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] mtd: onenand: samsung: Fix printing format for size_t on
 64-bit
Date: Sun, 29 Dec 2019 19:36:11 +0100
Message-Id: <20191229183612.22133-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229183612.22133-1-krzk@kernel.org>
References: <20191229183612.22133-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_103625_869184_2B93793B 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJpbnQgc2l6ZV90IGFzICV6dSB0byBmaXggLVdmb3JtYXQgd2FybmluZ3Mgd2hlbiBjb21waWxp
bmcgb24gNjQtYml0CnBsYXRmb3JtIChlLmcuIHdpdGggQ09NUElMRV9URVNUKToKCiAgICBkcml2
ZXJzL210ZC9uYW5kL29uZW5hbmQvc2Ftc3VuZ19tdGQuYzogSW4gZnVuY3Rpb24g4oCYczVwYzEx
MF9yZWFkX2J1ZmZlcnJhbeKAmToKICAgIGRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5n
X210ZC5jOjY2MToxNjogd2FybmluZzoKICAgICAgICBmb3JtYXQg4oCYJWTigJkgZXhwZWN0cyBh
cmd1bWVudCBvZiB0eXBlIOKAmGludOKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCYc2l6
ZV90IHtha2EgbG9uZyB1bnNpZ25lZCBpbnR94oCZIFstV2Zvcm1hdD1dCiAgICAgICBkZXZfZXJy
KGRldiwgIkNvdWxkbid0IG1hcCBhICVkIGJ5dGUgYnVmZmVyIGZvciBETUFcbiIsIGNvdW50KTsK
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0t
CiBkcml2ZXJzL210ZC9uYW5kL29uZW5hbmQvc2Ftc3VuZ19tdGQuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5nX210ZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9vbmVu
YW5kL3NhbXN1bmdfbXRkLmMKaW5kZXggNzA1MDFkMDMxZGI2Li40YTc4YzBhZWQ2ZGQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5nX210ZC5jCisrKyBiL2RyaXZl
cnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5nX210ZC5jCkBAIC02NTgsNyArNjU4LDcgQEAgc3Rh
dGljIGludCBzNXBjMTEwX3JlYWRfYnVmZmVycmFtKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBpbnQg
YXJlYSwKIAkJZG1hX2RzdCA9IGRtYV9tYXBfc2luZ2xlKGRldiwgYnVmLCBjb3VudCwgRE1BX0ZS
T01fREVWSUNFKTsKIAl9CiAJaWYgKGRtYV9tYXBwaW5nX2Vycm9yKGRldiwgZG1hX2RzdCkpIHsK
LQkJZGV2X2VycihkZXYsICJDb3VsZG4ndCBtYXAgYSAlZCBieXRlIGJ1ZmZlciBmb3IgRE1BXG4i
LCBjb3VudCk7CisJCWRldl9lcnIoZGV2LCAiQ291bGRuJ3QgbWFwIGEgJXp1IGJ5dGUgYnVmZmVy
IGZvciBETUFcbiIsIGNvdW50KTsKIAkJZ290byBub3JtYWw7CiAJfQogCWVyciA9IHM1cGMxMTBf
ZG1hX29wcyhkbWFfZHN0LCBkbWFfc3JjLAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
