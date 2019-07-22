Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3C36F7C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 05:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WN8p84N/ZYUnRNzjZlLCPww1AGZ/hC21WBB7ESlnGg=; b=Aubmd6WazDrboj
	w8UpwUSrtTyGtHZr/AZKUj8Su1AfGKHJIkMiFzIHoByqH1kX0Ygqkpm6c3OMEG+F5tlPEYTEqLSQz
	mtb4iXnY2SubSrR0vSLls0pkM01+EO/38DOEoWg6SRMwz1fJqRTs3+oRBazWZYBpRNzd2dFe4EO71
	SPmhKQxhduDoymX7/yz7R66WjUdEORZSeqi3oxXQKlcV8GL7Gpp0PU70gLoyI2vU9Gw2IPdbM+tHg
	P96fhkCTbGFGU8qfV4Di9We4FWxVxgNu/dwj0gzkrWtyqKm+dRNIdBo0wZyyDuTmqsz90gqRikT8n
	c6A470IpnNRwz4LwLo3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpOlA-00089v-Rw; Mon, 22 Jul 2019 03:13:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpOkr-00089V-P6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 03:12:51 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so25564468lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 20:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BoTOo2Q0hAaQhRV9S4lq8HdMSQdYs79oTvCprCzExNE=;
 b=vVp/xUv+CtFzcPuAXowYe8wJhVlGxEwlkPGxO9uVGvr6WeSnEwgVsW6GAow0S9juzs
 ai84cJL7ajD0+curTRmYC7lrWpicyEyd7Y4L3et7J1JmbfOXBkO+2kB7bhI9RMs3KR0e
 h1+h/FM36KmpJoewzbcIMlKLQ/wjuoD/IAUUKgW1l55z3lLxy2Rh8FFQ46HuXy66nnmW
 xF3U+cRwtK3tCNe1xQBvm1pILf/LQDvGi3CE4wiN/M57evG0vHGSCeWaC9g9rHZa6b8N
 vV5llWLCjRZx40SqG5vZOJ6XqYBbGf5X364KyHxtQRFGiyPscfc+EPstVGNVxhGO7Tjp
 9MUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BoTOo2Q0hAaQhRV9S4lq8HdMSQdYs79oTvCprCzExNE=;
 b=dsRFlYLAnBpiHen6ve+G6x3GFCjuztAA5mhk/1AnflcZYucAzaxReZFazDwD9/hFBQ
 dDcy0Bk2jcDbdinVrY7NYn4dI7sYMbGfERLnE6z4BihD1v9bos92Zg5v+eHOtpNpDr9V
 xBGfKMNQeqDGl/INJBal7hTIEMf8lQmJjuGZJG2y0EQJUNU7kDNF/kfGXyYty8RikDgr
 +YxxAOOZFGtH6msqmL+nbxfYlpusBZVRxKQAym3W6RynCfRSdvrdPtwlZzo6k4Qh72NL
 NN4SMHdjrWj3KFinCVntDNiUGi1oUBdc01/FbOOnk8iJZR2lmPfyBH7pWLDImnv3IiOl
 f2Fw==
X-Gm-Message-State: APjAAAXVDlMkWL6mIAZ1Pvsj8al+aD4pSEl/1FqUCNJzQda4tEwd8PaM
 qm/M70lXaabPWH3J5xbNfv8Bt1Kr
X-Google-Smtp-Source: APXvYqxVa//VcmaIKYBFuFD504DvOuD2bhedQ6g47iO9335WFRXA8+Jy+FwxH+dmn5XOy5APicOWvg==
X-Received: by 2002:a19:c1cc:: with SMTP id r195mr29910373lff.95.1563765166998; 
 Sun, 21 Jul 2019 20:12:46 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id e13sm7350247ljg.102.2019.07.21.20.12.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 21 Jul 2019 20:12:45 -0700 (PDT)
Date: Sun, 21 Jul 2019 20:07:04 -0700
From: Olof Johansson <olof@lixom.net>
To: Leo Li <leoyang.li@nxp.com>
Subject: Re: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Message-ID: <20190722030704.jg23kwxksh7ge4vn@localhost>
References: <20190605194511.12127-1-leoyang.li@nxp.com>
 <20190617114948.7xxtpivve52c2jnb@localhost>
 <VE1PR04MB668773AB42154134CE18A6AB8FEB0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <VE1PR04MB668750E96558796A2E81DB678FF60@VE1PR04MB6687.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB668750E96558796A2E81DB678FF60@VE1PR04MB6687.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_201249_820104_426BCC79 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "soc@kernel.org" <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 06:48:17PM +0000, Leo Li wrote:
> 
> 
> > -----Original Message-----
> > From: Leo Li
> > Sent: Monday, June 17, 2019 8:29 AM
> > To: Olof Johansson <olof@lixom.net>
> > Cc: arm@kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; shawnguo@kernel.org
> > Subject: RE: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
> > 
> > 
> > 
> > > -----Original Message-----
> > > From: Olof Johansson <olof@lixom.net>
> > > Sent: Monday, June 17, 2019 6:50 AM
> > > To: Leo Li <leoyang.li@nxp.com>
> > > Cc: arm@kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > > kernel@vger.kernel.org; shawnguo@kernel.org
> > > Subject: Re: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
> > >
> > > On Wed, Jun 05, 2019 at 02:45:11PM -0500, Li Yang wrote:
> > > > Hi arm-soc maintainers,
> > > >
> > > > This is a rebase of patches that missed 5.2 merge window together
> > > > with some new patches for QE.  Please help to review and merge it.
> > > > We would like this to be merged earlier because there are other
> > > > patches depending on patches in this pull request.  After this is
> > > > merged in arm-soc, we can ask other sub-system maintainers to pull
> > > > from this tag and apply additional patches.  Thanks.
> > >
> > > Li,
> > >
> > > You never followed up with a reply, or removed, the previous tag. So
> > > when we process the pull requests that come in, we've already merged it.
> > 
> > Sorry about that.  Will reply the previous pull request and remove the old tag
> > if update is needed next time.
> > 
> > >
> > > So, I've merged the previous version. Can you send an incremental pull
> > > request on top of that branch/tag instead of a rebase like this was, please?
> > 
> > Actually the new pull request is based on the old pull request this time.  I
> > sent the new one as V2 hoping that you can see this first and avoid merging
> > two times.  Since you have already merged the first one, you can merge the
> > second pull request as an incremental pull request directly.
> 
> Hi Olof,
> 
> I was on vacation for the past two weeks to follow up on this.  Hope this is not too late for this merge window.  Like I mentioned, the new tag is on top of the previous tag (you merged) so that it should be able to be merged incrementally.  The only thing is that the description of the new tag also included patches you merged with old tag.  Do you want me to regenerate the tag before you can merge it?


Hi,

I've now merged v2 into arm/drivers for the 5.4 merge window. If you need to
add more material on top for 5.4, feel free to use it as the base that you send
incremental pull requests on top of.

Next time, it's probably easier if you re-generate a new pull request
like I asked for -- I missed revisiting this since it seemed like a side
follow up and not new material to merge.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
