Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C36117FCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrBonvEiVeQ3u2sOKAUIxhhOLrnQHcobpcNq92vihuo=; b=kfRIayqf2igV4L
	fT/Z8oANUg+9DugMnd7gHmPBVkdw17295eLvgkki9fgLGo928eOXkYEg4TRh21l3UP87LWfyoTey5
	q00+wyquSrPZOxFcGl6Za/xzLgZs+E9CQwQWuLQzUTzanchF+6A51quWBy5KPQzo9XFCaYgQwzbWL
	t2KRSqQ/4/GHbzDtqjYQAnFtRRO2YiwVg0ojstIDHJ5sGhAoBoyiBjsGiSfKaerUCkvNhWiIHXbJW
	PhZ4BftgCmYbIIf2S0gfMxU/Gq36cIij/lHHzPtfXy7PZ4+T3zkB+Y7kgmuX8ZHiTwZ2t23o7V0j1
	h0EV77QUPQvG3qPoPLyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieYAq-0005pO-2s; Tue, 10 Dec 2019 05:35:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYAf-0005p2-Dg
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 05:34:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id x13so6805982plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 21:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AzsFieC11fwzabgMCPx3URH9lCYXYANqoMZZrtmqKd4=;
 b=L1WO7mxjzK/1efDe2pAT51plCIrpplQlmPc9fY3UGwPV0+TH9blV6G33+mD8zglKW3
 rkcbOyGgtLxlkk9Akv+WgrJBQEtcDaX1pl2SD/p3kT7wsE3bEDNv39n0aopK1MVX6qSH
 X8EHOAOa4/nJWGU295R15Fs6gDthazw88muc2WC6EqX0Q9QrGUXJDJY35HPz7YJ9sE4J
 /4UTcXRkCAaBbXn9JNWbrQqIZrCBF3jXXZt0oVf1fhw0v3ArsxzfLVUiUPpgZLcsjOuK
 MO6UQ/WDFKGYQZ59h3mRcx72WAbgXhN9hDhki6zlNGy7wZFi0cQDj6Q/c21honCae8gT
 y0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AzsFieC11fwzabgMCPx3URH9lCYXYANqoMZZrtmqKd4=;
 b=WDhs46JlqDppUizaBz914WcuEqOBsej5Z36keK1F3XoqoTIeJZXhA/3u3jXqFU34KV
 woYM/4W6ZdBHcpuCYZvA82r5geFz4wlwa60yrAXlKa9j/ezKA7Cpg/pvqVyUw8UzVq99
 tfCM6gqgjDBmoHzPmEM75UwIcOAWc1TWmjd5k2YviRkkFYdPTCOKZyzjTIOhE4A2sAiV
 SWvKaYBfBj36PH3a1+ByIq1YNtO+bjNIrD4KQv6NqwWZ2zHE8dBEdsu82wFeIYM12MN0
 tp1ja8+zYBwrdKPp3wgOGxXLrhHDms2SRo28gMdMftnQHr2WMlTkmxi48knnbQHDz8nE
 PXvA==
X-Gm-Message-State: APjAAAVxnJvOlP2Ul9WA+y/6vR4AYIyJLAkpIGbZCjv7m68A4NdsspkF
 TAoskWitvxjxw02Uwth/6b3dtg==
X-Google-Smtp-Source: APXvYqyQah584mrSQjBTpa6c9+I7UIqTgabaisZdQnj71yPkC7qJrT6b9DaMBWRuH6z2dHKhTzAUOQ==
X-Received: by 2002:a17:90a:1b6b:: with SMTP id
 q98mr3499127pjq.106.1575956091524; 
 Mon, 09 Dec 2019 21:34:51 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id y62sm1428047pfg.45.2019.12.09.21.34.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 21:34:50 -0800 (PST)
Date: Tue, 10 Dec 2019 11:04:48 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191210053448.ugjzbp2puzvnm37f@vireshk-i7>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <71417ba8-b844-ac96-bcad-4bf48fa8b869@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71417ba8-b844-ac96-bcad-4bf48fa8b869@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_213453_491115_6BA373D5 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-12-19, 18:13, Cristian Marussi wrote:
> On 29/11/2019 09:31, Viresh Kumar wrote:
> >  /**
> >   * struct scmi_info - Structure representing a SCMI instance
> >   *
> > @@ -128,6 +109,7 @@ struct scmi_chan_info {
> >  struct scmi_info {
> >  	struct device *dev;
> >  	const struct scmi_desc *desc;
> > +	struct scmi_transport_ops *transport_ops;
> >  	struct scmi_revision_info version;
> >  	struct scmi_handle handle;
> >  	struct scmi_xfers_info tx_minfo;
> > @@ -138,7 +120,6 @@ struct scmi_info {
> >  	int users;
> >  };
> >  
> 
> Could we add also the related @transport_ops in the above comment block ?

Ah, I missed that.

> >  	desc = of_device_get_match_data(dev);
> >  	if (!desc)
> >  		return -EINVAL;
> 
> This scmi_desc struct descriptor is retrieved from  of_match_table .data and points to
> the driver-provided scmi_generic_desc
> 
> static const struct scmi_desc scmi_generic_desc = {
>         .max_rx_timeout_ms = 30,        /* We may increase this if required */
>         .max_msg = 20,          /* Limited by MBOX_TX_QUEUE_LEN */
>         .max_msg_size = 128,
> };
> 
> Is not this kind of information possibly (maybe partially) related to the selected
> transport, and as such it should be also provided dynamically by the chosen transport
> layer at probe time, like the transport_ops, instead of being hard-coded in
> this driver ?

I had my doubts about this thing and I missed checking it out.

@Sudeep: Is this information completely mailbox specific ? Should I move it to
mailbox.c here ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
