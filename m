Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168F7199AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN8gZK0MsI0i6mkXlLuwmB/hGoFaz5EIDv3r8Bnd91I=; b=cKIJ7tBOMui4KX
	XRJb0fHha2BwIQ7CuZyivKO7IiiLGQjTa9wWMB5kuLrVzdwW/tVh18meAj+5YABgZVeBEjAthNMPb
	i21EdeV9Saj7+J4/CnYAX4EgenLwgydttCh2kp9LYBExXCOsi0bppkXA4SRiznQjtYK91gpNv9dII
	ZAn/Nr4oZwTVIDX/59b3myn7Zc8Q2dIQcaM7Usekpuho3qtwAPEge4EMTgLQY1RbAi3R6Df/ottj1
	7B2vsnWyheUGGxVucCggT8JOOQMbCbe7OzaE9obxazayF3ScIngS01y1wCQrDWzXJfqoUl0AdHJv6
	/kJjcO/dOsQfgmrfiTaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJPs-0000SN-FJ; Tue, 31 Mar 2020 16:07:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJPi-0000S1-8K
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VwzoDOpyxDPz/a/dCtUuIONyzgyMX30rT5zXyXtBWI8=; b=qni6J1e+aPH9ewYI7M0aG3WV3H
 o7Xbmaq6VWbxUfpOJJrOydhw7R9wzx7XQQUJMe9k3o97+dii6hkKZ6p/7TDy/zq0Wz7KHlhrzkSJJ
 tTlhSIgK2DNvHJcQKJ2u62SF73rau0Z+K6l66s1yIuPln0Xa1WDhh1Sw3f7KcdkpEpXxcrDikudBM
 oN7yLvg+nafhT/MMKkIQCcHAakWJSWmxZmG2naoySSy/wS0d92Wzp4gdLD7b/kqnOTE0PIHb/OkGM
 ZzvRIszPoHJYmJGr65yRLYAfg0gDjTvBGkh6gTl7PWTkqmi7bZ4stgqAV/d5/AUsi6rnC3VLLULnx
 Ts876WUA==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHmF-0003e4-CC
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:22:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A02931B;
 Tue, 31 Mar 2020 07:21:58 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E0F73F71E;
 Tue, 31 Mar 2020 07:21:56 -0700 (PDT)
Date: Tue, 31 Mar 2020 15:21:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support
 multiple channels
Message-ID: <20200331142148.GA14918@bogus>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <AM0PR04MB4481FB36D888882183C4293188C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481FB36D888882183C4293188C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Tue, Mar 31, 2020 at 01:53:40PM +0000, Peng Fan wrote:
> > Subject: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support
> > multiple channels
> >
> > Hi,
> >
> > While merging SMC/HVC transport to SCMI, I did a quick hack to extend it to
> > support multiple channels. I may be missing something obvious, if not the
> > changes required look simple. Some of them could be merged into original
> > patch, but since I am unable to test, I preferred to keep them separate, easy
> > to revert if things break.
>
> With patchset applied to your scmi tree, my test still work as before.
>
> Tested-by: Peng Fan <peng.fan@nxp.com>
>

Thanks for testing. If you can give it a quick review as it is very small
change, that would be great. I just want more eyes to look at it just to
make sure I am not missing something obvious.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
