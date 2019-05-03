Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40997131BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6t/1gYF+ES98se9TY/HGmfMY+KADO5Ox/puiZ/T3eJA=; b=f4lcF0mKOr/bqg
	62fm921a9mhprsl+/3WOFskEVsiaYc7zHYAXTgFsEf4nwMmPrQ8Ojg3fQmK9D+KCw/gT5FSUv5ZnH
	oiZtiPv1w338dlSwNs8JYCF2ke7qFGGh11anNpaYZRa3+B3hYFz8bqsnv/Z5nuJdD4Y1n/eX71Gf8
	aPogy/zI4D3YB39wa29UQLlsPUBT5+u7rOimsGbmE98P984hZZzXydCBRMoxqX5pLk0EJpnCx9CuZ
	SNOY9B0CZ4jWabatWJNhkQT4j1TrG9S4dL/Ll8f1OzNR90lBCnM1JB0UIYA49bquecZ8r0KivEjwv
	7dxnOsdhC9g+4IDrG1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMafO-0000gy-UD; Fri, 03 May 2019 16:04:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMafI-0000gf-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:04:02 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EBE32087F;
 Fri,  3 May 2019 16:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556899440;
 bh=u8nMHEbZWJcIno8b2VP0zq26Pj+DlJZJ6b1N7AkLZGs=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=TD5d3cqye9lABfgNnSbABLKv5dC1suwdjX/scpb6aAPmD8sQ4qpHuYG/hdBsDeru7
 BWClVjMxXIJhOIA6VGsgOr+AZy2t3xgbd9ClZ8eRiulq6SFD3llwWT2Ncg+ulC4Bmy
 SRdIpHHDC2g2g5HIypFN9DW97CkTgy1i2hqmoVK8=
MIME-Version: 1.0
In-Reply-To: <20190430143206.GA4035@embeddedor>
References: <20190430143206.GA4035@embeddedor>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: clk-pllv3: mark expected switch fall-throughs
Message-ID: <155689943924.200842.14239421795559565409@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 09:03:59 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090400_608698_84D1F157 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBHdXN0YXZvIEEuIFIuIFNpbHZhICgyMDE5LTA0LTMwIDA3OjMyOjA2KQo+IEluIHBy
ZXBhcmF0aW9uIHRvIGVuYWJsaW5nIC1XaW1wbGljaXQtZmFsbHRocm91Z2gsIG1hcmsgc3dpdGNo
Cj4gY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCj4gCj4gVGhp
cyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgo+IAo+IGRyaXZlcnMvY2xrL2lt
eC9jbGstcGxsdjMuYzogSW4gZnVuY3Rpb24g4oCYaW14X2Nsa19wbGx2M+KAmToKPiBkcml2ZXJz
L2Nsay9pbXgvY2xrLXBsbHYzLmM6NDQ2OjE4OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkg
ZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiAgICBwbGwtPmRpdl9zaGlm
dCA9IDE7Cj4gICAgfn5+fn5+fn5+fn5+fn5+Xn5+Cj4gZHJpdmVycy9jbGsvaW14L2Nsay1wbGx2
My5jOjQ0NzoyOiBub3RlOiBoZXJlCj4gICBjYXNlIElNWF9QTExWM19VU0I6Cj4gICBefn5+Cj4g
ZHJpdmVycy9jbGsvaW14L2Nsay1wbGx2My5jOjQ1MzoyMTogd2FybmluZzogdGhpcyBzdGF0ZW1l
bnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gICAgcGxsLT5k
ZW5vbV9vZmZzZXQgPSBQTExfSU1YN19ERU5PTV9PRkZTRVQ7Cj4gICAgICAgICAgICAgICAgICAg
ICAgXgo+IGRyaXZlcnMvY2xrL2lteC9jbGstcGxsdjMuYzo0NTQ6Mjogbm90ZTogaGVyZQo+ICAg
Y2FzZSBJTVhfUExMVjNfQVY6Cj4gICBefn5+Cj4gCj4gV2FybmluZyBsZXZlbCAzIHdhcyB1c2Vk
OiAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoPTMKPiAKPiBUaGlzIHBhdGNoIGlzIHBhcnQgb2YgdGhl
IG9uZ29pbmcgZWZmb3J0cyB0byBlbmFibGUKPiAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5j
b20+Cj4gLS0tCgpBcHBsaWVkIHRvIGNsay1uZXh0CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
