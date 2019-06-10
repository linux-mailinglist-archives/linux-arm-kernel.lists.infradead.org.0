Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDEF3ACBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 03:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt0NQaVWiqJqy5DVaZRKHgL3lz7FZD7r96aDetPXVV0=; b=Trhf0OowwehUQu
	srep3sAfdjtHVLzYoB1V7m7RRRO17GBIgYQHdmJA9rwrvkVnReRXftRsIFJ4KEG6XITXH9qgqMK74
	dql//X3TarKokQK9nATp8oQ/vGRGQ4VPgNk3jVtY+tj7VdKl5mKb0U3PLUUJBQHXQVDrb0FKfXIFq
	tJ16WlcWJ+1Bogvu0LN6H/Cm9sF+0x+uuYo2coJ7EWVeg6a7KAKDTjumQITHqazJ4KcRyhXS8XUzB
	UovsPHdfB5TrcVojFpPKIbC6suHI1A8M2rXgx3OshqvL2+T9G5DOYZuXnLRQHxP28wJqEaKpcFrwi
	NHf2QMPQgZghdpJOWIuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9SU-0007Gk-Qq; Mon, 10 Jun 2019 01:50:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9SL-0007Fg-7p; Mon, 10 Jun 2019 01:50:42 +0000
X-UUID: 1d865b37c11b421ba6782eea90940aba-20190609
X-UUID: 1d865b37c11b421ba6782eea90940aba-20190609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1180069066; Sun, 09 Jun 2019 17:50:19 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 18:50:16 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 10 Jun 2019 09:50:11 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 09:50:09 +0800
Message-ID: <1560131408.8487.112.camel@mhfsdcap03>
Subject: Re: [PATCH v6 06/10] device connection: Add
 fwnode_connection_find_match()
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Mon, 10 Jun 2019 09:50:08 +0800
In-Reply-To: <20190607103026.GE10298@kuha.fi.intel.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-7-git-send-email-chunfeng.yun@mediatek.com>
 <20190607103026.GE10298@kuha.fi.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_185041_290828_99AAC4F0 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heikki,

On Fri, 2019-06-07 at 13:30 +0300, Heikki Krogerus wrote:
> Hi,
> 
> On Wed, May 29, 2019 at 03:43:44PM +0800, Chunfeng Yun wrote:
> > From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > 
> > The fwnode_connection_find_match() function is exactly the
> > same as device_connection_find_match(), except it takes
> > struct fwnode_handle as parameter instead of struct device.
> > That allows locating device connections before the device
> > entries have been created.
> > 
> > Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> This one is also missing your SoB.
> 
> There are now some other changes to the devcon API in Rafael's tree
> [1] that will conflict with this one. I'm attaching a modified version
> of the patch that is rebased on top of today's linux-next. If you use
> it, you should make a note (probable in the cover letter) that the
> series now depends on Rafael's tree.
Got it, thanks

> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/log/?h=linux-next
> 
> 
> thanks,
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
