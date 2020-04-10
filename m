Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA7C1A47B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2utPL87OMqXeSVQvdMO4m+U+yNA27YZ6BzrOOuOx0Os=; b=eFNdxKtkvKS4XZ
	xUO+nOLYWHFbkPT5H9FFYqRxQCIaSRCl/AIWZDOsJh3emWUGn1CdeXut1j7UQUnlGElmdHEiOwkyy
	RI9EWgm8oDBiVNHA0Fss2w3YWixNoFMuLpr6SowyiqT01CN9jbF+92HisHobUwbvaHMKwO4a9d+5t
	IGlKKcvdBE10P1ppMoV5tdt5XOGCtlcoR8mHM5PDMqfleF6oOQ9e+qii1R480ptp8Zy7d9nKdMD9y
	QX7VGDCk+eSkwySmWj5VsscF/uUOfvMa9GHCbOEx7VYQ0fkkbVPCtQnzMtS364VzaX87CY0Yxdx31
	yhg3jxI+omsoiN1DqWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMv7r-0000km-7j; Fri, 10 Apr 2020 14:59:23 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMv7j-0000jG-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:59:17 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 7DC1F41417;
 Fri, 10 Apr 2020 14:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 in-reply-to:content-disposition:content-type:content-type
 :mime-version:references:message-id:subject:subject:from:from
 :date:date:received:received:received; s=mta-01; t=1586530748;
 x=1588345149; bh=QW/aUtaswxl+za3c1gmqfuAg6QD/Af1ecf/UE38sKEU=; b=
 cU+DmLkCexDSeQEYeq6DIvlUuef7JmObciJ0QTUk4FeEnTRbT1GR+E1tHtDCTcOX
 s2c/oLiB/Z8W+P3SGLcA9GLYEgrWEs5Zv2sTuW7sMJqxrVZ0hogLB2lzReRuRSCn
 8mtCSPC47LERrb3eBE8OvvR0NNRTxbUOnkItnfe6cvU=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KlDxzkNWdWi; Fri, 10 Apr 2020 17:59:08 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 8487F404CF;
 Fri, 10 Apr 2020 17:59:05 +0300 (MSK)
Received: from localhost (172.17.14.122) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Fri, 10
 Apr 2020 17:59:05 +0300
Date: Fri, 10 Apr 2020 17:59:04 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH] ARM: DTS: Aspeed: Add YADRO Nicole BMC
Message-ID: <20200410145904.GA15615@bbwork.lan>
References: <20200406101553.28958-1-a.filippov@yadro.com>
 <ad46ff33-8ce2-4ffa-b12e-204053e4f705@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad46ff33-8ce2-4ffa-b12e-204053e4f705@www.fastmail.com>
X-Originating-IP: [172.17.14.122]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_075915_968566_0D1B8B32 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.207.88.252 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 02:29:47PM +0930, Andrew Jeffery wrote:
> 
> 
> > +&i2c11 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c12 {
> > +	status = "okay";
> > +};
> 
> Are you accessing devices on the busses from userspace? It would
> be helpful to comment here why you're enabling all of these busses
> but not describing any devices on them, if it's necessary to enable
> them at all.
> 

Yes, some of them are unused and may be removed.
For others I'll add comments in the next version.

> > +
> > +&adc {
> > +	status = "okay";
> 
> You should specify the pinmux configuration for the channels you're using
> to ensure exclusive access to those pins (otherwise they could be exported
> e.g. as GPIOs).

It was just copied from Romulus and looks like I missed iio-hwmon-battery.
Is it what you meant?

All other pins are wired to the ground.`


Alexander

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
