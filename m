Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216775C974
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 08:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aICc+5luP3Aq6irz5x2zp2s9/+haFFhjITs6fvstRgU=; b=ZV5uj6WLGw29RI
	R9+OfLWpEACKnX8H0Ipuja1vA9lKq0YGnh5XrPl0XY4zKEtRJQ5s0N4M2vCMk1Q5xgLpsj7Okc9wu
	8fxigYBIDbIzxJxDst3ZPpYTzuJpRgBAQUUrgtj60PNkfxgTu33wxnQJhKGLm5A7ztgX40lsUIgX6
	Zg1DNuV/uxmZXHM+wesfC4B8dR+z+2tQhXYDOYyhvWo78gLoLsJ3zb2xlPUIyOaYOHqc+z1Ziklr8
	M4nUOBIFpiEe+G/2oSq3G/iDSK6o1sGAzWlv37ZXOkh5uPjurkQkopEYyOFPawZrmnQf9HZckvuSp
	u1H2l4GHrImFcpKbOsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiCUx-00034r-Pv; Tue, 02 Jul 2019 06:42:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiCUm-000344-14
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 06:42:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1hiCUc-0004as-UN; Tue, 02 Jul 2019 08:42:18 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1hiCUc-0006Zv-Ff; Tue, 02 Jul 2019 08:42:18 +0200
Date: Tue, 2 Jul 2019 08:42:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Message-ID: <20190702064218.25vzkxds3bjfzy3m@pengutronix.de>
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
 <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
 <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZDzFBzgwugaK-CihQNaa=1SPPNsKm6QKOh9LqWACeFGTg@mail.gmail.com>
 <DB3PR0402MB3916DFE339C802871F18F9ABF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916DFE339C802871F18F9ABF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:40:14 up 45 days, 12:58, 49 users,  load average: 0.17, 0.08, 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_234228_076267_37CE593D 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Daniel Baluta <daniel.baluta@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19-06-27 07:01, Anson Huang wrote:
> Hi, Daniel
> 
> > -----Original Message-----
> > From: Daniel Baluta <daniel.baluta@gmail.com>
> > Sent: Thursday, June 27, 2019 2:44 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; Aisheng
> > Dong <aisheng.dong@nxp.com>; Abel Vesa <abel.vesa@nxp.com>; linux-
> > arm-kernel <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List
> > <linux-kernel@vger.kernel.org>; dl-linux-imx <linux-imx@nxp.com>; Daniel
> > Baluta <daniel.baluta@nxp.com>
> > Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
> > 
> > On Thu, Jun 27, 2019 at 3:48 AM Anson Huang <anson.huang@nxp.com>
> > wrote:
> > >
> > > Hi, Daniel
> > >
> > > > -----Original Message-----
> > > > From: Daniel Baluta <daniel.baluta@gmail.com>
> > > > Sent: Wednesday, June 26, 2019 8:42 PM
> > > > To: Anson Huang <anson.huang@nxp.com>
> > > > Cc: Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > > > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > > > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> > Aisheng
> > > > Dong <aisheng.dong@nxp.com>; Abel Vesa <abel.vesa@nxp.com>; linux-
> > > > arm-kernel <linux-arm-kernel@lists.infradead.org>; Linux Kernel
> > > > Mailing List <linux-kernel@vger.kernel.org>; dl-linux-imx
> > > > <linux-imx@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>
> > > > Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier)
> > > > support
> > > >
> > > > On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
> > > > >
> > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > >
> > > > > Add i.MX SCU SoC's UID(unique identifier) support, user can read
> > > > > it from sysfs:
> > > > >
> > > > > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > > > > 7B64280B57AC1898
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > ---
> > > > >  drivers/soc/imx/soc-imx-scu.c | 35
> > > > > +++++++++++++++++++++++++++++++++++
> > > > >  1 file changed, 35 insertions(+)
> > > > >
> > > > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > > > b/drivers/soc/imx/soc-imx-scu.c index 676f612..8d322a1 100644
> > > > > --- a/drivers/soc/imx/soc-imx-scu.c
> > > > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > > > @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
> > > > >         } data;
> > > > >  } __packed;
> > > > >
> > > > > +struct imx_sc_msg_misc_get_soc_uid {
> > > > > +       struct imx_sc_rpc_msg hdr;
> > > > > +       u32 uid_low;
> > > > > +       u32 uid_high;
> > > > > +} __packed;
> > > > > +
> > > > > +static ssize_t soc_uid_show(struct device *dev,
> > > > > +                           struct device_attribute *attr, char
> > > > > +*buf) {
> > > > > +       struct imx_sc_msg_misc_get_soc_uid msg;
> > > > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > > +       u64 soc_uid;
> > > > > +
> > > > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > > > +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > > > > +       hdr->size = 1;
> > > > > +
> > > > > +       /* the return value of SCU FW is in correct, skip return
> > > > > + value check */
> > > >
> > > > Why do you mean by "in correct"?
> > >
> > > I made a mistake, it should be "incorrect", the existing SCFW of this
> > > API returns an error value even this API is successfully called, to
> > > make it work with current SCFW, I have to skip the return value check
> > > for this API for now. Will send V2 patch to fix this typo.
> > 
> > Thanks Anson! It makes sense now. It is a little bit sad though because we
> > won't know when there is a "real" error :).
> > 
> > Lets update the comment to be more specific:
> > 
> > /* SCFW FW API always returns an error even the function is successfully
> > executed, so skip returned value */
> 
> OK, as for external users, the SCFW formally released has this issue, so for now
> I have to skip the return value check for this API, once next SCFW release has this issue
> fixed, I will add a patch to check the return value.

Do you really keep track of that? Please can you add a FIXME: or TODO:
tag and add the firmware version containing that bug?

Regards,
  Marco

> Thanks,
> Anson.
> > 
> > 
> > > > > +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > > > +
> > > > > +       soc_uid = msg.uid_high;
> > > > > +       soc_uid <<= 32;
> > > > > +       soc_uid |= msg.uid_low;
> > > > > +
> > > > > +       return sprintf(buf, "%016llX\n", soc_uid);
> > > >
> > > > snprintf?
> > >
> > > The snprintf is to avoid buffer overflow, which in this case, I don't
> > > know the size of "buf", and the value(u64) to be printed is with fixed
> > > length of 64, so I think sprint is just OK.
> > 
> > Ok.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
