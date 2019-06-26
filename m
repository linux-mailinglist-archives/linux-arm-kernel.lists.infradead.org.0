Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089005708E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgEW8Gzb16O5cfWaoq9rC0zIgMsLILhnG4tusF9zMeE=; b=N0JFQEkiBfjqy3
	3VZKoXEWsB6gwb0hCGqgx66xLVMM8Rb8r9JjyqzUKC3FY0gJMTlHtyBBUS7e90Fj7cOUpCm27Pu1R
	LuWGrA+QnNnERaWmgrqrRd6AjNE7u2k9bwt/zOsGPNbKLkOzMf0Odzpm5UboTTou42Dwi1actxzkP
	b3EuWXzAvSDZfNKxi72+Ms1eeDbEuwExYJShQhNP6bzcvfqiaBePCwYr5PiGpZI8J/Rt+g52BQi7S
	IysI8836P/UwquGNnFcFfIGkvfdenyqdIklNlXuDZJ92EtH6Eofqub5cGZwgj61eerDHv7BNNiFIN
	RK5svNduJO1Gqk6PHHYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCeL-0000nR-KG; Wed, 26 Jun 2019 18:28:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCe9-0000mv-92
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:27:54 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so7237053iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 11:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sZfM3WNDDF9GuJKzE5mdCdSAtOo3TH52oJkX/nrxJjM=;
 b=G0Y7nsmQdmW7klneIUIoJ3Pb5aD5br9jJpfpTuL41AlhhjSMaEA7NKcN4FNTP9Czmp
 iIi1g/Nlh0hIndZaxk6sMXCEURxf+fu+VVScYvY5NPC8vsmxpwPvO2Icji+7q3XU2HZv
 LHYILL5lIS3+YS3tWTQV1cP2q3uq89/TCwggdyXJZRuvnDEz5aDusH47p58E38okLekG
 lcRHbFfvQUxi4rLpaLJKmzu8CJNO+n1BA8YBadPMmgD7HY17iB0qwEiwRt4QRzVKfYMl
 nkPAvI0uw1BYCNrxP1mqMjTe850DG5MSSw0ncRFAmHr3/uLI/jfBgxZhYLjTENWtjirM
 dvkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sZfM3WNDDF9GuJKzE5mdCdSAtOo3TH52oJkX/nrxJjM=;
 b=FId506pCgjWhpt4yPNK0I6CXYLoOqf01jSfRcJesl9tzgu6q/O54SSxAtff4gTo95t
 JKjCJiRonuh4iu6LD3+CTqxmvWsdNOdkUhrPIuJxU9No2NtFIWpf1nE9d5vw0nzkerpJ
 3XOkmv+sFhfP+Xlw90L1Za4FCBahIQA2gu4HuG5Tlsb56dXQEJJHlgb0TOOxDEkpgGc7
 tefc+NrBJYfUiz+uKFFK5bNW+4BAPhDfjXboS5iSxlH2U8ieOMSBs1dnTKZORFuKgBnP
 2zEyoqqtMkxENd9EL446QPjNc4kfkzEnTD8MzcmNsopgWc7IGdzghHafKVzL3YvsvrNS
 L1zQ==
X-Gm-Message-State: APjAAAWMV6p4lWHrTeitO4Cthx5runWaNsiD8MrWTBK1qU3i1wenlV8O
 +/pxeznfRzvw2Nr3mjdRDUQmGbUPnV5sM3AuzJFZIe1u
X-Google-Smtp-Source: APXvYqzICV2CVaS0x99+KU5be+tDhkjLlvc37tKr4vvOVEWKczPXIXw4jK2QjINe4XC+jyYlQ7NLHLeaSXSzULDIjX8=
X-Received: by 2002:a02:c492:: with SMTP id t18mr6474836jam.67.1561573672517; 
 Wed, 26 Jun 2019 11:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
In-Reply-To: <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 26 Jun 2019 13:27:41 -0500
Message-ID: <CABb+yY2B_bGqZhd3HRm2qOwGNXG8UYvRo0_uBmwGbx_1gA-vfA@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_112753_325027_ACD12D06 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:44 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 6/26/19 6:31 AM, Peng Fan wrote:
> >>> The firmware driver might not have func-id, such as SCMI/SCPI.
> >>> So add an optional func-id to let smc mailbox driver could
> >>> use smc SiP func id.
> >>>
> >> There is no end to conforming to protocols. Controller drivers should
> >> be written having no particular client in mind.
> >
> > If the func-id needs be passed from user, then the chan_id suggested
> > by Sudeep should also be passed from user, not in mailbox driver.
> >
> > Jassi, so from your point, arm_smc_send_data just send a0 - a6
> > to firmware, right?
> >
> > Sudeep, Andre, Florian,
> >
> > What's your suggestion? SCMI not support, do you have
> > plan to add smc transport in SCMI?
>
> On the platforms that I work with, we have taken the liberty of
> implementing SCMI in our monitor firmware because the other MCU we use
> for dynamic voltage and frequency scaling did not have enough memory to
> support that and we still had the ability to make that firmware be
> trusted enough we could give it power management responsibilities. I
> would certainly feel more comfortable if the SCMI specification was
> amended to indicate that the Agent could be such a software entity,
> still residing on the same host CPU as the Platform(s), but if not,
> that's fine.
>
> This has lead us to implement a mailbox driver that uses a proprietary
> SMC call for the P2A path ("tx" channel) and the return being done via
> either that same SMC or through SGI. You can take a look at it in our
> downstream tree here actually:
>
> https://github.com/Broadcom/stblinux-4.9/blob/master/linux/drivers/mailbox/brcmstb-mailbox.c
>
> If we can get rid of our own driver and uses a standard SMC based
> mailbox driver that supports our use case that involves interrupts (we
> can always change their kind without our firmware/boot loader since FDT
> is generated from that component), that would be great.
>
static irqreturn_t brcm_isr(void)
{
         mbox_chan_received_data(&chans[0], NULL);
         return IRQ_HANDLED;
}

Sorry, I fail to understand why the irq can't be moved inside the
client driver itself? There can't be more cost to it and there
definitely is no functionality lost.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
