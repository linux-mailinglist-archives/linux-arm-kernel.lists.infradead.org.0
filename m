Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15283F590D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 22:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfTPoCj26qsHGB8+r4xHbp7oxSfzguwGZTNt3KAp9uY=; b=kbY/vymeXc91yw
	NvwrhtW+V/XmNc/kndZBK4AAAgXWKhfJNIiUdXc71+4P7N9ulReJcuCxx5b4zNWG6WIa7z7qfaz9m
	13O+rGT2ESacaiRla7N7HgJoNjKeMm0Oyw9NrJAaDiUQ2Mg7IXcF62nlazmjRQ4+Kz/0OBaWf8axW
	cb2U+TsVuG6wKYVQKIJUcomzc3WCXrHxbaznuL7adwMkitT6anYxDFjYf7RF+720BEWB+D+ROLmqH
	hKyDEVg/WnbvJ+0/CO0XQVVFNpJPuuJn66RD2L8HeYOpvUd4+tcqSRilTu5V1f5QePRLVyupH4Gmv
	+paHTrPDdMKhoqnEsAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBQo-0005Nu-JJ; Fri, 08 Nov 2019 21:04:34 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBQf-0005N7-0T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 21:04:26 +0000
Received: by mail-il1-x143.google.com with SMTP id s75so6357079ilc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 13:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=epWM3knefAqrLqDU/OViVdI12EGBGkgWXZubjUR/AtI=;
 b=psjPZbKl7eoAeg0Hi65pLLJR5aWpIp8eW6QSp222ruy31He0QUvMMPYRhrRTOqbjcO
 WrX/TkaI+epYVp0RWOutmHRDB0ez/3x3W/DtQUhmHTGuMsMFWlTRxmobphUxVYkH1GBy
 iP6rc/fL99P860YoSz3EMeZqiawmzLDunBCI4bD7Ncq/HjAmz5O67/kRM5ZT0AcwwNmk
 jiPY6tFxcV2KphnhWkMrjwTwDlO0oQ6tm3RQVckZcC4XcIuFLLbrQZh8CWC26b+crYD6
 hyxIcuO3eoQroLW/0gKKg421M9rGFyZERm73JMS1XJoGYQUODru4xH7rSppwHXCg+057
 PNcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=epWM3knefAqrLqDU/OViVdI12EGBGkgWXZubjUR/AtI=;
 b=EAcNGviDjFcOMU5tk20tmpCOgFZmykeRtr7S6FjcOaqJrEQntLcmC3ECJzAS+2C49v
 leKHkhoUxNWf+EcL7mM+JL9MPf9c5YptFkLisw3wpq2IwjvQzJTmac7cm6Jm4FMZwtj8
 qbcpiX139LN1jyR+KvKtnhumkJEOksu/dPpzaYtm3MQyLKivbuQWkawtg99a9lesgulD
 Pil7Eo3ETu7LQncWHLQzkr8Rfs+ZB4jis4J95QCWqIQ15tFa9L9Zs0uXvUfaEem6HPta
 Bsqk9cDDOLfaN14uCX+yP0xUkO0YkYhkQP3FGFt604Xj+Wy9S9NXVqVnEy38JHu4uDzN
 mTDw==
X-Gm-Message-State: APjAAAWubL2bvAD3CzvtdB1GlcpUGxTjMtZgHfTO+DtKJMyxeBsyaZ6A
 nC+f7ioPrgXWjAVHMMHbm980rIuVpov9fAmBDmk=
X-Google-Smtp-Source: APXvYqw6LOuVT9ebBAj+3hLk3gV0PVdz/r5xYLkm8Egl9Vt/40fOFEiRRhDP1HrKXFl8PUTBOhsUrbzSHNJW3GdbLpM=
X-Received: by 2002:a05:6e02:c2c:: with SMTP id
 q12mr15390187ilg.205.1573247063677; 
 Fri, 08 Nov 2019 13:04:23 -0800 (PST)
MIME-Version: 1.0
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
 <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
 <20191023143646.GG5610@atomide.com>
 <CAHCN7xKi4oSoVbRM=-D1s2GnMig8xs6iYNwUWj2Ohfj+1okx=Q@mail.gmail.com>
 <20191108205139.GP5610@atomide.com>
In-Reply-To: <20191108205139.GP5610@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 8 Nov 2019 15:04:12 -0600
Message-ID: <CAHCN7xLv9K07ya4Ssj_zs_7pwGwWVT_P4QbH88Bz0wPjB=HX_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_130425_049207_9B1B6497 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 2:51 PM Tony Lindgren <tony@atomide.com> wrote:
>
> * Adam Ford <aford173@gmail.com> [191108 20:03]:
> > On Wed, Oct 23, 2019 at 9:36 AM Tony Lindgren <tony@atomide.com> wrote:
> > > My guess is we need to call clk_disable() and call
> > > ti_bandgap_save_ctxt() on CPU_CLUSTER_PM_ENTER similar to
> > > what ti_bandgap_suspend does. And then restore it on
> > > CPU_CLUSTER_PM_EXIT.
> > >
> > > There's a similar example already in gpio_omap_cpu_notifier().
> > > Not sure if there is some related errata to deal with too,
> > > probably the old Nokia n900 or n9 would provide some hints
> > > on what exactly needs to be done.
> >
> > I 'think' I have a patch ready that does what you're asking, but I
> > will fully admit that I don't completely grasp what's going on.
> >
> > I'll submit it as an RFC, but I am not even sure I understand what to
> > put into the description, so if you're OK with reviewing the RFC, feel
> > free to mark up the actual commit message as well.
> >
> > From what I can see, the changes haven't negatively impact stuff. I
> > didn't see the power consumption go up before, so I am not sure I can
> > replicate your findings.
> >
> > It'll be posted shortly.
>
> Yeah seems to do the job, thanks for fixing this issue.

I am glad I could help!  I am learning new stuff.  :-)

Once the other patch to fix the bandgap clock idling, will it be
possible to accept this as-is, or do you need me to re-base and submit
again?

Ideally, once we get the thermal stuff in and we can drop Nikolaus'
turbo option on the 1GHz processor and just let the processor scale to
1GHz without having to deal with the boost stuff since it should
throttle back when the junction temp hits its threshold.

If you want me to re-base, please let me know which branch I should use.

Thank you,

adam

>
> Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
