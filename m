Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52E3107AD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 23:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TzOXBo6SY3fZaERrj+u6vNa1817i7wsbprbYqIGIyQ=; b=LjI/kF2Fz52H5h
	OLZ6uomyro/x99MlcrLCj1WvmKa7rH94srxYAMtEQ3y2RKI0NzDDXdCwcimjXtUJhM3ijAF+0O8Pt
	CfV5zimF8RJ7URWdbrZQUEvX/CvS4+DIGO2KO+QE0vNJtfHTSmfbZ4UAEoV1QCPPn0GwpUY7Z7EhB
	1RPh8VLnUY2cM1LaDAWL/CsRVOnCG+XCWgmpfHKywhDxr1y2KOzJ9qzAsrgsk99tW/wFoB8KYyr8l
	4W3cHco6VBpDgb/uhwmH8C0CQykPntHnexSLBqatxk9sQ64UxwfmH98EruFELVkv1O2nidR03RMxS
	lBBao80t3bP2WDOkLIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYHjS-0004hV-BW; Fri, 22 Nov 2019 22:48:54 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYHjI-0004gX-UP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 22:48:46 +0000
Received: by mail-pj1-x1041.google.com with SMTP id f7so3668570pjw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 14:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0huokCXbHocAZIGMX/c3HM5bh9PEhnRGgnHytZrJQDA=;
 b=DDEHS3WE529zL/qw3QVeilPLFKDV2WyWuo0yxpBJtoCi9HW+jhbMijVTilgXKZVaTG
 nFGfBpPqCB4+jZy1nxI/MmErrqzZ+FiYK0ughrTVz3V7Utafj3qNu9pMyAWt10bl438B
 woAUEHUDDDNWAcWvOp/fiF6Z7GitEIz37P2qo4FaNbfysgtxr7lTJ1ONxCepjAIzPTN1
 FJcbUGAAdZVw6If864xwh3yyS0glRasOMqM0xSsbqjFRvtLkn1ycVioByNiEJUvynOrG
 Ni+lCWhiL0i+U5oWGrfYdEoAFV4H32LabXWi51aQUUb4PSQGVeNhAG7/P9Y8kwOFZ2Et
 2AOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0huokCXbHocAZIGMX/c3HM5bh9PEhnRGgnHytZrJQDA=;
 b=tAjK1QDfroMyaObyF4gvKY4cF1E03xt0e6wn0bqBpOdZAV2w5fae/7Mwgmlv6NOsr/
 ehXM3psce3H17llZL3gkd4HnBf4MZ6AAdoec0sjTtIAjHAhbzeB0mxH4X3Fki6nKE62H
 239FsCqdFYi91r6KY1Wcbsf8jEtWPz+99izhadTfUNh8nVn6P2wlKsyldWn3J8EF6ZPY
 koFhmgm1gAYHcAFaVoFni0wEppcc5VzMVDgFBcUP6A4F+GBp0c2Ox5ihe1u4gQySiD+r
 E0zKy7pygRm3tO0FIQWbWbuYd5dH8MZJEGiTQQ8vikiBvU76EwZ9638lqyCTRmPBLevk
 eA4Q==
X-Gm-Message-State: APjAAAXAe7uQ0r2neBJuoUxx4qQLBnvhOnMi81q/F/UIiO5sUiw2VrvC
 AUMBYo7lE2kUsTo9hxTPdR8=
X-Google-Smtp-Source: APXvYqxj7VYmSOwpqPEcZ5ENTsGe+GG3HUaLo9ukNI6OqLpNjv/o+YEIei3ZdLi9Xgpf1haq4VcYeQ==
X-Received: by 2002:a17:902:a709:: with SMTP id
 w9mr16819525plq.235.1574462923136; 
 Fri, 22 Nov 2019 14:48:43 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id y26sm8834040pfo.76.2019.11.22.14.48.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 14:48:42 -0800 (PST)
Date: Fri, 22 Nov 2019 14:48:40 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20191122224840.GE248138@dtor-ws>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin>
 <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
 <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190916233701.GH237523@dtor-ws>
 <20191120092749.7rru5fj7eybs4tl6@pengutronix.de>
 <fb98fa1fde9a367d7ab33d04a5804684@protonic.nl>
 <VE1PR04MB6638D79F8C929100F6D96479894E0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638D79F8C929100F6D96479894E0@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_144845_005699_AB7016DC 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robin <robin@protonic.nl>, Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:17:56PM +0000, Robin Gong wrote:
> 
> On 2019-11-21 0:33, robin <robin@protonic.nl> wrote:
> > On 2019-11-20 10:27, Marco Felsch wrote:
> > > Hi Robin,
> > >
> > > On 19-09-16 16:37, Dmitry Torokhov wrote:
> > >> On Mon, Sep 16, 2019 at 07:45:37AM +0000, Robin Gong wrote:
> > >> > On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:>
> > >> > > Hi Dmitry,
> > >> > >
> > >> > > On 2019-09-12 22:13, Dmitry Torokhov wrote:
> > >> > > > Hi Robin,
> > >> > > >
> > >> > > > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht
> > wrote:
> > >> > > >> The first generation i.MX6 processors does not send an
> > >> > > >> interrupt when the power key is pressed. It sends a power down
> > >> > > >> request interrupt if the key is released before a hard
> > >> > > >> shutdown (5 second press). This should allow software to bring down
> > the SoC safely.
> > >> > > >>
> > >> > > >> For this driver to work as a regular power key with the older
> > >> > > >> SoCs, we need to send a keypress AND release when we get the
> > >> > > >> power down request irq.
> > >> > > >>
> > >> > > >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > >> > > >> ---
> > >> > > >> @@ -67,13 +83,17 @@ static irqreturn_t
> > >> > > >> imx_snvs_pwrkey_interrupt(int irq, void *dev_id)  {
> > >> > > >>  	struct platform_device *pdev = dev_id;
> > >> > > >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> > >> > > >> +	unsigned long expire = jiffies;
> > >> > > >>  	u32 lp_status;
> > >> > > >>
> > >> > > >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
> > >> > > >>
> > >> > > >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> > >> > > >> -	if (lp_status & SNVS_LPSR_SPO)
> > >> > > >> -		mod_timer(&pdata->check_timer, jiffies +
> > >> > > >> msecs_to_jiffies(DEBOUNCE_TIME));
> > >> > > >> +	if (lp_status & SNVS_LPSR_SPO) {
> > >> > > >> +		if (pdata->minor_rev > 0)
> > >> > > >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> > >> > > >> +		mod_timer(&pdata->check_timer, expire);
> > >> > > >
> > >> > > > Why do we even need to fire the timer in case of the first
> > >> > > > generation hardware? Just send press and release events directly from
> > the ISR.
> > >> > That timer looks like a software debounce to prevent unexpected and
> > >> > meaningless interrupt/event caused by quick press/release.
> > >>
> > >> Right, but in case of the first generation hardware we schedule the
> > >> timer immediately (expire == 0) and do not check state of the
> > >> hardware in the timer handler, but rather simply emit down/up events,
> > >> so we do not really get any benefit from the timer (again, I am
> > >> talking about first generation hardware only).
> > >
> > > Did you prepared a v4? Just ask to avoid a duplicated work :)
> > 
> > No I haven't. Not sure what the public wants. Use timer, don't use timer..
> > 
> > v3 has had long term testing though ;)
> Sorry for that I miss the mail.
> Understood a little bit confusion about immediate timer for
> the first press, just stand on the view of clean code shape.
> But I'm okay if you prefer to remove timer in the first interrupt
> generation.

Yes, please prepare v4 without the timer for the first generation of the
hardware.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
