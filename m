Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AAC37CEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbXBQoazJrT4cwtWIi4BoIvz5wyDHxxPayOmSjYHRbs=; b=Qo3j/YCKFZ0Ja9
	0tx/U8AhlP5nBBWnu4TmUnoXeep9FSAFj/dke+xekwWlEiDIXwTbRYq7qqYpF8zPYZ1SI9s/+Jiaj
	MXZ4T98yv5uxrBpewaO/0SfGVaEcIcf8GFqwcvV1GluIouMCzLD3WJBzxAQhbBuCb3dzHYO7dJ3XV
	Dj3MQOA9N11xB6snQUWlQ5gSTIzpNbHJDMjgoUvm64H9ZWCA+HbT2J7jEXnTdXELWXFreq/SwMbiw
	M2Ft+kuhZ9X/wVeeodBs2MlGH0jC+1wmDZbB/auIoMjhFYSC4f5UC8H+x8toPkZw8z8paD8GGQVGP
	EJgNKNtBXAGbaibA6auQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxgO-0003CT-Pi; Thu, 06 Jun 2019 19:04:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxgH-0003BY-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 19:04:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0A732083D;
 Thu,  6 Jun 2019 19:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559847848;
 bh=nE5tGyT6iFVO9pBfrN6905TKjYR4oXGv9UpQLxq2xgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RxDmf2mcACTGIUiuRUAm1Ea0Trtu3Cn0u0iT4HNZ9Gh89PFTWYeZ+3wztGyJSKA1X
 AvUyB9vrGAXKCQ2o/hJ0pzjjaPBHCoPOSw3e84JQ5Qz9Y94alVllfuBMgDLvhMtdKj
 OQ0htRourVGkq0rT4gO/WsBOnzSNrAguP7YZ0HzQ=
Date: Thu, 6 Jun 2019 21:04:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
Message-ID: <20190606190406.GA20166@kroah.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190606132517.GA7943@kroah.com>
 <CH2PR02MB63592DAB5E23A35C86F81D09CB170@CH2PR02MB6359.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB63592DAB5E23A35C86F81D09CB170@CH2PR02MB6359.namprd02.prod.outlook.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_120409_476599_817CB5F5 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:16:48PM +0000, Dragan Cvetic wrote:
> > 
> > > +
> > > +	misc_deregister(&xsdfec->miscdev);
> > > +	atomic_dec(&xsdfec_ndevs);
> > > +	return 0;
> > 
> > You free nothing?
> > 
> > You are leaking resources like crazy here, this is not ok at all.
> 
> The managed resources are used.
> Anyway, I'll test for memory leak and search for the answer.

Oops, no, you are right, I missed the "devm" prefix on those calls.  My
fault.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
