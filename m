Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7933099E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPN30sS9ULgoBH7REbm7iMba4gHhDWvFKiPZuGYFQlQ=; b=N6LG0wH9acKQUs
	xuLQhiAK+KFw44tqLTidBP8gQSDK2zQtRQcc60PtmVJKwbRak3LutyZTtr050SziSRbvPdp74ncl4
	Lxk/Jq+XsKbkGp8dq0nQunFdMV+Q5TmwBwQe39d3bKzJMqDyvdT99kVK6jjAbIbH7p4xpPNhpi/nT
	47gyludxyC67A0hfSeVXWz7k5nhMXRf3UNG2jAEinN0ZBO26J9YhwX1wVKN3YDgQ2ZWPqHBSF720s
	d7WH3qsKA8ZuHVfH01MbH6DIBUtYNkoIyqC0WX4XDIIqcDsHRDCoYKhdSFjCVOBCW38loEZxzpfZ0
	sni519UDdRgvif4DlJeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcBm-00072X-Va; Fri, 31 May 2019 07:42:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcBf-000726-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:42:53 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 893E326529;
 Fri, 31 May 2019 07:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559288570;
 bh=OWF+4zfsD8qBU6ktHETlir6S0oiuOLtAfekZ034iKY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iysMdhNCi2xWgzoTXnZjUwJc2pdkVKxfVEZ8thttZYmoxAdx87t1qlmIu22KVDXAY
 7onsfx8ZDeIswfEtGuce16zrtvk34R4q77rANfiVsMRgq1H3FwtKwsIINHAkQ7uhri
 jXtE3SvBGg2X5bfWVxh/oUkWwWpWzZBiR9Qy74+U=
Date: Fri, 31 May 2019 15:41:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Message-ID: <20190531074128.GD23453@dragon>
References: <20190521150336.8409-1-pankaj.bansal@nxp.com>
 <20190523124806.GU9261@dragon>
 <VI1PR0401MB24966C5BB07836D5FA00BC12F11D0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB24966C5BB07836D5FA00BC12F11D0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_004251_876038_85264E5D 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rajesh Bhagat <rajesh.bhagat@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mingkai Hu <mingkai.hu@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 06:12:28AM +0000, Pankaj Bansal wrote:
> HI Shawn,
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Thursday, 23 May, 2019 06:18 PM
> > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Leo Li <leoyang.li@nxp.com>; Mingkai Hu <mingkai.hu@nxp.com>; Rajesh
> > Bhagat <rajesh.bhagat@nxp.com>; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org
> > Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
> > 
> > On Tue, May 21, 2019 at 09:40:09AM +0000, Pankaj Bansal wrote:
> > > The qspi flash in ls1046a based QDS and RDB boards can operate at
> > > 50MHz frequency.
> > > Therefore, update the maximum supported freq in their respective dts
> > > files.
> > >
> > > Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > 
> > Do not use base64 encoding for patch posting.
> 
> I did not understand this comment? Do you want me to change something in patch?
> I had run checkpatch script on the patch before sending and it did not report any waning or error.
> Can this patch not be merged in current tree ?

You mail server is using a content-transfer-encoding that makes patch
applying very difficult.  Talk to NXP colleague Anson Huang
<Anson.Huang@nxp.com> to find out how to fix it.

https://patchwork.kernel.org/patch/10944169/#22656941

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
