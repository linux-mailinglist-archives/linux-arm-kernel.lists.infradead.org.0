Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75F1135AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbquXVYEa5SWh486MMTyQjZos+uoUZiOuc+HYPTAD2A=; b=IPP9YPhWU47u6r
	ckrLocI8y0munkHxywHv6tMXDAcQ7rZqkZ2lB32frtxeAmH6yYryjmqwQPsuEqJoNOdY396JCQvYB
	DzRjOQEejqTqWLuDMTz82QvzOfwRLIcPb2Tkiy/HFzk5sMdySrGLYxaGCmb3tcNj1aYmS+GS4ED7J
	Dh4imbbQD5QxkJVuRMMyllTjjDbiZUaa/awve/1qsul70+bYG8irZ9ofsgJ/4BrXwj/rwkJLV0WMf
	wDEs+Qou6XV7b/+Zvf/1SmW3GjCCby6cWd/GLny/exKp27x1BwItGeV9EL/PEGE7AxaSWmZ+2M/s+
	UC8QhFFbqvo/bDlod8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaHW-00059i-Og; Wed, 04 Dec 2019 19:25:50 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaHN-00058V-Hh
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:25:43 +0000
Received: by mail-oi1-x231.google.com with SMTP id i1so315857oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pFUOvAm3fm348kgwrvmev1YNw19TgoAC7QPtF9q0W9g=;
 b=tavjmU/Q3DfvERF7bhd3q/fapLDjBaceWr0h20GkAqynBwFQMUwfUlK4JhVKg6DNba
 YcTrdtYwr9rzEBR4ioJALzSV7YV3HPPFYHcud6qn6L+QOAR5ZZWOyyXYIc+k/MqSde7Q
 KfnTP5KxI5P4mbTDuXUJp8Qyp6pBDieNXRGyaw6F2q4sBWmws/FiBMXMsX82JHHH7Ri2
 zda5XYPi19vtq2GGB512vz3f72AXQfAZO7gQo89mrt/EjTshdpJ7t2GNV6x3qATQYnSo
 e5CFH7FHMs+hgaDF/YiW2ZIpHhfzssyZNkz+XapRCUModCWBJN82m2lpiTFd5a6Q+IoE
 wDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pFUOvAm3fm348kgwrvmev1YNw19TgoAC7QPtF9q0W9g=;
 b=GCrFxVgOlSH3JYDtdAB58AsPu5PifyljsB/sdfyWly0sbtbK3YupCOGqM4hUapsjIg
 S7ikrb4G0ijcqe6ouw/EuLZFk9ZPUq7BrKi/hxj7HOBJZaFuF6M/LwXTagkBwJPD+wZm
 H2sVk8kOOpxMdjg6pcO59JSi1+10WAs98AC+mB7rkJAKFQfRY9DUcIW7zLKq4s8I84Es
 lPeuKMC1kVmemBGO88XfD7+ivRsu5IWPDmrEmW9aPJ8nSxMeVdN7O9D0sKe14Ij8rHB9
 DWMKeUUQ0DrI2ad2fjvcLvt4em9Z23FFw8VbJO1D/NGQpIIhoe/XIDCfvekGGyl+/Ok6
 1u+w==
X-Gm-Message-State: APjAAAWbon8M4BtaMTQuHIW3K2fubPyq4eOv174aAPr06P0j9uPob7a0
 smuKgEEuL8avPOXhSdPphO5P1xTCMBINLhc1GUo=
X-Google-Smtp-Source: APXvYqygeXnEPPwtKFRW0Y36WS+lxc9iXT3BUpe6OWDmYYx7OmzTFEQc+TYv16vi+70aFchYa1GmHEKib44SVaBMTL0=
X-Received: by 2002:aca:c3c6:: with SMTP id t189mr4090470oif.98.1575487535056; 
 Wed, 04 Dec 2019 11:25:35 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
 <CAK7N6vpawfLSVcHCg_3aQ0M8L=j77ZeGfmUZ-J4hpUkWu0fkWA@mail.gmail.com>
 <CAOuPNLii26WcDnwD7ZkMX6ux7VRspw7nMEKJK0QF+j95YCHPOw@mail.gmail.com>
In-Reply-To: <CAOuPNLii26WcDnwD7ZkMX6ux7VRspw7nMEKJK0QF+j95YCHPOw@mail.gmail.com>
From: anish singh <anish198519851985@gmail.com>
Date: Wed, 4 Dec 2019 11:25:23 -0800
Message-ID: <CAK7N6vrSKM8pU0+gquCu1x52GjBTaqFbwqtj_v8dzd+3-g4D1A@mail.gmail.com>
Subject: Re: interrupt handler not getting called after resume
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_112541_588145_F6964814 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anish198519851985[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (anish198519851985[at]gmail.com)
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

On Wed, Dec 4, 2019 at 1:49 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> On Wed, 4 Dec 2019 at 00:28, anish singh <anish198519851985@gmail.com> wrote:
> >
> > On Tue, Dec 3, 2019 at 6:12 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> > >
> > > Hi All,
> > >
> > > I have one general query.
> > >
> > > If an interrupt handler is NOT getting called (for one device) after
> > > the system resume (from snapshot image), then what could be the issue?
> >
> > Most likely during resume the interrupt was not enabled. So check
> > irq status registers to see in the working and non working case.
> >
> Oh sorry, I forgot to mention one thing.
> After resume, I can see that the interrupts are visible under /proc/interrupts.
> # cat /proc/interrupts
>            CPU0       CPU1
> [...]
> 416:          1          0       IPU  (null)
> 417:          0          0       IPU  (null)
> 418:          0          0       IPU  imx_drm  ===> HDMI
> 419:       2242       2       IPU  imx_drm   ===> LCD
> [...]
>
> The interrupts are coming only for LCD display and thus its irq
> handler is getting called.
> But the interrupts are not coming for HDMI case, thus HDMI gives
> "vblank timeout issue".

Is it something to do with MHL cable? Have you used scope
to find out if the interrupt was actually triggered?

> Apart from this I also tried calling enable_irq(irq) after resume, but
> it did not help much.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
