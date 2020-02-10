Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79721583EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvsz0JkXV8qiFU/fGdOJmp8a1OBBQFwI0lIEsiZ7W5Y=; b=CnT+OnflcUy9l/
	tsa8khY7u/MGcjKzgYthV+oLNtGto/ryuQdmwTrzx/upM9GZjT0pG73RtibZtTaTdv65wjyJNB5+Z
	M4B3ZuFutP2I/AoVnN6y7NRlaTtioorlNnSDsfO9JtgG35X3meF/XSGLI8VwOojp6+KNUeMOV4fSD
	lQv/Bc5b4UY556ddWKUVQgJuPh7Pwzd7APnkuP1aBAD3y59iWz9kW7XpBhH0tgmHDgVIvIJYMuler
	Hb73sAR1jkpArvWscrvLEN314nZFeTnJT7TXkRFvJrT4bRJuCknXHud+zG/mOPbpwfoeb8ib6+d2v
	wSbSu/72Xx0rc5m35rCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1F2v-0004vH-Kq; Mon, 10 Feb 2020 19:48:41 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1F2j-0004u1-Ng
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:48:31 +0000
Received: by mail-ot1-f42.google.com with SMTP id h9so7596100otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:48:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cRFAgHTjcpru4Yh3cmh88ozwK6oz4DRfN4/AXw7tuCc=;
 b=dUvt3MK16lWGRuTMDOa0p180la4T4p/4Q2l+FJs3zWOb0rHe3OkSWyDD9TiJahfqOV
 C0WsWKcjbAfSD3G4+6jaqXIVLjChcBP48UXsQw3HKDotKZO93cmucLR1xEKUXsyddZ/2
 CK9TAgTK317sSHE6zCNfQ+ZM6OrBHvuasPIbombV7WFhldaQMs6t8E+AXgb80CxqvMrW
 HUC3Wcf5+bnDNLNGVUJjLhryFKniHPjWScvLdR4yOX0D7yQO1RHV+KPhbzZ/bDeT2jQZ
 yDk6EyPcoTozNC2YEpBgyVVOpH8KgBljbMJzLEISXgfTtMqBR22elHhIyIKu/D0CZVPa
 MV7Q==
X-Gm-Message-State: APjAAAXa7bX2o1qwpZ3fHSmkXBkGhTV3W8TzdwrarZaxntXcPeBW8Ild
 zVc80GR6VGNdcYHJBn96tpTKfUBspA8=
X-Google-Smtp-Source: APXvYqywmifBQxsvve7ns76PJksj2zClGIa8U7VWX7DA7WmNIVglSf8m3NtvceTRtd4j3KvKNNCIXA==
X-Received: by 2002:a9d:7386:: with SMTP id j6mr2257148otk.336.1581364106683; 
 Mon, 10 Feb 2020 11:48:26 -0800 (PST)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com.
 [209.85.210.45])
 by smtp.gmail.com with ESMTPSA id c12sm404535oic.27.2020.02.10.11.48.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2020 11:48:26 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id r16so7661703otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:48:25 -0800 (PST)
X-Received: by 2002:a05:6830:1184:: with SMTP id
 u4mr2168328otq.221.1581364105459; 
 Mon, 10 Feb 2020 11:48:25 -0800 (PST)
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
In-Reply-To: <CADRPPNSXPCVQEWXfYOpmGBCXMg2MvSPqDEMeeH_8VhkPHDuR5w@mail.gmail.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 10 Feb 2020 13:48:14 -0600
X-Gmail-Original-Message-ID: <CADRPPNQ6wYOXzH_Hh9x4YDN_Mg1iaiYqMM8p_m9zJXfr_TQayw@mail.gmail.com>
Message-ID: <CADRPPNQ6wYOXzH_Hh9x4YDN_Mg1iaiYqMM8p_m9zJXfr_TQayw@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Olof Johansson <olof@lixom.net>, Laurentiu Tudor <laurentiu.tudor@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_114829_772002_3F0E949D 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 12:41 PM Li Yang <leoyang.li@nxp.com> wrote:
>
> On Mon, Feb 10, 2020 at 9:32 AM Olof Johansson <olof@lixom.net> wrote:
> >
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
> >
> > Do you know if the SErr was due to a known issue and/or if it's
> > something that's fixed in production silicon?
> >
> > (I still can't enable SMMU since across a warm reboot it fails
> > *completely*, with nothing coming up and working. NXP folks, you
> > listening? :)
>
> This is a known issue about DPAA2 MC bus not working well with SMMU
> based IO mapping.  Adding Laurentiu to the chain who has been looking
> into this issue.

Forgot to mention that you can workaround the issue by setting
CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT=n or adding
"arm-smmu.disable_bypass=0" to boot parameters.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
