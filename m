Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C900A1D16A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oQjXJ5U/y/hPaWXS3WHE6h8D6lv7ihq2t45iXjXQYs=; b=RHUnvTJfod2bFi
	sXDdELC0IvFzA/jGb3u65OwXIWy1qGUNWhifMSZTKSzCej4fNgW/nO3HmiRlfxGoJ3iYwqaVQTeBh
	EC6vlXNNXp/e0YP54Mq6OKvo7TogApE3JCpfiyFA7ySZqbejkqMLw1o0oIQXSiSJV+sr7trUa8CHa
	B9+BTadXfNuCdPtK5WHWMl4ZdjdgS5WGRoF2o9frzEaSj0T0DYlEC6MnV6Mb+ZWRKBINEuIHvPjCS
	oE4mByFGtpOCbEM6UjgiOnQPW1DEWnlHqhvsTkMcwglzG0C5naY9oHkzKtBUxI1L0Hx9EOIHdwd7Q
	VvB/yiPPnNXZ3sUT2ueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrvB-0003fs-Q0; Wed, 13 May 2020 13:59:41 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYruq-0003WC-C6; Wed, 13 May 2020 13:59:21 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M8Qme-1jUS3x1Bj6-004PDC; Wed, 13 May 2020 15:59:17 +0200
Received: by mail-qt1-f180.google.com with SMTP id h26so14176380qtu.8;
 Wed, 13 May 2020 06:59:16 -0700 (PDT)
X-Gm-Message-State: AOAM533rwAvGouUl3PaBiBeas576nRKTHQJK7Vi551gZYZoCXinkrjsZ
 rdRbAh4fOaQ09SjuxvYhR2FVh9Ze16w/ORXZ7hU=
X-Google-Smtp-Source: ABdhPJyT+xoQj2vuKGXfbqYoiOi6Hc8NT8YpW0uPPacFX2RP08sMKF0vH8szzdRoVXUir3s6SbUHWVSdmu9IPamQdT4=
X-Received: by 2002:ac8:518f:: with SMTP id c15mr11201103qtn.142.1589378355789; 
 Wed, 13 May 2020 06:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
 <20200508121041.64f91276@xps13> <87lflwngey.fsf@belgarion.home>
 <20200513151737.757513cf@collabora.com> <20200513152327.3879010c@xps13>
In-Reply-To: <20200513152327.3879010c@xps13>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 13 May 2020 15:58:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2X3chQ36E_RHH5nJkTu-QUiD4Wwccnhn9KNct+-5ytDw@mail.gmail.com>
Message-ID: <CAK8P3a2X3chQ36E_RHH5nJkTu-QUiD4Wwccnhn9KNct+-5ytDw@mail.gmail.com>
Subject: Re: [PATCH 0/3] mtd: rawnand: Get rid of the cmx270 driver
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-Provags-ID: V03:K1:cFfqyaWSsn9t4bgliZdZLn11WqQJJk/a4gB5eho7jriQnGL0xnp
 CPVmbVCnEhFrELqATt2TralKiysOe0JqAb8T6hJ3dbe6d8CMEKwYMsBV8sp5eZzzpeg+pKG
 cNOO2rFnugbCSL8sC8R4lGreHpcr7Y0/ZwHK8a7AxtRqkalyzOOENAB4NBzfo7zUg4Izu5I
 gNYDVXTS8xgUmp+5Hd3Aw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6zSQnYyiTGE=:TP0ea6lE31Z8TUqSO3PS3d
 41Od77rz1R3IkEBXol7LK578hrt1bxWTnFUy59BLgoLeAzgz+R33BFrWGHnttkmwwSi2DcIyu
 c1pA8M8fobth7yMq1N+OnUFG+U2KlizbajYIt7pQaKhua5ZWH3ynFEqUaAlfZvuiAkPyOR7sT
 GokKGPBvjYAtMSj88Q3sKtpnYNRi1A3688ETA4OzhlPUhMxZ8a8s/rxmcgm+hIS4/x95RT/Lq
 AT/NPrwzgvD+FyH1fe2T5rTpOqLYID6sLOStssQWaiIqoqDzEbXccxD+lMGUGY99LwoinVOU/
 lEbkcvQskcAWV7un9ZREW83etoBkJanyR6XHayU26HGADhRwO0sUC4k2RUJ7mN75CR5x1azAh
 ZvuOGBITkwidIIi8lQE4Vr2gmOorwsvoirE6gf4d4vScaRPpmfuIUcCEZe7muM6w1RAZBrKn0
 KwmMPLcrOjyCP1n90TiVega6EaW+8zUhCDwu/e6txxaj3E4C1vBvjpDfbChlYscMQR/00VtVH
 7CPynX326bY+7JC3jysnTauFW0TcNYshCBrQKhcDWRo45UENC9hPtdyF3WLJyOm80tjGW2z/f
 QDrhGfN5RdgPZKH1H+ifkVmT9/1orbpC39X4wMK1FfuSQhGYj9at8FfZI/vLN3DtGq+7Of2mS
 RUuiXOHobggnTvefQiqx/qB/PNyyVMJUMOXkZljI4orRVUYUoD5tY1YGgo0SsFPWVj49woKCJ
 yuTYYGwQhn6/73XeIXiBsKo0ZE+lbvyZ0cgPgkhGBr+vwKOWKcfP9Zt6DqzcbU2HdDVOvDWZ7
 XS975MNe/QHeTjkrzrm3rPxhAjafZUChH88GALweOhAfhfk4Ok=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_065920_707983_8244F46F 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 igor <igor@compulab.co.il>, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 3:23 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 13 May 2020 15:17:37 +0200:
> > On Wed, 13 May 2020 14:55:01 +0200 Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> > > Miquel Raynal <miquel.raynal@bootlin.com> writes:
> > >
> > > >> I hope someone still has a board to test that.
> > > No, unfortunately I don't have this board, nor do I know of anyone having
> > > one. It's the second time I see patches on cmx270, and the question to whether
> > > we shoud keep this board in kernel is still in my mind ... given that cm-x300 is
> > > fully supported and testable, and no one I know has a cm-x2700 ...
> >
> > What's the point of keeping support for a board no one has or no one
> > cares about? I know I don't have my word in this decision, but I would
> > strongly recommend getting rid of it, especially when I see such
> > crappy/unmaintained code lurking around in the drivers/ tree.
>
> I also agree on the fact that spending time on maintain unused boards
> is lost time. We have so many drivers to handle, maybe it's time to get
> rid of these "too" old drivers.

The cm-x255/cm-x270 came up in another discussion last year because
of its unusual PCI_HOST_ITE8152 PCI support that I'd like to kill off.

We did not see a strong reason to keep the board support at that time,
but nobody sent any patches. I think it would be reasonable to just
kill off MACH_ARMCORE, PCI_HOST_ITE8152 and
MTD_NAND_CM_X270 along with anything else that is no longer
used after those are gone, such as the pcmcia support.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
