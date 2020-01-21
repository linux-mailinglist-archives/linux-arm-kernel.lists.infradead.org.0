Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC49143C37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9UhNhCLnqRG1JTTy09A3Sr0gJdBFiET7OuqzlDbSJY=; b=FAIbOWd691Vj+n
	t7b5wtY1xrmqaYtLK83pej9xCI6zRs5YyzO1dtb4/IAq2rR/EBV5gi/Wi/bE6VqXpsfYk3H9wxpsM
	haiuifWueJpzxu+AuBds+7Ch1qCwCFkkSwqVheJ+5RuujGsh791wS1va98zC653a1r+zpRy+sNqyy
	0uxmzKPpZMESoRjZD8oqGLPDdDPFLOqLZIHZwTB7zJzt0K0I+51bG3AuEuf8INzaakdA5A1AFo/jG
	wLtN5XlvHPzq52yr7g9tDxSycXnvn0Qka/PYgRcg7eZnUee5L+Pk1aDHLmvG7cRBRdHK3YYb/KZsW
	2un1uB+MzDmceOJRG4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itryV-0004VQ-Jp; Tue, 21 Jan 2020 11:45:39 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquW-00025h-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:37 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id sydS210045USYZQ01ydSp9; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquT-000116-Vv; Tue, 21 Jan 2020 11:37:25 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquT-0000Tl-U2; Tue, 21 Jan 2020 11:37:25 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 01/20] ARM: actions: Drop unneeded select of COMMON_CLK
Date: Tue, 21 Jan 2020 11:37:03 +0100
Message-Id: <20200121103722.1781-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103413.1337-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023728_429070_10A6D423 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:14 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3VwcG9ydCBmb3IgQWN0aW9ucyBTZW1pIFNvQ3MgZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y3LCBh
bmQgdGh1cyBvbgpBUkNIX01VTFRJUExBVEZPUk0uCkFzIHRoZSBsYXR0ZXIgc2VsZWN0cyBDT01N
T05fQ0xLLCB0aGVyZSBpcyBubyBuZWVkIGZvciBBUkNIX0FDVElPTlMgdG8Kc2VsZWN0IENPTU1P
Tl9DTEsuCgpTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNA
Z2xpZGVyLmJlPgpDYzogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgpDYzogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KLS0t
CkFsbCBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGFyZSBpbmRlcGVuZGVudCBvZiBlYWNoIG90aGVy
LgpDb3ZlciBsZXR0ZXIgYXQgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMDEyMTEwMzQx
My4xMzM3LTEtZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmUKCiBhcmNoL2FybS9tYWNoLWFjdGlvbnMv
S2NvbmZpZyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtYWN0aW9ucy9L
Y29uZmlnCmluZGV4IGI1ZTBhYzk2NWVjMGRkMTAuLjAwZmI0YmFiY2NkZDk5MWIgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL21hY2gtYWN0aW9ucy9LY29uZmlnCisrKyBiL2FyY2gvYXJtL21hY2gtYWN0
aW9ucy9LY29uZmlnCkBAIC03LDcgKzcsNiBAQCBtZW51Y29uZmlnIEFSQ0hfQUNUSU9OUwogCXNl
bGVjdCBBUk1fR0xPQkFMX1RJTUVSCiAJc2VsZWN0IENBQ0hFX0wyWDAKIAlzZWxlY3QgQ0xLU1JD
X0FSTV9HTE9CQUxfVElNRVJfU0NIRURfQ0xPQ0sKLQlzZWxlY3QgQ09NTU9OX0NMSwogCXNlbGVj
dCBHRU5FUklDX0lSUV9DSElQCiAJc2VsZWN0IEhBVkVfQVJNX1NDVSBpZiBTTVAKIAlzZWxlY3Qg
SEFWRV9BUk1fVFdEIGlmIFNNUAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
