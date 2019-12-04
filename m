Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6695D112867
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAtuon6McjM7YH/9U9SqYqXhgQXKaht4xcWYT5GDzBk=; b=OdepcxeS+Hm4ar
	G31Y0hex9SgTvhS2iFc8a63IGQtec/ri5DSu39fYbT7dFuxVoqF1QUJXPUc9fd7t1fo8Wn+YXipTW
	oUu8OMod0OGqiqL2bgeE8Ej7Bz7Ieace+Sj1FMD//SUyV58Paf+H/iEuPJUppHRD72PJUjPgD9dFr
	Txzu3c8ETejHk5kUFdKJF60R7vrmKvWeFSHK4f+GBDO8ttmSiu2jIiHO1C8XjHd1oSxA9CI2LS905
	DouNs/ATc72ZohavQnsfybmxb7k4CQX2SYkNNFxnWQ2MLuyidDkEhBgkjyBT2X+zYzjulXPJIwLDy
	Hu+brzRjygVr37HpEE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRIT-0000ec-83; Wed, 04 Dec 2019 09:50:13 +0000
Received: from mail-vk1-xa29.google.com ([2607:f8b0:4864:20::a29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRIF-0000a2-Gd
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:50:00 +0000
Received: by mail-vk1-xa29.google.com with SMTP id p191so1939462vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pPIJ9M8+mSe3OeAXCE+fj/3dGRagMu8jXvBF/uDza34=;
 b=cXtA9Yptfjo8ePQAqvUGePG60nWRObXSX42QTc+c9FwtujDvR9ZEnH4F+TSMnpA0Wh
 oC4zo10iCmvaHbQ2tY1mcsutd71XBkBZxHBpsa+OMIKSFjHw4DnqKkNjBnaBdNVgZviZ
 QStk480dlgw0qkHufnq0myyOQrwFKS1amp6vOXy/nBAFHKrwjti4hyS6QMgMwxx/ASDc
 z/w0o3d1mdWNZHgbRAbxXVgP/yR470eozuhigjg+M5z0ew7sPRoOajiP0UZ8c6N6aGgR
 Nwcx0wY1PaA3VUwL4oum8Zse0r9sHnQx7iwt5Al5bti6ru0vs0kz9S8lEAIy5Hf4AegX
 pBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pPIJ9M8+mSe3OeAXCE+fj/3dGRagMu8jXvBF/uDza34=;
 b=Ahy/pm3p0q7QL9DhQMZwMWDtv+tORYcAuRZeW21yYfZY9AUmmDUY0wJu1Ono5mkE8m
 ximT0SJVTCYHx0fpORacCH9VPkxMaRVvsUwDMqOGeQtcTL0MVDK7O/i94u4X+sZtfrEl
 k4G9F3dDBlNraauF522sEdLdbL7cD8nwWblDxRq03wmmVi4rB/ghkU3i2+1TEye18i89
 0BUf0gsGcnk814kWfPGRPHZt/UQ1SRmyEz8wf5rDzzaT0D6aIala0U1+CGrcsLAF6J5c
 LVCyHmN5P9AGA4+QcGDw+DHjdk41onoOR77gKtRI+QCO77PG683rvm2gfbjL8rKJbDtz
 pdCA==
X-Gm-Message-State: APjAAAXR8TgAZJJu95xjMa9EVPyccFMMfCOi6nP59OiUzfl3kCckm78+
 Zi/DupEVSBIV/8MqDg1Cv88WY6zL3zdkBWT9CBI=
X-Google-Smtp-Source: APXvYqwcmEszgaP2f+aEFuCk64GgbEQC+Y3ruLWXWwDDA0lNHGnXECgPDn5L2c4lKmDY2WgkAnD6nw9PVtHk309L/8c=
X-Received: by 2002:a05:6122:1065:: with SMTP id
 k5mr1378302vko.14.1575452997897; 
 Wed, 04 Dec 2019 01:49:57 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
 <CAK7N6vpawfLSVcHCg_3aQ0M8L=j77ZeGfmUZ-J4hpUkWu0fkWA@mail.gmail.com>
In-Reply-To: <CAK7N6vpawfLSVcHCg_3aQ0M8L=j77ZeGfmUZ-J4hpUkWu0fkWA@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 4 Dec 2019 15:19:46 +0530
Message-ID: <CAOuPNLii26WcDnwD7ZkMX6ux7VRspw7nMEKJK0QF+j95YCHPOw@mail.gmail.com>
Subject: Re: interrupt handler not getting called after resume
To: anish singh <anish198519851985@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_014959_574209_1BED427E 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019 at 00:28, anish singh <anish198519851985@gmail.com> wrote:
>
> On Tue, Dec 3, 2019 at 6:12 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > Hi All,
> >
> > I have one general query.
> >
> > If an interrupt handler is NOT getting called (for one device) after
> > the system resume (from snapshot image), then what could be the issue?
>
> Most likely during resume the interrupt was not enabled. So check
> irq status registers to see in the working and non working case.
>
Oh sorry, I forgot to mention one thing.
After resume, I can see that the interrupts are visible under /proc/interrupts.
# cat /proc/interrupts
           CPU0       CPU1
[...]
416:          1          0       IPU  (null)
417:          0          0       IPU  (null)
418:          0          0       IPU  imx_drm  ===> HDMI
419:       2242       2       IPU  imx_drm   ===> LCD
[...]

The interrupts are coming only for LCD display and thus its irq
handler is getting called.
But the interrupts are not coming for HDMI case, thus HDMI gives
"vblank timeout issue".
Apart from this I also tried calling enable_irq(irq) after resume, but
it did not help much.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
