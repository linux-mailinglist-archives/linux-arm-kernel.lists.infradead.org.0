Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D716B4C738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kq5OTOgMrxRoXWCbS4eD+gQciv53Og1GSG6JzjgM5Ao=; b=Vz8tIHwJlp/ArU
	DkkXy5/S0F2vFJ6VQ+eJrtr9UAEz8K2G2gmV3xYamx6ROqaSYZMDvf2mM2Qk/IFPWKp/adhux0Fjq
	j+zEN+WhYcco284IBq+e1u3LzbNLLqlFh1/kvSK2gIa+52oTX3S6HvnT5h+mSH7jOdvCtQtMEp8jL
	iJBXuVl4HgpB5bFRmLeeLSArCuM54KWXm13BbZSu5vOlcPWMdBsaa58Z3OmoDhbFV8FYlXlSniGGI
	T0jYyuJQsevsGoAhL9g/i9xw+t+WDdo8bBApK3t/33KRIEZzntcJspd23pghtRDnZWSFdiKYaGu31
	MofAZOg6vAGLQW855dCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqFX-0003F6-5G; Thu, 20 Jun 2019 06:08:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqFK-0003Ed-WC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:08:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7F6A21537;
 Thu, 20 Jun 2019 06:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561010910;
 bh=2FH8vnV2poQ+4I2V5AEv0b9MJ/0/iXhdDzsRsFVHYF8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NAdQvsg/oEvoNEtc1cB6LExDnR1rb9EMyC4js5nvHz1hafUT6727PCVKLgGSHpNyW
 XEXS12Or7dw8cQUPgJZJbpK+AetSyRagU43X3wyeRRjhNRI016BHHpKiKahA7nHPU1
 k3kMhSFtqVmhg3jkpER5IrPgFG2SjWvjP0fPc8o0=
Date: Thu, 20 Jun 2019 08:08:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 00/28] coresight: next v5.2-rc5 (V2)
Message-ID: <20190620060825.GA4372@kroah.com>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_230831_059164_BB235772 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:52:50PM -0600, Mathieu Poirier wrote:
> Here is the rest of the collection - it applies cleanly on your 
> char-misc-testing branch (538eca25ff8f).

I did not apply patches 20-26 in this series based on the comments I
wrote on them.  Please fix those up and send as a separate patch series
for 5.2-final.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
