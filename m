Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CF011C453
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eC+Yw4QniP/kTk+h2jJpERKCD3zNU5AOzoq5eLWfi5s=; b=RRZHnpeeCp55Py
	2eszx/xcODKPLlUKcTYJmUP9Osekk7x9uRXV04cEFjrzU25OZnzC9r/rPV5BWwrf9CwLD2kkVsLX4
	87L1lU86egnh0tdiTMxG6sn784rOURKHcQEcB69VF9zzb50cWkykUj/9HpsaViDU9cr6mhCwTY3lk
	Q1Fl6MP+X0pu9CvDDc92Ln+xi4E370HXmgMtCjptP+DIboDpNzttK1xd6t3hmKmRnI/ijxdiozi0f
	I2b3iqj1KY8o+utrWwrjWiYbj16gcKGt1piJwOzmMGGum/KXQqVmTXmCa8u9x8kwmB5uwna6Kp5BI
	Carra75kKmSjUcmvl4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFRE-0000ij-LR; Thu, 12 Dec 2019 03:46:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKm-00015W-0e; Thu, 12 Dec 2019 03:40:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 578A8AF65;
 Thu, 12 Dec 2019 03:40:08 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 24/25] WIP: leds: tm1628: Prepare FD628 keys
Date: Thu, 12 Dec 2019 04:39:51 +0100
Message-Id: <20191212033952.5967-25-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194012_331661_E76B7D94 
X-CRM114-Status: UNSURE (   7.54  )
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
Cc: sales@fdhisi.com, linux-kernel@vger.kernel.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RXh0ZW5kIGRlZmluaXRpb24gd2l0aCBrZXkgaW5wdXQgbGluZXMuCgpDYzogc2FsZXNAZmRoaXNp
LmNvbQpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0t
LQogZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMgYi9k
cml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwppbmRleCA0MTBmMzQyMzQ4MTEuLjJjYWYxZTYzZmM5
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMKKysrIGIvZHJpdmVycy9s
ZWRzL2xlZHMtdG0xNjI4LmMKQEAgLTY2OSw2ICs2NjksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHRtMTYyOF9pbmZvIGZkNjI4X2luZm8gPSB7CiAJLnNlZ19tYXNrID0gR0VOTUFTSygxNCwgMTIp
IHwgR0VOTUFTSygxMCwgMSksCiAJLm1vZGVzID0gdG0xNjI4X21vZGVzLAogCS5kZWZhdWx0X21v
ZGUgPSAzLAorCS5rX21hc2sgPSBHRU5NQVNLKDIsIDEpLAorCS5rc19tYXNrID0gR0VOTUFTSygx
MCwgMSksCiAJLnB3bV9tYXAgPSB0bTE2MjhfcHdtX21hcCwKIAkuZGVmYXVsdF9wd20gPSAwLAog
fTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
