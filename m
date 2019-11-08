Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06201F4DD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s0AOZk04o5VEYrRdkTgJ2XFY+Ix/HZGBIIDrOrt4juE=; b=bbGdZrrfVKP//y
	UyJ8P1FgsvlEwpJKn/ZC7hSvEWnArBMHxJg7i91+B9pYFCiLmCwy2y4u+1IEkKH/majTzEPStiiWM
	C/mb3vGBBI0Se3d2uFYpFSEIh0Gbva8Sln1Dhws+KRbn7KAkgGJYfDsfVWsyVLnkr+w6O58yxhEGD
	BaF00H38pMrOr81kdyE/iAk8UO6Uf7dqgr/LTqDEY9j6d0MG1BblEMPU4vHFCs6NDvlhrjm+QnnWO
	LRorxPLxwONzHOyrPn74XINw7bdAHJpCDqOzSIRNeJ+nD0AnJGmeqg06yO3bmrZzgbOd4+ZpIjlFA
	HvllbDqz9Z4q507fa73w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4ww-0007Oj-Eo; Fri, 08 Nov 2019 14:09:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w6-0006my-OY
 for linux-arm-kernel@bombadil.infradead.org; Fri, 08 Nov 2019 14:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ULyILKd5TZxVK7wOdeYrA3LJdeB5z7ocPS0XdbY1XEM=; b=ODJavFDXMcPH3XKNwCVeHXHQmZ
 85YxOhKVtnv3E6jzIUBeJMSMxJ/+L1BqAfAQH/F6vU1iaEVkam/eW4v2M3dDRfYjPutX4CD8pkOV5
 A80BTFoR5Yd9gQvxuCGxvOruskAcDArOZUI9Y/TxeVcLQASKAxgeJkz4RmuJA55aZMMJRK4upJsaz
 7ozwbJ+uesiT18OiyU6vo10cUh7O4RDpzasEjV4QbFnMXXkOFJWhsIBHb4rq80OVEduo5VojIQ7s0
 EDte/RiNewxOzIplA7oEPkYYRmdWoiXbdCxo1irrdcsIP9J0rPenARUZjXZAz/FkSJLSyQY7jX0z8
 XAXXbRCQ==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w4-00044s-9h
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:08:25 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 746E820005;
 Fri,  8 Nov 2019 14:07:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH v2 0/7] spi: zynq-qspi: Clarify and fix the chip selection
Date: Fri,  8 Nov 2019 15:07:37 +0100
Message-Id: <20191108140744.1734-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
cywKTWlxdcOobAoKQ2hhbmdlcyBzaW5jZSB2MToKKiBSZWJhc2VkIG9uIHRvcCBvZiB2NS40LXJj
NiBhbmQgZml4ZWQgYWxsIHRoZSBjb25mbGljdHMKICAobWlub3JzKS4gQ29tcGlsZSB0ZXN0ZWQg
b25seSAoYWN0dWFsIHRlc3RpbmcgZG9uZSBvbiBhIHY1LjEpLgoKTWlxdWVsIFJheW5hbCAoNyk6
CiAgc3BpOiB6eW5xLXFzcGk6IEFueXRoaW5nIGVsc2UgdGhhbiBDUzAgaXMgbm90IHN1cHBvcnRl
ZCB5ZXQKICBzcGk6IHp5bnEtcXNwaTogS2VlcCB0aGUgbmFtaW5nIGNvbnNpc3RlbnQgYWNyb3Nz
IHRoZSBkcml2ZXIKICBzcGk6IHp5bnEtcXNwaTogS2VlcCB0aGUgYml0ZmllbGRzIG5hbWluZyBj
b25zaXN0ZW50CiAgc3BpOiB6eW5xLXFzcGk6IEVuaGFuY2UgdGhlIExpbmVhciBDRkcgYml0IGRl
ZmluaXRpb25zCiAgc3BpOiB6eW5xLXFzcGk6IENsYXJpZnkgdGhlIHNlbGVjdCBjaGlwIGZ1bmN0
aW9uCiAgc3BpOiB6eW5xLXFzcGk6IERvIHRoZSBhY3R1YWwgaGFyZHdhcmUgaW5pdGlhbGl6YXRp
b24gbGF0ZXIgaW4gdGhlCiAgICBwcm9iZQogIHNwaTogenlucS1xc3BpOiBTdXBwb3J0IHR3byBj
aGlwIHNlbGVjdHMKCiBkcml2ZXJzL3NwaS9zcGktenlucS1xc3BpLmMgfCA4MyArKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9u
cygrKSwgMzMgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
