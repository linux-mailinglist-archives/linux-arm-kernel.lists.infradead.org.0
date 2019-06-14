Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2838245D77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFHrPjk+0AtHhkD20qdzbkJ94bVAvAe4mF3oRSK1jn4=; b=awD4aNPWL+4PiK
	tYQGpoCORaG6Xe63s8ANkm8V3G26yq3IjcixpzANqY2IWBG93IdWPJ0z140DfhPjGlQ26LCkQNkQ6
	Ow1KJWMsh7TGksXgx6tIMN90rJ8VawCvwOYes36HBN8bW97l8iGJjmPu43bbmhicDE/1YjNQgAplB
	FT/6SC9acohRLZIhMc/ED7LaBzkq1dXw1IxKp9WVzi3iRikXPFSYBvboAvZKy/HB4bBT/BbQLGJIg
	atTcFPIf0qHwn9shi3zBtCjGFQT9rOIq71yEKDlrhmGhTVgcRAmx8i+6/7dY/tSHvQ6aD2by5rWLM
	F9ecESHzPcpbE+1y+wKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbluL-0001JF-BB; Fri, 14 Jun 2019 13:06:17 +0000
Received: from mailout02.agenturserver.de ([185.15.192.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblu6-0001IE-W6
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:06:07 +0000
Received: from mail02.agenturserver.de (mail02.internal [172.16.51.35])
 by mailout02.agenturserver.de (Postfix) with ESMTP id 7B9BD12695E;
 Fri, 14 Jun 2019 15:05:53 +0200 (CEST)
Received: from localhost (ac02.internal [172.16.51.82])
 by mail02.agenturserver.de (Postfix) with ESMTP id 6FA0580418;
 Fri, 14 Jun 2019 15:05:53 +0200 (CEST)
X-Spam-Level: 
Received: from mail.agenturserver.de ([172.16.51.35])
 by localhost (ac02.mittwald.de [172.16.51.82]) (amavisd-new, port 10026)
 with ESMTP id 37aakGEqMV_7; Fri, 14 Jun 2019 15:05:53 +0200 (CEST)
Received: from karo-electronics.de (unknown [89.1.81.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: lw@karo-electronics.de)
 by mail.agenturserver.de (Postfix) with ESMTPSA;
 Fri, 14 Jun 2019 15:05:52 +0200 (CEST)
Date: Fri, 14 Jun 2019 15:05:51 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH RFC 5/7] serial: imx: set_termios(): preserve RTS state
Message-ID: <20190614150551.1472b154@karo-electronics.de>
In-Reply-To: <1560514294-29111-6-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
 <1560514294-29111-6-git-send-email-sorganov@gmail.com>
Organization: Ka-Ro electronics GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_060605_389799_823641EE 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.15.192.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: linux-serial@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIDE0IEp1biAyMDE5IDE1OjExOjMyICswMzAwIFNlcmdleSBPcmdhbm92IHdy
b3RlOgo+IGlteF9zZXRfdGVybWlvcygpIGNsZWFyZWQgUlRTIG9uIGV2ZXJ5IGNhbGwsIG5vdyBm
aXhlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fub3ZAZ21haWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCAxMiArKysrKysrKy0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIGIvZHJpdmVycy90dHkvc2VyaWFs
L2lteC5jCj4gaW5kZXggOGVlOTEwZi4uZGUyMzA2OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3R0
eS9zZXJpYWwvaW14LmMKPiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPiBAQCAtMTU2
NCw2ICsxNTY0LDEzIEBAIGlteF91YXJ0X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQgKnBv
cnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlvcywKPiAgCj4gIAlzcGluX2xvY2tfaXJxc2F2ZSgm
c3BvcnQtPnBvcnQubG9jaywgZmxhZ3MpOwo+ICAKPiArCS8qCj4gKwkgKiBSZWFkIGN1cnJlbnQg
VUNSMiBhbmQgc2F2ZSBpdCBmb3IgZnV0dXJlIHVzZSwgdGhlbiBjbGVhciBhbGwgdGhlIGJpdHMK
PiArCSAqIGV4Y2VwdCB0aG9zZSB3ZSB3aWxsIG9yIG1heSBuZWVkIHRvIHByZXNlcnZlLgo+ICsJ
ICovCj4gKwlvbGRfdWNyMiA9IGlteF91YXJ0X3JlYWRsKHNwb3J0LCBVQ1IyKTsKPiArCXVjcjIg
PSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NU
U0MpOwo+ICsKPiAgCXVjcjIgPSBVQ1IyX1NSU1QgfCBVQ1IyX0lSVFM7CnMvPS98PS8KCgpMb3Ro
YXIgV2HDn21hbm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
