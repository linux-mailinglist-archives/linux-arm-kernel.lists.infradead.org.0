Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82068D83B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXCM3O9dIJKtFKkxKnIyD9dxkWLbVpkwe0fIX79C9wY=; b=C0vi0BiR425Lvz
	D4QT0fj4ggtgZOGrV+/d/Uw0DL5IKHs6DVKPA6PzFYY4gaSs5IAZ90FcBySxVKhImkH5NIHIQ9QGI
	k1uevH14cEywtR5qEJeH3sShRctz3SOFbXCQBlQHXfFPFJNgkmsKSuRXbOJuSi4kuJVaonegtceh8
	MGReHMylObrSBCufu3NlE3ODLOG32cRtVtgoGj+4cClTfUT3V875dljw8Cq5A4GF5ipBKBSIeXaAY
	DbM8zVsST0r3NueVWIyrt2GYgBUDboV2HVsMyIWoc0bkxTD3JwCGuFrCB9Xl6x5n4bCb9pLIaoa7S
	Ag2tCBAstYiOSB6HNCfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVMM-0005cQ-JY; Tue, 15 Oct 2019 22:32:06 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVME-0005bx-3Y
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:31:59 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iKVMB-0007JX-62; Wed, 16 Oct 2019 00:31:55 +0200
Date: Wed, 16 Oct 2019 00:31:55 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/6 v2] sh: Move cmpxchg-xchg.h to asm-generic
Message-ID: <20191015223154.7wcsc7x5edrpasfc@flow>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-2-sebastian@breakpoint.cc>
 <CAK8P3a0q+03=uNcnnHrGqHGOcAO3-mytxSmoBWLtHY+5StMNOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0q+03=uNcnnHrGqHGOcAO3-mytxSmoBWLtHY+5StMNOQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153158_149605_F47A9958 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Rich Felker <dalias@libc.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGhlYWRlciBmaWxlIGlzIHZlcnkgZ2VuZXJpYyBhbmQgY291bGQgYmUgcmV1c2VkIGJ5IG90
aGVyCmFyY2hpdGVjdHVyZXMgYXMgbG9uZyBhcyB0aGV5IHByb3ZpZGUgX19jbXB4Y2hnX3UzMigp
LgoKTW92ZSBzaCdzIGNtcHhjaGcteGNoZy5oIHRvIGFzbS1nZW5lcmljLgoKQ2M6IFlvc2hpbm9y
aSBTYXRvIDx5c2F0b0B1c2Vycy5zb3VyY2Vmb3JnZS5qcD4KQ2M6IFJpY2ggRmVsa2VyIDxkYWxp
YXNAbGliYy5vcmc+CkNjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgpDYzogbGludXgt
c2hAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1hcmNoQHZnZXIua2VybmVsLm9yZwpBY2tlZC1i
eTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFu
IEFuZHJ6ZWogU2lld2lvciA8c2ViYXN0aWFuQGJyZWFrcG9pbnQuY2M+Ci0tLQp2MeKApnYyOiBz
QF9fQVNNX1NIX0NNUFhDSEdfWENIR19IQF9fQVNNX0dFTkVSSUNfQ01QWENIR19YQ0hHX0hACgog
YXJjaC9zaC9pbmNsdWRlL2FzbS9LYnVpbGQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxICsKIHthcmNoL3NoL2luY2x1ZGUvYXNtID0+IGluY2x1ZGUvYXNtLWdlbmVyaWN9L2Nt
cHhjaGcteGNoZy5oIHwgNiArKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQogcmVuYW1lIHthcmNoL3NoL2luY2x1ZGUvYXNtID0+IGluY2x1ZGUv
YXNtLWdlbmVyaWN9L2NtcHhjaGcteGNoZy5oICg5MSUpCgpkaWZmIC0tZ2l0IGEvYXJjaC9zaC9p
bmNsdWRlL2FzbS9LYnVpbGQgYi9hcmNoL3NoL2luY2x1ZGUvYXNtL0tidWlsZAppbmRleCA1MWE1
NGRmMjJjMTEwLi4wOGMxZDk2Mjg2ZDlkIDEwMDY0NAotLS0gYS9hcmNoL3NoL2luY2x1ZGUvYXNt
L0tidWlsZAorKysgYi9hcmNoL3NoL2luY2x1ZGUvYXNtL0tidWlsZApAQCAtMSw1ICsxLDYgQEAK
ICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKIGdlbmVyYXRlZC15ICs9IHN5c2Nh
bGxfdGFibGUuaAorZ2VuZXJpYy15ICs9IGNtcHhjaGcteGNoZy5oCiBnZW5lcmljLXkgKz0gY29t
cGF0LmgKIGdlbmVyaWMteSArPSBjdXJyZW50LmgKIGdlbmVyaWMteSArPSBkZWxheS5oCmRpZmYg
LS1naXQgYS9hcmNoL3NoL2luY2x1ZGUvYXNtL2NtcHhjaGcteGNoZy5oIGIvaW5jbHVkZS9hc20t
Z2VuZXJpYy9jbXB4Y2hnLXhjaGcuaApzaW1pbGFyaXR5IGluZGV4IDkxJQpyZW5hbWUgZnJvbSBh
cmNoL3NoL2luY2x1ZGUvYXNtL2NtcHhjaGcteGNoZy5oCnJlbmFtZSB0byBpbmNsdWRlL2FzbS1n
ZW5lcmljL2NtcHhjaGcteGNoZy5oCmluZGV4IGMzNzNmMjFlZmU0ZDkuLmM5YWNkNmZmODc0MWQg
MTAwNjQ0Ci0tLSBhL2FyY2gvc2gvaW5jbHVkZS9hc20vY21weGNoZy14Y2hnLmgKKysrIGIvaW5j
bHVkZS9hc20tZ2VuZXJpYy9jbXB4Y2hnLXhjaGcuaApAQCAtMSw2ICsxLDYgQEAKIC8qIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCi0jaWZuZGVmIF9fQVNNX1NIX0NNUFhDSEdf
WENIR19ICi0jZGVmaW5lIF9fQVNNX1NIX0NNUFhDSEdfWENIR19ICisjaWZuZGVmIF9fQVNNX0dF
TkVSSUNfQ01QWENIR19YQ0hHX0gKKyNkZWZpbmUgX19BU01fR0VORVJJQ19DTVBYQ0hHX1hDSEdf
SAogCiAvKgogICogQ29weXJpZ2h0IChDKSAyMDE2IFJlZCBIYXQsIEluYy4KQEAgLTQ3LDQgKzQ3
LDQgQEAgc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIHhjaGdfdTgodm9sYXRpbGUgdTggKm0s
IHVuc2lnbmVkIGxvbmcgdmFsKQogCXJldHVybiBfX3hjaGdfY21weGNoZyhtLCB2YWwsIHNpemVv
ZiAqbSk7CiB9CiAKLSNlbmRpZiAvKiBfX0FTTV9TSF9DTVBYQ0hHX1hDSEdfSCAqLworI2VuZGlm
IC8qIF9fQVNNX0dFTkVSSUNfQ01QWENIR19YQ0hHX0ggKi8KLS0gCjIuMjMuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
