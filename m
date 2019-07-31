Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EC37C14E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dc7eGB/Xk9hvsaTwjEatV5YciMnXL5N32EzxCqlBZGo=; b=U5I0zsnGdDmwJt
	J4XIZ/ctnNTWm4XByZRcq37fs811hQI+hbZSwD5lZllX9cxdwUYH/Ofdj7eLKYMP7sCT0qVQNyxpC
	QDbSPu36UFB7k0R9UoUnM6FbyGlpfWtOWSetYpRnjK9TM6SXcT3228WCXhiwTkptuGZCWFXlaYnYP
	/jUtbkMzeoPl2+OiaVAWs5lwo57vG/NkCLdJSFDk0nwFOhsQqI8605GF+cBp80WcJFeq0Z6dp2PBY
	oh6VkzcaaiIFuEnX0GRO6fbfk+/rgSqBoQcNVD97/TlDCDEzaNDTEoWd+CKMp8alPcCOHrXM3flCi
	2r0kJabM3nbRN/2RAX9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnix-0001UN-Ds; Wed, 31 Jul 2019 12:28:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnin-0001TY-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:28:47 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1214520693;
 Wed, 31 Jul 2019 12:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564576125;
 bh=WtyBFMdBR353vI3+5UJCR8oWiGoLewqTegg0gZO6II4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W2aMgXFP0ZY1mOmQf7hJZaphxi/bpCIlRWLjK7TyPXfN188tjBSPAewFIV1Zp7qhG
 8+mbZq0QfXLHBhFl+DZ3IZc9bdVaRNvyM9EO8p6V+C0wUcnyGr9/qaoq3BaZZgl2RI
 izCUxP6+4FP2lwiZEAZGdMNVzp9T4C3smXHIQqCk=
Date: Wed, 31 Jul 2019 14:28:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 04/11] firmware: arm_scpi: convert platform driver to use
 dev_groups
Message-ID: <20190731122843.GA27960@kroah.com>
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
 <20190704084617.3602-5-gregkh@linuxfoundation.org>
 <20190704091025.GA10622@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704091025.GA10622@e107155-lin>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052846_211542_D4851B4E 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:10:26AM +0100, Sudeep Holla wrote:
> On Thu, Jul 04, 2019 at 10:46:10AM +0200, Greg Kroah-Hartman wrote:
> > Platform drivers now have the option to have the platform core create
> > and remove any needed sysfs attribute files.  So take advantage of that
> > and do not register "by hand" a sysfs group of attributes.
> > 
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> 
> Assuming you plan to take this series as a whole,
> 
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks, there will be one more series, but ideally we can take the whole
thing as-is.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
