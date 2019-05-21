Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A732E251E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T9LzUL2B0XxEJQMXVnyEkJldJLxGp95kpDqiiIaDQMg=; b=GPJBfoEMgMAsDs
	FLbftze9qeDdS4WoK38BiIc+WPdK2hLqsfQe8N/yQNHK2CHwl3IQzUTVKddkCWY7H++LtXYaBCS0v
	04DxoRP+WGYd9VXLhI8udGjq23u8ha/7yqrabHG5ugsqwDpwY54qxp609leWWk1CbzgRsm6D/4t8t
	KkSX5FqdZRVZjiiVRiG1274aGNsq7iTqw4TBNhZZ7VVBx+DNMJcNC566qF22pPBrhLJICKduizwgd
	1dRC+6hUu9YfbHt92dQxayTfkAvN9OxDWaDxT9RiRJDwCabZ+fBe920pQxUhKITGbbKfNkPfEJnu+
	PiHvCJP0qCrSc/tBd2lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5hv-0005h4-7c; Tue, 21 May 2019 14:25:35 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5hl-0005Y3-K4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:25:29 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0D0A1FF815;
 Tue, 21 May 2019 14:25:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH resend 0/2] Marvell A7k/A8k thermal throttling
Date: Tue, 21 May 2019 16:25:02 +0200
Message-Id: <20190521142504.31558-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_072525_957548_B3F12464 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyB3b3JrcyBvbiB0b3Agb2YgR3JlZ29yeSdzIHNlcmllcyBhZGRp
bmcgYm90aCBDUFVmcmVxIChhbHJlYWR5Cm1lcmdlZCkgYW5kIGEgc3VpdGFibGUgQVA4MDYgY2xv
Y2sgZHJpdmVyLiBUaGVzZSB0d28gcGF0Y2hlcyBjYW4gZmx5CmFzLWlzIGFuZCBkbyBub3QgZGVw
ZW5kIG9uIEdyZWdvcnkncyB3b3JrIHRvIGFwcGx5IGFuZCBzaG91bGQgcHJvYmFibHkKbWVyZ2Vk
IGluZGVwZW5kZW50bHkuCgpXaXRoIGhpcyBwYXRjaGVzLCBhbGwgdGhlIHBpZWNlcyB3aGVyZSBh
dmFpbGFibGUgdG8gZW5hYmxlIHRoZXJtYWwKdGhyb3R0bGluZyBvbiB0aGUgQVA4MDYgZW1iZWRk
ZWQgaW4gTWFydmVsbCBBcm1hZGEgN2svOGsgU29Dcy4gVGhpcyBpcwpqdXN0IHRoZSBnbHVlIHRv
IG1ha2UgaXQgYWN0dWFsbHkgd29yay4KClBhdGNoIDEgY2hhbmdlcyB0aGUgY29yZSBudW1iZXJp
bmcgaW4gdGhlIHRoZXJtYWwtem9uZSBub2RlIHRvIGJlIGluCnN5bmMgd2l0aCB0aGUgQ1BVIG51
bWJlcmluZyBpbiB0aGUgRFQgKGZyb20gMCB0byAzIGluc3RlYWQgb2YgZnJvbSAxCnRvIDQpLiBQ
YXRjaCAyIGFkZHMgdHJpcCBwb2ludHMgYW5kIGNvb2xpbmcgbWFwcyB0byBhY3R1YWxseSBlbmFi
bGUKdGhlIGZlYXR1cmUuCgpUZXN0ZWQgd2l0aCBhbiBBcm1hZGEgN2sgREIuCgpUaGFua3MsCk1p
cXXDqGwKCk1pcXVlbCBSYXluYWwgKDIpOgogIGFybTY0OiBkdHM6IG1hcnZlbGw6IENoYW5nZSBj
b3JlIG51bWJlcmluZyBpbiBBUDgwNiB0aGVybWFsLW5vZGUKICBhcm02NDogZHRzOiBtYXJ2ZWxs
OiBFbmFibGUgQVA4MDYgdGhlcm1hbCB0aHJvdHRsaW5nIHdpdGggQ1BVZnJlcQoKIC4uLi9ib290
L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNi1kdWFsLmR0c2kgICB8ICAgMiArCiAuLi4vYm9vdC9k
dHMvbWFydmVsbC9hcm1hZGEtYXA4MDYtcXVhZC5kdHNpICAgfCAgIDUgKwogYXJjaC9hcm02NC9i
b290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNi5kdHNpIHwgMTEwICsrKysrKysrKysrKysrKy0t
LQogMyBmaWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgot
LSAKMi4xOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
