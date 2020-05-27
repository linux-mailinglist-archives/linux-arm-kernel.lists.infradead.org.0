Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD761E3951
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoYm75cdsufPyS3t/PXEW4LJkKqYxZIUGLORorvkVgk=; b=Z2sHl1ae3pfQcH
	AIuegvISZchjVukaPCAKaNoRISRKpM+qlGsZlRPMQm/R2LnHJhbxPYE97YNGWXlRPG3B9K4JxhIpT
	rL7BEq9bdw/RKgU/AsCWHJ+VSRgvHbhGQrK2yzjs7sG8U2IFgmTpFvWwZ3rU9CqXIEl6nJV92N0qO
	+Y9EhfcQn9+QuQfmeNFxZdyNojnV8WzDXx+yUgOcMVWkzVe0vq2tpn5EJDovyHFG9cA/vr++fQxmG
	nB01TnMAufwn0062UEx6vTdvryeRb9ZcLfLoSWrX5G/+HyZxr+M3OaOU0oDt8KD3xjfuQQkElubmC
	2w75QfTCjvqwun4V+C5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpeI-0000Pu-A9; Wed, 27 May 2020 06:34:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpe8-0000PG-AA
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:34:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so11333099pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 23:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Lvwr1YAKNY9WMfoJU9GdyQAGCpa27iG61RB5+DG9+HU=;
 b=ix0hzHaX0/bvm5aUekJKMV8QeyRNclPiKL4kC29OJXGd5CLBVgOCaeBJD1XAE2xE9Q
 iA2XWct7NUT9Udlx+YLrc6YwdV67LYDVTSgP9Zskh8U4ybuwHcjhZ79fkJMfIpQFu9LY
 C/r7mrd2gHilznrxGWHKuppf6Cllt5pUKICSdlW2nSgraYAf8aIyEapaJQ16hzNg7Jvl
 iPO5vHKLvYQ9j8r5K7e1jW0nODLgzjZHxHw/Y3PDy1zzy2+GsO0CmN9QJMXIqidzqRHv
 0sXSwNn8dCO4sc8sVUonenNlEvXrP/YLUBosYUIQB5S2IpScL4AwL7iFnycDTcVSAwrc
 PA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Lvwr1YAKNY9WMfoJU9GdyQAGCpa27iG61RB5+DG9+HU=;
 b=g2K0z1rZOqahVpZ998LZJamPoaR5qi9/RAsiso9FkEKPB+/sFJG/Qe2/y5YR/dQsL+
 lNjAziJ86vSyfxpbaDrhyTgbFqZLGOOarbDFfHIOiHP6YeYtykdu+fErAvlnAW4/6e4y
 p3t8xErh1nu1Eaq6TgkjupT3h4c7OZrhCLM8zDs1YmQfXi5IhFY/1whL+gXmdmgapXzn
 +U4ACq72nxj4SCkScbNReZQuR+8IjrO62QISv3ck2xnW8nSRhB4A3gTQjHfJahL4zc0o
 V0KBHT7Kcm0Eytd3AiNrEdawMnn6ULGoOos4w4RysIgqNqfGUlf9RsQh6dwEb0n2w2Nn
 AKbw==
X-Gm-Message-State: AOAM531tsFUg433l4VOwSYIC5dXMTpkpUYav3SYrOYQGG0SgYh3+1SQ/
 GQR7ZADlvCO2kg7Ym3KIxwY=
X-Google-Smtp-Source: ABdhPJy94qGzmuj+00p3Dh9npYlo29qvv4Wbqm86SBnhevdkWrqlXMuJueFxKKQb5We+HFd9b+yjbA==
X-Received: by 2002:aa7:9302:: with SMTP id 2mr2399377pfj.164.1590561274736;
 Tue, 26 May 2020 23:34:34 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id e21sm1190329pga.71.2020.05.26.23.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 23:34:34 -0700 (PDT)
Date: Tue, 26 May 2020 23:34:30 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
Message-ID: <20200527063430.GJ89269@dtor-ws>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_233436_372337_21712E80 
X-CRM114-Status: GOOD (  46.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:36:34AM +0200, Hans de Goede wrote:
> Hi,
> =

> On 5/19/20 11:02 AM, Andrzej Pietrasiewicz wrote:
> > Hi Hans, Hi Dmitry,
> > =

> > W dniu 18.05.2020 o=A016:23, Hans de Goede pisze:
> > > Hi,
> > =

> > <snip>
> > =

> > > > > > > =

> > > > > > > So I wonder what this series actually adds for functionality =
for
> > > > > > > userspace which can not already be achieved this way?
> > > > > > > =

> > > > > > > I also noticed that you keep the device open (do not call the
> > > > > > > input_device's close callback) when inhibited and just throw =
away
> > > > > > =

> > > > > > I'm not sure if I understand you correctly, it is called:
> > > > > > =

> > > > > > +static inline void input_stop(struct input_dev *dev)
> > > > > > +{
> > > > > > +=A0=A0=A0 if (dev->poller)
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 input_dev_poller_stop(dev->poller);
> > > > > > +=A0=A0=A0 if (dev->close)
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 dev->close(dev);
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^^^^^^^^^^^^^^=
^^
> > > > > > +static int input_inhibit(struct input_dev *dev)
> > > > > > +{
> > > > > > +=A0=A0=A0 int ret =3D 0;
> > > > > > +
> > > > > > +=A0=A0=A0 mutex_lock(&dev->mutex);
> > > > > > +
> > > > > > +=A0=A0=A0 if (dev->inhibited)
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 goto out;
> > > > > > +
> > > > > > +=A0=A0=A0 if (dev->users) {
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 if (dev->inhibit) {
> > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D dev->inhibit(dev);
> > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto out;
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > > > > +=A0=A0=A0=A0=A0=A0=A0 input_stop(dev);
> > > > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^^^^^^^^^^^^^^=
^^
> > > > > > =

> > > > > > It will not be called when dev->users is zero, but if it is zer=
o,
> > > > > > then nobody has opened the device yet so there is nothing to cl=
ose.
> > > > > =

> > > > > Ah, I missed that.
> > > > > =

> > > > > So if the device implements the inhibit call back then on
> > > > > inhibit it will get both the inhibit and close callback called?
> > > > > =

> > > > =

> > > > That's right. And conversely, upon uninhibit open() and uninhibit()
> > > > callbacks will be invoked. Please note that just as with open()/clo=
se(),
> > > > providing inhibit()/uninhibit() is optional.
> > > =

> > > Ack.
> > > =

> > > > > And what happens if the last user goes away and the device
> > > > > is not inhibited?
> > > > =

> > > > close() is called as usually.
> > > =

> > > But not inhibit, hmm, see below.
> > > =

> > > > > I'm trying to understand here what the difference between the 2
> > > > > is / what the goal of having a separate inhibit callback ?
> > > > > =

> > > > =

> > > > Drivers have very different ideas about what it means to suspend/re=
sume
> > > > and open/close. The optional inhibit/uninhibit callbacks are meant =
for
> > > > the drivers to know that it is this particular action going on.
> > > =

> > > So the inhibit() callback triggers the "suspend" behavior ?
> > > But shouldn't drivers which are capable of suspending the device
> > > always do so on close() ?
> > > =

> > > Since your current proposal also calls close() on inhibit() I
> > > really see little difference between an inhibit() and the last
> > > user of the device closing it and IMHO unless there is a good
> > > reason to actually differentiate the 2 it would be better
> > > to only stick with the existing close() and in cases where
> > > that does not put the device in a low-power mode yet, fix
> > > the existing close() callback to do the low-power mode
> > > setting instead of adding a new callback.
> > > =

> > > > For inhibit() there's one more argument: close() does not return a =
value,
> > > > so its meaning is "do some last cleanup" and as such it is not allo=
wed
> > > > to fail - whatever its effect is, we must deem it successful. inhib=
it()
> > > > does return a value and so it is allowed to fail.
> > > =

> > > Well, we could make close() return an error and at least in the inhib=
it()
> > > case propagate that to userspace. I wonder if userspace is going to
> > > do anything useful with that error though...

It really can't do anything. Have you ever seen userspace handling
errors from close()? And what can be done? A program is terminating, but
the kernel says "no, you closing input device failed, you have to
continue running indefinitely..."

> > > =

> > > In my experience errors during cleanup/shutdown are best logged
> > > (using dev_err) and otherwise ignored, so that we try to clean up
> > > as much possible. Unless the very first step of the shutdown process
> > > fails the device is going to be in some twilight zone state anyways
> > > at this point we might as well try to cleanup as much as possible.
> > =

> > What you say makes sense to me.
> > @Dmitry?

I will note here, that inhibit is closer to suspend() than to close(),
and we do report errors for suspend(). Therefore we could conceivably
try to handle errors if driver really wants to be fancy. But I think
majority of cases will be quite happy with using close() and simply
logging errors, as Hans said.

That said, I think the way we should handle inhibit/uninhibit, is that
if we have the callback defined, then we call it, and only call open and
close if uninhibit or inhibit are _not_ defined.

> > =

> > > =

> > > > All in all, it is up to the drivers to decide which callback they
> > > > provide. Based on my work so far I would say that there are tens
> > > > of simple cases where open() and close() are sufficient, out of tot=
al
> > > > ~400 users of input_allocate_device():
> > > > =

> > > > $ git grep "input_allocate_device(" | grep -v ^Documentation | \
> > > > cut -f1 -d: | sort | uniq | wc
> > > > =A0=A0=A0=A0 390=A0=A0=A0=A0 390=A0=A0 13496
> > > =

> > > So can you explain a bit more about the cases where only having
> > > open/close is not sufficient?=A0 So far I have the feeling that
> > > those are all we need and that we really do not need separate
> > > [un]inhibit callbacks.
> > =

> > My primary concern was not being able to propagate inhibit() error
> > to userspace, and then if we have inhibit(), uninhibit() should be
> > there for completeness. If propagating the error to userspace can
> > be neglected then yes, it seems open/close should be sufficient,
> > even more because the real meaning of "open" is "prepare the device
> > for generating input events".
> > =

> > To validate the idea of not introducing inhibit()/uninhibit() callbacks
> > to implement device inhibiting/uninhibiting let's look at
> > drivers/input/mouse/elan_i2c_core.c (PATCH 7/7):
> > =

> > static int elan_inhibit(struct input_dev *input)
> > {
> > [...]
> > =

> >  =A0=A0=A0=A0ret =3D mutex_lock_interruptible(&data->sysfs_mutex);
> >  =A0=A0=A0=A0if (ret)
> >  =A0=A0=A0=A0=A0=A0=A0 return ret;
> > =

> >  =A0=A0=A0=A0disable_irq(client->irq);
> > =

> >  =A0=A0=A0=A0ret =3D elan_disable_power(data);
> >  =A0=A0=A0=A0if (ret)
> >  =A0=A0=A0=A0=A0=A0=A0 enable_irq(client->irq);
> > [...]
> > }
> > =

> > First, close() does not exist in this driver. Of course this can be
> > fixed. Then it doesn't return a value. Then, if either taking the
> > mutex or disabling the power fails, the close() is still deemed
> > successful. Is it ok?
> =

> Note I also mentioned another solution for the error propagation,
> which would require a big "flag day" commit adding "return 0"
> to all existing close callbacks, but otherwise should work for your
> purposes:

No, please, no flag days and no changing close() to return error, it
makes no sense for close().

> =

> > Well, we could make close() return an error and at least in the inhibit=
()
> > case propagate that to userspace. I wonder if userspace is going to
> > do anything useful with that error though...
> =

> And I guess we could log an error that close failed in the old close() pa=
th
> where we cannot propagate the error.
> =

> Also why the mutex_lock_interruptible() ?  If you change that to
> a normal mutex_lock() you loose one of the possible 2 error cases and
> I doubt anyone is going to do a CTRL-C of the process doing the
> inhibiting (or that that process starts a timer using a signal
> to ensure the inhibit does not take to long or some such).

Well, we have the dedicated callbacks in Chrome OS, so when I did the
patch I could even handle Ctrl-C, so why not? But it indeed can easily
be dropped in favor of straight mutex_lock().

Thanks.

-- =

Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
