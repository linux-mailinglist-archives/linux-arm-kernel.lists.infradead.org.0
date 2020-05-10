Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DC71CCEA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 01:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LfOXCDVJaLtT+CemrdrglB2uhIM5OXsyp51BdzepE2c=; b=isIB5c9WQczcd+
	KCwUshHN3E+61JS+lBTV1KzCyfY0KFwATm983NeqYlgBSJv3cwuK1S+AeU0BfdkjPkDqR/YfFieab
	JnDO34mm9hPDy/9qd5Juzg+q016m8sHtzWNWlH2KsA97AjrGd23h1yMWVUf9BP5ckSYyTR/yh1Wh+
	lnvQYcdSiN3aIQK/UlYcRyB4lI+eKhiUOxBe5ADHZJDjHXHXp8iMb3HDlpb01TEW0jKNt0zgZqaDc
	MLeWDBiL6O4ZD/rAnXskiE5dMjYz/0oZEmMadcFFa+wFMfg7Age7STrGtZxypJ2XzYlUOwLYqsW2R
	Ne2OrOu3PchO4VrwTrVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXvH1-0007ZC-DA; Sun, 10 May 2020 23:22:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXvGv-0007YK-J7; Sun, 10 May 2020 23:22:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1EDE2AEE2;
 Sun, 10 May 2020 23:22:09 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: soc@kernel.org
Subject: [GIT PULL] ARM: realtek: soc for v5.8
Date: Mon, 11 May 2020 01:21:57 +0200
Message-Id: <20200510232158.18477-1-afaerber@suse.de>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_162213_772196_BB431D6C 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xvZiwKCkhlcmUncyBhIHNvYyBwdWxsIGZvciBSZWFsdGVrLgpUaGlzIGlzIGEgcmViYXNl
IG9mIHRoZSA1LjYgcHVsbCByZXF1ZXN0IHRoYXQgZGlkbid0IGdldCBtZXJnZWQuIE9uZSBjb25m
bGljdCByZXNvbHZlZC4KClJlZ2FyZHMsCkFuZHJlYXMKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBz
aW5jZSBjb21taXQgOGYzZDlmMzU0Mjg2NzQ1Yzc1MTM3NGY1ZjFmY2FmZWU2YjNmMzEzNjoKCiAg
TGludXggNS43LXJjMSAoMjAyMC0wNC0xMiAxMjozNTo1NSAtMDcwMCkKCmFyZSBhdmFpbGFibGUg
aW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQgdGFncy9yZWFsdGVr
LXNvYy1mb3ItNS44Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZWQyNWU1MTZhMTAw
ZGU5YTRlOWIwOWY4MjcyNTg1ZDNlZmJiZmRmYzoKCiAgTUFJTlRBSU5FUlM6IEFkZCBSZWFsdGVr
IGFybSBEVCBmaWxlcyAoMjAyMC0wNC0xMiAyMzoxNDoxMSArMDIwMCkKCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUmVhbHRl
ayBBcm0gYmFzZWQgU29DIGZvciB2NS44CgpJbnRyb2R1Y2UgQVJDSF9SRUFMVEVLIGFsc28gZm9y
IDMyLWJpdCBhcm0sIGFuZCB1cGRhdGUgTUFJTlRBSU5FUlMuCgotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFuZHJlYXMgRsOk
cmJlciAoMik6CiAgICAgIEFSTTogUHJlcGFyZSBSZWFsdGVrIFJURDExOTUKICAgICAgTUFJTlRB
SU5FUlM6IEFkZCBSZWFsdGVrIGFybSBEVCBmaWxlcwoKIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgfCAgMiArKwogYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAgICAgICB8ICAyICsr
CiBhcmNoL2FybS9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgIDMgKysrCiBhcmNoL2FybS9tYWNo
LXJlYWx0ZWsvS2NvbmZpZyAgIHwgMTEgKysrKysrKysrKysKIGFyY2gvYXJtL21hY2gtcmVhbHRl
ay9NYWtlZmlsZSAgfCAgMiArKwogYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYyB8IDQw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDYgZmlsZXMgY2hhbmdl
ZCwgNjAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVh
bHRlay9LY29uZmlnCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01h
a2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUu
YwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
