Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20641135744
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBxJZ3k1zdpdDoYjKLRqf511mRllgxG/vGz1OazPH4c=; b=p8xRLq703g8K68
	wUYeYj/QPcMOYNKB0Rz7R482Gl9YNzg+5Vyj+SZB6otCdwpHb5k4/kpllIGorj5SDen+XDKuqvk9g
	mAqDjgZthTBJY+vZMR04FAYkRTePLH04ZyjCl6uG4wQQqYsTFq0kLyOEWkKQ6nj8Dkp5/fPhlNJbI
	ELSkZYUtxUkn+bmCAYUV8ZvCx94gpdE65yV0GBrh+s503ODvyqSqEf3ptZbU/dUtgek+O1SDaEKm6
	jCcYBQm91av4hV7vI6GOJVOxbqCzvVgPhlL3tx/thaiEeoTCI8lDtPT5cFOIDCxlmz0uUMImIKgD3
	f1Z8xQioL9O9rl1EUMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVHT-0004w4-4C; Thu, 09 Jan 2020 10:43:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVHK-0004vU-Km
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:43:03 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B25AE2067D;
 Thu,  9 Jan 2020 10:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578566582;
 bh=YNqb12KEnTIPfkhGZEULgW7dTJYPnkCVqbWis7dT6TU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qZiIMUBCmB6il2OBWLC4G23Lk2FnsUJAMrGmvcmZYsfVPMfhitVMg4Cw5aoxAj8vz
 jXAadX+HGRf6R4yJCMjHXEnuJsRohyBD66Zph83bmygqrD18ZauYYTvaI3QTl4YhEl
 aJSlmauHVbuyCuJqnUowPFOH0ugzEefrdUVg8zQw=
Date: Thu, 9 Jan 2020 18:42:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mn: add crypto node
Message-ID: <20200109104254.GQ4456@T480>
References: <20200106200154.30643-1-horia.geanta@nxp.com>
 <20200106200154.30643-2-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106200154.30643-2-horia.geanta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_024302_702003_63B9A88A 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMDYsIDIwMjAgYXQgMTA6MDE6NTRQTSArMDIwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBBZGQgbm9kZSBmb3IgQ0FBTSAtIENyeXB0b2dyYXBoaWMgQWNjZWxlcmF0aW9uIGFu
ZCBBc3N1cmFuY2UgTW9kdWxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhv
cmlhLmdlYW50YUBueHAuY29tPgoKQXBwbGllZCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
