Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE4211B11B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S71XSJqOUuqUW4S5EhH32UpQIOTmVuJenlZXKvPL9fQ=; b=MrV8SHezVZkXmK
	JS/z4GdcQsgFhjduI8nEw6mXBPgtQ6tW824kjcpk4qhrn6zRCOh8rgYNq+/F75j/3322YoEixbx8k
	70EAiNkEsNxAM3mlTncNXSXI6Ezpux1isk5LspeSh+ZWgvP8ZGrLRWLWQMvcS/zhcAcDY3pfYyZ+t
	IIEOhviPiMnzqGd8t7U1gcb9i9eL5mwJjfzOcVTHvEezjlp14fpEQxVKycOYsEi0UcDFGGtqSBfUM
	47o7/7NF0MGf/TMJkUPHNV5WyVvleaYyJlSNHTjCzETeBQWh4fXQE3vBBfbiNYRXUQLhxVVEnD6KT
	JcMkMpDeL6j+47jilVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3up-0005D3-3d; Wed, 11 Dec 2019 15:28:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3uI-0004nG-1v
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:28:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 133C630E;
 Wed, 11 Dec 2019 07:28:04 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 487413F52E;
 Wed, 11 Dec 2019 07:28:03 -0800 (PST)
Date: Wed, 11 Dec 2019 15:28:01 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 15/15] reset: reset-scmi: Match scmi device by both name
 and protocol id
Message-ID: <20191211152801.GB28474@bogus>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-16-sudeep.holla@arm.com>
 <9d8fd7d89e035c41a3be7d5a5fa2e370b32910f1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d8fd7d89e035c41a3be7d5a5fa2e370b32910f1.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_072806_137515_28912D5C 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Cristian Marussi <cristian.marussi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:51:41AM +0100, Philipp Zabel wrote:
> Hi Sudeep,
>
> On Tue, 2019-12-10 at 14:53 +0000, Sudeep Holla wrote:
> > The scmi bus now has support to match the driver with devices not only
> > based on their protocol id but also based on their device name if one is
> > available. This was added to cater the need to support multiple devices
> > and drivers for the same protocol.
> >
> > Let us add the name "reset" to scmi_device_id table in the driver so
> > that in matches only with device with the same name and protocol id
> > SCMI_PROTOCOL_RESET.
> >
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/reset/reset-scmi.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
> > index b46df80ec6c3..8d3a858e3b19 100644
> > --- a/drivers/reset/reset-scmi.c
> > +++ b/drivers/reset/reset-scmi.c
> > @@ -108,7 +108,7 @@ static int scmi_reset_probe(struct scmi_device *sdev)
> >  }
> >
> >  static const struct scmi_device_id scmi_id_table[] = {
> > -	{ SCMI_PROTOCOL_RESET },
> > +	{ SCMI_PROTOCOL_RESET, "reset" },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> > --
> > 2.17.1
>
> I can't speak to the correctness of this approach, but in case the rest
> of the series passes review, this patch is
>

I understand that and completely depends on the review of the patches
implementing it.

> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
>
> to be merged together with the other patches.
>

Thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
