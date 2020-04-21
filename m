Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A147A1B2A6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOHM9jOA6qDCJrB8aIorBJ4f1CZ+SfGvCTcrMg6GQ6M=; b=KPnR0SEbxHOpI7
	pb7sM28LlT7N//f6w+N/w+rJJ331yQTC7PbsegDLKKHiPfvZ4ZKvyoOYZg8g8CCy6jWSwRpCsH3m+
	4jgUTzJXFeDZCS1/qtiS71Kt6iZzhGnf0qqlcHgnFQ8UYdGKuD7KTmsW00V39oWiDFsUFLTH36BJp
	INmknxIEfPHMZX7lhkiDortZRFbg3C5mNKiVEAqwNVnAjAT2Kfp9wxkQFS1VCd6creLN5l4yYfJhO
	U/ZxotbFvzMl4RLUpZpxopPpkE5qtZJ0ofu63W5vUXD9IVyvd4AfTbu3yFlBdpWOpLLDLdvA/ypNR
	0OBqJLCm8H3+wpTUl6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuAA-0006GI-KZ; Tue, 21 Apr 2020 14:46:14 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQu9z-0006Es-8X
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:46:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id C5128FB03;
 Tue, 21 Apr 2020 16:46:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btwSYLliZDjF; Tue, 21 Apr 2020 16:46:00 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id BDC55400FB; Tue, 21 Apr 2020 16:45:59 +0200 (CEST)
Date: Tue, 21 Apr 2020 16:45:59 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Message-ID: <20200421144559.GA62048@bogon.m.sigxcpu.org>
References: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
 <20200420145459.GE32419@dragon>
 <20200420163224.GA44571@bogon.m.sigxcpu.org>
 <20200421030307.GB8571@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421030307.GB8571@dragon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_074603_460356_81902E55 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kepplinger <martink@posteo.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Tue, Apr 21, 2020 at 11:03:07AM +0800, Shawn Guo wrote:
> On Mon, Apr 20, 2020 at 06:32:24PM +0200, Guido G=FCnther wrote:
> > Hi,
> > On Mon, Apr 20, 2020 at 10:54:59PM +0800, Shawn Guo wrote:
> > > On Thu, Mar 19, 2020 at 05:46:02PM +0100, Guido G=FCnther wrote:
> > > > According to the imx8mq data sheet running VDD_GPU at 0.9V is enough
> > > > when not overclocking to 1GHz (which we currently don't do).
> > > > =

> > > > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > > =

> > > It doesn't apply to my branch.
> > =

> > This was against linux next when i sent it, can you link to the branch
> > it should apply to please?
> =

> Here it is:
> =

>  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
> =

> Or even better:
> =

>  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git imx/dt64

Thanks - and sorry for getting confused with all the kernel trees
around. v2 should apply to the above:

   https://lore.kernel.org/linux-arm-kernel/55399d6b297e329f125a71aea16e5f4=
8c2857945.1587480093.git.agx@sigxcpu.org/T/#mfa29f121347a9d3d76bb14d58fc63f=
e39767db9c

Cheers,
 -- Guido

> =

> Shawn
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
