Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C24AD0A6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMQUM9Cvr/NkuZ7J/iSDm+L88+jqF7WN/n4mf6qmo18=; b=sHajEgFWReJIna
	vjD1JSD0Pgr70Z0o+vEwje0kfWXjNi9zz27hKiGxiJLaqKWFvbnKvOHp+vRq2Ui4mWgPxFLzHv4tT
	3/3+og9WGnnErQYZ12gl5b1l6zpz1cmgy9Vsgy6tA0WrpHUa8hZvF62w2rWL3lhRZ581h2J8S5Hm0
	qgONn+f7g+6bdbaJ0cZMdNqI9bAwK35JN2+ywkkgMp0ZcYxyF/Q/Nj6yvnJqrZMxUEpBoJYj0b8/C
	ehOtAOxJ7Tck3aqAFV/qeS8Sh+0tYvNFR/xM7IusdIKPcywRg48nXLslQCQycPsJajFYaa322u6RN
	+LRjCuLn1msaqJn9Vz9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7nb-0003pD-JH; Wed, 09 Oct 2019 08:58:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7nA-0003VR-EC
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:57:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI7n8-0007JL-1z; Wed, 09 Oct 2019 10:57:54 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI7n5-0007Mi-MT; Wed, 09 Oct 2019 10:57:51 +0200
Date: Wed, 9 Oct 2019 10:57:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Message-ID: <20191009085751.h3voimqz25kj6lh2@pengutronix.de>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
 <20191007080135.4e5ljhh6z2rbx5bw@pengutronix.de>
 <AM6PR0402MB39118DABDE62496539D7EE6DF59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <20191009082455.5hqhotkbozsr7mgo@pengutronix.de>
 <DB3PR0402MB3916CD3B5EC47C023F9D840DF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916CD3B5EC47C023F9D840DF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:56:52 up 144 days, 15:15, 97 users,  load average: 0.27, 0.09,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015756_773077_E1A8B8F7 
X-CRM114-Status: GOOD (  18.62  )
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

On 19-10-09 08:28, Anson Huang wrote:
> Hi, Marco
> 
> > On 19-10-08 00:48, Anson Huang wrote:
> > > Hi, Marco
> > >
> > > > On 19-10-07 09:15, Anson Huang wrote:
> > > > > The SCU firmware does NOT always have return value stored in
> > > > > message header's function element even the API has response data,
> > > > > those special APIs are defined as void function in SCU firmware,
> > > > > so they should be treated as return success always.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > > ---
> > > > > Changes since V1:
> > > > > 	- Use direct API check instead of calling another function to check.
> > > > > 	- This patch is based on
> > > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > > patc
> > > > >
> > > >
> > hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> > > > huang%
> > > > >
> > > >
> > 40nxp.com%7C2de0a6be69b74cc249ad08d74afc9730%7C686ea1d3bc2b4c6f
> > > > a92cd99
> > > > >
> > > >
> > c5c301635%7C0%7C0%7C637060321046247040&amp;sdata=RMFAdLKGKb6
> > > > mEdhycrzHX
> > > > > R03E6Qr5pWyRc8Zk6ErlBc%3D&amp;reserved=0
> > > >
> > > > Thanks for this v2. It would be good to change the callers within this
> > series.
> > >
> > > NOT quite understand your point, the callers does NOT need to be
> > > changed, those
> > > 2 special APIs callers are already following the right way of calling the APIs.
> > 
> > Ah okay. I searched the 5.4-rc2 tag and found the soc_uid_show() as only
> > user but this user sets the have_resp field to false. Is this intended?
> 
> I already fixed it and patch applied by Shawn, see below:
> 
> https://patchwork.kernel.org/patch/11129497/

I see :) So one last question, please check the other thread.

Regards,
  Marco

> 
> Anson
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
