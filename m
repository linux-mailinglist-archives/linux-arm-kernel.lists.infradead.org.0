Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1637A1D1244
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aXqkGZr3yPNXiZL/NGnd2iQvLIN2I/wKnZGMOXP9kY=; b=mH/52NC4Mplhym
	ypzDZDeiYcjLzCXCI3yw/NkC9kwOwgRV6L+w7uwXJaR4RhmojYjARB1jh0tUTyl6X40VDz2VznUbG
	QvjimlB/fEGEWSzzrctD5qH4QWmXQojtf48sjVYIJmzrYJEfCP7NplqbUqq3sCp6e06NDp6sxKkgP
	DMgQegCNSxbTTVsgHv9mWep/K7f81s1RgmtP6OJiDNW6Rm26021uRRmHj1kV93qTFNQGBq4Ig9rk4
	JRlV3/FBIzmvqlBuioISaFjD8XViy7cL5zi387uipTgVyom/llRM05cLVpoCBS69zpStLNA/Co70/
	ZF5g2zFg0zicjxkD0WwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYq9j-0001oG-9e; Wed, 13 May 2020 12:06:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYq9V-0001mP-Vn; Wed, 13 May 2020 12:06:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so17448013ljj.11;
 Wed, 13 May 2020 05:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=rqWzzkOtBCpmgaVCKpj7+jaGD37zCFqeMtexNP5QRuE=;
 b=qeD6Nm2mKPVu1exoYnpXJhhjBKHZdaUMDm2AWDFhZys9RnaspB+P9VkYujGl31nKqn
 WagkYgVtSZCMVipmZjuysPlRWLkGigdsNodZaDhc8L2KEn/n+Aw5NlowCNryZdhwjJuZ
 I9a/eMvfwWEwNfBAin+KyqE8TYwXYIKwsKK5kx0W4srvRYKEU6cic5if37CexbOe7xS0
 bzXvtii3T3raofA0lLhK649Whj5GXdeYkJEF+6/JSFgiGI9sB03QalwmwGx5+Beo6eyE
 B8IRfi1FpydyMtcRG9+Cz8cFmpY5Io9Gk1UvzF3XnQ59sCTh9fi8i9S9h6NmsJmNxg4i
 Tgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=rqWzzkOtBCpmgaVCKpj7+jaGD37zCFqeMtexNP5QRuE=;
 b=fG1LWTm4dpIQ9ygn2WuG1OwE9s6bsSCpEfnEgX1HHy9h77yP7oeHSR4i2I4vnZ94pW
 EP0pbjlwMxiRKZiD+j5HPtm2POztK5bNyNecjeZUwVnfEi/0pivZQgeEx+S9h0+dw0mD
 yEmQfUqQpTDXmIEsWbsHRUW81PGMuoAKy8MfvNB87dNKnj96MulHnxOBdJeJwMmBuzNf
 Co4BMs0RyfNCMvTdLxYKRU+Nz6t1HEuVDapzB7F76hw8vHpDRCkJHpvhCB0YqcKMyDeP
 pFJfageHFBZu3TlKE8x99ZdT9Hpz7OSJdXgCIrBnFzbicdo0EQClQpIYy0fB2WRZ201M
 Pm1A==
X-Gm-Message-State: AOAM530Kfm6dWyWcwuliljF5dX1B8oMSn1O0Xsv0lZWcyFhUNcrZtp0J
 wxmsoFhyJ6INy9465qy2t3Zgp0pgaYO8s1FX9CU=
X-Google-Smtp-Source: ABdhPJySqd5aKEee2N8mNCkrbF8REchFhQ7yF5jLHkOX7270Pxv7mqJsGVq7Ix9WFSznPLx8EacrYqvbMQJ7yygKp68=
X-Received: by 2002:a2e:8590:: with SMTP id b16mr17846575lji.45.1589371579390; 
 Wed, 13 May 2020 05:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200510101308.10451-1-john.oldman@polehill.co.uk>
 <20200513115823.GC953616@kroah.com>
In-Reply-To: <20200513115823.GC953616@kroah.com>
From: John Oldman <john.oldman60@gmail.com>
Date: Wed, 13 May 2020 13:06:08 +0100
Message-ID: <CAMJX__Qx_MyOmqiphz_Fg0X8itu8PDtNNpFTKqxGabK6v1bsLg@mail.gmail.com>
Subject: Re: [PATCH V3] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_050622_018688_0CE01975 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [john.oldman60[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [john.oldman60[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: john.oldman@polehill.co.uk
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 John Oldman <john.oldman@polehill.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 nsaenzjulienne@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

yea I agree, will re-submit...
Cheers
john

On Wed, 13 May 2020 at 12:58, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, May 10, 2020 at 11:13:08AM +0100, John Oldman wrote:
> > Coding style issue
> > This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > v2: Resubmitted with shorter comment line, as suggested by Greg KH.
> > v3: Resubmitted with descriptiuon text moved into the comment area.
> >
> >  .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
> >  1 file changed, 16 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > index 1640906e3929..993535bbc479 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > @@ -15,10 +15,10 @@ static   int                        g_once_init;
> >  static   struct mutex               g_connected_mutex;
> >
> >  /****************************************************************************
> > -*
> > -* Function to initialize our lock.
> > -*
> > -***************************************************************************/
> > + *
> > + * Function to initialize our lock.
> > + *
> > + ***************************************************************************/
> >
> >  static void connected_init(void)
>
> Shouldn't that really be written as:
>
> /* Function to initialize our lock */
> static void connect_init(void);
>
>
> No need for the /****** mess, and no need for the blank line.
>
> Simple and clean is best.
>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
