Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D321813B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PZ4nt6lqdGarfsGWFeUPi79s0uDvsiuTtSZqQ04uXw=; b=OnAa1YZYkZrgPt
	hKHFZuJaK9p3NHHW+qOV8NOVynomM9p4BP5LFmG0bmcgRS6mKSIyQP1u4eI/nNJsA8t5c+46+ip7n
	w1LU+56+ykLV8kmaqBS8AaU1qyF2iNR0UD8mzGAUdw63awOyeRKXFcy9jDb2Lbbs/5phPYxk4+Tuk
	nK4iN+Al57O8otY+zHHCzKbRW0aZKrog8RmJxcyr/3Xd4jkOo7Xv31eA2cNbljw/lPm7ygnG0Ky7z
	cLJfVYYhMgM40/zqROJ/ILVvBGDJs5xn2snGkFiwsL1O0nW62u7YRpa6qPdc3HzO71Q1HDy1BES0R
	HZoG5UCY8VxiW4tkhEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx87-0006KQ-Am; Wed, 11 Mar 2020 08:54:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx7v-0006K6-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:54:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2825020873;
 Wed, 11 Mar 2020 08:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583916847;
 bh=q9pX7RdIeHC12gIE7AwUqz4c8Oq1C8zcrGUI6VQx08k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9tEh9CKAQvhblCfQ79VtTz2ZvM7u9zbEuZryIvvvwfaV/cQRcvprPihaPFOiqyQE
 KiouaIwbxFCoz9RdF9cBGIzKA149ljubVMfa2WzhlC8Z4mxlVdOEF/h5GxAe02urT6
 JpuyGXmzqN3xI1mKT/9xZspk9pOKGm5kmqLBkFIg=
Date: Wed, 11 Mar 2020 16:53:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH 0/5] ARM: dts: imx: use generic name for crypto node
Message-ID: <20200311085357.GG29269@dragon>
References: <20200305135909.8180-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305135909.8180-1-horia.geanta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_015407_501220_BDA39DD8 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMDUsIDIwMjAgYXQgMDM6NTk6MDRQTSArMDIwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBUaGlzIHBhdGNoIHNldCBhbGlnbnMgLyBmaXhlcyB0aGUgbmFtaW5nIG9mIHRoZSBj
cnlwdG8gbm9kZQo+IChhbmQgaXRzIGNoaWxkIG5vZGVzKSBmb3Igc2FoYXJhLCBkY3AgYW5kIGNh
YW0gY3J5cHRvIGVuZ2luZXMKPiB1c2VkIGluIGkuTVggU29Dcy4KPiAKPiBIb3JpYSBHZWFudMSD
ICg0KToKPiAgIGR0LWJpbmRpbmdzOiBjcnlwdG86IHNhaGFyYTogdXNlIGdlbmVyaWMgbm9kZSBu
YW1lCj4gICBkdC1iaW5kaW5nczogY3J5cHRvOiBkY3A6IHVzZSBnZW5lcmljIG5vZGUgbmFtZQo+
ICAgZHQtYmluZGluZ3M6IGNyeXB0bzogY2FhbTogdXNlIGdlbmVyaWMgbm9kZSBuYW1lCj4gICBB
Uk06IGR0czogaW14OiBhbGlnbiBuYW1lIGZvciBjcnlwdG8gbm9kZSBhbmQgY2hpbGQgbm9kZXMK
PiAKPiBTaWx2YW5vIGRpIE5pbm5vICgxKToKPiAgIGFybTY0OiBkdHM6IGlteDhtbjogYWxpZ24g
bmFtZSBmb3IgY3J5cHRvIGNoaWxkIG5vZGVzCgpBcHBsaWVkIGFsbCwgdGhhbmtzLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
