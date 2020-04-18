Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778561AEC6E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aw+QkUUFKr4DjPQ7hSt9WQa9FpgDrDFCmXJg617CpfE=; b=LyqQeWYhgjhpdk
	IiwcNtn3B/3RUMAGQt2b/Sbct6pz871ii/ePETozOqU9YR9y7LgOay4FviNbkvu7rEnlY5/d+6uuk
	YTo0fjFVHrlhoEcTRCxzDi3M6QAbIiHFqjs9bx0jAQr9eZa7TMCbNEInVK2/Un8eqT/n2ncwTiVjp
	tY7IKkgLTVP2X8WtPSBoaqv1Vs1W/wQrW4+SonL1fZLOOTT/v5QARfs6tMwoNY9jR+KOhSZyI8/Si
	PomRkz6pW2et6NGWEODvjb4hY+ZXfh/4RUX1gHRkwTQmbXrx8J+UiDh4Cwk4M9OmYOecX9XzQ/Liu
	1YNT7/76MgolkhRYxxZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmhh-0000CO-3L; Sat, 18 Apr 2020 12:36:13 +0000
Received: from smtp-outgoing.laposte.net ([160.92.124.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmhV-00007x-Py
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 12:36:04 +0000
Received: from outgoing-mail.laposte.net (localhost.localdomain [127.0.0.1])
 by mlpnf0101.laposte.net (SMTP Server) with ESMTP id 494C9W52BzzFpTy;
 Sat, 18 Apr 2020 14:35:43 +0200 (CEST)
X-mail-filterd: 0.4.0.2
X-mail-filterd: 0.4.0.2
X-lpn-spamrating: 36
X-lpn-spamlevel: not-spam
X-lpn-spamcause: OK,
 (-100)(0000)gggruggvucftvghtrhhoucdtuddrgeduhedrfeelgdehgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfntefrqffuvffgpdfqfgfvpdggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpeggihhntggvnhhtucfuthgvhhhlrocuoehvihhntggvnhhtrdhsthgvhhhlvgeslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehrrghsphgsvghrrhihphhirdhorhhgnecukfhppeekkedruddvuddrudegledrgeelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheprhhomhhurghlugdrsggvrhhgvghrihgvpdhinhgvthepkeekrdduvddurddugeelrdegledpmhgrihhlfhhrohhmpehvihhntggvnhhtrdhsthgvhhhlvgeslhgrphhoshhtvgdrnhgvthdprhgtphhtthhopegstghmqdhkvghrnhgvlhdqfhgvvggusggrtghkqdhlihhsthessghrohgruggtohhmrdgtohhmpdhrtghpthhtoheprhhjuhhisegsrhhorggutghomhdrtghomhdprhgtphhtthhopehssghrrghnuggvnhessghrohgruggtohhmrdgtohhmpdhrtghpthhtohepfhdrfhgrihhnvghllhhisehgmhgrihhlrdgtohhmpdhrtghpthhtohepshhtvghfrghnrdifrghhrhgvnhesihdvshgvrdgtohhmpdhrtghpthhto
 heprhhosghhodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepvhhinhgtvghnthdrshhtvghhlhgvsehlrghpohhsthgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheplhhinhhugidqrhhpihdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepnhhsrggvnhiijhhulhhivghnnhgvsehsuhhsvgdruggvpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-lpn-mailing: LEGIT
Received: from romuald.bergerie (unknown [88.121.149.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mlpnf0101.laposte.net (SMTP Server) with ESMTPSA id 494C9W2c7bzFpTw;
 Sat, 18 Apr 2020 14:35:43 +0200 (CEST)
Received: from radicelle.bergerie (radicelle.bergerie [192.168.124.12])
 by romuald.bergerie (Postfix) with ESMTPS id 1329E381F5A4;
 Sat, 18 Apr 2020 14:35:43 +0200 (CEST)
Received: from vincent by radicelle.bergerie with local (Exim 4.93)
 (envelope-from <vincent@radicelle.bergerie>)
 id 1jPmhC-0001fl-Oi; Sat, 18 Apr 2020 14:35:42 +0200
From: =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>
To: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] ARM: dts: bcm2835-rpi-zero-w: Fix led polarity
Date: Sat, 18 Apr 2020 14:35:22 +0200
Message-Id: <20200418123522.6390-1-vincent.stehle@laposte.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=lpn-wlmd;
 t=1587213346; bh=XWpoOgwwiaPGH2pwzpgAmnxIC35KGk78zHkgFD/F910=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=q08HAg/YkCNLBaYGoLcZ0Yb1AdR1aCghdilcqYBNc8mQMHP0agMh+FMzp9yjWsgb1pPOwKYSjV9SJLPHQ3l5zWhHTTt6GZE9nP89wsrnxBlYOfbqFsnMk0Qr8YPXaeS9JS7KZf1nj7X9/P+m/9+zNXjy0ZzOYoXm91w+CPZdVtcBTUVoe4GnAKE1vJCLZLdMCVAgGSvblRAFqmTzuUGwNkOmMWOQQ3LsG/LKs8CIJCJZAxtQCPhPVlXjwFiITV/8Urv5Dq4vAVIiGfr9WFwr8t12R3VJweawyQGMzIILTdPZ9VSlI5WJ3xF3hIHyO73p2xxNg+OXUXq/xDK7OjBxZQ==;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_053602_148606_A3A9E947 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vincent.stehle[at]laposte.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHN0YXR1cyAiQUNUIiBsZWQgb24gdGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcgaXMgb24gd2hl
biBHUElPIDQ3IGlzIGxvdy4KClRoaXMgaGFzIGJlZW4gdmVyaWZpZWQgb24gYSBib2FyZCBhbmQg
c29tZXdoYXQgY29uZmlybWVkIGJ5IGJvdGggdGhlIEdQSU8KbmFtZSAoIlNUQVRVU19MRURfTiIp
IGFuZCB0aGUgcmVkdWNlZCBzY2hlbWF0aWNzIFsxXS4KClsxXTogaHR0cHM6Ly93d3cucmFzcGJl
cnJ5cGkub3JnL2RvY3VtZW50YXRpb24vaGFyZHdhcmUvcmFzcGJlcnJ5cGkvc2NoZW1hdGljcy9y
cGlfU0NIX1plcm9XXzFwMV9yZWR1Y2VkLnBkZgoKRml4ZXM6IDJjN2MwNDBjNzNlOSAoIkFSTTog
ZHRzOiBiY20yODM1OiBBZGQgUmFzcGJlcnJ5IFBpIFplcm8gVyIpClNpZ25lZC1vZmYtYnk6IFZp
bmNlbnQgU3RlaGzDqSA8dmluY2VudC5zdGVobGVAbGFwb3N0ZS5uZXQ+CkNjOiBTdGVmYW4gV2Fo
cmVuIDxzdGVmYW4ud2FocmVuQGkyc2UuY29tPgpDYzogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWlu
ZWxsaUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNS1ycGktemVyby13
LmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTI4MzUtcnBpLXplcm8tdy5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9iY20yODM1LXJwaS16ZXJvLXcuZHRzCmluZGV4IDRjM2Y2MDZl
NWI4ZDguLmY2NTQ0OGMwMWUzMTcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTI4
MzUtcnBpLXplcm8tdy5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNS1ycGktemVy
by13LmR0cwpAQCAtMjQsNyArMjQsNyBAQCBjaG9zZW4gewogCiAJbGVkcyB7CiAJCWFjdCB7Ci0J
CQlncGlvcyA9IDwmZ3BpbyA0NyBHUElPX0FDVElWRV9ISUdIPjsKKwkJCWdwaW9zID0gPCZncGlv
IDQ3IEdQSU9fQUNUSVZFX0xPVz47CiAJCX07CiAJfTsKIAotLSAKMi4yNS4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
