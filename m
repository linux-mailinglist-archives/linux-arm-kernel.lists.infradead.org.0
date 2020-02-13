Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893D015B7BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMh8IBShCX3oMkfzjuRd3iEjiq0yyKOFgzfvCfhfqCw=; b=UpytIzmXAfgZ09
	H107SlwKcp5XrSWXVbPKAm8ndmvdKNjr9k8Up7oc1jGumjaWmN7A77nnv/c3ciUKHKhmIhZoXN7q0
	IzssRGr+isIFqWMBxgGEZTgjb46KxNPQYw2uhnhrAIn7XS/Shx8TOtBW/9QtGRyTFAYATpZk1Jssq
	dFtOlfr8Ew8sgan/EY5MDMXbgUc2c1sWE2Tlv6iBx+aAmN02qQtWxuez9uJGHt3kX+gPsM0EvBpkJ
	bdfGDvzhzfc5veYrN3sYkOky6DMcrS7HKFW+aSASk61PnNMijuGsMEYMHNFgAsidm2nMTWi0VLx/h
	jeHt3yMnCHZBIqy/MWIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j258m-0005s2-Dv; Thu, 13 Feb 2020 03:26:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j258e-0005rW-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:26:05 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DF4521739;
 Thu, 13 Feb 2020 03:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581564364;
 bh=F73RG8CacFW4ufAQv04PMvYtdV5CimSEtBHF9fc93qg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V1RF3GzcgijWF1AzwbCyQmGirvYOn7lv2oXeBLhEmDVikfMDlmlz6/NQC7Irs4Iu5
 wGxWdTmbRfa49eKHLbWwk7E6EVavGzlGZZW8DhvY2IyDH9StcFgSPXNoDWeFd4p9zn
 q0385ik/L0Rl9YR0pIZQpi6x6LR+NdSKYWLKcV5Q=
Date: Thu, 13 Feb 2020 11:25:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH v2 0/3] clk: imx8mn: add snvs clock
Message-ID: <20200213032554.GL11096@dragon>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116073718.4475-1-horia.geanta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_192604_817718_3E25FB90 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMTYsIDIwMjAgYXQgMDk6Mzc6MTVBTSArMDIwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiB2MjogYWRkIGNvbW1taXQgbWVzc2FnZSBmb3IgdHJpdmlhbCBwYXRjaCAxLzMKPiAK
PiBUaGlzIHBhdGNoIHNldCBhZGRzIHRoZSBjbG9jayBmb3Igc252cyBtb2R1bGUgb24gaW14OG1u
Lgo+IERUIGJpbmRpbmdzLCBjbGsgZHJpdmVyIGFyZSB1cGRhdGVkIGFjY29yZGluZ2x5Lgo+IERU
IGZvciBpbXg4bW4gKHNudnMtcnRjLWxwIG5vZGUpIGlzIGFsc28gdXBkYXRlZC4KPiAKPiBIb3Jp
YSBHZWFudMSDICgzKToKPiAgIGR0LWJpbmRpbmdzOiBjbG9jazogaW14OG1uOiBhZGQgU05WUyBj
bG9jawo+ICAgY2xrOiBpbXg4bW46IGFkZCBTTlZTIGNsb2NrIHRvIGNsb2NrIHRyZWUKPiAgIGFy
bTY0OiBkdHM6IGlteDhtbjogYWRkIGNsb2NrIGZvciBzbnZzIHJ0YyBub2RlCgpBcHBsaWVkIGFs
bCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
