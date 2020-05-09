Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE44D1CC0FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 13:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4iv040DdtcsZnb8Q/+Qp6KiysdJSYMdu0C/PVYLNsM=; b=QMfbubK7/+96xw
	w1lxvO+P//YhFCr3ygzZ7AL2PIzFgIFJ0RfE/DuTY+FdscWYHZ8JhR4rFvqFi6dxaOoqIdhZuyXnl
	IpttkeU8/5KPyA0ALK9kc+MLIXnNDgGj1BMhqoIAIdzITdVEfne21g/FL9kGwSpD3Tkl2kmc2Vtlu
	lFBbVGcxBk2aRUCxzdFzEzshz+Cokc5zfEuyJocABXWVLQnmMmCHaJnOlg0izRoxD98fWVnLk3sVG
	/wLmBrkiqnUvdr8mD+eUeKts7CqPCsBXQ+Vii8Le1xDVuI+l97hDNuFkEnLZP1AMeTIiFARdZZ2hS
	Qn4D8Sn6xgtCwFWITX1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNfz-0004Wh-1k; Sat, 09 May 2020 11:29:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNfq-0000bE-Ea
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 11:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YUdChrOZQNPx7l/p1mjJOCHERADDlB8MQg4GwZPVIJI=; b=Oc4KF42B3UBTaTTeKm0O8iDlY
 BxrB2iSGe8nhReKz/aLMlNyR+IkQ8zQ6tXmmjSOdlqrONefjvAO1GQRKzZptDBMtJS8uLaTVrkjQQ
 NnaIKY+vcVZRs5gAT1XtUOxskcn9GThB54Xf1MOHeyw1AFkMyyucZYIfJQNHKq8XjetID6psBur7s
 ulKyC98yB8Au9WlSlDmgmckLzEj+H4vLxHIUQRdkUyLs7giCsXydRFzs8YHMeYsgpaAx9oUJ7c7Af
 6PiNdckPz1KifuC2ivsulw/9Ik0YTZXPR/+QfSdkadBizG/ozlmrg8RmdlNLhrQaglDXtpgJIL0Nn
 S7mKGKy5g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:37982)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXNdg-0003eW-Au; Sat, 09 May 2020 12:27:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXNdd-0002nq-Vf; Sat, 09 May 2020 12:27:26 +0100
Date: Sat, 9 May 2020 12:27:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1 1/3] gpio: mpc8xxx: support fsl-layerscape platform.
Message-ID: <20200509112725.GA1551@shell.armlinux.org.uk>
References: <20200509103537.22865-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509103537.22865-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_042942_493826_D9FA000D 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, jagdish.gediya@nxp.com, priyanka.jain@nxp.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 pramod.kumar_1@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 06:35:35PM +0800, Hui Song wrote:
> From: "hui.song" <hui.song_1@nxp.com>
> 
> Make the MPC8XXX gpio driver to support the fsl-layerscape.
> 
> Signed-off-by: hui.song <hui.song_1@nxp.com>
> ---
>  drivers/gpio/mpc8xxx_gpio.c | 59 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)

What project are these for?  There is no such file in the kernel tree.

I think you've sent these patches to the wrong people and mailing lists.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
