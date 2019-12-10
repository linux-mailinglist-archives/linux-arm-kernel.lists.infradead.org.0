Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264BA118FF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wembLbJ8+D33IXDRy6Ipg9GYf/KxyAkwxBnxs7v11Rg=; b=suovYqM4FVnHJx
	KBV9UNWyld7j8NxJeY0wiogRtz/fzhXkwZc45esibIAFIV4cMLPQTHmqfZmG98m2hM/ZNlSTV0YHP
	BmIn1WW5lFExAHrL4WgavUTRH1QuuQhi+zAj0VRAtnI+XiAVDRLQz//9monIDJDlGI/orH5VVsulG
	nbmAvwLqRW6Q85PGuh+2ibIG1lbCPPzV8wiTdtSKBK7vky4xBWHRenEEqZ5GbaBfiKjFbypNLf2Uw
	d5QSchDgfoV1sSsZEwxku0dseJgU+hinb4i//TDHRapQ3baVkCuNzOptUJqEd9VkDWNGzLipBXwGC
	3DuN40LweQo5KdUqLRFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iekX0-0006j6-2u; Tue, 10 Dec 2019 18:46:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iekWr-0006iK-MF
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:46:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 774761FB;
 Tue, 10 Dec 2019 10:46:36 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A7543F6CF;
 Tue, 10 Dec 2019 10:46:35 -0800 (PST)
Date: Tue, 10 Dec 2019 18:46:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191210184633.GC20962@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <71417ba8-b844-ac96-bcad-4bf48fa8b869@arm.com>
 <20191210053448.ugjzbp2puzvnm37f@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210053448.ugjzbp2puzvnm37f@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_104637_769778_35C85276 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 11:04:48AM +0530, Viresh Kumar wrote:
> On 09-12-19, 18:13, Cristian Marussi wrote:
> > On 29/11/2019 09:31, Viresh Kumar wrote:

[...]

> > >  	desc = of_device_get_match_data(dev);
> > >  	if (!desc)
> > >  		return -EINVAL;
> >
> > This scmi_desc struct descriptor is retrieved from  of_match_table .data and points to
> > the driver-provided scmi_generic_desc
> >
> > static const struct scmi_desc scmi_generic_desc = {
> >         .max_rx_timeout_ms = 30,        /* We may increase this if required */
> >         .max_msg = 20,          /* Limited by MBOX_TX_QUEUE_LEN */
> >         .max_msg_size = 128,
> > };
> >
> > Is not this kind of information possibly (maybe partially) related to the selected
> > transport, and as such it should be also provided dynamically by the chosen transport
> > layer at probe time, like the transport_ops, instead of being hard-coded in
> > this driver ?
>
> I had my doubts about this thing and I missed checking it out.
>
> @Sudeep: Is this information completely mailbox specific ? Should I move it to
> mailbox.c here ?
>

May be to some/small extent.

1. max_rx_timeout_ms is firmware dependent, maximum time it expects to
   complete a synchronous request or acknowledge async request(worst case value).
2. max_msg_size is maximum size of the buffer we need to allocate, mostly
   based on the specification and we don't have any more that 0x80. But
   the custom/vendor specific protocols may wary and hence I thought of
   keeping it configurable for platforms.
3. max_msg is the maximum number of messages the transport can support.
   This is currently based on the mailbox layer. For SMC/HVC we can have
   upto nr_cpus, something different for spci/optee. We must be able to
   make it transport independent if required.

   This is mainly used to pre-allocate number of (tx/rx) buffers.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
