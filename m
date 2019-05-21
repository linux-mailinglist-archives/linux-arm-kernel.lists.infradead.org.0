Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541BA24766
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDzQIcECmxsq2c5/VQxgyUHSX4oxVafcKp1FDm/oW9w=; b=ige1U25zumk9Rg
	6pBoSToZ/CxD+KHrz1xb2AowaEu9OD+UVioQQC3P0wEu97V9VnlCqHzZJycyH/DKTJ15+eSJk9rc4
	2R2NJATiDU4OhfFk9blN1GqD/WUjqInUjj8JB9T0hMqtjp01O0uNFR3YvxXO+dD2KY5udmIcWzqmM
	YeibPaMu1+4bm7zIoVjIjTt2S7iFPKXxipBYyU6lOyBgGEmSSt5+gUidTpUfAnHbkge/68RnaObfC
	awV4Buk4qKEHujObxPaHrtyv7PGopawG9wxlDq5mglMtdnGIQEebeUmtWmL1ivRaLFWQRUp6jlkbT
	Tt69wk+N5+kdY4m0412w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSx5C-0002jA-63; Tue, 21 May 2019 05:13:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSx54-0002ih-1t
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:12:55 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D867D21743;
 Tue, 21 May 2019 05:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558415573;
 bh=yRdHJ2XmIK1WbEUMMgmxiCl4z/bvxpUafqfuQkwnoXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LVwjL/13xrfaEJ6AUBwZQFm+fa/btvzfRm/Y8CBLxx/5AoMRHbrbnsRRTHdWq8A+B
 6T40TTcYmIo6qFDmhzoTdegDWImPKepEQAkT+lfqy2H7mC97xyNji7IBtdE04bEq1u
 quivMZvg2u2AG9QBormnpyQNetqMXa1KkJD1lM3A=
Date: Tue, 21 May 2019 10:42:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: Re: [PATCH v3 11/14] dmaengine: imx-sdma: fix ecspi1 rx dma not
 work on i.mx8mm
Message-ID: <20190521051250.GY15118@vkoul-mobl>
References: <VI1PR04MB45436C98D70C16635CF3CFDE89070@VI1PR04MB4543.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB45436C98D70C16635CF3CFDE89070@VI1PR04MB4543.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_221254_117034_CADFEF83 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEtMDUtMTksIDA0OjU4LCBSb2JpbiBHb25nIHdyb3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPiA+IEZyb206IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gPiBT
ZW50OiAyMDE55bm0NeaciDIx5pelIDEyOjE4Cj4gPiAKPiA+IE9uIDA3LTA1LTE5LCAwOToxNiwg
Um9iaW4gR29uZyB3cm90ZToKPiA+ID4gQmVjYXVzZSB0aGUgbnVtYmVyIG9mIGVjc3BpMSByeCBl
dmVudCBvbiBpLm14OG1tIGlzIDAsIHRoZSBjb25kaXRpb24KPiA+ID4gY2hlY2sgaWdub3JlIHN1
Y2ggc3BlY2lhbCBjYXNlIHdpdGhvdXQgZG1hIGNoYW5uZWwgZW5hYmxlZCwgd2hpY2gKPiA+ID4g
Y2F1c2VkCj4gPiA+IGVjc3BpMSByeCB3b3JrcyBmYWlsZWQuIEFjdHVhbGx5LCBubyBuZWVkIHRv
IGNoZWNrIGV2ZW50X2lkMCwgY2hlY2tpbmcKPiA+ID4gZXZlbnRfaWQxIGlzIGVub3VnaCBmb3Ig
REVWXzJfREVWIGNhc2UgYmVjYXVzZSBpdCdzIHNvIGx1Y2t5IHRoYXQKPiA+ID4gZXZlbnRfaWQx
IG5ldmVyIGJlIDAuCj4gPiAKPiA+IFdlbGwgaXMgdGhhdCBieSBjaGFuY2Ugb3IgZGVzaWduIHRo
YXQgZXZlbnRfaWQxIHdpbGwgYmUgbmV2ZXIgMD8KPiA+IAo+IFRoYXQncyBieSBjaGFuY2UuIERF
Vl8yX0RFViBpcyBqdXN0IGZvciBBdWRpbyBjYXNlIGFuZCBub24temVybyBmb3IgZXZlbnRfaWQx
IG9uIGN1cnJlbnQgaS5NWCBmYW1pbHkuCgpUaGVuIGl0IHdvbnQgYmUgZmdvb2QgdG8gcmVseSBv
biBjaGFuY2UgOikKCi0tIAp+Vmlub2QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
