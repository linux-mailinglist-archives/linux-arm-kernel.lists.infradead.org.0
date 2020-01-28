Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08F114BD4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQJKNYFUqkmiBmpifm0+q+PktkDv6HvtTfivr64w1GQ=; b=Jb+nBZlXHFBxo1
	BdFjiyLujfyB0YXHBOPi1uL3pBaE3P5V4+fQcos25TBCP5PXJKXFQRSm/gFK041Uh7QU6lthAtngd
	TAwc86A6vMOOiIQzJU88DaspiT7DVpAlNX64k+Q27M5lYfsRHlefSNXLm3tNxw/K1X86sDyICK98G
	Npwx+zOU1ESIATnWiIvZ0lmkme7PLpxMoFaW/AO5+fcBEZKbhwRNMrEf2Zph/rDBhZkY4+0+TcwQ+
	3ESYzvczwo+Z4H9cCThIpThg+OK6WRF7vCI/K+GBXrHk/0NvkCS41P/SL7KcL7FS8vrNjd6B6Ok5e
	cdP3itSVTfCuQGE4QxOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTAx-0003k9-AG; Tue, 28 Jan 2020 15:53:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTAU-0003UE-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:52:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51C9C21739;
 Tue, 28 Jan 2020 15:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580226765;
 bh=RRwCxgpLdHkrA1x1Cq1vksuhcqtVADvwrAno3KEpW8s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D4zqX/9twXacyeGJunZmmr41v53JOZvXG0C8CuKm1TOkkPn5q4goYdWIusJrk6JoE
 eVpbyyjBJErpsGSbVYJ1E8dG5A37CLUHF1TGV1mHu9upJjkwLuOVwagOKh+P+SrMwG
 BAudZwrf6V2YFadLZFwf+DD/9NUHpd04cUU+cypI=
Date: Tue, 28 Jan 2020 16:52:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200128155243.GC3438643@kroah.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128153806.7780-3-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075247_094818_D6D19989 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robh@kernel.org, loic.pallardy@st.com, arnd@arndb.de,
 devicetree@vger.kernel.org, system-dt@lists.openampproject.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, broonie@kernel.org,
 lkml@metux.net, linux-imx@nxp.com, kernel@pengutronix.de, sudeep.holla@arm.com,
 fabio.estevam@nxp.com, stefano.stabellini@xilinx.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 04:38:01PM +0100, Benjamin Gaignard wrote:
> The goal of this framework is to offer an interface for the
> hardware blocks controlling bus accesses rights.
> 
> Bus firewall controllers are typically used to control if a
> hardware block can perform read or write operations on bus.

So put this in the bus-specific code that controls the bus that these
devices live on.  Why put it in the driver core when this is only on one
"bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?

And really, this should just be a totally new bus type, right?  And any
devices on this bus should be changed to be on this new bus, and the
drivers changed to support them, instead of trying to overload the
platform bus with more stuff.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
