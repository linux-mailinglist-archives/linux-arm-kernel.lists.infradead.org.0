Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DCD159239
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:49:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYo02atXMAFqgKmiEd5ymumkJ257s6N0MBNm+7Ka5DM=; b=jopGRomxMdmf0X
	KJUrVXmwCWax10we48435MRn4mRzTIvZY99qW4dGnFeS8CQYWUnWbs4WeF3S14Lri1tuiridccjus
	hUL3T1PObFh0igs/UGshCbxgBVGMTHKiOG5s8wORdCbdcwkaKFc0rSpghebWfr/cQMhoL4BV7gkYy
	Cka7rQLWIyjAccHez7MlHub3DwPt95xZ5wHVdPJOHwbuajuOgIIa98RgyQZgRMa8MGlWw/XuvA4G2
	rTk9ZxsqeoQz3QcQsp4ABv8W7CK46Xpu5XYfASM6A8YfZ+YC+Yle9YiKN9+xJGxy9rdGKbPvURK9U
	xxE4V/w3f5tZPgYtjKwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WqL-00049r-2g; Tue, 11 Feb 2020 14:48:53 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WqB-000498-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:48:45 +0000
Received: by mail-io1-xd42.google.com with SMTP id s24so12010996iog.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 06:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v+pLeKHNc80Td51F5FW28IMFZU66wu+UJlU6jTA+b20=;
 b=y7YXlnma2BOJT3nhEPn9Qsz9bwFH4bvsgNaF09IFU6kIx/USIOMBqguQnWUcHKv3Vr
 iIMR4qekXeCU1c6vj5OUBoEwuBOU7fA/lPUXfD4NhkhKu26TcJegQZp3BQYIKSsHbCyD
 UFfbq9JnIieNNsfJTVOq2vQHuDY74ZU3t0PHrseD+5PH5yIk0BHS5lrGMNBiuWrnOpby
 v9/imyprT0WSefrIF1Ezi9+Mern+xeMocTygoKQhw2cWL46fgqetyoLoGBLKqgSpeVpk
 tyJ4sOfny8gP1MX71ywMIqCCF1toCDoesXqxm9fmEgeL+Nyn3UsodDpwR2p23aW+tqkL
 GOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v+pLeKHNc80Td51F5FW28IMFZU66wu+UJlU6jTA+b20=;
 b=C6VkVyQTo8VhPCH30txnRabI/ToLGS7FrmJ5HFb8Ds6GrB5SYsgUlhvSPgedTF0dof
 GB44cuIdZsR9uWPjrbVMQQAIGWhLId0tJf3cV5Yb1fHd9fykro2+ivjEkXSEBDHfNX7j
 0FsASUe1sB3vAX1wM1ELYTqMB6p3GqAehbGBM6vtAhl7gBE98fA53hkVsiDvf3mriuCC
 iZCNt+N6dwgHFQ3yu9tgj+YJY5FG9gCimei+yuV8QqexvqPWH8qE8xtcXzVl+YcKeKun
 +3y2hgXKOMOi43uCaz4/03HWVEgs7JIdhOM7VEqRhGKYOpwEJUCIq0wpCWCzSxmzxDgO
 2v0Q==
X-Gm-Message-State: APjAAAWTe3buQOSJlYobiZNJyARrPo4mxzqKmkSJ+BRLOHueAUCKu75x
 c1bC1hmkoZksYGf7RdvsvKTxQtkZxcwiN4gMwvzyGA==
X-Google-Smtp-Source: APXvYqzQkHpxNUNbT8iGzEE6+mY56WpbAPOnMfEmck2hBCbgU6rudH4lqadMsXsNnIp/kJnlKbr6zxgOaHMU22bpgQo=
X-Received: by 2002:a02:7fd0:: with SMTP id
 r199mr15038510jac.126.1581432522140; 
 Tue, 11 Feb 2020 06:48:42 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
 <CADRPPNSXPCVQEWXfYOpmGBCXMg2MvSPqDEMeeH_8VhkPHDuR5w@mail.gmail.com>
 <da4dcdc7-c022-db67-cda2-f90f086b729e@nxp.com>
 <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
In-Reply-To: <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 11 Feb 2020 06:48:30 -0800
Message-ID: <CAOesGMhVA9NSbAi-BtcgQBBK90jeT+NcQ6j_FDgjuR7efE65Vg@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_064844_167217_9F95752E 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:04 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-02-11 12:13 pm, Laurentiu Tudor wrote:
> [...]
> >> This is a known issue about DPAA2 MC bus not working well with SMMU
> >> based IO mapping.  Adding Laurentiu to the chain who has been looking
> >> into this issue.
> >
> > Yes, I'm closely following the issue. I actually have a workaround
> > (attached) but haven't submitted as it will probably raise a lot of
> > eyebrows. In the mean time I'm following some discussions [1][2][3] on
> > the iommu list which seem to try to tackle what appears to be a similar
> > issue but with framebuffers. My hope is that we will be able to leverage
> > whatever turns out.
>
> Indeed it's more general than framebuffers - in fact there was a
> specific requirement from the IORT side to accommodate network/storage
> controllers with in-memory firmware/configuration data/whatever set up
> by the bootloader that want to be handed off 'live' to Linux because the
> overhead of stopping and restarting them is impractical. Thus this DPAA2
> setup is very much within scope of the desired solution, so please feel
> free to join in (particularly on the DT parts) :)

That's a real problem that nees a solution, but that's not what's
happening here, since cold boots works fine.

Isn't it a whole lot more likely that something isn't
reset/reinitialized properly in u-boot, such that there is lingering
state in the setup, causing this?

> As for right now, note that your patch would only be a partial
> mitigation to slightly reduce the fault window but not remove it
> entirely. To be robust the SMMU driver *has* to know about live streams
> before the first arm_smmu_reset() - hence the need for generic firmware
> bindings - so doing anything from the MC driver is already too late (and
> indeed the current iommu_request_dm_for_dev() mechanism is itself a
> microcosm of the same problem).

This is more likely a live stream that's left behind from the previous
kernel (there are some error messages about being unable to detach
domains, but the errors make it hard to tell what driver didn't unbind
enough).

*BUT*, even with that bug, the system should reboot reliably and come
up clean. So, something isn't clearing up the state *on boot*.

> > In the mean time, can you try the workaround Leo suggested?
>
> Agreed, I'd imagine the command-line option is probably the best choice
> for these platforms, since it's likely to be easier to set that by
> default in the bootloader than faff with rebuilding generic kernel configs.

For the generic user, definitely. I'll give it a go later this week
when I have a bit more spare time with the device physically present.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
