Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B972211C451
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1ZSfSpy3P05SH7yGVDsGDELBy53gmJmLSnKoSxWc0w=; b=n4rieGpF86ToFu
	xsDz4DVRF/JWPshB8k+/Txompt0A7Du7XordE5EMiCrgifGdvIc0h956vzBDQUKpu9EPinH3yBEZb
	G1WiW3q0meaDA49uEgXoVwwUe3LntIKBIgvZOwPD5+u/GuWt/tbzsovIr2gxOvrXD2Ok4NxXFWAyx
	nVI3qxQZiND/E8Z4BCZ6uBVXp46B9xVbZc8v7d1LZfoa6+lj41Yw3JB8mF6BxeJBnFbzMLL+CtKNR
	WYpoBn4PDTccvrdppBtS/4Gn0LTL3iCxdjJC/Py8k2mSGgA9mF/kliMkQ670ze2HvcgOJ2fw/BILj
	/iBWR2IcVhyXeSKo+FXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFQo-0000DU-HG; Thu, 12 Dec 2019 03:46:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKm-00015V-4R; Thu, 12 Dec 2019 03:40:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CD6E8AF27;
 Thu, 12 Dec 2019 03:40:07 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 23/25] WIP: leds: tm1628: Prepare TM1628 keys
Date: Thu, 12 Dec 2019 04:39:50 +0100
Message-Id: <20191212033952.5967-24-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194012_516391_D9664459 
X-CRM114-Status: UNSURE (   7.49  )
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
 Pavel Machek <pavel@ucw.cz>, zypeng@titanmec.com,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RXh0ZW5kIFRNMTYyOCBkZWZpbml0aW9uIHdpdGgga2V5IGlucHV0IGxpbmVzLgoKQ2M6IHp5cGVu
Z0B0aXRhbm1lYy5jb20KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgotLS0KIGRyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jIHwgNCArKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9sZWRzL2xlZHMt
dG0xNjI4LmMgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwppbmRleCAwYzBkMDk5ZGU4YjAu
LjQxMGYzNDIzNDgxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMKKysr
IGIvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4LmMKQEAgLTQzLDYgKzQzLDggQEAgc3RydWN0IHRt
MTYyOF9pbmZvIHsKIAl1MTYJCQkJc2VnX21hc2s7CiAJY29uc3Qgc3RydWN0IHRtMTYyOF9tb2Rl
CSptb2RlczsKIAlpbnQJCQkJZGVmYXVsdF9tb2RlOworCXU4CQkJCWtfbWFzazsKKwl1MTYJCQkJ
a3NfbWFzazsKIAljb25zdCBzdHJ1Y3QgcHdtX2NhcHR1cmUJKnB3bV9tYXA7CiAJaW50CQkJCWRl
ZmF1bHRfcHdtOwogfTsKQEAgLTY1Niw2ICs2NTgsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRt
MTYyOF9pbmZvIHRtMTYyOF9pbmZvID0gewogCS5zZWdfbWFzayA9IEdFTk1BU0soMTQsIDEyKSB8
IEdFTk1BU0soMTAsIDEpLAogCS5tb2RlcyA9IHRtMTYyOF9tb2RlcywKIAkuZGVmYXVsdF9tb2Rl
ID0gMywKKwkua19tYXNrID0gR0VOTUFTSygyLCAxKSwKKwkua3NfbWFzayA9IEdFTk1BU0soMTAs
IDEpLAogCS5wd21fbWFwID0gdG0xNjI4X3B3bV9tYXAsCiAJLmRlZmF1bHRfcHdtID0gMCwKIH07
Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
