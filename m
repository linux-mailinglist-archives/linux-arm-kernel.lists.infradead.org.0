Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5678EDDF35
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iWWuakcEw/RyesrHKO9eU+T4ezaw7Kw4GdLGNQJ0BAk=; b=S3R3nAnRDFq1C3
	DekKCXyXPnyEn7g1NsCjQHHW+pzd8TWJieBib31hm3h13lBZah2jF1UQolWRbSXxElLerxuqI3T+e
	/ZP2oBDEwpP1tcIno+bDy6AkL/jhRNW+HGHMq3iqT7Mf3QhsKJFnd80TX6fY22Sf5ys/BevmyFpMu
	MMKE2HKAA2iqh38Ndj2ix5Lpcqhr/SbPiOBQbv91QzT/+PXck/lVMuZB4VeGCl/8xxYxL1wMr9blI
	Cxe9HVJTNsaXyMdBF2+vSK4EVRQ7hlyFAzc7FwLJFjHVR1nZCyEAfwT6ePJB9KgAWP/n2RcNDP6k+
	vFXQgyEoY6e5ckTdVYDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMDGX-0004fH-Bk; Sun, 20 Oct 2019 15:37:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMDFq-0003FV-59; Sun, 20 Oct 2019 15:36:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D727BB02C;
 Sun, 20 Oct 2019 15:36:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 0/2] arm64: Realtek RTD1295 watchdog
Date: Sun, 20 Oct 2019 17:36:10 +0200
Message-Id: <20191020153612.29889-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_083626_356109_0E4CEC89 
X-CRM114-Status: UNSURE (   6.45  )
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
Cc: devicetree@vger.kernel.org, Roc He <hepeng@zidoo.tv>,
 =?UTF-8?q?=E8=92=8B=E4=B8=BD=E7=90=B4?= <jiang.liqin@geniatech.com>,
 linux-clk@vger.kernel.org, Wim Van Sebroeck <wim@iguana.be>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIHRoZSB3YXRjaGRvZyBmb3IgdGhlIFJlYWx0ZWsgUlRE
MTI5NSBTb0MuCgp2MyBhZGRzIHRoZSBtaXNzaW5nIERUIG5vZGUsIHByZXZpb3VzbHkgZGVwZW5k
ZW50IG9uIGFuIHVucmV2aWV3ZWQgY2xrIHNlcmllcy4KCkhhdmUgYSBsb3Qgb2YgZnVuIQoKQ2hl
ZXJzLApBbmRyZWFzCgp2MiAtPiB2MzoKKiBEcml2ZXIgd2FzIG1lcmdlZAoqIFNwbGl0IG9mZiBu
ZWVkZWQgb3NjMjdNIGNsb2NrIGZyb20gY2xrIHBhdGNoIHNlcmllcwoKdjEgLT4gdjI6CiogUHJl
cGFyZWQgcmVtb3ZlIChHdWVudGhlcikKKiBTZXQgdGltZW91dCBmaWVsZCAoR3VlbnRoZXIpCiog
Q2xlYW51cHMgKEd1ZW50aGVyLCBBbmRyZWFzKQoKQ2M6IFdpbSBWYW4gU2Vicm9lY2sgPHdpbUBp
Z3VhbmEuYmU+CkNjOiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+CkNjOiBsaW51
eC13YXRjaGRvZ0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IFJvYyBIZSA8aGVwZW5nQHppZG9vLnR2PgpD
Yzog6JKL5Li955C0IDxqaWFuZy5saXFpbkBnZW5pYXRlY2guY29tPgpDYzogbGludXgtY2xrQHZn
ZXIua2VybmVsLm9yZwpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKCkFuZHJlYXMgRsOk
cmJlciAoMik6CiAgYXJtNjQ6IGR0czogcmVhbHRlazogQWRkIG9zY2lsbGF0b3IgZm9yIFJURDEy
OXgKICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgd2F0Y2hkb2cgbm9kZSBmb3IgUlREMTI5eAoK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgfCAxMyArKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKLS0gCjIuMTYuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
