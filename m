Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D50EDAC46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8aIOYU35wS1OMXQ9OzbFgMmEbBBXDNOGq+Gfqv41Pr0=; b=Wxo2uE3HELcU96
	euXpu3t2PXWM03aS9xfBcuv4eHnaIFhBdo3kYcqZicgzRjfgyvUVVJO1U+v+Hs/9wFf/Va+r9EshY
	XmXim1nIMXsrPDTImLHZv+gpJwGOUIMjaFJbmdrgoGKLCe09V4M1IIyiTZFbHw5pcYMKbDLBf9sCG
	pVkLU22bg0Ifa0zPvpJ2/Ucnmow/5nDEW3RNbORzvNlc5lLvsH/h1WT1T4s0HgbUjBqX65kygclv6
	VcDbXBeLmpHcCddgzOiaOQVpk782uHVLHky4OBOzcP7YRsEZOO+ip8KRdHLGqzErz4I1uITJ7Plfg
	IzxT7bkFG1TTvKpC8V8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4vF-0005aW-1I; Thu, 17 Oct 2019 12:30:29 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4v5-0005ZW-4S
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:30:20 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL4uu-0005sk-IX; Thu, 17 Oct 2019 13:30:08 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL4uu-0006rY-4T; Thu, 17 Oct 2019 13:30:08 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] soc: actions: owl-sps: include <linux/soc/actions/owl-sps.h>
 for owl_sps_set_pg
Date: Thu, 17 Oct 2019 13:30:07 +0100
Message-Id: <20191017123007.26335-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_053019_368450_18418073 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5jbHVkZSA8bGludXgvc29jL2FjdGlvbnMvb3dsLXNwcy5oPiBmb3Igb3dsX3Nwc19zZXRfcGcK
ZGVjbGFyYXRpb24gdG8gZml4IHRoZSBmb2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6Cgpkcml2ZXJz
L3NvYy9hY3Rpb25zL293bC1zcHMtaGVscGVyLmM6MTY6NTogd2FybmluZzogc3ltYm9sICdvd2xf
c3BzX3NldF9wZycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KClNpZ25l
ZC1vZmYtYnk6IEJlbiBEb29rcyA8YmVuLmRvb2tzQGNvZGV0aGluay5jby51az4KLS0tCkNjOiAi
QW5kcmVhcyBGw6RyYmVyIiA8YWZhZXJiZXJAc3VzZS5kZT4KQ2M6IE1hbml2YW5uYW4gU2FkaGFz
aXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CkNjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL3NvYy9hY3Rpb25zL293bC1zcHMt
aGVscGVyLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhlbHBlci5jIGIvZHJpdmVycy9zb2Mv
YWN0aW9ucy9vd2wtc3BzLWhlbHBlci5jCmluZGV4IDI5MWEyMDZkNmYwNC4uZjM1Y2YzYzZkMjNj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9hY3Rpb25zL293bC1zcHMtaGVscGVyLmMKKysrIGIv
ZHJpdmVycy9zb2MvYWN0aW9ucy9vd2wtc3BzLWhlbHBlci5jCkBAIC0xMSw2ICsxMSw4IEBACiAj
aW5jbHVkZSA8bGludXgvZGVsYXkuaD4KICNpbmNsdWRlIDxsaW51eC9pby5oPgogCisjaW5jbHVk
ZSA8bGludXgvc29jL2FjdGlvbnMvb3dsLXNwcy5oPgorCiAjZGVmaW5lIE9XTF9TUFNfUEdfQ1RM
CTB4MAogCiBpbnQgb3dsX3Nwc19zZXRfcGcodm9pZCBfX2lvbWVtICpiYXNlLCB1MzIgcHdyX21h
c2ssIHUzMiBhY2tfbWFzaywgYm9vbCBlbmFibGUpCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
