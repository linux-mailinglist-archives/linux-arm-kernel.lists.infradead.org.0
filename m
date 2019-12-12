Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B6F11C66B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 08:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E/wfSnn0nz8nLCktzbNIzC8TvXYtDxJ84tdukICekKE=; b=Ni1D/BJ9o1QM6no+YFYVxqo19
	3APVT90G1Ggq+7cgMBAEPDZa39uMUK83sOa2sRQe6QahfVsh9GtUzgjLAqCUKPgf45NQTAdX4x0OD
	JP+4fdbNGfUV5FhZ20hf6ONV18/5/ZGXLy1Qzc6cjlkARRTVAWkW08YoEgm345dkup0T/S4T/e4HB
	XtxswPu+AUf1hCtx9ot12l1vF1JJlvqtORKzCA1bl7/1KguxiQKz7a04UoXYHLodws4a3eeb0rNWF
	vbSGkh3TxVmFh5cepGc2IAmTZIbgVJaKyRcssaYYF2FMXJict5s8PXitIkgUDZnoFHNmNB0F9TeLU
	nuIou2WDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifIzH-00006s-Fu; Thu, 12 Dec 2019 07:34:15 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifIz8-00005j-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 07:34:09 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 338B423D09;
 Thu, 12 Dec 2019 08:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1576136044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ahNlfZRgvyxNMfLruGaGs7saGlzvDiLyQV2jVcLv9i0=;
 b=kpjgNJ8csN4y9W3dOZcgoA6Xm76QjIO2uzLC68Ruww0eJJVhotfhADAkr62cQnzi/SCblo
 5TvosPORI6iVRAbMsuIcEzzdkoZRjp118ofA3dxSdiRr1fU8Cnk/z5/1bK5c1OrISEjMTx
 oLzv39WgUp0awOhIjHDIErTaNTB7DL4=
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 08:34:03 +0100
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3] arm64: dts: ls1028a: fix reboot node
In-Reply-To: <20191212020055.GB15858@dragon>
References: <20191211171145.14736-1-michael@walle.cc>
 <20191212020055.GB15858@dragon>
Message-ID: <ad3885c9545cb73eced2fa3f0ce6f0be@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 338B423D09
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[7]; NEURAL_HAM(-0.00)[-0.285];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_233407_068980_DD4277C5 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2019-12-12 03:00, schrieb Shawn Guo:
> On Wed, Dec 11, 2019 at 06:11:45PM +0100, Michael Walle wrote:
>> The reboot register isn't located inside the DCFG controller, but in 
>> its
>> own RST controller. Fix it.
>> 
>> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
>> Signed-off-by: Michael Walle <michael@walle.cc>
> 
> You missed Leo's ACK on v2?  I added it and applied the patch.

Yes, I forgot to add that, thanks.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
