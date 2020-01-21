Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED46143FCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIkG5jd9mPDdIETyPsC5nLLYEgjun06dTIcL5IWBWzM=; b=BAV4tv11T/a+Gj
	iDpliKf8YO7ygJk7Z99DjPAYgeAlKbZ8DrFMhYgDc5H0lKjomYpNk33vy0yDWRsinJ9ay1VtKU22/
	tYOXXnU6G4tFcCGcubRvCI4HV1B5YJVxGp+QLKa4KPi+Sx0TZuBSmr0ycLnFZ5MKrwihgqVtdPpl5
	QJHPjkHpkkAdxfsU7F4GoTwSgJD6LHvoKbPmhYfy3sY5k4J7MHPgdHMOY90i/R9VcIzHS4/cnDS1z
	h5He61FIu0uMTuAzlmZbx/gnuRcm+geo38ozlf5JQKcyac25xCyZX1DzsXBJgx2jBwt62kIU3Y4dV
	XwhJQCpwzuNsEOvBYFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituhu-0002pG-Dz; Tue, 21 Jan 2020 14:40:42 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituhj-0002o2-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 14:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eanzNlQOXiyQv7SY2HxEu4R1QjiEvG/A8Il3e6bRKMk=; b=ZcgPsiCF79tdrPQ/9tIwj0ppNQ
 WhFSPgtG//uXN5jaJouR/qFhNXHIFbuZUm97Gls0sURalRsyDyDMMxxApWK3hv/2a2Qw+EkQxIxQo
 eUeKPlt9kBn0hAMIzrnfDp+Fx+e+tFhUrSakt0R7dEyQynYb6HMvQ+mMxFJKpHehIgpY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ituhX-0004hj-5C; Tue, 21 Jan 2020 15:40:19 +0100
Date: Tue, 21 Jan 2020 15:40:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: No master_xfer_atomic for i2c-mv64xxx.c
Message-ID: <20200121144019.GD16902@lunn.ch>
References: <da0061d1-917f-d807-a7ac-05d302d88565@gmail.com>
 <20200121094023.jywheey6sjsgrr44@gilmour.lan>
 <CAGb2v65Kz0ymDapbyJ_WTebEGOs5=wkqMXUZV-mQJhdKr8ZGhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v65Kz0ymDapbyJ_WTebEGOs5=wkqMXUZV-mQJhdKr8ZGhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_064031_507980_0C0A9A59 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > However, I'm not entirely sure how we could implement it without
> > sleeping. The controller is basically a state machine that triggers an
> > interrupt on each state change, so you first set the address, get an
> > interrupt, then set the direction, then you get an interrupt, etc.
> >
> > I guess we could implement it using polling, but I'm not sure if
> > that's wise in an interrupt context either.
> 
> I believe that is actually how some of the other drivers handle it,
> using polling. You can mask or disable the interrupts while in the
> xfer_atomic callback, and the i2c core won't schedule two transfers
> at the same time anyway.

The ocore driver is similar to the Marvell driver, a big state
machine. It implements polling for atomic transfers. It needs polling
support anyway, because some instantiations of the hardware have
broken interrupts :-(

Maybe there is some code which can be copied from the ocore driver?

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
