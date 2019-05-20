Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D05822C15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPxH2lGKS5uJoE6PBF+xG2L8ylb5yFQ1Gh0Ndb22QeM=; b=PCCWWmeJFIpN0P
	rh5QleOadLyx1nxzYmKHwlUFM/CXhul/6iksbMHJxezfxocn+nYloMDb6gmTIoFUh4bGnhidBNFxl
	++PfKYxDFioh4nW3M1DHE+nWaRdXSwF5pAyIPNl75ntA+VDuqPG4Fu7QpKRjHK/+V1ZjK9pyIfiIG
	IFzrQqWnkPG3odA4YjPbVMQOliKr+ad68JRAPt8C1E8g/XKxMmqGu9vLVUa1gfCBpLI4Mrb6DJIot
	FdnLWno5vsa6uyEsC5cguZsqpONk6b4REjNMyHjCZS1pqrPmjFBGoxp53GOneytiC1m/wx5GJK4Zw
	tWhDDQedtyUkWK53dnpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbn9-000455-TN; Mon, 20 May 2019 06:28:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbn3-00044e-KU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 06:28:54 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA53C206B6;
 Mon, 20 May 2019 06:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558333733;
 bh=Ui9uYmuCZCzF+3IjrsAp5TGAHEIpxCDWfcmShxLDVVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=unf+dZGw5Ovy8YsjD047mOy9G0FONojvb30WZF+p48mVLup09wvY6+RwlSsjlbxsG
 /aMhdh+PBzxmRpNooEgYocdIhDh/a3DH5gasEwjUR+iL2m+fWe44y89zrfTXDEtfCJ
 Pxi+N6yBq+BEq0fXqlX7Qv6w++6+OhJDbCSGaV6E=
Date: Mon, 20 May 2019 14:27:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND 1/2] clk: imx: Add common API for masking MMDC
 handshake
Message-ID: <20190520062756.GP15856@dragon>
References: <1557656348-13040-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557656348-13040-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_232853_688751_9A9D90D6 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
 "colin.didier@devialet.com" <colin.didier@devialet.com>,
 "pp@emlix.com" <pp@emlix.com>, Jacky Bai <ping.bai@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Abel Vesa <abel.vesa@nxp.com>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "michael@amarulasolutions.com" <michael@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "hofrat@osadl.org" <hofrat@osadl.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 10:24:12AM +0000, Anson Huang wrote:
> All i.MX6 SoCs need to mask unused MMDC channel's handshake
> for low power modes, this patch provides common API for masking
> the MMDC channel passed from caller.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
