Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D922B44A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 01:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYUFpekhlWOESTLXGnVM2RiDynx5ecJe1eilb+zaYT8=; b=ZtFW4Bq7yAQi7P
	1kOMjmxb9l6zWdXxlk54fEiKeXUDu6GGdrfZXn5RhKF5ZznO03KtxvpC25ktG3GH0yEH9mef/+37V
	ZyywO7e3Sto8YH2mfEBlrl5/P3Qu2H22OM6xqUKSkT4TI0es3JqBt9KTGmUokuuKnYQ42NdXTNAxm
	f9ewnRJk/r7g5y8igRM5WYtPMpaRF81B5BK6hy9kVJ6Dc+tlvWsJdQdc1dMdmBe/5ELIR+Ca5kWGh
	RFEBXptQQgVZHFeoFD1zvZ/oqWrGIWDL/X3iFm27UKXKeghCiuLQ6jyEuQd3/9ZDhlCQxhnip7B+y
	7JKR4vGmYoEypaC4PnYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA0YZ-0003Cd-RB; Mon, 16 Sep 2019 23:37:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA0YM-0003CK-5A
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 23:37:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so896662pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 16:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=URI/yswFiE1ZSmwaedQfzMb8JEkdgI6WBChh6fIJ4KY=;
 b=KzSJYltu0IkNVl6391cXV9865+14apc48Gk8wU+926ikZOW8xQr4xnIv/C4FKddD0T
 D4CvZ0VBmYb2HjjAi1O2glqu0SZeO0tVYJTnVUyB6S9o5eNyxE4BmjtK2XuYDFu0wCWi
 7vIDLjhKxkBnCSEBZpIabXsVIcYEnfiUbKfaOJwRdmpsaMlYFDKzlzdo7UTVwXGEXkwi
 6GlcQNdB0zPhCfxeGCBnIYZgo8BH3smOINeYvNVdPut753Ds7yMkn2Y8oDcEzeOVRdWk
 OQmy7JQ4eGLQTYvPry6tPYZ7VG/JmST0GSx9Sa5VsHsVJ/BvymsSTxPYW59Qvhhmlx5L
 41vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=URI/yswFiE1ZSmwaedQfzMb8JEkdgI6WBChh6fIJ4KY=;
 b=nYa7V/fZIjMrhoFFlq7PuOBKgdTNj1Xl2j9a/Xh9Q46jNAbBq5CyKGshZQQqEQnD2p
 t4xjJqPbhVvqkK2sMjAGcrbAvpUkqpPqbPxtjprtHD+zxVJ0UT9yqziV666CDqYwp0gH
 xf51RWyuFWK1uVcjcYoQBfbjQu2n1TdP6GVUxl7qXyShdOF+mloprqxRFX/aDFK5U2z7
 ducYORfWMh6oHdOUPeqmWkm9H1pKT0teG1YtOHyBK0iCuFKTSUeF4ovXU8nJ5kFi7RYV
 NzKbtv+0VRBArUuS62moqzOsok9v1XuO9+y2E6bD0jkHDqkqnk+nDLBKyj+OQsWgVhIE
 eAeA==
X-Gm-Message-State: APjAAAUP69Laz9InrTqSB1n4yPDQosWXOdWRDa8mSf4veDedUT6LplyT
 G4ABLmdqo1IZ41C2GpfIvpU=
X-Google-Smtp-Source: APXvYqy5fuCh1asq2msnIG6advWVrJd9emc2wATGBbqJFZGUFr5OeSxdpGSFqchnkVWLRSg/dNV+xQ==
X-Received: by 2002:a17:90a:ba90:: with SMTP id
 t16mr1913997pjr.104.1568677024675; 
 Mon, 16 Sep 2019 16:37:04 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id i19sm275722pjx.1.2019.09.16.16.37.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 16:37:03 -0700 (PDT)
Date: Mon, 16 Sep 2019 16:37:01 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20190916233701.GH237523@dtor-ws>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin>
 <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
 <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_163706_201446_A2B091EF 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Sep 16, 2019 at 07:45:37AM +0000, Robin Gong wrote:
> On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:> 
> > Hi Dmitry,
> > 
> > On 2019-09-12 22:13, Dmitry Torokhov wrote:
> > > Hi Robin,
> > >
> > > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht wrote:
> > >> The first generation i.MX6 processors does not send an interrupt when
> > >> the power key is pressed. It sends a power down request interrupt if
> > >> the key is released before a hard shutdown (5 second press). This
> > >> should allow software to bring down the SoC safely.
> > >>
> > >> For this driver to work as a regular power key with the older SoCs,
> > >> we need to send a keypress AND release when we get the power down
> > >> request irq.
> > >>
> > >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > >> ---
> > >> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int
> > >> irq, void *dev_id)  {
> > >>  	struct platform_device *pdev = dev_id;
> > >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> > >> +	unsigned long expire = jiffies;
> > >>  	u32 lp_status;
> > >>
> > >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
> > >>
> > >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> > >> -	if (lp_status & SNVS_LPSR_SPO)
> > >> -		mod_timer(&pdata->check_timer, jiffies +
> > >> msecs_to_jiffies(DEBOUNCE_TIME));
> > >> +	if (lp_status & SNVS_LPSR_SPO) {
> > >> +		if (pdata->minor_rev > 0)
> > >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> > >> +		mod_timer(&pdata->check_timer, expire);
> > >
> > > Why do we even need to fire the timer in case of the first generation
> > > hardware? Just send press and release events directly from the ISR.
> That timer looks like a software debounce to prevent unexpected and
> meaningless interrupt/event caused by quick press/release.   

Right, but in case of the first generation hardware we schedule the
timer immediately (expire == 0) and do not check state of the hardware
in the timer handler, but rather simply emit down/up events, so we do
not really get any benefit from the timer (again, I am talking about
first generation hardware only).

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
