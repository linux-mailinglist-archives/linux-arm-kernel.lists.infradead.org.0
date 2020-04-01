Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF93519A859
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxWqGo6SdFQPAbN7vQcVJEH1AC/pv3yv/DbOiuPkhNg=; b=fyJD8RBIgE26sV
	j7ZEWjwXngqsaoV99sE0OPNsf5tIjfQecaUqj0GfthTBvUYKn9Y2mPbJwpEXdW6Fn8P9JTZLeMOOR
	jekyzlkxNPjD5QJx7Zo8+ww4TPdgpjPvJ3gCXuXBNsDouCFa9mbpGKlZBGaY5OjRFQQwZp972Ya2Q
	pLgxQopEOuUdFmhMEgxP2nbk23PBF2VnRlXijKOgjNmPndtmU3KPAdIpzSf1TVBA54S7EjEB7ZN0d
	GLmW0eDI/vHJJf2ddDscXyBVLgtHfSXnQb1PBB2KoJLG6BPvBPNoehZTH21Hut021RhXqB7fiT37t
	nVcAbcXZReabJKSyMLDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZQ3-0004u0-1q; Wed, 01 Apr 2020 09:12:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZPx-0004tR-Ev
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:12:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C77431B;
 Wed,  1 Apr 2020 02:12:12 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B94FB3F52E;
 Wed,  1 Apr 2020 02:12:10 -0700 (PDT)
Date: Wed, 1 Apr 2020 10:12:08 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Message-ID: <20200401091208.GB3954@bogus>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-2-sudeep.holla@arm.com>
 <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_021213_541983_EFA79EA8 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 01:12:37AM +0000, Peng Fan wrote:
> Hi Sudeep,
>
> > Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> >
> > In order to support multiple SMC/HVC transport channels with associated
> > shared memory,
>
> Does this mean each channel will have its own shared memory? Or
> All channels share the same shared memory?
>

It depends on platform firmware and DT. If there is only one shmem at
the top level scmi node, all share that single channel. If some/all
protocols have their own channel, they there must be shmem entry in the
corresponding child node.

> it is better to maintain the mutex per channel instead of
> > existing global one.
>
> If all channels shared the same memory, use per channel mutex lock
> will not be able to prevent other channels accessing shared memory
> at the same time.
>

No we don't create channel per protocol. If they share, we just share
the channel pointer. Look at:

       if (!info->desc->ops->chan_available(dev, idx)) {
                cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
                if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
                        return -EINVAL;
                goto idr_alloc;
        }

If a protocol doesn't have a dedicated channel, we just assign the base
protocol channel to it. We don't call chan_setup at all on that channel.
Your patch assumed so but the core driver never did that.

Hope this clarifies you doubt.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
