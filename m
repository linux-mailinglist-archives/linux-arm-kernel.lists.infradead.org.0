Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026FC15826C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6hNEb5v33Cyh6XyYiOCkb39mIRHYDKiKhn62bY8GWE=; b=AuXApfsWlnwFuP
	qWlO228wb00DZIcKULzGhgvb5k7tjkzmNFnSNvPqDqdj23gB/h8b9NYJf3VCD8pRjuXTZdPkoE6MP
	Hr4+P+Tw+GmhDbGTZkyNO6Odk08P3AmHue9wpCHnIu1jX9qXwgJzhyU7T4vANfeqdUN/8u9T+mG98
	Jnv7785S33FVsXSnHyaIycOEfftwWwDVTnJ1uvDNPNLFFrBEJiUcD/MAXr+gI6p8HNnyMP4REAtpJ
	yZj5V5NfKfx3M6Pt76bgOvRmjQXGjTnCmK2mH0YWNuhpVrT/uefD8gt74qqINhBuAtEVu9k/fU3Ew
	CZQDRzg9g2JBNX5j3yIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DsK-0006UU-R8; Mon, 10 Feb 2020 18:33:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DsD-0006TY-IJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:33:35 +0000
Received: by mail-io1-xd41.google.com with SMTP id m25so8701222ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 10:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B+jHtAnJKkOCwyeMPvS5vGcxcEKKBJbfgvWPh9lpFCs=;
 b=PdwRXeWHiFH8yrpQPYpR0uye2yAyLKDZSAPha/h4Mbr5H5Oj09gWLIhL2M7t7QAK5s
 OgkWH4mTDX6zzUNkwCryxEGrAR1iwW8YBoVj2bJjKWPhnJLL9DpeT/b8HPXDGoBsv97s
 FVfQYfUH1eWx+xXVRLylK51uI380jwjqt2trAny+zTRTP0QXjC8e0mGrVinkItDsiHv6
 4sz0lz5WCBoQsWHYoAWzIYKcpH4dRoeeM3KJR54Srcl/ci30YYHbj6BwghIvJdgflaBd
 N3jOvp46mkeMNlm70JAWogJwSOWt9p2KwrdVabQd8z7247nhhvXPAB6U9PDqElw4WH6C
 xKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B+jHtAnJKkOCwyeMPvS5vGcxcEKKBJbfgvWPh9lpFCs=;
 b=EyyneDiLJ1SpF6i3wq2Bdi2ODmrRY+TtB82TZf50qhf9kGljqOahbiW4z2/zkN/VbO
 XTd2y+Y45rC0v2rSAlc6+Xr6Rj5eHrOUoKl+Vidxorjt81auSm1hQ41F8p8reOK2ZtN5
 ctMMNB3BmQy5QbMQEV8qIM/5I7I9kh9WxTMNx7fi54fyuvOJyv5pbaIgxzjFOFlRZQNm
 nv+PQjU9HubeHddFKO07KlX81bWY9AYpDUKNZn5Fzylz0JaUquAZtNYmr0XNC87/qedT
 gpXRyMcZ/fgMVw8jtqhgHa5v04Vns2HfNPOUlCfW39DgfERaHs6dU1kKW6u2cVFaJFVC
 9tJw==
X-Gm-Message-State: APjAAAU64cP8A4MVTu390SaBpaT/bw0z0ReR8i9rSAjwvaMdYjz4SE8p
 zmqS2NTml2ZRLoCMSayRE9FIIObmdwUN+Id9bqo05Q==
X-Google-Smtp-Source: APXvYqyoFf5sGjg09a7wIuIWH9xR+u53nYPNlmA8qKwgvkkGi0OrCh08SZa//aX1Vvd7AaJvFvK08wvjN6inWFOQMwI=
X-Received: by 2002:a02:9581:: with SMTP id b1mr10894223jai.11.1581359612398; 
 Mon, 10 Feb 2020 10:33:32 -0800 (PST)
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
 <20200210161553.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200210161553.GE25745@shell.armlinux.org.uk>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Feb 2020 19:33:19 +0100
Message-ID: <CAOesGMjJS0SfNwQoBqL8Y1G4Uj0YDBf+EWP4MHCnVWnZF2DyyA@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_103333_631998_44FCF385 
X-CRM114-Status: GOOD (  34.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 honeycomb-users@lists.infradead.org,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[cc:ing honeycomb-users, didn't think of that earlier]

On Mon, Feb 10, 2020 at 5:16 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Feb 10, 2020 at 04:28:23PM +0100, Olof Johansson wrote:
> > On Mon, Feb 10, 2020 at 4:23 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Mon, Feb 10, 2020 at 04:12:30PM +0100, Olof Johansson wrote:
> > > > On Thu, Feb 6, 2020 at 11:57 AM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
> > > > >
> > > > > Hi Olof,
> > > > >
> > > > > Thanks a lot for your comments!
> > > > > And sorry for my delay respond!
> > > >
> > > > Actually, they apply with only minor conflicts on top of current -next.
> > > >
> > > > Bjorn, any chance we can get you to pick these up pretty soon? They
> > > > enable full use of a promising ARM developer system, the SolidRun
> > > > HoneyComb, and would be quite valuable for me and others to be able to
> > > > use with mainline or -next without any additional patches applied --
> > > > which this patchset achieves.
> > > >
> > > > I know there are pending revisions based on feedback. I'll leave it up
> > > > to you and others to determine if that can be done with incremental
> > > > patches on top, or if it should be fixed before the initial patchset
> > > > is applied. But all in all, it's holding up adaption by me and surely
> > > > others of a very interesting platform -- I'm looking to replace my
> > > > aging MacchiatoBin with one of these and would need PCIe/NVMe to work
> > > > before I do.
> > >
> > > If you're going to be using NVMe, make sure you use a power-fail safe
> > > version; I've already had one instance where ext4 failed to mount
> > > because of a corrupted journal using an XPG SX8200 after the Honeycomb
> > > Serror'd, and then I powered it down after a few hours before later
> > > booting it back up.
> > >
> > > EXT4-fs (nvme0n1p2): INFO: recovery required on readonly filesystem
> > > EXT4-fs (nvme0n1p2): write access will be enabled during recovery
> > > JBD2: journal transaction 80849 on nvme0n1p2-8 is corrupt.
> > > EXT4-fs (nvme0n1p2): error loading journal
> >
> > Hmm, using btrfs on mine, not sure if the exposure is similar or not.
>
> As I understand the problem, it isn't a filesystem issue.  It's a data
> integrity issue with the NVMe over power fail, how they cache the data,
> and ultimately write it to the nand flash.
>
> Have a read of:
>
> https://www.kingston.com/en/solutions/servers-data-centers/ssd-power-loss-protection
>
> As NVMe and SSD are basically the same underlying technology (the host
> interface is different) and the issues I've heard, and now experienced
> with my NVMe, I think the above is a good pointer to the problems of
> flash mass storage.
>
> As I understand it, the problem occurs when the mapping table has not
> been written back to flash, power is lost without the Standby Immediate
> command being sent, and there is no way for the firmware to quickly
> save the table.  On subsequent power up, the firmware has to
> reconstruct the mapping table, and depending on how that is done,
> incorrect (old?) data may be returned for some blocks.
>
> That can happen to any blocks on the drive, which means any data can
> be at risk from a power loss event, whether that is a power failure
> or after a crash.

Makes me suspect if there's some board-level power/reset sequencing
issue, or if there's a problem with one card going down disabling
others. I haven't read the specs enough to know what's expected
behavior but I've seen similar issues on other platforms so take it
with a grain of salt.

> > Do you know if the SErr was due to a known issue and/or if it's
> > something that's fixed in production silicon?
>
> The SError is triggered by something on the PCIe side of things; if I
> leave the Mellanox PCIe card out, then I don't get them.  The errata
> patches I have merged into my tree help a bit, turning the code from
> being unable to boot without a SError with the card plugged in, to
> being able to boot and last a while - but the SErrors still eventually
> come, maybe taking a few days... and that's without the Mellanox
> ethernet interface being up.
>
> > (I still can't enable SMMU since across a warm reboot it fails
> > *completely*, with nothing coming up and working. NXP folks, you
> > listening? :)
>
> Is it just a warm reboot?  I thought I saw SMMU activity on a cold
> boot as well, implying that there were devices active that Linux
> did not know about.

Yeah, 100% reproducible on warm reboot -- every single time. Not on
cold boot though (100% success rate as far as I remember). I boot with
kernel on NVMe on PCIe, native 1GbE for networking. u-boot from SD
card.

This is with the SolidRun u-boot from GitHub.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
