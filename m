Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E51157ECC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3jB0NMxSYRFiEal4k4POzg0407Ux8WBYisvHiIZAzQ=; b=GNXX0JctIplmLJ
	JalMvjsmznFyLi2xzKyQiGKaGU4/D8c1di9rKWqbxqAFfXH/fhxlKP6EZrOb9wfhbgnF98PNJN5bY
	yjdG7PO3YAS//b/yv/zz65JcbwOwaGflZ48K1Yjf/rXEHr+nrZWbCBQrdUzpNsxHsQ3XXJKo0SCUd
	BoUsRqKemEx+oX6r6knjnD3lAg3sqwqxvYDVguZF/t/XQ9T2UJ/nVG/NdmL3xVMJAu0aqsWnAQD6Y
	Uzz10jkxerjxKB0ZxB5QMyABrzhLIiMBXs6pNM4t3LQg/ccoX3VgKtgC+xmpfS8Ni+zS61Ox6TSs8
	m7ZeEaXK3b2HUkggN7yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B2s-0000Kb-HE; Mon, 10 Feb 2020 15:32:22 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B2Y-0000Cx-IQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:32:03 +0000
Received: by mail-io1-xd44.google.com with SMTP id i11so7954880ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 07:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdEJdz9cYAFMM3xmZL3mL+mWUhXjJFl3/Kjb/Eqp6cg=;
 b=FwMfJhw5hP+TWC8TkHbaY+QVMva1bPQD2RXzWOHNbRk/ltjnQKooGotR642QQZegux
 LtTnD/EoDqNrPAKTb950uwPQmPoczofSTDZ0KT2BHbt+BBP2ifgewg2noyUY1jmHwUaC
 Iu4Q5JKxxCP0ApaoL6Ct700dJsRBcl1BqhY7z4Zaz6kwazwbw09gOFTGnTl+ku+6r4v8
 yFUun5fErsfjU/hPb8X/YxW4/1XfIb23RWVpOg78+XUTjtzgo6RsliUP1yxThxO0vNqc
 8+wXrQYCKyJvMQhtNf7bBo6bXxztQf0N2bXzUXNzegpJK6uA6Qxo3OpgylcMeYF9Ze5v
 NToA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdEJdz9cYAFMM3xmZL3mL+mWUhXjJFl3/Kjb/Eqp6cg=;
 b=I4I54RzDm2L+kYiLcS8uieI1rsBQRXHbW/iizd/E7boIkaVCKKAQ7d3KFPD5PRufeR
 HZ4G6XhTEdS3K+PBgSaKmkigvpgdqWAmMUlcxf2nIefj2fhtf1Y/EajCQTQ6c633ScX3
 gGegYpwXZkj/qKhpcbb65qMpaigwGlrIb7r0baWEyL9G5lTJmq+Hv8cU/EGnN91g/a5A
 23BSKk0Fjkps0lauDsj3Hh+4sQV4Gd+if2kPRQl3oxTuQf1mkr+FbTsV4Vw2FIpXj0Wo
 RFyZoOn9lCCAllhH+dUCfcoYFt24qcPVy/azxURJpWzwlnxRxZSxDlelah10MbuyS7Cd
 glCA==
X-Gm-Message-State: APjAAAWiZgbFYic2gBncpIqa0192FZlqhl6pjX4PJM/Z0Ix0cRsuVuYo
 2xH8fbwKwwFg8tfZzR5CDudBTuG99izbqrFSxuTmyA==
X-Google-Smtp-Source: APXvYqwwKXw7rUltstfUNaCgnSa2+ZLVL9g0K7DC8phkevVIrmBu3DWox6Vttq+2GHlKgAixGBmoZTHtI3T5XFIWwH0=
X-Received: by 2002:a02:ca10:: with SMTP id i16mr10887277jak.10.1581348721801; 
 Mon, 10 Feb 2020 07:32:01 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
In-Reply-To: <20200210152257.GD25745@shell.armlinux.org.uk>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Feb 2020 16:28:23 +0100
Message-ID: <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073202_606030_BC963F91 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 4:23 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Feb 10, 2020 at 04:12:30PM +0100, Olof Johansson wrote:
> > On Thu, Feb 6, 2020 at 11:57 AM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
> > >
> > > Hi Olof,
> > >
> > > Thanks a lot for your comments!
> > > And sorry for my delay respond!
> >
> > Actually, they apply with only minor conflicts on top of current -next.
> >
> > Bjorn, any chance we can get you to pick these up pretty soon? They
> > enable full use of a promising ARM developer system, the SolidRun
> > HoneyComb, and would be quite valuable for me and others to be able to
> > use with mainline or -next without any additional patches applied --
> > which this patchset achieves.
> >
> > I know there are pending revisions based on feedback. I'll leave it up
> > to you and others to determine if that can be done with incremental
> > patches on top, or if it should be fixed before the initial patchset
> > is applied. But all in all, it's holding up adaption by me and surely
> > others of a very interesting platform -- I'm looking to replace my
> > aging MacchiatoBin with one of these and would need PCIe/NVMe to work
> > before I do.
>
> If you're going to be using NVMe, make sure you use a power-fail safe
> version; I've already had one instance where ext4 failed to mount
> because of a corrupted journal using an XPG SX8200 after the Honeycomb
> Serror'd, and then I powered it down after a few hours before later
> booting it back up.
>
> EXT4-fs (nvme0n1p2): INFO: recovery required on readonly filesystem
> EXT4-fs (nvme0n1p2): write access will be enabled during recovery
> JBD2: journal transaction 80849 on nvme0n1p2-8 is corrupt.
> EXT4-fs (nvme0n1p2): error loading journal

Hmm, using btrfs on mine, not sure if the exposure is similar or not.

Do you know if the SErr was due to a known issue and/or if it's
something that's fixed in production silicon?

(I still can't enable SMMU since across a warm reboot it fails
*completely*, with nothing coming up and working. NXP folks, you
listening? :)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
