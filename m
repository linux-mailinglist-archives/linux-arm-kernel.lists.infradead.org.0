Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81251175688
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C26fD/l3HTQKsJKW55KLJ7VnfKgBCf/WAl1PTIt/PEs=; b=JnTiKbQ+BHzaUZ
	LADNcOGOVKot50scqS8/NdhMCJI7y1L+H1MgmxZB9C5MpiNysvOt9Tz62KEwcC4MWNF6sQOT9Elg9
	hnrj2iXrBKzn1laORqGCUj26m9hlIFD7tuDKV/91XMrE+ZcyzJ+rAb4k4i68b3aikZ3DJo1GDsNOx
	MGqZ+pNDEiJySNT3WHX8T7ARw5TthqXq+QyEtveChfNGTRoHczdaPfrBYSERoDKx6hjFNralu08Vm
	rmCTC4HBImCBVmW8HcqiABqkl6c2nqlqFt6+qp4vDMSenOj+0tOWC2+1Ev0N/i/bHtd+kNBgHhv8n
	fcprjUf1PZMvfNKmugvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gxS-0002Kw-Vs; Mon, 02 Mar 2020 09:01:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gxL-0002KE-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:01:44 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gxC-0002PE-Mi; Mon, 02 Mar 2020 10:01:34 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j8gx9-0003CA-VP; Mon, 02 Mar 2020 10:01:31 +0100
Date: Mon, 2 Mar 2020 10:01:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V2] thermal: imx_thermal: Use __maybe_unused instead of
 CONFIG_PM_SLEEP
Message-ID: <20200302090131.7e6s4swys45fnksx@pengutronix.de>
References: <1583135410-7496-1-git-send-email-Anson.Huang@nxp.com>
 <20200302080700.ubnboqklhbva7bas@pengutronix.de>
 <DB3PR0402MB3916DC28A21BE0B9B8BFFC25F5E70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <c5ecab57-cc38-762c-ae06-fed0433e0246@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5ecab57-cc38-762c-ae06-fed0433e0246@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_010143_594545_EFBE5A90 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 09:54:34AM +0100, Daniel Lezcano wrote:
> On 02/03/2020 09:26, Anson Huang wrote:
> > Hi, Uwe
> > =

> > =

> >> Subject: Re: [PATCH V2] thermal: imx_thermal: Use __maybe_unused inste=
ad
> >> of CONFIG_PM_SLEEP
> >>
> >> On Mon, Mar 02, 2020 at 03:50:10PM +0800, Anson Huang wrote:
> >>> Use __maybe_unused for power management related functions instead of
> >>> #if CONFIG_PM_SLEEP to simplify the code.
> >>>
> >>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >>> Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >>
> >> IMHO translating my "otherwise looks fine" in a "Reviewed-by" is a bit=
 bold.
> >> Please don't assume this.
> > =

> > OK, will keep it in mind next time, thanks.
> =

> When applying a patch, now we add the link to the lkml archive
> automatically. I can't apply this patch if the Reviewed-by is not accepte=
d.
> =

> Or the Reviewed-by tag is confirmed or a V3 without the Reviewed-by must
> be resent.

I didn't look close enough to justify a Reviewed-by:, so "the
Reviewed-by tag is confirmed" is ruled out.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
