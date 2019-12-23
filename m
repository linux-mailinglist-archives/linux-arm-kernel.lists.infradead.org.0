Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEB0129215
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NffOPrf0zeHPrjbohUa9id17r+fSIjy7KdpxDvBHt6o=; b=e+rreT1YStqWmW
	nneh3wxvEsWRJl371plfCAmqtkfPMam+mamLZKd20x3GhQSut2TSG7yZmB8mZqnbIMt1jscvaY0TW
	UhLaU8bPdQRwyHB8FRUpKBqqqChKFh8j1jrgTT3KWVqCcIzrOY+OEgbkKkPALeBO/WctZkvXswexU
	K10hdmeONMTZATlYXMgccgKITDsEOSsf6P5bAjqqjhK6iVTYwQhk0tdXN4UPg9Ds6O2rt1Ig1q08p
	BPspCFlB0YAK9ZBBNA8ZQgZWQp1DNZR4DAnjlGtJNNpo/SnG+SJAZEqYvAr3o69V1FsrbrdcAmVXI
	fRn0gaxfxmHGXidSoGdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHgJ-0003Pd-Q6; Mon, 23 Dec 2019 06:59:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHg9-0003P8-Cs
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:58:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D35920663;
 Mon, 23 Dec 2019 06:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577084337;
 bh=KmMe9R9H+pA1DgqDHLdO2Z0mTYL8FBrsbBRJqdM9EUM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VYmJz88A+8mZsqG9JO+S456uSI+KW7sfu79Ud/KPNiCgHYecQbAUbrHkr07AGjB/y
 jKKqGrOUGoYv8fi9yv/RxZYsuaEc96KffINiot+mb2kizOMIrU3ZlruOuC5sToANDi
 JhIBaIKytAnLx2M11+H0WkVwUhccCKvjsyiOYhsI=
Date: Mon, 23 Dec 2019 14:58:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] ARM: dts: imx6qdl-apalis: mux HDMI CEC pin
Message-ID: <20191223065831.GP11523@dragon>
References: <20191213134937.257840-1-stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213134937.257840-1-stefan@agner.ch>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225857_461105_ADDFC46D 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 max.krummenacher@toradex.com, Stefan Agner <stefan.agner@toradex.com>,
 marcel.ziswiler@toradex.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, philippe.schenker@toradex.com,
 robh+dt@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 02:49:37PM +0100, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Mux the HDMI CEC pin to make HDMI CEC working. With this change HDMI CEC
> seems to work fine on a Apalis iMX6 on Ixora using cec-ctl.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
