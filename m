Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91224DE1EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C4TGC6VDmmtOzqODqpr5I4U6+bV7f0xvu572OHNUuaA=; b=I3cbmpvZkhyTdT
	cJloIinLuNZ5hme4ZDXfow+pKJ/OnHngNYIycE4AFvkhS4gXd4Enb0uI5WupB4ZtrsZZQ+ztlOtCw
	8k7eV2YjpxamlWBh4nPg7QUzci8x9p2JRwdgTjudFmcK8m9h2fXbTKRHim/ZZX6wEWPI6gwYzdsxQ
	GWyxgHIKcR/eA8XDkVJ/IldFzSxqxhVqT3hsNZs01uzqOje8zoCdLGpxWyLM0M6crRmjXmdXxrzf4
	hbf6pFNXeMnKJAxiYvvk95pW9QI+ef3IB5zhf8uOWDGymy/yFrE8WHGLy8giEFdgJpioVAxeRU4ue
	KoH68faaEVkxesTWprWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNAC-0007x4-Hr; Mon, 21 Oct 2019 02:11:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMN9h-0007i2-6h; Mon, 21 Oct 2019 02:10:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 69E69B03B;
 Mon, 21 Oct 2019 02:10:43 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 0/3] ARM: Initial RTD1195 and MeLE X1000 support
Date: Mon, 21 Oct 2019 04:10:32 +0200
Message-Id: <20191021021035.7032-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_191045_392594_F5AC1782 
X-CRM114-Status: UNSURE (   8.06  )
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQwphbmQgYWRkcyBhIERldmljZSBUcmVlIGZvciB0aGUgTWVMRSBYMTAwMCBUViBzZXQt
dG9wLWJveC4KCk1vcmUgZGV0YWlscyBhdDoKaHR0cHM6Ly9lbi5vcGVuc3VzZS5vcmcvSENMOk1l
bGVfWDEwMDAKCkxhdGVzdCBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoKaHR0cHM6Ly9naXRodWIu
Y29tL2FmYWVyYmVyL2xpbnV4L2NvbW1pdHMvcnRkMTI5NS1uZXh0CgpIYXZlIGEgbG90IG9mIGZ1
biEKCkNoZWVycywKQW5kcmVhcwoKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCgpBbmRy
ZWFzIEbDpHJiZXIgKDMpOgogIGR0LWJpbmRpbmdzOiBhcm06IHJlYWx0ZWs6IEFkZCBSVEQxMTk1
IGFuZCBNZUxFIFgxMDAwCiAgQVJNOiBQcmVwYXJlIFJlYWx0ZWsgUlREMTE5NQogIEFSTTogZHRz
OiBQcmVwYXJlIFJlYWx0ZWsgUlREMTE5NSBhbmQgTWVMRSBYMTAwMAoKIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwgICA2ICsKIGFyY2gvYXJtL0tj
b25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJt
L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGFyY2gv
YXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGFy
Y2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAwMC5kdHMgICAgICAgICAgIHwgIDMwICsr
KysrCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgICAgICAgICAgICAgICAgICAgICB8
IDEyOCArKysrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgIHwgIDE2ICsrKwogNyBmaWxlcyBjaGFuZ2VkLCAxODUgaW5z
ZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUt
bWVsZS14MTAwMC5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQx
MTk1LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZp
ZwoKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
