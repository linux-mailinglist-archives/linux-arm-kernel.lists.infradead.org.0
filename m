Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089A512ABA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 11:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1VIvXjZqsJOWG61f8O1CJnfnhup/vvgk6lBnWI/cMg=; b=Q6cK3J3Hm4vcoG
	RQCmo277u4TOaRe86COJOERtSgrls2WGE2yeanTDzZ/ghWKCumuCQNJv8XsdhkX7j+ETupHXiHiRt
	8p47h0FTanoScfC/cPM7zIatMvzVHZzBy6L+Cb+eItrtKUCp52tq58/MZ3CGsB3QWOnI1tw+S8kcP
	tSaNI96D0+JshvCQBQn5maQ1wvICuqnXaisdOwGr0vs5Qn7DB6s6XiaYW9CgJsRwFt3oY17rjAhWe
	wZupLoG1leqPqSWEML3jHfIOTXhg+FXHlXUnQlL2kDPu9Tv1SkZqSfr34kSceyBZmk2DoxcU5ZYL8
	ir5khtVsfFvlJBCMAkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikQWj-0001FA-7g; Thu, 26 Dec 2019 10:37:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikQWY-0001EK-5Z
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 10:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1577356660; bh=u9ETC+o/IDmexaGn/AkVQX1tykjZ0Q5WXzCFWQs4IxA=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=hR1Cvt5PDfOSjCTfWyHa0hGTOieD3sPrxsLePg0TlTIASuwGzDl2q8GisgkgvrTND
 Ad042SwFVeTyJpga15dKzjnyL7Qx+AdS3XTEibZ3G/+eZY6Acv3SnomV22XY5ZCo6S
 Yz1kcKqWTVQjg7HfdcsxUxBJorFSPu5KJji2LpCk=
Date: Thu, 26 Dec 2019 11:37:39 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191226103739.bz3i73gjmn5q5veu@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-pm@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_023746_563540_E20627CD 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 10:27:51AM +0100, Maxime Ripard wrote:
> On Tue, Dec 24, 2019 at 07:30:55PM +0100, Daniel Lezcano wrote:
> > On 19/12/2019 18:33, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> > >> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > >> H6 and R40 SoCs.
> > >
> > > Thanks again for working on this.
> > >
> > > I'll merge the DT patches when the driver will have been merged.
> >
> > I've applied patches 1 & 2.
> >
> > They are in the testing branch and will go to the linux-next branch as
> > soon as the kernelci passes.
> 
> I just merged all the other patches (except the patch 6, for the H6,
> as requested by Vasily on IRC).

Hello,

I think you can apply H6 patch. This was just some misunderstanding
and H6 is working.

thnaks and regards,
	o.

> Thanks to everyone involved!
> Maxime



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
