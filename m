Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3223D136D12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LXzBlkeCDHnIDtRQl/nLa2F6BJbB2FV2Yrh06WvnTI=; b=Nv6LZTMEJpq/5+
	ZUP6b7L6ZZXni+hEEhfyLtn6wHuyrH+Pr3I0yYh3rXdxrXSspNiJNDU5ufc4TJukz/vuYwg1FXUdW
	WtNjhC4PGzVw5HK7sLAPCQCvJ544NXy6se76ApGqyB4k2LIDjjyGQg58qAGPEBJPZx1mga4DftnF1
	TM1zAfO5C3YXvTxbZ+KdlgnYHbg6or5sIShqmh+bp1iCbor4S46CbUJTrE7N7BTro1oy/fIaQwmcz
	2e9qZvF2yULcHoHP8xs43c+CgYuVD/UUQXGdO91HEgGLSO5tq4DeqGP0R3ahjBbryU7fs5xuiAE75
	MRT+R33/FNlpkv8w6joA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptRd-0003FD-Gd; Fri, 10 Jan 2020 12:31:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptRT-0003EW-C5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:31:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84B151063;
 Fri, 10 Jan 2020 04:31:06 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AA483F534;
 Fri, 10 Jan 2020 04:31:05 -0800 (PST)
Date: Fri, 10 Jan 2020 12:31:03 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200110123103.GC45077@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
 <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_043107_504628_84D841CB 
X-CRM114-Status: GOOD (  27.00  )
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
Cc: peng.fan@nxp.com, Arnd Bergmann <arnd@arndb.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 03:04:42PM +0530, Viresh Kumar wrote:
> On 09-01-20, 09:18, Arnd Bergmann wrote:
> > On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > The SCMI specification is fairly independent of the transport protocol,
> > > which can be a simple mailbox (already implemented) or anything else.
> > > The current Linux implementation however is very much dependent of the
> > > mailbox transport layer.
> > >
> > > This patch makes the SCMI core code (driver.c) independent of the
> > > mailbox transport layer and moves all mailbox related code to a new
> > > file: mailbox.c.
> > >
> > > We can now implement more transport protocols to transport SCMI
> > > messages.
> > >
> > > The transport protocols just need to provide struct scmi_transport_ops,
> > > with its version of the callbacks to enable exchange of SCMI messages.
> > >
> > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> >
> > Conceptually I think this is fine, but as others have said, it would be
> > better to have another transport implementation posted along with this
> > to see if the interfaces actually work out.
>
> @Sudeep/Vincent: Do you think we can add another transport
> implementation something right away for it ?
>
> @Peng ?
>
> > > +/**
> > > + * struct scmi_chan_info - Structure representing a SCMI channel information
> > > + *
> > > + * @payload: Transmit/Receive payload area
> > > + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> > > + *      channel
> > > + * @handle: Pointer to SCMI entity handle
> > > + * @transport_info: Transport layer related information
> > > + */
> > > +struct scmi_chan_info {
> > > +       void __iomem *payload;
> > > +       struct device *dev;
> > > +       struct scmi_handle *handle;
> > > +       void *transport_info;
> > > +};
> >
> > I would assume that with another transport, the 'payload' pointer would
> > not be __iomem
>
> Hmm, okay. I just separated things based on the current transport and
> didn't add much changes on top of it as I wasn't sure how things are
> going to look with next transport and so left the changes for then.
>
> I can now drop it though.
>
> > > +static int scmi_set_transport_ops(struct scmi_info *info)
> > > +{
> > > +       struct scmi_transport_ops *ops;
> > > +       struct device *dev = info->dev;
> > > +
> > > +       /* Only mailbox method supported for now */
> > > +       ops = scmi_mailbox_get_ops(dev);
> > > +       if (!ops) {
> > > +               dev_err(dev, "Transport protocol not found in %pOF\n",
> > > +                       dev->of_node);
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       info->transport_ops = ops;
> > > +       return 0;
> > > +}
> >
> > This looks odd: rather than guessing the transport type based on
> > random DT properties, I would prefer to have it determined by
> > the device compatible string, and have different drivers bind
> > to one of them each, with each driver linking against a common
> > base implementation, either as separate modules or in one file.
>
> Since there are no platforms using the scmi binding in mainline kernel
> for now, it won't be difficult to add new compatible strings.

I am fine adding new compatible but since the binding is present in the
mainline for several releases now, we may have to have fallback to mailbox
as default if any of the new compatibles added is missing.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
