Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43271CC136
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 14:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfSOlNkQKDMN+d+if79u5c5oFF8TjlXxIpRWtcDaJIU=; b=EWO8fk17TQrhK8
	RL25uTGavJBncd1IvbM8g2+G11GP5BtR8KRJaIws51duOclZL7plcMUy0ZKR5/DVQ/x/L9d7GlzTk
	Is67cg33MA1XwPMmtzw3q8BAHRv8D3jMUGU7HtAt8XIOdq1/+hHB+LgEQTWj773GeEKMTgepnu3AR
	dScVrno6NZ+uIhL4HGS15New5OOCOgJE91syPr/trfb2TeigCUwLNahL6O4yvGqZE8RfEY11jGoKa
	5BovhZ3BdNIzFCkEV1ex25ArOwoMyufz1C/2YkDKE2jH3BGiFhy+X9tcrnp83vcm8AOpkm/09G2MG
	UK3clYzkRk/U0umdgotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOPe-0002HN-IA; Sat, 09 May 2020 12:17:02 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOPX-0002Fs-VO
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 12:16:58 +0000
Received: from windsurf.home (lfbn-tou-1-915-109.w86-210.abo.wanadoo.fr
 [86.210.146.109])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4D499200008;
 Sat,  9 May 2020 12:16:45 +0000 (UTC)
Date: Sat, 9 May 2020 14:16:44 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS
 contexts to handle RSS tables
Message-ID: <20200509141644.29861e96@windsurf.home>
In-Reply-To: <20200509114518.GB1551@shell.armlinux.org.uk>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_051656_144647_3CF6F35D 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Matteo Croce <mcroce@redhat.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sat, 9 May 2020 12:45:18 +0100
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> Looking at the timeline here, it looks like Matteo raised the issue
> very quickly after the patch was sent on the 14th April, and despite
> following up on it, despite me following up on it, bootlin have
> remained quiet.

Unfortunately, we are no longer actively working on Marvell platform
support at the moment. We might have a look on a best effort basis, but
this is potentially a non-trivial issue, so I'm not sure when we will
have the chance to investigate and fix this.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
