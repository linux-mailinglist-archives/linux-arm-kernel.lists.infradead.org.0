Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AB5EE05D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJInFWCjS2x8aHL1vytXCVT1nBNJaUWVNUgRVFyfL+4=; b=PTrKtC1e3zKChP
	VIE6pWv1V/h46bZXaXfZIFhxonHfZDztIoZW0QwE8UWdAxai3xpf2ZQFx3VzV+bhumCN/h8Q/Ll6I
	WJuu7TYW8nlGTsNbo2J9qOdLQsk5CwDYcw2BqXC0tKNdAsGdyG3Zz2iOSXiVejriwOWz2mrLGOD72
	fj9dFk65oWu37d+iXfbJAySeCtIc8PX/fW747ztx3ciQklMjruXgJ7/9O2a7/5TkCpJBIMGM9J52g
	owhdSKtXCg4iO4PQMGkHMfJ/9DF/FIxCF4OaskMLsDF5oQOw3tjlUm2C1YMEV0stIc3NSEoOesIQB
	YJTyiE9d5jivvJ7ajQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbkc-0002UJ-Ap; Mon, 04 Nov 2019 12:46:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbkV-0002Tr-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:46:24 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11BD8218BA;
 Mon,  4 Nov 2019 12:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572871583;
 bh=uu6hMcwvil/xb9dqy8jjyGW+1kTfPIrio1g2NerX6OE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dxf2qdCcOkPEg/SW5EDL+yx9RaRwjiVhtnRit11I3Y0pAfi0DJ5GvvIuch+W02iXF
 1c/lS5US48HKzpmbDWvTmti++TWT0jI3XG/Vlkf6AM5BYboyPPtELDCYqzZRZKfO3O
 kbzIXvY/7wzA+S6xm9qMwBXQAHY3NXdT7iNrG4iI=
Date: Mon, 4 Nov 2019 20:45:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 09/11] ARM: dts: imx6ul-kontron-n6x1x-s: Disable the
 snvs-poweroff driver
Message-ID: <20191104124553.GY24620@dragon>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-10-frieder.schrempf@kontron.de>
 <20191104074346.GT24620@dragon>
 <626ad87a-eb1d-4dca-7cd3-8c5f38025aec@kontron.de>
 <7da30a17-d16c-3cde-12a8-430ff3eec692@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7da30a17-d16c-3cde-12a8-430ff3eec692@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_044623_490770_BCE3B2F2 
X-CRM114-Status: GOOD (  30.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 11:18:19AM +0000, Schrempf Frieder wrote:
> On 04.11.19 09:06, Frieder Schrempf wrote:
> > Hi Shawn,
> > =

> > On 04.11.19 08:43, Shawn Guo wrote:
> >> On Thu, Oct 31, 2019 at 02:24:27PM +0000, Schrempf Frieder wrote:
> >>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >>>
> >>> The snvs-poweroff driver can power off the system by pulling the
> >>> PMIC_ON_REQ signal low, to let the PMIC disable the power.
> >>> The Kontron SoMs do not have this signal connected, so let's remove
> >>> the node.
> >>>
> >>> This seems to fix a real issue when the signal is asserted at
> >>> poweroff, but not actually causing the power to turn off. It was
> >>> observed, that in this case the system would not shut down properly.
> >>
> >> I do not quite follow on this.=A0 How does disabling snvs_poweroff fix=
 the
> >> issue?=A0 The root cause of system not shut down properly seems to be =
that
> >> PMIC doesn't shut down power.=A0 This looks like a clean-up rather than
> >> bug fix.
> > =

> > I don't know the exact reasons, but we had issues on these boards when =

> > doing a "poweroff". The kernel would print something like the log below.
> > Disabling the snvs-poweroff solved this.
> > =

> > But note that this has last been reproduced on v4.14. So I'm not sure i=
f =

> > this is still a problem with the current kernel.
> > =

> > #######
> > reboot: Power down
> > Unable to poweroff system
> > =

> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > WARNING: halt/675 still has locks held!
> > 4.14.104-exceet #1 Not tainted
> > ------------------------------------
> > 1 lock held by halt/675:
> >  =A0#0:=A0 (reboot_mutex){+.+.}, at: [<c0145a98>] SyS_reboot+0x14c/0x1dc
> > #######
> > =

> >>
> >>>
> >>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> >>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron =

> >>> i.MX6UL N6310 SoM and boards")
> >>
> >> If you think this is really a bug fix, it should be applied to the file
> >> before renaming rather than the one after renaming.
> > =

> > I will try to reproduce the issue with the current kernel and depending =

> > on the results either drop the Fixes tag or move the patch before the =

> > renaming.
> =

> I just tried this with 5.4-rc5 and the issue persists. When =

> snvs-poweroff is enabled without the hardware actually being able to =

> power down via PMIC I get a locking WARNING from the kernel. Probably =

> because the system is still running, when it's already supposed to be =

> shut down by the PMIC.

I still do not get it.  Are you saying that with snvs-poweroff being
disabled, your system is now able to be shut down properly by PMIC?

Shawn

> =

> So this fixes a real problem and therefore I will keep the Fixes tag and =

> move the patch to the proper place in this series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
