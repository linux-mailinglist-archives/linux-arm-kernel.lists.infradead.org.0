Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA7FEC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbxtSM0heno6nS1JwTvVNdob1Ffu6+x5YfHgcQwa5UM=; b=Vbxg83Xp/J29Om
	layGHxYGB5sD+OGhKUXzTcxhg74c6z5VsyAkvbsDnzSFWkM0Kji01wxV8aODHiYTzDOMJPamWEHEr
	x4D460o+SZaN16iGGZz3TLziZmDtSRNSfqi6e//ZQU97NU3LaJjBgc1E/hvl8ReMbylDmxi9mL/sP
	3TTcgjJD13S7OxWr/L3ucvJTnpK6YuoepFwFZLLClEQVyTJdm4VZ9aHkizB5F7ryVb2V5+cENg8M9
	Cl7QfO8gyrqbIoV9800I2NMOWXGsgZkcYB2I2qYLTvrDoKGvK8QaL152PbzeWDW5Q1JVAs9t7cBcx
	8k++NlLkKJuM6phwVHzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWSI-0005SU-IP; Tue, 30 Apr 2019 17:22:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWSC-0005SA-GJ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:22:05 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9104320651;
 Tue, 30 Apr 2019 17:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556644923;
 bh=SmFNb1ua+pwzkuk1hPJ8TEAJrM4sAOs7Zi6tdPANKsM=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=nvOY5bIky4wf3Wq9N+PdSJrtbecc4fsjvmALGQsSjf2l385xnNnATIl8XjG1q1jW9
 5o30qPmHOB9rpVnhh2czYvp1MWDCpSRTDqcl0zkzzumM93sXoUc15iunCEfi5QPGkI
 oJi3gQbSrQu2HKxhBq/u1yLI1tN7WxZFiqQ6oF7c=
MIME-Version: 1.0
In-Reply-To: <20190430143206.GA4035@embeddedor>
References: <20190430143206.GA4035@embeddedor>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: clk-pllv3: mark expected switch fall-throughs
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Message-ID: <155664492283.168659.5604495418413396919@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 30 Apr 2019 10:22:02 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_102204_560913_DD7B0256 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
b20+CgpJdCB3YXMgc2VudCBieSBBbnNvbiBhbHJlYWR5LgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
