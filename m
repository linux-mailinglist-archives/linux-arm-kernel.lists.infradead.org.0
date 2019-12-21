Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78B9128AB1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 18:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSb7El8niEUcAOK1ANnI6fZwwDhQ3XvHPWFqjfbaTOI=; b=dxEPbL900gG6ci
	XUGnUhtl//Exy87FtQZ5eP4PRSrfbSQEKiNvT74TA/5vze8H+5X4diwgyafV0+YiaR5Xqp5Wxoosj
	1+SMojLaD2QrlneOX2ap0hZzI4YNMU/S0vLnE1sAyiDXiali3MnR+s4sOOglm4vsye0J8YtRGrsZS
	JXv7DrI7N2oVuAAZpbTCCDN0Kvreu1upVYBHTn3xQhsoCJDzwxB73cRx2crX8mlnnYp+1Rmcusd+5
	EncbY0304J684SrtE/CHgKOeq6F+JuO+4kbaMhN1W6+r9tK4Pv+GfqhYi7oFPvwQzVmwyWxy1wdnP
	5SdxN7/NS5OkD4VYH6NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iij26-0001xP-ST; Sat, 21 Dec 2019 17:59:18 +0000
Received: from mail-sender210.upb.ro ([141.85.13.210] helo=mx.upb.ro)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iij1y-0001vU-Aw
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 17:59:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 4D484B56279B;
 Sat, 21 Dec 2019 19:58:55 +0200 (EET)
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id rS-wCd-Av3WE; Sat, 21 Dec 2019 19:58:53 +0200 (EET)
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 89D7EB56279C;
 Sat, 21 Dec 2019 19:58:53 +0200 (EET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.upb.ro 89D7EB56279C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upb.ro;
 s=96342B8A-77E4-11E5-BA93-D93D0963A2DF; t=1576951133;
 bh=X+42fjabk+WLOB1bPd12eCpPGYMZu89kQtWGOPGu13I=;
 h=Message-ID:From:To:Date:MIME-Version;
 b=dZumlSXGZqk7S3vz0l3XH/E8QmWrWWByIdVC01rPRR7aoeOkRxc3uj07nRP6x9y7A
 PmxsYJL7TXSM3eOnSIIgub/Fue2hFRpmw8e+EJ6S77WDFyNbt/WlDuMA//J0hlldMu
 quytGl4caIT7zp5A4K1MSOTs2ONSdh17zC7RjTG0=
X-Virus-Scanned: amavisd-new at upb.ro
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5FG3taiS2m5M; Sat, 21 Dec 2019 19:58:53 +0200 (EET)
Received: from sabertoorh (unknown [86.120.75.237])
 by mx.upb.ro (Postfix) with ESMTPSA id ECE47B56279B;
 Sat, 21 Dec 2019 19:58:52 +0200 (EET)
Message-ID: <0a09d9ed5fc5ae6c651491dead5f81bfecdbca4b.camel@upb.ro>
Subject: Re: [PATCH] i2c: cadence: Added slave support
From: Radu Nicolae Pirea <radu_nicolae.pirea@upb.ro>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Sat, 21 Dec 2019 19:58:50 +0200
In-Reply-To: <CAKfKVtFqbtovQGQuzgCYzTu4bHOmAOmTz-tZMD89iUkMPc8awA@mail.gmail.com>
References: <20191219124120.53754-1-radu_nicolae.pirea@upb.ro>
 <20191219130501.GA958@kunai>
 <6504123809effc310ade02dbb8a63f10db6b6c92.camel@upb.ro>
 <CAKfKVtFqbtovQGQuzgCYzTu4bHOmAOmTz-tZMD89iUkMPc8awA@mail.gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_095910_717262_358FD75B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.85.13.210 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-12-20 at 14:55 +0530, Shubhrajyoti Datta wrote:
> Hi ,
> 
> On Thu, Dec 19, 2019 at 7:00 PM Radu Pirea <radu_nicolae.pirea@upb.ro
> > wrote:
> > On Thu, 2019-12-19 at 14:05 +0100, Wolfram Sang wrote:
> > > > +/**
> > > > + * enum cdns_i2c_mode - I2C Controller current operating mode
> > > > + *
> > > > + * @CDNS_I2C_MODE_SLAVE:       I2C controller operating in
> > > > slave
> > > > mode
> > > > + * @CDNS_I2C_MODE_MASTER:      I2C Controller operating in
> > > > master
> > > > mode
> > > > + */
> > > 
> > > Can't the hardware operate as master and slave at the same time?
> > > 
> > 
> > Of course, it can. If the driver has a slave registered wait and
> > listens and if the subsystem needs to use the controller as master,
> > the
> > driver changes the state of the controller to master, sends and
> > reads
> > data from the bus and after this change the state of the controller
> > to
> > slave.
> 
> However that should be done only if no master is talking to the slave
> right?

Yes. The state of the slave must be IDLE, otherwise
cdns_i2c_master_xfer will return -EAGAIN.

> 
> > In cdns_i2c_master_xfer is done all the magic.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
