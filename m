Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6F38A35F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 18:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SJoZldIVpQadfp7Eywe/Mv/85V9TxZthcmbYeAeQ+Ok=; b=sABOWKG//H2lDw
	kidZMDh2MEE9upKG640k7cio4dDZCX5eusCwC5S0OONwsi5LZ3363g0NhVGGBIcLR9xUENP4Q7wUc
	x5LngCwxhGCNLQQRF+U0nhQ4iQaleVzcRP1n9uoBJOLTV8tePS17BCgZmD79ZFN0k51+noUFC+QtM
	ShpSqh9Pt/DSCHTp96M/wXbo2yHFkiqP4+bVmZwdqwtce/MNtlnamx+RSvgu/eJrVBphOmBWTODst
	KcjhrH/wGANHRqwNC0+XtL5l6DiNd1q5fUFgBkFJ1JL00Mv2qFUTY4t0ObbbvFWpDNq5Xl1FgU8y1
	L8d3EXY5aAsG4ghz72cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDDB-0003eN-Cs; Mon, 12 Aug 2019 16:30:21 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDCz-0002uI-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 16:30:11 +0000
Received: from dellmb.labs.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
 by mail.nic.cz (Postfix) with ESMTP id 21F32140B12;
 Mon, 12 Aug 2019 18:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1565627406; bh=gIXID6H0o7wVbH/tGiOrX1TYQpj2o/ejBEaSt4tdspo=;
 h=From:To:Date;
 b=Y4ngRlIMN46ifHGiz1Sptg5PlqqnSE5cmAckZxHHYdJr+6g/yMDSk5BGa9RWWKobO
 UaYcHDOSZnW+yGQkHO3KlgSwYQlgEznhqFBDdEC+55b3jjCwTfX2bDA3fh7tYMZ7ix
 9yu0Q3CY/Qy3ISzxCs5hqzkK76EccWlNPbi/sERU=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: marvell: armada-37xx: add mailbox node
Date: Mon, 12 Aug 2019 18:30:03 +0200
Message-Id: <20190812163003.23016-1-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093010_167364_AE1A691E 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRzIHRoZSByV1RNIEJJVSBtYWlsYm94IG5vZGUgZm9yIGNvbW11bmljYXRpb24gd2l0
aCB0aGUgc2VjdXJlCnByb2Nlc3Nvci4gVGhlIGRyaXZlciBhbHJlYWR5IGV4aXN0cyBpbgpkcml2
ZXJzL21haWxib3gvYXJtYWRhLTM3eHgtcnd0bS1tYWlsYm94LmMuCgpTaWduZWQtb2ZmLWJ5OiBN
YXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KQ2M6IEdyZWdvcnkgQ2xlbWVudCA8Z3Jl
Z29yeS5jbGVtZW50QGJvb3RsaW4uY29tPgpDYzogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3
eHguZHRzaSB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4LmR0c2kKaW5kZXggZjQzYzQz
MTY4YjAwLi43ZjY5ZTNkZmNiMTMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzd4eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtMzd4eC5kdHNpCkBAIC00MTksNiArNDE5LDEzIEBACiAJCQkJY2xvY2tzID0gPCZuYl9w
ZXJpcGhfY2xrIDE1PjsKIAkJCX07CiAKKwkJCXJ3dG06IG1haWxib3hAYjAwMDAgeworCQkJCWNv
bXBhdGlibGUgPSAibWFydmVsbCxhcm1hZGEtMzcwMC1yd3RtLW1haWxib3giOworCQkJCXJlZyA9
IDwweGIwMDAwIDB4MTAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTggSVJRX1RZUEVf
TEVWRUxfSElHSD47CisJCQkJI21ib3gtY2VsbHMgPSA8MT47CisJCQl9OworCiAJCQlzZGhjaTE6
IHNkaGNpQGQwMDAwIHsKIAkJCQljb21wYXRpYmxlID0gIm1hcnZlbGwsYXJtYWRhLTM3MDAtc2Ro
Y2kiLAogCQkJCQkgICAgICJtYXJ2ZWxsLHNkaGNpLXhlbm9uIjsKLS0gCjIuMjEuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
