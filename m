Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A89842712
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIxnqS8vIt8eDDzmmG3SpfyXtiOReKzE6XKx31cd1p8=; b=FMfExoNoTkTu8L
	lMB3mbCCXQDblFjSI/diqNFvdFuDaAblrNcq3L4Xf8kK26RFeaDvSTfXijYMLLtmfLog+XwfxT9Na
	EjTKW55gx8ulih2gkG5yFTCQENXQCcObSG0qoYoooi9I8rs6lJVST3UTVVpydriaXHRHFEc709PzG
	iuU/+KRveeaNxarNXz43EwtTb3U4BkX0xx+iqtN4+YFjpLKW6nd2NxcW8ccKdNwuQ2A6GxLEhPrD9
	mHhmvL6kOCLmljMeijekzZMzMLQnQA/rYgWUTYHjetnEc3LXZO8njhm4j2chFX39p9q66EwOmhVXA
	wLRqubmhne7UEeioqvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb322-0006YC-Bu; Wed, 12 Jun 2019 13:11:14 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb31q-0006XD-In
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zzc6GI7lGEPaQXGvlamBcEyrm5Fho0Vz0zqRdDP5hq0=; b=QQ0PwDAeuICS/1pKrFIl9qqFCV
 DVvk65aiWdgNZKve6NvZEweANaJXywqmPwYKrmAVNEvtvFwEVTj7E+J2FualB+Tb+98QSaZKGqZgO
 pc0lw2PM0jUsWWW9P6hUqGY37Dc4KXe0Ps3dd4cQbhHZq5gx9+yKnAXHrTjlMkvVm/1o=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hb31d-0004Fu-AP; Wed, 12 Jun 2019 15:10:49 +0200
Date: Wed, 12 Jun 2019 15:10:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Message-ID: <20190612131049.GC23615@lunn.ch>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
 <20190610032108.5791-2-yangbo.lu@nxp.com>
 <20190610130601.GD8247@lunn.ch>
 <VI1PR0401MB2237247525AB5DB5B5F275A8F8EC0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2237247525AB5DB5B5F275A8F8EC0@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_061102_786837_2AC7BC11 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig index
> > > 9b8fee5..b1b454f 100644
> > > --- a/drivers/ptp/Kconfig
> > > +++ b/drivers/ptp/Kconfig
> > > @@ -44,7 +44,7 @@ config PTP_1588_CLOCK_DTE
> > >
> > >  config PTP_1588_CLOCK_QORIQ
> > >  	tristate "Freescale QorIQ 1588 timer as PTP clock"
> > > -	depends on GIANFAR || FSL_DPAA_ETH || FSL_ENETC || FSL_ENETC_VF
> > > +	depends on GIANFAR || FSL_DPAA_ETH || FSL_DPAA2_ETH ||
> > FSL_ENETC ||
> > > +FSL_ENETC_VF
> > >  	depends on PTP_1588_CLOCK
> > 
> > Hi Yangbo
> > 
> > Could COMPILE_TEST also be added?
> 
> [Y.b. Lu] COMPILE_TEST is usually for other ARCHs build coverage.
> Do you want me to append it after these Ethernet driver dependencies?

Hii Y.b. Lu

Normally, drivers like this should be able to compile independent of
the MAC driver. So you should be able to add COMPILE_TEST here.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
