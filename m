Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A13411C405
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MlXwZaEuxco7UchZF+I01eh/MZwl3tn2Ehxc3+/JfM=; b=fUmXet3JdEKQ/X
	VAHyIa9MkYHOUjSoSqJmj5K9P+NiDSd9s7KHegjtZwP7+lXvckZcbOuf1Ce703Y6mJaa2Kg5G3g3E
	ftm4YKSKhCpibhwCEleN3sZOeVkQEUy+MEd3hx+eI/O/hF48qA20vQweK56nOlZDqvyRNT2wau163
	plj9CC31crDlB1/7FHL3zAKYivyUEXGhNoi2uYFSoND3sIqWmB8UyiJFS6yDyKn+FXiU6End/aK3G
	n7nv4+0r0HoleuN89VrUevvh0X/wy/LBP3cer4LRbMP6V6JNXYXb+td4Y4EAijEbkjkaBZSh6/0Ie
	aqcOZ+o55ofjABxBy7Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFMl-0003LB-Hw; Thu, 12 Dec 2019 03:42:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKd-0000QN-13; Thu, 12 Dec 2019 03:40:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5674FADE1;
 Thu, 12 Dec 2019 03:40:01 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 10/25] dt-bindings: vendor-prefixes: Add Fuda Hisi
 Microelectronics
Date: Thu, 12 Dec 2019 04:39:37 +0100
Message-Id: <20191212033952.5967-11-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194003_509542_75DC44FA 
X-CRM114-Status: UNSURE (   7.29  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 sales@fdhisi.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXNzaWduIHZlbmRvciBwcmVmaXggImZkaGlzaSIsIGJhc2VkIG9uIHRoZWlyIGRvbWFpbiBuYW1l
LgoKQ2M6IHNhbGVzQGZkaGlzaS5jb20KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92
ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwKaW5kZXggMzFkMGM0NzcyYjk2Li4zNGI2YzI5OGM5YmQgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFt
bAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVz
LnlhbWwKQEAgLTMzMSw2ICszMzEsOCBAQCBwYXR0ZXJuUHJvcGVydGllczoKICAgICBkZXNjcmlw
dGlvbjogRmFzdHJheCBPeQogICAiXmZjcywuKiI6CiAgICAgZGVzY3JpcHRpb246IEZhaXJjaGls
ZCBTZW1pY29uZHVjdG9yCisgICJeZmRoaXNpLC4qIjoKKyAgICBkZXNjcmlwdGlvbjogRnV6aG91
IEZ1ZGEgSGlzaSBNaWNyb2VsZWN0cm9uaWNzIENvLiwgTHRkLgogICAiXmZlaXlhbmcsLioiOgog
ICAgIGRlc2NyaXB0aW9uOiBTaGVuemhlbiBGbHkgWW91bmcgVGVjaG5vbG9neSBDby4sTFRELgog
ICAiXmZpcmVmbHksLioiOgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
