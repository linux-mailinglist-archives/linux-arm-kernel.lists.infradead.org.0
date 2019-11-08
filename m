Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060CAF4531
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5HqThZjwO5XmyuM31HNjpl5ECZGaWYDVrQb/VOgaizA=; b=iIfl19HIT0yqae
	9g/H4rPgxG+ACzrClGoLFjjJB1kduYAzbqQi5gMs5royQb8t13WJ6qJGdSuCZcXWYAJ4Rl86UVqni
	k3hqQhIbKnsrIglHLBeUmj9VVX0GBb8LhZrvdfFJRFd0VXbrKHW2Yms2+hTfav5JM/J6ePmamKTZD
	kASle1yag0wUt97FaVPL/kWNTOS6Sdjb9m2gNali/HSH5tboRLPDw7eJFE3aPizZxTGDw+10VA645
	fBiGAp+Mv1TK/LaW0WDHnXjl4Z+4bMYMYyGbn6lU22lMTggFe4P6xexsj5WXw+tiprY9hEAoKnj29
	Fi00f6LWIRrVIPMra/Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1zV-0005IV-Jz; Fri, 08 Nov 2019 10:59:45 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1zJ-0005Fi-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:59:35 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B4E54E000F;
 Fri,  8 Nov 2019 10:59:23 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH 0/7] spi: zynq-qspi: Clarify and fix the chip selection
Date: Fri,  8 Nov 2019 11:59:13 +0100
Message-Id: <20191108105920.19014-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025933_881099_CE698FFC 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpXaGlsZSB3b3JraW5nIG9uIFNQSS1OT1Igc3VwcG9ydCBJIGZpZ3VyZWQgdGhlIGNo
aXAgc2VsZWN0IGhhbmRsaW5nIG9mCnRoZSBaeW5xIDcwMDAgUVNQSSBkcml2ZXIgd2FzIG5vdCBi
ZWhhdmluZyBhcyBJIHdvdWxkIGhhdmUKZXhwZWN0ZWQuIFdoaWxlIGNoZWtpbmcgb3V0IHdoYXQg
d2FzIHdyb25nIEkgZGVjaWRlZCB0byBjbGFyaWZ5IHRoaW5ncwphcm91bmQgc28gSSBkaWQgYSBi
aXQgb2YgY2xlYW5pbmcuIFRoZSBzdGVwLWJ5LXN0ZXAgY2hhbmdlcyBhcmUgdGhlCnJlYXNvbiBm
b3IgcGF0Y2hlcyBbMS02XS4gVGhpcyB3YXksIHRoZSBsYXN0IHBhdGNoIGFjdHVhbGx5IGFkZGlu
ZwpzdXBwb3J0IGZvciBib3RoIENTIGlzIG11Y2ggbW9yZSB1bmRlcnN0YW5kYWJsZS4KClRoYW5r
cywKTWlxdcOobAoKTWlxdWVsIFJheW5hbCAoNyk6CiAgc3BpOiB6eW5xLXFzcGk6IEFueXRoaW5n
IGVsc2UgdGhhbiBDUzAgaXMgbm90IHN1cHBvcnRlZCB5ZXQKICBzcGk6IHp5bnEtcXNwaTogS2Vl
cCB0aGUgbmFtaW5nIGNvbnNpc3RlbnQgYWNyb3NzIHRoZSBkcml2ZXIKICBzcGk6IHp5bnEtcXNw
aTogS2VlcCB0aGUgYml0ZmllbGRzIG5hbWluZyBjb25zaXN0ZW50CiAgc3BpOiB6eW5xLXFzcGk6
IEVuaGFuY2UgdGhlIExpbmVhciBDRkcgYml0IGRlZmluaXRpb25zCiAgc3BpOiB6eW5xLXFzcGk6
IENsYXJpZnkgdGhlIHNlbGVjdCBjaGlwIGZ1bmN0aW9uCiAgc3BpOiB6eW5xLXFzcGk6IERvIHRo
ZSBhY3R1YWwgaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24gbGF0ZXIgaW4gdGhlCiAgICBwcm9iZQog
IHNwaTogenlucS1xc3BpOiBTdXBwb3J0IHR3byBjaGlwIHNlbGVjdHMKCiBkcml2ZXJzL3NwaS9z
cGktenlucS1xc3BpLmMgfCA4NCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCgotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
