Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF33F79C8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 00:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4l9k90ftiFjs+WEuW3M+g/0tO/JtF9EmjLoQjGRVhmo=; b=ihNTeYvM25iBkJ
	5+38ACtKyB9N6S6YqG8KywIl2KZd18vpYvRVvQxzLyacH6pCR/q7UHq2PuwuJPuHFqYGMJFPtTctb
	qth6D2yPVVRrwhxuiWoDtb3bGH2V5FmjclAuFNteOPuaidjWIi1a8aPKDx/5e8FdmXpUmWnHfbFV5
	XwcwnraxYga0xrdDDNtnmDsS7Dsxb3Lchkt/Y7JCsZ+4q0wsVl0hVle7ktzGmrEahnoEbfRvQYpBh
	UB7gaIFxo7wOpuV7e+eC4HNAtOkCgqy2Q9mtxroGUWJEaHYmNQLAe40AOh7kGmQ9WkW2hMAwWBlNh
	OKGetkieg7snl//wWfoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsEVQ-00087R-4a; Mon, 29 Jul 2019 22:52:36 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsEVE-000879-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 22:52:25 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id 306A61E2EA
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 17:52:23 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id sEVDhiYXW4FKpsEVDhsLxN; Mon, 29 Jul 2019 17:52:23 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGM1QOf7Ifka8Lzj21bKpD9jnLg3f9Vd1ITqzxm/VOU=; b=gV9r2PvwJ6rxIRIgwFC2X2SCdZ
 g7/+BkFcoDz0V9uUOGllyxNtsuluzDThOjYowlhrij65SbkzuX75rigaZDRftzgUiV0o1DPAYUTGb
 oZrWQybdnVtt/4v1P7Rusa2Q1rTb/30pyx4ExZe2xPRlFQfh/Y/2E8OKwJ448mqa7mUmWwvnwFoLk
 N5zW03DPfInXg5UpRiUBT5MpkOyVO3BLu5XNZ3fi7uz5wu8vIArdm+DT4elWgYkmikAC/wbkQTP8V
 a8cEFs8pUOoQmOwXYBaP2ZQsuJWBuIdHKwgY3BlCb8Ix150TlM+sOJanfZFuzXIQNbiBWAQIpRLcT
 wumxlobw==;
Received: from [187.192.11.120] (port=60908 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hsEVB-002HF4-S4; Mon, 29 Jul 2019 17:52:22 -0500
Date: Mon, 29 Jul 2019 17:52:21 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH] dmaengine: imx-dma: Mark expected switch fall-through
Message-ID: <20190729225221.GA24269@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hsEVB-002HF4-S4
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:60908
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 53
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_155224_443313_3E59DD6E 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.115 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.145.115 listed in wl.mailspike.net]
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
Cc: dmaengine@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gu
CgpUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZyAoQnVpbGRpbmc6IGFybSk6
Cgpkcml2ZXJzL2RtYS9pbXgtZG1hLmM6IEluIGZ1bmN0aW9uIOKAmGlteGRtYV94ZmVyX2Rlc2Pi
gJk6CmRyaXZlcnMvZG1hL2lteC1kbWEuYzo1NDI6Njogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGlmIChzbG90ID09
IElNWF9ETUFfMkRfU0xPVF9BKSB7CiAgICAgIF4KZHJpdmVycy9kbWEvaW14LWRtYS5jOjU1OToy
OiBub3RlOiBoZXJlCiAgY2FzZSBJTVhETUFfREVTQ19NRU1DUFk6CiAgXn5+fgoKTm90aWNlIHRo
YXQsIGluIHRoaXMgcGFydGljdWxhciBjYXNlLCB0aGUgY29kZSBjb21tZW50IGlzCm1vZGlmaWVk
IGluIGFjY29yZGFuY2Ugd2l0aCB3aGF0IEdDQyBpcyBleHBlY3RpbmcgdG8gZmluZC4KClNpZ25l
ZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+Ci0t
LQogZHJpdmVycy9kbWEvaW14LWRtYS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9pbXgtZG1hLmMgYi9kcml2ZXJzL2RtYS9p
bXgtZG1hLmMKaW5kZXggMDBhMDg5ZTI0MTUwLi41YzBmYjMxMzQ4MjUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hL2lteC1kbWEuYworKysgYi9kcml2ZXJzL2RtYS9pbXgtZG1hLmMKQEAgLTU1Niw2
ICs1NTYsNyBAQCBzdGF0aWMgaW50IGlteGRtYV94ZmVyX2Rlc2Moc3RydWN0IGlteGRtYV9kZXNj
ICpkKQogCQkgKiBXZSBmYWxsLXRocm91Z2ggaGVyZSBpbnRlbnRpb25hbGx5LCBzaW5jZSBhIDJE
IHRyYW5zZmVyIGlzCiAJCSAqIHNpbWlsYXIgdG8gTUVNQ1BZIGp1c3QgYWRkaW5nIHRoZSAyRCBz
bG90IGNvbmZpZ3VyYXRpb24uCiAJCSAqLworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAljYXNlIElN
WERNQV9ERVNDX01FTUNQWToKIAkJaW14X2RtYXYxX3dyaXRlbChpbXhkbWEsIGQtPnNyYywgRE1B
X1NBUihpbXhkbWFjLT5jaGFubmVsKSk7CiAJCWlteF9kbWF2MV93cml0ZWwoaW14ZG1hLCBkLT5k
ZXN0LCBETUFfREFSKGlteGRtYWMtPmNoYW5uZWwpKTsKLS0gCjIuMjIuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
