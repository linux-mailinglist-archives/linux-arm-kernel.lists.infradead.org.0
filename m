Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE4410E2B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 18:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIIsfdCDU0lSXONTJzQc8E0Cjbaxmicm7tOIxbc/kwg=; b=e97fOpyOrWNBnZ
	2SRyNPkbu4s4K5tRYQcoLUYG4x0nQGjSXWHyVt2klWDTH/+ydJZDpsjX2UjRLmbtWADYGOr+VMgX+
	6DPPJRCMJq1XArnw+1vHnBF6hNLKcieZffUsmPNI0eGRgshuG0r1vVdDcKXaJC6ClrTI5mAKleTiq
	l3H4kxbhwMpq8RYEsdbfQYySps6KPcTI2dp3IJqb36awiUnr2DuhgYFy65JcjOPlRAgcVVUKOoNpJ
	JQZNb8HOWLI4Bo9j19n9/wfFELsyTxrblP3cKu3ZWKsuaHKfD3u2Wwyr0HAlE+br1fvcSgE9Um/kk
	N6HFA4Kj1jaGvLsJmy5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibShX-0008Kj-Ga; Sun, 01 Dec 2019 17:08:03 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibShP-0008K6-67
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 17:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g5DKla0xIjgClgoqUPuYUlrW+gPxBbbCyoXWMbyIx1k=; b=xJdu/YVY226RDchm+jMq+32OQI
 uQGE39LrYs3+im5cqeyF95nV+vE0LvZpmNOsqkrcpr99SscZMkEbtXE4igmME0O+78jPX7XYlUGNC
 7uujPSuV2OPR/D1vq3dow8hpr+VHtssR4/6KNHVgCg6GN2loBU7/iwH8k7QeyDwgaQIA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ibShB-0005Hk-C1; Sun, 01 Dec 2019 18:07:41 +0100
Date: Sun, 1 Dec 2019 18:07:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH] ARM: dts: mvebu: add support for SolidRun Clearfog GTR
Message-ID: <20191201170741.GA20227@lunn.ch>
References: <3a870e11b152e2f8ffb2b3256c5ac42741658c4c.1574960406.git.baruch@tkos.co.il>
 <20191129170717.GC28308@lunn.ch> <871rto7dbg.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rto7dbg.fsf@tarshish>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_090755_228529_53DBFABF 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch

> >> +	sar-isolation {
> >> +		gpio-hog;
> >> +		gpios = <15 GPIO_ACTIVE_LOW>;
> >> +		output-low;
> >> +		line-name = "sar-isolation";
> >> +	};
> >
> > What is SAR?
> 
> Sample at Reset. That's the Armada 38x datasheet term.

So this is pretty specific to Marvell. Maybe a comment would be good,
explaining what it is doing.

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
