Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F568F3E55
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 04:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSuEsyoWnIygmO5QD/W4LSg2w4E0jm1ZuVd+XIEyxbg=; b=o20VZg2/tsbNYB
	In54x+JEzeVv0zNSSXM2mNqsv4wUbgCPwdIsuw+gg9T9H2H1O6/mR4dHiRWlVg5qBLVLu2UTmk4bB
	RRUMCxCKgQMqHmbV9a5lBG4DWXEiJBYjZ32ubA1LEWP9h6dR/ayzHan8dtOiNILVgP1Du8ZhY65p4
	4125LfAgCUn/8RJ4czuTyfucsq3hEwlM8mPV+xdZK6IVTMAaHV1dtIa6bqvNpsYD3qmgUb3OkNoTl
	yWIa8nW+X+9W1sPlip9+8mAcz+xrbFIn90FwCzxMeGh/BGUqExqMOAGXWD6R7+yK7aQcPbqOl5lLb
	09IGJBaQ0vJ9NsUW1iUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSunj-00085A-I3; Fri, 08 Nov 2019 03:19:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSunZ-00084f-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 03:18:58 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 215742084D;
 Fri,  8 Nov 2019 03:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573183136;
 bh=xt29T8BQ5Ybg+79CQWKq0HVKX+jG/2dpLfMwTw9mF7c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wneKloIVW1UmK29rzt/FE4sxapyCJkm6HISLK0cVNIPsPbzxiUy467StbawxD+3t6
 r3xCXZesdKLd0jbBCM3I9LVwsGPU3b4hbJadvYXA/jws+bL8Voho5Mu/b1Bh+WQ0Os
 e6GWPdITyDq7XwgsKq0D1OT1KYM0GQnv4vwhA3jo=
Date: Thu, 7 Nov 2019 21:18:54 -0600
From: Andy Gross <agross@kernel.org>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
Message-ID: <20191108031854.GA12993@hector.lan>
Mail-Followup-To: Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_191857_540043_71BD6C1C 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> (Removing arm-soc)
> 
> Hi Andy,
> 
> On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> >
> > Arnd, Olof, and Kevin,
> >
> > I have one slight faux paux in this pull request.  A drivers: soc change got
> > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > sorry for this inclusion.  I'll scrub this better next time.
> >
> > Andy
> 
> > ----------------------------------------------------------------
> > Amit Kucheria (5):
> >       arm64: dts: qcs404: thermal: Add interrupt support
> >       arm64: dts: msm8998: thermal: Add interrupt support
> >       arm64: dts: msm8996: thermal: Add interrupt support
> >       arm64: dts: sdm845: thermal: Add interrupt support
> >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> 
> One of my patches to add interrupt support to msm8916 tsens is missing
> here. Specifically this one:
> https://patchwork.kernel.org/patch/11201853/
> 
> Will there be a second PR this cycle?

I can work up another and throw it on top.


Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
