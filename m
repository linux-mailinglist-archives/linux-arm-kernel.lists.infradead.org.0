Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA0157E88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UhhswxjGrmzL3fPGeB+EDkcaJXrh5nmbXxO1pq/ASg=; b=QzaZogjePXEdB6
	NoP1v2V71ilyhKOVelONPk/R5JlZ+Lji+ip/zj6PtJcEyzV0Oh98+hqZgrtjs/W+SXhrZaJlCJode
	qIvo6sYNwaxVRSx93g5mbupTBsraOtpL4Y5lggqj65VpFEPS3RSnxCOlZtbU5x+hvBWMMkmQ8Xcyc
	7oitIYUFhe5pjCq1OvEwjK/3QVYCSaZbF6dy+DXX0i4xKMq93MY7yGEz0NP0yZbaZVBl696RM97ut
	lGYbATqV2/ztQytTFU+a77NiGLdYmYOC+4xkrRppvPlHDZd2ZEDrSsgdtgNkzUX4l491UMUFFptIo
	ouQrwkcrUxhVKI0/VRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AkW-0001Dj-3o; Mon, 10 Feb 2020 15:13:24 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AkP-0001DM-OW
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:13:19 +0000
Received: by mail-il1-x12e.google.com with SMTP id i7so488011ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 07:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FhN4XtFCJkoq1uQy3zAa0gdyCp3Sl71uMPy2Eyj8+bE=;
 b=I/xFN0o6OHNqlV1vOX3xfGZ8d/9J7hUwnWgRkbtmq5yervupWrbgBcGxfGD0b8sYLC
 uwcGuejk6bD/ZVkpBth8Jjaa713iNs++YsuJPMlSmtwGys5Gej+Xh2SSNPtHIoOeigwl
 V98nNsFb2EBay4fOu+ill9j4oWB/gkUdI0yu51YKQnRETpoRkcL5c00+Gq/LH+LCLxlH
 laj+IEGsZEzC7ASAVdAWUuf/cVDMbEiNHcd2qjXFZ2RG1UO3Q6bgSxySNgoDxU5Sc2K5
 iyTcCsUu5ozZRmiqGYQtnaI/XkwlXp7xqsE/jANCwbVG2Kvz90jDI8wrUC7x+dciP+Rx
 JiOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FhN4XtFCJkoq1uQy3zAa0gdyCp3Sl71uMPy2Eyj8+bE=;
 b=tRvRDiZlLb4EI9tQnvpa9t7qUwFpv/JIOAptadBhvbkXCoOUuoqWyX1RMcowJ5Y1LO
 Vka6N0G0DAHPGKDii6MbMmMu2wBzzXtWPMT0iuE+wPSSFQl6ZsSYIPNcosznfB+ErIbr
 IXAwVbWBXQugWTXhs2de5USA8aZZiiMbDekBfu5SjSslf2Ug/QEGM6fC8DPDcDcWu5Gv
 79ICwrY+gnLjfQEaAN0x0RKI3LYsdmKiNXAYTLPMS7OxnzfbgXUz0xvg5wd3AyZvqdDq
 FPk4p+3HiCyrIBtWqk9kD6RjgBAbd/U+3+TKHPWpMD4KKJNvixCWIIqX7ZFhCDwHEvzr
 TGCg==
X-Gm-Message-State: APjAAAW5reN1laT+NiWU40C6iC339QMbvN9nsUQ+ASUA7O7h/aOo+oNi
 qaCfO+d+uilDESVuaaYTKy6IR+XNKiLJV2D4ORwsXg==
X-Google-Smtp-Source: APXvYqz8NJ/XJCZgc65CapYNrLpMIOjiJgGhRG/vY2GtMRsBh+nwgtkTAaBtEJw8o0Ee3qShBauPgKT/rw5SSdeonlg=
X-Received: by 2002:a92:ba8d:: with SMTP id t13mr1821680ill.207.1581347594542; 
 Mon, 10 Feb 2020 07:13:14 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Feb 2020 16:12:30 +0100
Message-ID: <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_071317_823182_C1A0DF47 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 11:57 AM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
>
> Hi Olof,
>
> Thanks a lot for your comments!
> And sorry for my delay respond!

Actually, they apply with only minor conflicts on top of current -next.

Bjorn, any chance we can get you to pick these up pretty soon? They
enable full use of a promising ARM developer system, the SolidRun
HoneyComb, and would be quite valuable for me and others to be able to
use with mainline or -next without any additional patches applied --
which this patchset achieves.

I know there are pending revisions based on feedback. I'll leave it up
to you and others to determine if that can be done with incremental
patches on top, or if it should be fixed before the initial patchset
is applied. But all in all, it's holding up adaption by me and surely
others of a very interesting platform -- I'm looking to replace my
aging MacchiatoBin with one of these and would need PCIe/NVMe to work
before I do.


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
