Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EFF1C0ADE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 01:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hw53RK4GvMkXpnPJrjEZV+b8nmqoMx6T7K3Jh78EPIc=; b=oVDZHCT+byLCdP
	Wmb0J1gsZ2hMf84B7K2v4CwNTeeBa+Yk8uhViRQbtIEh3FaqYT0M+agvOOHusoPmKj30kyVCOsVip
	L85DjXR5C0huGsKv7m/qxA/lRnD9o5EY/ps7atbuS/++lPCdO5VNt99CwA/LOTi3jvY7NjquYP9x5
	O3+/331qsNaOKNgN3sAjnUwgb1pR9qcIwPSXobEDelKVnTUuv/RJfb3uv95GzDI/oOmLm6uQowCGg
	3w4lyRH0mD2VVg4zgNhd9eALhk+eJgH67bitCRJcCP5G77SboSBTGjfyrJb4RWuQz9QepV1Ogh0Hd
	pJXIKAzklu1tOcF4fEnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUILi-000634-Ec; Thu, 30 Apr 2020 23:12:10 +0000
Received: from lists.nic.cz ([2001:1488:800:400::400] helo=mail.nic.cz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUILc-00061A-47
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 23:12:06 +0000
Received: from dellmb.labs.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
 by mail.nic.cz (Postfix) with ESMTP id 86C33141E99;
 Fri,  1 May 2020 01:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1588288317; bh=G+gOT4+44zNoWZV1HfRmBClhSczM6qr/kCGW23biSA4=;
 h=From:To:Date;
 b=KWu1HPw3K9fRpgmZcTqzkOlXORszYaKKbf/o2HWZo32trRxOTOxss/MuOM3m3Yd2Y
 p/94kDgqidD8Aam9u2eWeNIBrfW8lANDOGWfVWAQufMbCDby1hLd2ZA6spsjFb3TZx
 gnuyoR2fbaP9nvc29BJG6Wky5At81Ajccm09E3aw=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: forbid SDR104
 on SDIO for FCC purposes
Date: Fri,  1 May 2020 01:11:44 +0200
Message-Id: <20200430231144.17350-1-marek.behun@nic.cz>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Spam-Status: No, score=0.00
X-Spamd-Bar: /
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_161204_461393_2C62C0BF 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIHNkaGNpLWNhcHMtbWFzayB0byBmb3JiaWQgU0RSMTA0IG1vZGUgb24gdGhlIFNESU8gY2Fw
YWJsZSBTREhDSQpjb250cm9sbGVyLiBXaXRob3V0IHRoaXMgdGhlIGRldmljZSBjYW5ub3QgcGFz
cyBlbGVjdHJvbWFnbmV0aWMKaW50ZXJmZXJlbmNlIGNlcnRpZmljYXRpb25zLgoKRml4ZXM6IDcx
MDlkODE3ZGIyZSAoImFybTY0OiBkdHM6IG1hcnZlbGw6IGFkZCBEVFMgZm9yIFR1cnJpcyBNb3gi
KQpTaWduZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KQ2M6IEdy
ZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPgotLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyB8IDIgKysKIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKaW5kZXggYmI0MmQxZTZh
NGU5Li40N2ZlZTY2YzcwY2IgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKQEAgLTE3OSw2ICsxNzksOCBAQCAmc2Ro
Y2kxIHsKIAltYXJ2ZWxsLHBhZC10eXBlID0gInNkIjsKIAl2cW1tYy1zdXBwbHkgPSA8JnZzZGlv
X3JlZz47CiAJbW1jLXB3cnNlcSA9IDwmc2RoY2kxX3B3cnNlcT47CisJLyogZm9yYmlkIFNEUjEw
NCBmb3IgRkNDIHB1cnBvc2VzICovCisJc2RoY2ktY2Fwcy1tYXNrID0gPDB4MiAweDA+OwogCXN0
YXR1cyA9ICJva2F5IjsKIH07CiAKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
