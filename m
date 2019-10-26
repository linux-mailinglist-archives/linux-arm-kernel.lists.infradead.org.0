Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A33BE5BF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 15:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hx8Lp95s5TK0Oed0k33X7PBEW9FJsTBJupK+F7rHYt4=; b=OvCy+bSwm/hHD6
	VikpWcrt/AanDHLh93z5GSpxgETHY02UKt1zS/Y3noo1A0kIl9n9vU6fSfweRYGmXoDMX6r7aETE3
	Hr0KoondHHumWH0CwGVt8niOx5OFv6F1lcvXVQOlZb4zXZZvz6TpKNS/ZoI52YC/P3NdrDQys6h6S
	2OnGqHwwrJpCOXZu9pehuTiNm56RIgBaruNchFUMHP2dxg0zX+JqUtZIzLOJEf77s2RB9HVBcYjmD
	VpfnsMrmf3Xxwu1q/rL4xdspPs33SsglLtJI9TTJEvItK8IqOJ8dPZa6iqY26seh10dZKXE4liW7d
	VIGte9UMCebbnIyyfkSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOM6L-00044l-JC; Sat, 26 Oct 2019 13:27:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOM69-00044J-Tb
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 13:27:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 066BF20867;
 Sat, 26 Oct 2019 13:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572096436;
 bh=xWOCyH4LpE2A2ZS3DvRRqKw8BvJSQw43usiPJKaUMvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yON2IQoQY/Zk1ndYAF3l8modBN8uczhSPyVFlAsxCQszQq7en5ohxiJRiCx27vIbx
 Yz4Nv1Fh3Oe+nVr0tn7wux/YNYTR/d6tpU/WhhjLd4T9aKSue6CflWKxTAxYO56ztE
 vUMOSltQ4ZhKbP3sestArcFAw40ddVAAff7iRj6k=
Date: Sat, 26 Oct 2019 21:26:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v7 0/5] Add initial support for S32V234-EVB
Message-ID: <20191026132657.GO14401@dragon>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
 <20191016131728.GA56859@kroah.com>
 <VI1PR0402MB28630943CC0820644D26919CDF920@VI1PR0402MB2863.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB28630943CC0820644D26919CDF920@VI1PR0402MB2863.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_062717_996973_DE1A74A6 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "corbet@lwn.net" <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 04:54:58PM +0000, Stefan-gabriel Mirea wrote:
> On 10/16/2019 4:17 PM, Greg KH wrote:
> > 
> > I've taken patch 3 in my tty-next tree.  The others should probably go
> > through an arm-specific tree, right?
> 
> Thank you very much, Greg! That was all for the tty tree.
> 
> I think that the other patches should go to the following trees:
> * git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git:
>     patches #1 and possibly #4 (as it covers arch/*/boot/dts/);
> * git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git:
>     patches #2, #5 and possibly #4 (as it covers arch/arm64/boot/dts/)
> * git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
>     possibly patch #4 (as it covers arch/arm64/boot/dts/freescale/fsl-*)
> 
> As a general question, would it be any chance to have the device tree
> included in v5.4 (along with its compatible documentation and config
> definition, without enablement)? That is, only the patches #1, #2 and
> #4, because #3 is a cosmetic change and #5 enables the new configs by
> default. That would complete a minimal support for S32V234-EVB, together
> with the LINFlexD UART driver which was accepted.
> 
> From the development process documentation[1]: "An occasional exception
> is made for drivers for previously-unsupported hardware; if they touch
> no in-tree code, they cannot cause regressions and should be safe to add
> at any time".
> 
> I know that it mentions only drivers and not device trees, but from the
> history is seems that there have also been dts/dtsi files added outside
> of merge windows, such as:
> * arch/riscv/boot/dts/sifive/fu540-c000.dtsi;
> * arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts;
> * arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts;
> * arch/xtensa/boot/dts/lx200mx.dts;
> * arch/xtensa/boot/dts/kc705.dts;
> * arch/xtensa/boot/dts/xtfpga-flash-128m.dtsi;
> * arch/arm/boot/dts/omap3-beagle-xm-ab.dts;
> * arch/arm/boot/dts/at91-sama5d3_xplained.dts;
> * arch/arm/boot/dts/am335x-boneblack.dts;
> * arch/powerpc/boot/dts/charon.dts.
> 
> I am sorry if my question is inopportune, I am definitely not trying to
> rush anyone. I just ask because this has been under review for some
> time and all the feedback has been addressed. We would really appreciate
> to have this SoC and board supported in the following LTS release if
> there are no other issues.

Sorry, no.  It happens occasionally that non-fixing patches are merged
during -rc time, mostly because they are supposed to land mainline
during merge window, but missed the window for some reason, like
subsystem maintainers did not send pull request to Linus in time.
Also the patches are only taken in early -rc like rc2.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
