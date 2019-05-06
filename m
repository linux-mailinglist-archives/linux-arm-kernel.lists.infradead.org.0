Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAC114C93
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 16:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV4Ef6DSPWyIiwIlEBxspI8Ht/2KEqtqP2TNPnOZTFA=; b=rhFkCkdnyhhve2
	jqHlKkAZ0abWBr1HJOi+6ZbFcR+PkWYCbcZFmiAZ3iTAWFLzqCP8xHAv2TQtyybzFHj/dMI50phDb
	8OQGTeYfydXjf79UUNMoaqdj9pItSlvxU+08T4Y3SlDlxna4LtqJJrGw4QK6DSb54zVA3AgRpxuH0
	dFqM8s6u9eRsTtJlDb66qtXeSDJjKEVcqRkBQuh4nVq/GHOzJbv2d9txrcUJMH4lYlzEalTyFX4S5
	E/NR3hIgPDPJVFqDGEAHFGeH5PsDZOU6p3f2IREcsjvZMhNYEkurLmFV9wKgg8xjVR8H3q+J15xIa
	pX8CALjVhw7f2MHMvqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNeon-00050n-TZ; Mon, 06 May 2019 14:42:13 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNeoN-0004yj-5J; Mon, 06 May 2019 14:41:48 +0000
X-Originating-IP: 90.88.149.145
Received: from bootlin.com (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8ADAF6000B;
 Mon,  6 May 2019 14:41:33 +0000 (UTC)
Date: Mon, 6 May 2019 16:41:32 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Petr =?UTF-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
Message-ID: <20190506164132.10342ef6@bootlin.com>
In-Reply-To: <20190506083207.GG81826@meh.true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
 <20190506083207.GG81826@meh.true.cz>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_074147_349386_7911C553 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, frowand.list@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ciwKCk9uIE1vbiwgNiBNYXkgMjAxOSAxMDozMjowNyArMDIwMApQZXRyIMWgdGV0aWFy
IDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKCj5EYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+IFsyMDE5LTA1LTA1IDIxOjQ3OjI3XToKPgo+SGkgRGF2aWQsCj4KPj4gU2VyaWVzIGFwcGxp
ZWQsIHRoYW5rIHlvdS4gIAo+Cj5JIGRpZCBwcm9iYWJseSBzb21ldGhpbmcgdGVycmlibHkgd3Jv
bmcsIGJ1dCBwYXRjaCAiW1BBVENIIHY0IDA1LzEwXSBuZXQ6Cj5ldGhlcm5ldDogc3VwcG9ydCBv
Zl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IiIGhhcyBub3QgcmVhY2hlZCB0aGUK
PnBhdGNod29yaywgYnV0IEknbSBzdXJlLCB0aGF0IGl0IHdhcyBzZW50IG91dCBhcyBIYXVrZSBN
ZWhydGVucyAobWFpbnRhaW5lcgo+Zm9yIGV0aGVybmV0L2xhbnRpcV94cngyMDAuYykgaGFzIGNv
bmZpcm1lZCB0byBtZSBvbiBJUkMsIHRoYXQgaGUgaGFzIHJlY2VpdmVkCj5pdC4KCkl0IHNlZW1z
IGluZGVlZCB0aGF0IHRoZSA1dGggcGF0Y2ggaGFzbid0IGJlZWQgYXBwbGllZCwgd2hpY2ggZWZm
ZWN0aXZlbHkKYnJlYWtzIG12bmV0YSBvbiBuZXQtbmV4dCwgYW5kIEkgZ3Vlc3MgYSBsb3Qgb2Yg
b3RoZXIgZHJpdmVycyB0aGF0IHJlbHkKb24gaGFuZGxpbmcgdGhlIG5ldyByZXR1cm4gdmFsdWVz
LgoKSSBzYXcgeW91IHNlbnQgYSBmb2xsb3d1cCBzZXJpZXMgZml4aW5nIHRoYXQsIGJ1dCBvbmx5
IHBhdGNoIDIvMwpzaG93cy11cCBvbiBuZXRkZXYsIHNvIHlvdSBtaWdodCBiZSBmYWNpbmcgYSBz
aW1pbGFyIGlzc3VlIGhlcmUuCgpNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
