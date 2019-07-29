Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B07A78BF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFXwSdI6FAfzB8Na0yszIxw25UibxeJnQSWSv1oSPMo=; b=c+n//VgH8SHnw8
	U3bYkvcaSkL+kK+pYitSpl1OBxgpb33GJRZv8Y2+YLav+v9Q1pqF3ghpqHOEmskn8JYQHjdKwFYVB
	cEDo+3ybTBRTv4rU9KmOJcE5hggMiHoPDn8ULqHQ8dAqzBT/3u/VMcGmhDYL+ZUvYbz65o0174JoY
	/SIqjRNd1o750i+1HbsAPoz7qSku9t6pKvUh5bbZhG3UaAP3eohlYIq2jinxdlC/ldoRlqCSKvjRF
	92qh+ImXtFZ+5SsYGqzQbSzH8CD0sgK/4+ee+ZrInz4Va16aG3jcGMohiIV/C/WF+EL/Rg6Wm3kTU
	P+VwO/MyGtp42PYW0CCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs516-0007qY-7D; Mon, 29 Jul 2019 12:44:40 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs50y-0007pp-Ee
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:44:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so58437971lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 05:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=34NpLTsZ4fkze92bTwE7oYizxOiII+3mNHvu5YPrwQg=;
 b=sYWUT19w6mWSpEmhGoBMOWboPYVB9J0MDKyqrioJdXqtxpf7sB7qUMxlAIkIiiLBbb
 dYN2IpfMFp+OmfzibZz3tF+nIjnsU84VMRwecVQcTfXxYMd40fz9NqGcrL5TqvCs5Glg
 iElbOsHTgv+Rljh9Oaf2231snOJGThWreDmS2J0c8bvh1xDCqVAYTLAEmsNAFYEatg2g
 iN4zeq/1f9OyOsNOTZ237pzi26aGDlXADfPpEtHaBfye5deRxxTuyl1SOO+uwMc7TIFx
 zjWx18xaessRQ7usazf/aUfK9cIePQ3/4vbaypmKsYNicaqqo9/zGYvN/2fwH39Aj5qJ
 orWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=34NpLTsZ4fkze92bTwE7oYizxOiII+3mNHvu5YPrwQg=;
 b=sAlFbUCgko++OgRPtqKhscvQLDOwo98ztGA3HAbQmo+mQEGDR4UtTLMAKzmYdD8bqN
 gaVhWPpxCOq9Hs2ezvn0RUi0ANvrTdeSvm2zk7dsMq1BY3CfFZoB4jRrUCsA2++rkIBO
 sxpWYYU0+UmfVEkwKynJAS/c8x6snsBRGGu57TNyMbQOfIeIotDSR10OyI7WIJ9naGsq
 ft4mYjzHC2pPjLJLEz4aX6MPHEx3GcqJvzo8bQylZZgJzvOXj8DwIpYe2qRNbopC2y0L
 yAKYf1Un0xMUdNINOur73VE0p1VBZq1qxRuF2UH0c1j/VVFvg8paHan7LBDIsSdJEajb
 HCig==
X-Gm-Message-State: APjAAAXNGQmPbs7NrhO/gaHO+k9QJiyqKF1UBeRztHY7U1fmE1dC9VWU
 P1VWrQwKYOhCok5nLKDcQrlWoyiTE9uueuxUAW0=
X-Google-Smtp-Source: APXvYqyO+TyjwyPaTfWOn5ewv+w97iOZ0+hIanfcE3fCvIC4X4IqnxP2a/MdyOwFlyZDuUKM2tWcYs1d8BOOrkB9t9c=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr58267429ljf.10.1564404270408; 
 Mon, 29 Jul 2019 05:44:30 -0700 (PDT)
MIME-Version: 1.0
References: <35f999387bca037731dd963a5901909d6e6d0a17.1564226824.git.agx@sigxcpu.org>
In-Reply-To: <35f999387bca037731dd963a5901909d6e6d0a17.1564226824.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 09:44:34 -0300
Message-ID: <CAOMZO5DDgPJvWtqO9fboSWeHcaqYFTeVd5zzDDdnMxG8uPUqEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: imx: i.MX8MN: Use space instead of tab
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_054432_519687_687C2B24 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBTYXQsIEp1bCAyNywgMjAxOSBhdCA4OjI5IEFNIEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgo+Cj4gVGhpcyBmaXhlcyAnbWFrZSBkdF9iaW5kaW5n
X2NoZWNrJwo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9y
Zz4KClRoYW5rcyBmb3IgdGhlIHBhdGNoLCBidXQgQW5zb24gaGFzIGFscmVhZHkgc3VibWl0dGVk
IGEgZml4IGZvciB0aGlzIGlzc3VlOgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzExMDU3ODE1LwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
