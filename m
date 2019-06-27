Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152C57C6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47lUQdi5rh2tiAmVLgAQBipalakO7XI29Owd8tfhyFQ=; b=HmIAXtRUx7oEfE
	9fU7ikCGgDQ6Qn3r4mOvlz4u7PuArcTs88EQhjmKB+7Jg5AjodDcnl5fLrkX2N3QhaRcmxVoRjzp6
	54ig5lLq/WtUOBa6L0XEPXMss20HyaS8B7C6ROsDtfqNASpoMGZjGuUmSRfaRmt9llUoAHdKLgBXK
	ACG5vgdml95jMwjqn+rqDodJ8VCZx8VDjJbypZtHcDjGNVPS/OcmVxaCESjzOpGI3Exy2Zu2OmMq+
	9lqXxB1mJ3HhoTXwBat/L0ZmfW17MjpiueJoyaLEEiDaVfhGR31taRbt4d30uonFl/r/1+kK3eCjY
	OVSq/Zwqd56RB+abVLKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgODS-0003El-6a; Thu, 27 Jun 2019 06:49:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8K-0006cJ-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 06:43:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so4491776wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 23:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fr091IJlyLDPMmSVtyOHFtPcDnSVYiT6XZwDIOErr7U=;
 b=c62nqjamUpIKgiIcFe5zH56Mi5/TGbku/yyyhPsJoeQmVhmTIs8N5hSdXJxZrgZRy3
 FIKW859OaiknvC0qYWcvdCrN0VOPxp5nGr0qMueJLs88j542C20qRGwa1LeLvMiAkXO/
 6sFw9gl+LoNBhRJO8eRUWs7ZowQcCFFx6Lrr7/LxB2YnKZjXx8EVEOzk/k7TKqcCY0VM
 OUej1LV+9rtwJ5qOz32zTbsO8nKo2i+Ib+wP0847PnoeSwdvj71G5yFnDYfcjeNw5P5W
 W6INA6bWMfx/MW2FyXTdS4jL3zseq2A9t6DNQwZB0bFB19Y8jd083Rcn2q1Kbkjz1X0V
 LnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fr091IJlyLDPMmSVtyOHFtPcDnSVYiT6XZwDIOErr7U=;
 b=sMJpWI7TcxC2rGwbIrof8WYJlP1JsABcBZwLiSkeX4DFRNAOpH6sV54GlOaaEo6L8O
 suwu30omgw/V3P1sae/G/crIua/C2O+Vy6rQjTA7gyPEquHLOSMPk2XgcTtzV93kxbSE
 q3tek2NN9R40jvZ+aR6c892mh7LAoklIIpi/UlxznvS9LJLh6NT/fiI8CRr7bV7TePEf
 uWdaGeiGk7WYVVIY1wlX49HZb/0/16yBPnCI5iCruISXt83wg+NkPe6TWa9Wlcq8IwmJ
 3+KcrGDbVlO3VlFd9N8ijXYWQOlBLpgAkg6tw0MbCb35GYC52prlBmUhjUrDa0+6/Uxs
 Dizg==
X-Gm-Message-State: APjAAAURO3//nH8C+PwmZFHmyVUaYIMrw4RYUoYdDrWhOHnadOnMw0H5
 ACnb1ji4h7pam04fRICxBe9VYwM8waBlvsgnjS8=
X-Google-Smtp-Source: APXvYqznv8TwvW1K9qKqrvLF/qS3x63C6UZFf9AHU2K/Hpl+fugYxqf+pFeMX8bv03CQylSfZpSqbH95DtsRbuyMR/c=
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr1793945wmi.73.1561617826007; 
 Wed, 26 Jun 2019 23:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
 <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
 <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 27 Jun 2019 09:43:34 +0300
Message-ID: <CAEnQRZDzFBzgwugaK-CihQNaa=1SPPNsKm6QKOh9LqWACeFGTg@mail.gmail.com>
Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_234348_177224_DF684E33 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 3:48 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Daniel
>
> > -----Original Message-----
> > From: Daniel Baluta <daniel.baluta@gmail.com>
> > Sent: Wednesday, June 26, 2019 8:42 PM
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
> > On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
> > >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > Add i.MX SCU SoC's UID(unique identifier) support, user can read it
> > > from sysfs:
> > >
> > > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > > 7B64280B57AC1898
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/soc/imx/soc-imx-scu.c | 35
> > > +++++++++++++++++++++++++++++++++++
> > >  1 file changed, 35 insertions(+)
> > >
> > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > b/drivers/soc/imx/soc-imx-scu.c index 676f612..8d322a1 100644
> > > --- a/drivers/soc/imx/soc-imx-scu.c
> > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
> > >         } data;
> > >  } __packed;
> > >
> > > +struct imx_sc_msg_misc_get_soc_uid {
> > > +       struct imx_sc_rpc_msg hdr;
> > > +       u32 uid_low;
> > > +       u32 uid_high;
> > > +} __packed;
> > > +
> > > +static ssize_t soc_uid_show(struct device *dev,
> > > +                           struct device_attribute *attr, char *buf)
> > > +{
> > > +       struct imx_sc_msg_misc_get_soc_uid msg;
> > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > +       u64 soc_uid;
> > > +
> > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > > +       hdr->size = 1;
> > > +
> > > +       /* the return value of SCU FW is in correct, skip return value
> > > + check */
> >
> > Why do you mean by "in correct"?
>
> I made a mistake, it should be "incorrect", the existing SCFW of this API returns
> an error value even this API is successfully called, to make it work with current
> SCFW, I have to skip the return value check for this API for now. Will send V2 patch
> to fix this typo.

Thanks Anson! It makes sense now. It is a little bit sad though because we won't
know when there is a "real" error :).

Lets update the comment to be more specific:

/* SCFW FW API always returns an error even the function is
successfully executed, so skip returned value */


> > > +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > +
> > > +       soc_uid = msg.uid_high;
> > > +       soc_uid <<= 32;
> > > +       soc_uid |= msg.uid_low;
> > > +
> > > +       return sprintf(buf, "%016llX\n", soc_uid);
> >
> > snprintf?
>
> The snprintf is to avoid buffer overflow, which in this case, I don't know the size
> of "buf", and the value(u64) to be printed is with fixed length of 64, so I think
> sprint is just OK.

Ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
