Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612D61185A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7HzlNBiJSqvfCW2QU9FoeS9wGUe/GlPorPZI1rhKPI=; b=od3JQKJPuck70V
	6n/0lH4WJHtcAL9G1fdTih+L1GiAVn3G94uQIiXtH9TQcc6ReGHZv9zygCTzJ8Kq3+BAJWpdAK0ti
	I36qnkBfycpAPRsgqE+fD7gX8Q5Nu0F5uGYFKsWBziIn4J46VbqQjA9X+imBJN/YwtmqYf9Pbe2v+
	ctJir/innKz/Mo3S5YJNnJyF0odYw1+dsyVxc5z3HdPTngR72ANB1AuzjAGSLE7Xf95u/qe3rneZg
	uu09clgLf3wSNcGO1z8otZVQ3q43UCBml5Xj6edk4YqSBbVxGnwH1krJQtngXhTU7hC59C2RcZ2x0
	I6zPwrbmknsYqVlXGtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedDM-0000bM-Lx; Tue, 10 Dec 2019 10:58:00 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedD7-0000R5-4a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575975460;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=4pjbgURYLvqlQ7ltYz5xKfqYhTsVzR2Sa6bq4aJbjsg=;
 b=Zg9yRHN2kX3F/lRo/30Dw7LegWQ7uAK+VrOXZ4yf3v8A1UUZszmTSo53gXeY3dauvR
 /oLcOXyo8zIGIlSkDjTFTjmnl4CCG6S/DhVIYA8H/dOjNg3UA6TFHs5klHg87Pcoolsj
 I87B4sReVQzWdaG5USds7WiSMURLVWDNmLdelftgx4g/grrFAHm9cr3ra6fI569VbxdB
 y5bZr0Jn11F01q/i5yHvw4JEaHwtxY/YsmCzXG2hOKAoVgno0rdOp77Yre5Ecs2pxsMD
 xqZDaFEF8iKXdVMFhQM/wiTWe3rCDx90E4MvFj0jwELzLsov/RFMOCyDPxDIhibpI4b0
 289w==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJGV8vHxv6O"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.0.2 AUTH)
 with ESMTPSA id R01a59vBAAvdeDj
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 10 Dec 2019 11:57:39 +0100 (CET)
Date: Tue, 10 Dec 2019 11:57:37 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
Message-ID: <20191210105737.GB228968@gerhold.net>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108031854.GA12993@hector.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_025745_814676_EC1C71C5 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Amit Kucheria <amit.kucheria@verdurent.com>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > (Removing arm-soc)
> > 
> > Hi Andy,
> > 
> > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > >
> > > Arnd, Olof, and Kevin,
> > >
> > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > sorry for this inclusion.  I'll scrub this better next time.
> > >
> > > Andy
> > 
> > > ----------------------------------------------------------------
> > > Amit Kucheria (5):
> > >       arm64: dts: qcs404: thermal: Add interrupt support
> > >       arm64: dts: msm8998: thermal: Add interrupt support
> > >       arm64: dts: msm8996: thermal: Add interrupt support
> > >       arm64: dts: sdm845: thermal: Add interrupt support
> > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > 
> > One of my patches to add interrupt support to msm8916 tsens is missing
> > here. Specifically this one:
> > https://patchwork.kernel.org/patch/11201853/
> > 
> > Will there be a second PR this cycle?
> 
> I can work up another and throw it on top.
> 

FYI, the patch seems to be still missing in 5.5-rc1.
tsens now fails to probe on MSM8916 with:

  qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found

Can you queue up the patch as fix for 5.5?

Thanks,
Stephan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
