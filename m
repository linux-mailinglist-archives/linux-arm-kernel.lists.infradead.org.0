Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65FE958F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 05:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4NkGLozjSeI/ZGVmBAmU6oMAmD60VM8f/aw8R5F4Bfo=; b=Kz9mBEs/Wux+1V
	WTBO3465zfAqvuL9Tc4sH159d+jVpj0VwRTjkmnnS59q+98aSuavzVZBJGAS1cNvyxATN9j4llwUx
	r+vPl+GnIQBgjBtoJK1soglhB9JX0LqUOeTFhJKz4TgtQaRkktJ+pjMnMCM0iMMk1rtayix24dER1
	hyvCnKUR6n36MFaNKj196CbxzxqnsOzP0jY4GDUE3XvvA1Hd++ehLJekQ6VcrMXXQorwW0374oIzA
	GK17Tl+YtxusOyTGzw6tMny5lQuIcFT1qH5AIP11FmbffCQ5T2DLfbUQdrefjqc+eD09h7pJ4XHxy
	iX7K+3SU9DUJ0mRkP1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfJO-0002dG-MB; Wed, 30 Oct 2019 04:10:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfJE-0002cB-Tx; Wed, 30 Oct 2019 04:10:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6BE1AB36E;
 Wed, 30 Oct 2019 04:10:11 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: soc@kernel.org
Subject: [GIT PULL] ARM: realtek: arm64 for v5.5
Date: Wed, 30 Oct 2019 05:09:59 +0100
Message-Id: <20191030041000.31848-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_211013_114388_1FC77D0E 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCBhbmQgT2xvZiwKCkhlcmUncyBhbiBhcm02NCBwdWxsIGZvciBSZWFsdGVrLgoKUmVn
YXJkcywKQW5kcmVhcwoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1NGVjYjhm
NzAyOGM1ZWIzZDc0MGJiODJiMGYxZDkwZjJkZjYzYzVjOgoKICBMaW51eCA1LjQtcmMxICgyMDE5
LTA5LTMwIDEwOjM1OjQwIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRv
cnkgYXQ6CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9h
ZmFlcmJlci9saW51eC1yZWFsdGVrLmdpdCB0YWdzL3JlYWx0ZWstYXJtNjQtc29jLWZvci01LjUK
CmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBlM2NhOTU1NmY3NWNiNzE4OGY4MmRhYmFk
M2FmZjE0YTVhMTBlOWRjOgoKICBhcm02NDogcmVhbHRlazogU2VsZWN0IHJlc2V0IGNvbnRyb2xs
ZXIgKDIwMTktMTAtMjYgMDI6MDg6MjggKzAyMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClJlYWx0ZWsgQVJNNjQgYmFz
ZWQgU29DIGZvciB2NS41CgpFbmFibGUgcmVzZXQgY29udHJvbGxlcnMgYW5kIGFkZCBhIG1haWxp
bmcgbGlzdCB0byBNQUlOVEFJTkVSUy4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQW5kcmVhcyBGw6RyYmVyICgyKToKICAg
ICAgTUFJTlRBSU5FUlM6IEFkZCBtYWlsaW5nIGxpc3QgZm9yIFJlYWx0ZWsgU29DcwogICAgICBh
cm02NDogcmVhbHRlazogU2VsZWN0IHJlc2V0IGNvbnRyb2xsZXIKCiBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgIHwgMSArCiBhcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zIHwgMSArCiAy
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
