Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA091355DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMbCJKnzuFjp89vmx1mIeqfD22gW7qMJLiR4Ow8923Y=; b=LFIc04xFTPyzH6
	zOjEuzdh/xqSkaD14AFnO0jH+duDfKyw7o/9BAIlPWnMztt04ACHuhxopZphQ1fvvi/dUaSgNkx5z
	w9OOdwFYihhqK/B8rZf3bASoo929/TqMXn5p4G2O1/3k7+xMIsw2wUE1srGoUAO9llqITtSCUZ6UZ
	nAz7dsLgStzZTxuAOmA6yVL1hr6Y62xuPvwE7s+NLJC88y+JjKv6FEc4nwf6+PE8ygjoMp+5N4Aae
	BMmr4aOc6JPEyAzlAunS2EJB62iOiCSiU8IqThf9zzRFuKfLcpqAyNHuDu6b/4qtHdw655SKZHhya
	yDlGZGfn8087xRDiFUBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUDN-0003IG-Ua; Thu, 09 Jan 2020 09:34:53 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUDG-0003Hw-C2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:34:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so2348719plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L9XB5AN+fravHpIS0JAibGbZsaJ2BHkQqcH0VnEvYUE=;
 b=PorJPIogHEcRiQQYYPYQA93p0KSOs7yXFv+DdBN6acem8TD7Q8Gdw/GBdgjYOLD2n+
 7PVACTQFrcSvfZzuHf00SmwP9JzAHHXkWuqN8iZFHMERgQWA+66Ps8WgZotTIb+J3Ipi
 0erZX5Z6d+JOwrdoC0tGEjNJ5DTnri5NPSEtKZEBu5KczVTo9PkhQn718ncCtZMKizlq
 uGqRveykBhnuLY/k/qj17tJNcCy/1wwPUR8VebD6NpWzeedf71pvVoDAw4ELbcD4tLbR
 syKYkI1jnRsv28E+lqRM/dUpTMB9+3nVY3yptr8p4W0KjreyhDatY9+WIfWXrcmOUj97
 mJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L9XB5AN+fravHpIS0JAibGbZsaJ2BHkQqcH0VnEvYUE=;
 b=saFFtobDWHCZfjT/b6YADbywqyT9xbliU/4yntkHJjeZWE7kZd2X1HfxayiTClak5I
 jEIps6eBGifEEU0q+lIdf0AfyLgGg+nHom6xtcYkR84/6d9wDDOCffKjgMprP8iZatBQ
 m0xVkGXZwllOqDZCFMoFrA2cFDp7cK/iuMDxEPnPonTAnGdeRUcBio7bxDVyEOGA/5JC
 zjU46+1aMNXn6BYUzZo5+p8lhbI5L93fjv3dmyQufdSY2cyL3RWoPheWhVWd8D17rrqy
 cwLDIEIiru0KP0nYNVsoO+oDX0JwRiRPBk444cbORruobJN3qOTkC2qyAC/ML70sulE4
 Kb9A==
X-Gm-Message-State: APjAAAU098+T32J7C+nAlXfdJMZ+mxFieQzigRXWMAF+VSgTW/BM7Gcz
 A/S+vBoQnqr1V7LPAUhQACEZIw==
X-Google-Smtp-Source: APXvYqzBfewSQPZvAwkpT36xnTY57nZ7Sz3UFzijvnhCeEbYI1srm+RA/XMXe2Dpmu86TBCiFsqYnQ==
X-Received: by 2002:a17:90a:778a:: with SMTP id
 v10mr4042349pjk.26.1578562485403; 
 Thu, 09 Jan 2020 01:34:45 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id e16sm6522308pgk.77.2020.01.09.01.34.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jan 2020 01:34:44 -0800 (PST)
Date: Thu, 9 Jan 2020 15:04:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_013446_473093_10734CD5 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-01-20, 09:18, Arnd Bergmann wrote:
> On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > The SCMI specification is fairly independent of the transport protocol,
> > which can be a simple mailbox (already implemented) or anything else.
> > The current Linux implementation however is very much dependent of the
> > mailbox transport layer.
> >
> > This patch makes the SCMI core code (driver.c) independent of the
> > mailbox transport layer and moves all mailbox related code to a new
> > file: mailbox.c.
> >
> > We can now implement more transport protocols to transport SCMI
> > messages.
> >
> > The transport protocols just need to provide struct scmi_transport_ops,
> > with its version of the callbacks to enable exchange of SCMI messages.
> >
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Conceptually I think this is fine, but as others have said, it would be
> better to have another transport implementation posted along with this
> to see if the interfaces actually work out.

@Sudeep/Vincent: Do you think we can add another transport
implementation something right away for it ?

@Peng ?

> > +/**
> > + * struct scmi_chan_info - Structure representing a SCMI channel information
> > + *
> > + * @payload: Transmit/Receive payload area
> > + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> > + *      channel
> > + * @handle: Pointer to SCMI entity handle
> > + * @transport_info: Transport layer related information
> > + */
> > +struct scmi_chan_info {
> > +       void __iomem *payload;
> > +       struct device *dev;
> > +       struct scmi_handle *handle;
> > +       void *transport_info;
> > +};
> 
> I would assume that with another transport, the 'payload' pointer would
> not be __iomem

Hmm, okay. I just separated things based on the current transport and
didn't add much changes on top of it as I wasn't sure how things are
going to look with next transport and so left the changes for then.

I can now drop it though.

> > +static int scmi_set_transport_ops(struct scmi_info *info)
> > +{
> > +       struct scmi_transport_ops *ops;
> > +       struct device *dev = info->dev;
> > +
> > +       /* Only mailbox method supported for now */
> > +       ops = scmi_mailbox_get_ops(dev);
> > +       if (!ops) {
> > +               dev_err(dev, "Transport protocol not found in %pOF\n",
> > +                       dev->of_node);
> > +               return -EINVAL;
> > +       }
> > +
> > +       info->transport_ops = ops;
> > +       return 0;
> > +}
> 
> This looks odd: rather than guessing the transport type based on
> random DT properties, I would prefer to have it determined by
> the device compatible string, and have different drivers bind
> to one of them each, with each driver linking against a common
> base implementation, either as separate modules or in one file.

Since there are no platforms using the scmi binding in mainline kernel
for now, it won't be difficult to add new compatible strings. So
should this be done like:

        compatible = "arm,scmi", "arm,scmi-mailbox";

or just
        compatible = "arm,scmi-mailbox";

?
-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
