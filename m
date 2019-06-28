Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F6459E1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PqUmCEsUnzxyqRAb/ho3CYbJpTsEy0dyVzaaAPRQ0Y4=; b=RmiFXYqzX49rMXDvn23FEBjGz
	uN41AbrZeJs4CB3jKz7gWD0dKhdIQUe1wDCTW97jV601webxBiPXdmYcd7BA2XkWGi/KAobfULuky
	7MQDm1ltxiFMY3QCUkmmG0UpkK51f82qutX4gt2+A8zi30LqIqyh2oc+FIctJOitcEPotNJdw8GQW
	vNxzhlQbNRktTbITR80ApK0DNM9fqY3YFOHyp5W6GKkcHSdRDjmjq0I62HqKnNNlgNHv+01ll9JnC
	HgZOemqIYIuoW/WMUPIAnQ2QNEF4Rxpbk1JhwCLc77AELYabTEFo7l/fHqqVtvcWWEw8iUaCigivP
	wK92iosDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgs6M-0007bC-1P; Fri, 28 Jun 2019 14:43:46 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgs67-0007ah-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:43:32 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 403B34E204B; Fri, 28 Jun 2019 14:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561733011; bh=vL6EoMdz85KeCXb25zgF163ifKwysc+oVzgF2OUUHn0=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=ubYJwhBx0LVLah3yR7dGCU86T3sBjzjPcEihX0mJAf3otSYyjuwTwlQsH1hZwb3Ey
 r9LwKQ8HRfgyVvsPdWu1BxJx1na498IxAXRUu5gcJtZiXwCKE85IeBkf3qdp5LCwA6
 cQPBCTwGG/F7J1S4z5KizNo4L88/jqRp46Gv6kJo=
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mq-librem5: Enable MIPI D-PHY
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Fri, 28 Jun 2019 08:43:31 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <d9a2076bd4231398bd131483db8b05a7e5d56d8b.1561451144.git.agx@sigxcpu.org>
References: <cover.1561451144.git.agx@sigxcpu.org>
 <d9a2076bd4231398bd131483db8b05a7e5d56d8b.1561451144.git.agx@sigxcpu.org>
Message-ID: <b533e051f4f9b89fed8917954d328c7c@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_074331_418778_3010729A 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNi0yNSAwMjoyNywgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gVGhpcyBlbmFibGVz
IHRoZSBNaXhlbCBNSVBJIEQtUEhZIG9uIHRoZSBMaWJyZW0gNSBkZXZraXQKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgoKQWNrZWQtYnk6IEFuZ3Vz
IEFpbnNsaWUgKFB1cmlzbSkgPGFuZ3VzQGFra2VhLmNhPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyB8IDQgKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKPiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKPiBpbmRl
eCA5M2IzODMwZTU0MDYuLjgzYzk2NTc3M2EyOSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwo+IEBAIC0x
NzQsNiArMTc0LDEwIEBACj4gIAlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw3ODY0MzIwMDA+LCA8
NzIyNTM0NDAwPjsKPiAgfTsKPiAKPiArJmRwaHkgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9
Owo+ICsKPiAgJmZlYzEgewo+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCXBpbmN0
cmwtMCA9IDwmcGluY3RybF9mZWMxPjsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
