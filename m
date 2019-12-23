Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E94D129347
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 09:48:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXWr36tl9Ym+KZSNr33UXojfXjOZJgjCgG+6rlNZdJ8=; b=oEw+Or1580CMwr
	DWTRsjVUMIbUoN9mFsoJYw6IwhWQ6IEGgb9paFwCmXkN320CYXS9x4BZTSG8UmcfzzC7IUyDN+q0c
	KX5dCSHM7qlL3YK4dpxA+Xpkx7/RrDYrQyTQY6VtBUXfXjcxayF48Kxoy0wwQnZysZ67JDfZrBeaG
	qzHnIZX+L+Ji+ZHer4z+9af7gjQgyfGXXMdWq2uCv2CPz9j0IS945D2MZa568AYceUBnGxqkPU4J0
	7+WBL0dswW9Dn/YB16PjEuUzCltB5eUO26yC2E9LIzugx3t8ksKEXNAaO3nFoG0ECPCyVAASjp+yS
	E3QwFXACAxgCFT0EvLBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJOQ-0001G5-Jb; Mon, 23 Dec 2019 08:48:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJOI-0001Fe-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 08:48:39 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D646B206B7;
 Mon, 23 Dec 2019 08:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577090917;
 bh=maq4XvFtmO8+dOb8fi20iKVg4RvaZlE9zzoHO189vc0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LVAgmKHzVEIZAD+rA5FOaWnfhl3Nu8LbN0n4IBSb+jIUPNmkdsMeqlGdv7FGKY2jN
 fiD5TLN50S1afqMLqCHccZSiMIhKwzLyOni/TP45Q62ZcA931Zn4SO2f0hLNYLeIc5
 2jqCPfkjObVGBJTx+AzEBaZOPKKKTnKgntMuB21E=
Date: Mon, 23 Dec 2019 16:48:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V3 2/3] arm64: dts: imx8mm: Add Crypto CAAM support
Message-ID: <20191223084812.GV11523@dragon>
References: <20191218130616.13860-1-aford173@gmail.com>
 <20191218130616.13860-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218130616.13860-2-aford173@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_004838_454169_FE2DA8C9 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDc6MDY6MTVBTSAtMDYwMCwgQWRhbSBGb3JkIHdyb3Rl
Ogo+IFRoZSBpLk1YOE0gTWluaSBzdXBwb3J0cyB0aGUgc2FtZSBjcnlwdG8gZW5naW5lIGFzIHdo
YXQgaXMgaW4KPiB0aGUgaS5NWDhNUSwgYnV0IGl0IGlzIG5vdCBjdXJyZW50bHkgcHJlc2VudCBp
biB0aGUgZGV2aWNlIHRyZWUuCj4gCj4gVGhpcyBwYXRjaCBwbGFjZXMgaXQgaW50byB0aGUgZGV2
aWNlIHRyZWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5j
b20+Cj4gUmV2aWV3ZWQtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgoK
QXBwbGllZCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
