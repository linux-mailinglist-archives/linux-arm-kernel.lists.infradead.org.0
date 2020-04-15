Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B731A993D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6AstKhPC1ygPHDQaD6i1/LCQs0b+umcr8ADwN3YB30=; b=e2G4O2mCU6mYJC
	9Ucahvd/6+SVbnKPfd8l6Na9OBXcDb15AANBATkfIyArugm46xiW9+YkjcM3IOhEdLZsbpKxEMnMW
	SNv5mFjS4hdS3wguvE/KGIBta5W4KNp4IrpBzonw4xrefpytdtrBBNp/bHEW/2247y2ipE2R738+v
	0LNQ+PaO0Imh/addSyjkE09Js9QoskxRQIHGxohio/7CwwyJlmAonf7K2MPNtC0ZHMxlG8BORxGgm
	XissvVgfLp1JOD8VO5GzvfW9myvWr1iQSUvajNrlFYAdsCKow6mZdS6fVpyGJOKA5TYYiucy4HG8a
	yDTqAc2kYaw4mvBwI9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOedq-0005sW-AC; Wed, 15 Apr 2020 09:47:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOedh-0005s3-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:47:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id j3so2508459ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 02:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flowbird.group; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0qy5LvgHxuRhiqgWueJQ6xJ9sv8tPQCF7n+fvQHiOs=;
 b=NMrJNqcK5eyfNz31lPbY+TyReQxJrnuEFiiI4ZHZ0RnGAep4m9OjU2s0Rahr5YHYpY
 6WRSCNOS4baRnCAsvEYr+dpc/PQ6WzUxxo3xfLtRealkbI7fZee+//V3BHy5FJKc/9j9
 90g6sX9fD4OSQuzvj6/DnLoV1DG5J9cQYAgGEEpl7v2ioZmNBalV6Oq5fKi3raobEXpa
 Fp4AYfeeJ57k3lRyyTphoQPXEhGnFLELLopIT5C+oSfwpe9Y9ZLHBDQBYPctrB/9Po8g
 pPMCcgWu8JTWAkQEFXN3DYv2QwvGGVaPmM/bcRIGn8n8FtTHP0YX3J5KDzH3zs6zIy7y
 xLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0qy5LvgHxuRhiqgWueJQ6xJ9sv8tPQCF7n+fvQHiOs=;
 b=KsZDFBL2MmlA3h24fxnLc96g3jTD8aRlLud7EwC2CV+g5UeLXrYMuJT1Urm7gBWSXY
 2cF3Z03F9iTs+ItCOnuQwn/8EGnnkOxL9k+CfVNqWBIsAhkN/MThurZ04zuOuu7IxpCM
 YH7ovglyytkePb7IJRMfMOLMt20zIGGu6GIa1ZhSv/6mDnIUgNCdJGu/pFYlC8z27kA/
 yUuZZ74yYkkCKTMuqY1++WZ9SDGjL9J9GSv/nCRL7LOdG/ERXwrXOKnnPKAmQLjj/Bwk
 jx67uHYzU858o68t4+Z97ysvd+w0dZq9dF6XrWh3/JtoHijPUHvM3f3fiILODQIU8Xhe
 QeNw==
X-Gm-Message-State: AGi0PubYCHBIM51bIR3WOazUuthN22Tm+FTVbHFcZxeLwh79ynmPBdR7
 sHY1hR+n/TzbW1NZlv1pWMQszH3rT47gHkLzaA/VKw==
X-Google-Smtp-Source: APiQypL8XMn5RnIEI3l+oru1L0UvcAugx1E2ZOCgi2uoo8JXWePaVPOi0V09wbIxJKMCZ9MtgPVJV073Y9PJRgdOM4M=
X-Received: by 2002:a2e:5746:: with SMTP id r6mr2665731ljd.15.1586944042730;
 Wed, 15 Apr 2020 02:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
From: "Fuzzey, Martin" <martin.fuzzey@flowbird.group>
Date: Wed, 15 Apr 2020 11:47:11 +0200
Message-ID: <CANh8QzwanSewjJ98HL_yR1juiHo1RN77JQyNNKrMrud3B0dnww@mail.gmail.com>
Subject: Re: [PATCH v7 00/13] add ecspi ERR009165 for i.mx6/7 soc family
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_024725_271104_C73D9FE1 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Will Deacon <will.deacon@arm.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org, vkoul@kernel.org,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,


On Wed, 11 Mar 2020 at 09:35, Robin Gong <yibin.gong@nxp.com> wrote:
>
> There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> transfer to be send twice in DMA mode. Please get more information from:
> https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf. The workaround is adding
> new sdma ram script which works in XCH  mode as PIO inside sdma instead
> of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue should be
> exist on all legacy i.mx6/7 soc family before i.mx6ul.
> NXP fix this design issue from i.mx6ul, so newer chips including i.mx6ul/
> 6ull/6sll do not need this workaroud anymore. All other i.mx6/7/8 chips
> still need this workaroud. This patch set add new 'fsl,imx6ul-ecspi'
> for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need errata
> or not.
> The first two reverted patches should be the same issue, though, it
> seems 'fixed' by changing to other shp script. Hope Sean or Sascha could
> have the chance to test this patch set if could fix their issues.
> Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
> on i.mx8mm because the event id is zero.
>
> PS:
>    Please get sdma firmware from below linux-firmware and copy it to your
> local rootfs /lib/firmware/imx/sdma.
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/imx/sdma
>

A couple of questions

1) Is this series needed for the i.MX6DL? (the document you linked
only seems to mention i.MX6D/Q
2) If the laterst SDMA firmware mentionned above is used will this
break systems running mainline kernels without this patch series
applied?

Regards,

Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
