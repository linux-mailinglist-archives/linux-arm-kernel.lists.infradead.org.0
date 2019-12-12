Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08E11C450
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UB3vFttS8s8WrubOdjH4fKDgEgOF6gp2K4nfvtlgj8I=; b=pb6KVprhpRhGQG
	X+dJKXgvXf83UwOocceMOuBMMOmscvtuBJUpdNy6/kOUMVOpPRPh5hm4IIhRJNpNXPLZvRG7ap44x
	Dtw8jbnrvRSM+ttNcmHIvXEUy3cvfyfBShOrrzkoH5qTkDlsdNZBQV8y3GyjkZlNIqA9YOWuf3T3w
	eNTez7ZZYD2Eml4LzMCxaETKFcFRQQeQ/P4SJXW4kyiLRI0bQ4AacjrhZUAK2Ek3DBYbaRYUgo6GE
	p09Gz/IluExh+qvtxBjuslJZDRZvBr91uMcWBnTGgWi3g4RhyoUX9A/u9c4towter9hYg+ngDkOsR
	KheznTkeZR7MsoZxCoRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFQa-0008Px-U6; Thu, 12 Dec 2019 03:46:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKm-00018R-C7; Thu, 12 Dec 2019 03:40:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CDFB0ADE1;
 Thu, 12 Dec 2019 03:40:08 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 25/25] WIP: leds: tm1628: Prepare AiP1618 keys
Date: Thu, 12 Dec 2019 04:39:52 +0100
Message-Id: <20191212033952.5967-26-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194012_844740_232986B6 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RXh0ZW5kIGRlZmluaXRpb24gd2l0aCBrZXkgaW5wdXQgbGluZXMuCgpTaWduZWQtb2ZmLWJ5OiBB
bmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogZHJpdmVycy9sZWRzL2xlZHMt
dG0xNjI4LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2
MjguYwppbmRleCAyY2FmMWU2M2ZjOTAuLmUyODgwOWQ5YTcwMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9sZWRzL2xlZHMtdG0xNjI4LmMKKysrIGIvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMKQEAg
LTY5OSw2ICs2OTksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRtMTYyOF9pbmZvIGFpcDE2MThf
aW5mbyA9IHsKIAkuc2VnX21hc2sgPSBHRU5NQVNLKDE0LCAxMikgfCBHRU5NQVNLKDUsIDEpLAog
CS5tb2RlcyA9IGFpcDE2MThfbW9kZXMsCiAJLmRlZmF1bHRfbW9kZSA9IDMsCisJLmtfbWFzayA9
IEJJVCgyKSwKKwkua3NfbWFzayA9IEdFTk1BU0soNSwgMSksCiAJLnB3bV9tYXAgPSB0bTE2Mjhf
cHdtX21hcCwKIAkuZGVmYXVsdF9wd20gPSAwLAogfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
