Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B4B135352
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 07:40:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9MFGULemiBPdUuNasnpZPqcvMKyuCi+UqVUdlW3+kg=; b=LxSFbaj2jJimnr
	Lpxts6QA38ARPpC9f0CsXd7P5r1ssI7exTi8ymbaI/LLsNP3ajRlOKUTwmlaGIcCaUR5Bw1EWktb+
	ZEli8ux4C4lwyvD/ZQVpVxMeBPH+hCDmY7iU47JoAamyO2HnzaaVA2kzLWMFO+8+lOzlxYxHKmgzL
	st4uxphska96LyNzZgJ0/KMR8x7z5m58ot2vYj0IlauBJAafGgrQ1uZkKvtWwLNk55lwRQwOo6qEL
	9+Icb6LR3VrsthwVBioHC7280QpWg3zHy+1/PD4/n42KoosekzZdh8gKbk9fsZcrokTWsnMzvTvDB
	DtNqcIlZe77njrGCK78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRU4-0007tR-QF; Thu, 09 Jan 2020 06:39:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRTy-0007sh-Kr
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 06:39:52 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFF052053B;
 Thu,  9 Jan 2020 06:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578551990;
 bh=PzkmDwuLxg6i1Lv7mg1bZi42vACHL6CpISAFG/lE7II=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vZdTpy6H9hUgnvR8ew1cTmAEURZTbZVGreLozb8akRHKWW9iRilK0MJaYA2HEe4lh
 OX/9Hb8Klj2J1ZGqS6KObwrhUFdoOH89tQe/CmRzYZl7GTmgxJczpsS7UpWJHtRGnW
 DJrjIZ+geEv8FWFEx4gJY9d7UwFoWGdQVp1/ew20=
Date: Thu, 9 Jan 2020 14:39:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 0/4] Add support for Thor96 board
Message-ID: <20200109063940.GA4456@T480>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20200109033342.GA3281@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109033342.GA3281@Mani-XPS-13-9360>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_223950_704576_3C670207 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 09:03:42AM +0530, Manivannan Sadhasivam wrote:
> Hi Shawn,
> 
> On Wed, Oct 30, 2019 at 02:31:20PM +0530, Manivannan Sadhasivam wrote:
> > Hello,
> > 
> > This patchset adds support for Thor96 board from Einfochips. This board is
> > one of the 96Boards Consumer Edition platform powered by the NXP i.MX8MQ
> > SoC.
> > 
> > Following are the features supported currently:
> > 
> > 1. uSD
> > 2. WiFi/BT
> > 3. Ethernet
> > 4. EEPROM (M24256)
> > 5. NOR Flash (W25Q256JW)
> > 6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion
> > 
> > More information about this board can be found in Arrow website:
> > https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools
> > 
> > Link to 96Boards CE Specification: https://linaro.co/ce-specification
> > 
> > Expecting patch 1 to go through LED/Rob's tree, 4 through MTD tree
> > and 2,3 through Freescale tree.
> > 
> 
> Any update here? Patch 4 is already merged.

Just applied patch #2 and #3.  For patch #1, it should go via LED or DT
tree, I think.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
