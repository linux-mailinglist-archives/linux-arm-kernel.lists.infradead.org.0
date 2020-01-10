Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5032A136CF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTq2wgQ8uV6g6C3eKotY6l4Z4D+bzQyt0/fhdTJfuh4=; b=R4yE9/BVvKMYTk
	OUb9xpdnWL7K8OJdFEaMy61aJhda3G7PpJOKmag739dnnkMuEqghVWr2pneOgzEwT6vqYZg/FlGi7
	JtX5wtgiHf4/0Aq/ahkTehhPY8q1b0sobM1hEXLoAoOtmH78HutBWBrRcY3eEPCXV48hHv7UZO7KN
	DZfA68KTmQswtZeIMKWhlBQiDcS/XSNBcZuCpixowpcl5DXTRPWq22C8gCm4pfFsrrmwUkQI+yqzq
	A21OKPBeCmGkQ+0LxYuwVkTR/4YZ+VSssAGqQi/vZgwuFmNf/D9QZB9iZFGz8BQVwHypXtrqjcl66
	UlEFAcBPhMqlX/lp4u9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptJK-0005kD-Nq; Fri, 10 Jan 2020 12:22:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptJC-0005iz-OE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:22:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8A951063;
 Fri, 10 Jan 2020 04:22:33 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5AB23F534;
 Fri, 10 Jan 2020 04:22:32 -0800 (PST)
Date: Fri, 10 Jan 2020 12:22:26 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200110122226.GA45077@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
 <20200109091613.fx2ggmmjvgjempks@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109091613.fx2ggmmjvgjempks@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_042234_833338_D9EB341E 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 02:46:13PM +0530, Viresh Kumar wrote:
> On 09-01-20, 09:18, Arnd Bergmann wrote:
> > > +static int mailbox_chan_free(int id, void *p, void *data)
> > > +{
> > > +       struct scmi_chan_info *cinfo = p;
> > > +       struct scmi_mailbox *smbox = cinfo->transport_info;
> > > +
> > > +       if (!IS_ERR_OR_NULL(smbox->chan)) {
> > > +               mbox_free_channel(smbox->chan);
> > > +               cinfo->transport_info = NULL;
> > > +               smbox->chan = NULL;
> > > +               smbox->cinfo = NULL;
> > > +       }
> >
> > There is something wrong if smbox->chan can be be one of
> > three things (a valid pointer, a NULL pointer, or an error value).
> >
> > I see this is a preexisting problem, but please add a patch to
> > make it consistently use either NULL pointers or error codes
> > and remove all instances of IS_ERR_OR_NULL() from this
> > subsystem.
>
> This isn't a subsystem problem actually. mbox_request_channel() never
> returns NULL on error.
>
> @Sudeep, do we really need the IS_ERR_OR_NULL() check in
> scmi_mbox_free_channel() helper ? Or can it just be IS_ERR() ?
>

It can be just IS_ERR, just not noticed it so far I believe.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
