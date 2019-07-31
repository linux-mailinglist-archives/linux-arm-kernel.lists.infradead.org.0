Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7E97C61C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JlZu1PPPNjDVU6VLQbi/wAuyDHmso8hT5aiz2V53Ws=; b=PdVncaelWzwOkR
	Fe8xF37PNvrqRhAUE3LE/ZEsgdBXtet7HQc2uCxiDqE9C74dXIAxyuVrvenCsIeMSW1LEGEeGbTCk
	6j9Mr3uY19/nnho9TdvGw0bh6RoJmw1DZUVFNTVTTwsy+7Gue87BsoEjeCiql5Pw98dKslb6knG3N
	3qzDFgyuaSO1TX+w+i1Qc2iU/GWpP7nyWGpWhMRnyjj6g0YLjIBTeRb0obW+7/Me3rVndp2+Q1Bvn
	7VIumC9k+a6vWFgVXuO+/0PhXUteD5Hp/m+YE7azM0aCO9xW2AzNYAEPD1ZY9K66pIRDBl2UpKY39
	El4G2XHIMdIkVub19cWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqPH-0007Cj-SS; Wed, 31 Jul 2019 15:20:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqPB-0007Bq-Bd
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:20:42 +0000
Received: from localhost (unknown [171.76.116.36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47D1E206A2;
 Wed, 31 Jul 2019 15:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564586440;
 bh=QQQ+QpM+RhFqQ/ypjrNEtcmyaMXt5cOebJM7X911U3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pZCgA5KOSkUePqoFiBh0M+XwmYjYgiRh+LRMt1765PUQknMeWMvNsOxFTSLJK3gHo
 y4+GodC/ycKnCTdhjcpBlyW1h9rTqiSLP+rAkqY/D9LNoeSD+03Od3J/XoD1buGMgT
 MNKRX12rtv77Quy7hh4WPRwk88B39600tDSGJMCg=
Date: Wed, 31 Jul 2019 20:49:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] dmaengine: imx-dma: Mark expected switch fall-through
Message-ID: <20190731151926.GV12733@vkoul-mobl.Dlink>
References: <20190729225221.GA24269@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729225221.GA24269@embeddedor>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_082041_440610_B53F6B00 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjktMDctMTksIDE3OjUyLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+IE1hcmsgc3dp
dGNoIGNhc2VzIHdoZXJlIHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0aHJvdWdoLgo+IAo+IFRo
aXMgcGF0Y2ggZml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nIChCdWlsZGluZzogYXJtKToKPiAK
PiBkcml2ZXJzL2RtYS9pbXgtZG1hLmM6IEluIGZ1bmN0aW9uIOKAmGlteGRtYV94ZmVyX2Rlc2Pi
gJk6Cj4gZHJpdmVycy9kbWEvaW14LWRtYS5jOjU0Mjo2OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVu
dCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiAgICBpZiAoc2xv
dCA9PSBJTVhfRE1BXzJEX1NMT1RfQSkgewo+ICAgICAgIF4KPiBkcml2ZXJzL2RtYS9pbXgtZG1h
LmM6NTU5OjI6IG5vdGU6IGhlcmUKPiAgIGNhc2UgSU1YRE1BX0RFU0NfTUVNQ1BZOgo+ICAgXn5+
fgo+IAo+IE5vdGljZSB0aGF0LCBpbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgdGhlIGNvZGUgY29t
bWVudCBpcwo+IG1vZGlmaWVkIGluIGFjY29yZGFuY2Ugd2l0aCB3aGF0IEdDQyBpcyBleHBlY3Rp
bmcgdG8gZmluZC4KCkFwcGxpZWQsIHRoYW5rcwoKLS0gCn5WaW5vZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
