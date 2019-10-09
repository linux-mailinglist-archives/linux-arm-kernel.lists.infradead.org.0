Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C55AD0B64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btNIRCQsNjmA1h276+kR34ikrtGQ34Mh5P6SPVcQDwQ=; b=gWdfS4KIOGx13B
	v/WM10+YuVwB5/lRphtYC7K9f2J67mL5FKzNaX/qqE7JbLKNiKJMLZS3RkAkGsCHfjYP9mfQOYB5o
	e+zebiy7+emAwq6doRfL3g8uDK7nKOZjrMBG9LwfWn2mp0ocYZnFaNQ463lwoAp+9XZ8lpYEouxJq
	NxMAFLjfN7wmw9SLijyLzhBlz+lfqirya6qrFK8kYXPw7mSd/+hwX0osiuJanZN5hNNV5AOkrhNke
	K8Q01u0SEEYow1nRt6WxweO4bR3zx2XJh9EN0rLLmQH8u4zw342cp/2fxKU1xf/zOlC+fk18tBTIy
	WDar4fnK/8stknWW65Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Pr-0006Uw-Hv; Wed, 09 Oct 2019 09:37:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Pj-0006Ua-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:37:49 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI8Ph-0004BJ-SS; Wed, 09 Oct 2019 11:37:45 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI8Ph-0000SJ-7m; Wed, 09 Oct 2019 11:37:45 +0200
Date: Wed, 9 Oct 2019 11:37:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Message-ID: <20191009093745.r5vevql7bcdhxleo@pengutronix.de>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
 <20191009090043.4yq4l7iac3zgytnp@pengutronix.de>
 <DB3PR0402MB3916595DFC84910873FBA91AF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916595DFC84910873FBA91AF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:34:42 up 144 days, 15:52, 98 users,  load average: 0.00, 0.08,
 0.33
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_023747_591098_1064CD07 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19-10-09 09:09, Anson Huang wrote:
> Hi, Marco
> 
> > On 19-10-07 09:15, Anson Huang wrote:
> > > The SCU firmware does NOT always have return value stored in message
> > > header's function element even the API has response data, those
> > > special APIs are defined as void function in SCU firmware, so they
> > > should be treated as return success always.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V1:
> > > 	- Use direct API check instead of calling another function to check.
> > > 	- This patch is based on
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> > huang%
> > >
> > 40nxp.com%7Cbefd2849a124462caa4a08d74c972dc9%7C686ea1d3bc2b4c6f
> > a92cd99
> > >
> > c5c301635%7C0%7C0%7C637062084506889431&amp;sdata=7fW8hZB4AaUK
> > 9QTKTJQR7
> > > LuV2nGo6e%2Fqb%2Fqmn4ykquk%3D&amp;reserved=0
> > > ---
> > >  drivers/firmware/imx/imx-scu.c | 16 +++++++++++++++-
> > >  1 file changed, 15 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/firmware/imx/imx-scu.c
> > > b/drivers/firmware/imx/imx-scu.c index 869be7a..03b43b7 100644
> > > --- a/drivers/firmware/imx/imx-scu.c
> > > +++ b/drivers/firmware/imx/imx-scu.c
> > > @@ -162,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc
> > *sc_ipc, void *msg)
> > >   */
> > >  int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool
> > > have_resp)  {
> > > +	uint8_t saved_svc, saved_func;
> > >  	struct imx_sc_rpc_msg *hdr;
> > >  	int ret;
> > >
> > > @@ -171,8 +172,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc,
> > void *msg, bool have_resp)
> > >  	mutex_lock(&sc_ipc->lock);
> > >  	reinit_completion(&sc_ipc->done);
> > >
> > > -	if (have_resp)
> > > +	if (have_resp) {
> > >  		sc_ipc->msg = msg;
> > > +		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
> > 
> > Why do we need to check the svc too?
> 
> It is because the SCU firmware API has many different category called SVC, each category has
> many different function, and the function value could be same in each category,
> for example, there are IRQ, PM, MISC etc. SVC category, and each of them could have function
> type defined as 0, 1, 2 .... That is why I need to save both SVC and FUNC to identify the SCU FW
> API. See below: 
> 
> PM SVC:
> #define PM_FUNC_SET_PARTITION_POWER_MODE 1U /* Index for pm_set_partition_power_mode() RPC call */
> #define PM_FUNC_GET_SYS_POWER_MODE 2U /* Index for pm_get_sys_power_mode() RPC call */
> #define PM_FUNC_SET_RESOURCE_POWER_MODE 3U /* Index for pm_set_resource_power_mode() RPC call */
> 
> MISC SVC:
> #define MISC_FUNC_SET_CONTROL 1U /* Index for misc_set_control() RPC call */
> #define MISC_FUNC_GET_CONTROL 2U /* Index for misc_get_control() RPC call */
> #define MISC_FUNC_SET_MAX_DMA_GROUP 4U /* Index for misc_set_max_dma_group() RPC call */

Ahh, okay get it. Thanks for the explanation.

> > 
> > > +		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
> > 
> > Nitpick, should we call it requested_func/req_func?
> 
> OK, I will change them If I have to sent out a new version, otherwise, I think the saved_func and saved_svc
> should also be fine.

Just a nitpick ;)

Feel free to add my

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> 
> Thanks,
> Anson

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
