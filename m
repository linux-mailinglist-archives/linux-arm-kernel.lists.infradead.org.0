Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED1A14446B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5hK3IEi2JNdo6sKmxAtL0w/+4JspcboWcskgmULT9w=; b=MvPkKvMNQtB1Ed
	Eb+tN7bRDLgcp8NibRLYnrmqRS23m62sTkD1vt2gtLbAn7rnXYqKYljsOJHDasIMDNGtQfhUvgPlX
	yEyKgJ6P/wfZTR5ygnyjNkCRyo9AnWhybxPosWWC30bmUsCGpY45TJPDUvE4tEOJk/kr3MlFBJQ7q
	C8QjAETDF7OUfBbCJrPfrGHkvQvoAltU+BJWZTuzMDPcJIowy6tsUlNrmGdkumrhpAOlGQEPUjb1G
	S+OqAuGLUWYNcDn7+epMskuowWpgUhpb8SryCAQmGSnZeWlaIGzjRYysyyU2FjBgHm7EuzrWnm4Nk
	G0+tF4z7FDVzCdZb11/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityQD-00015b-7y; Tue, 21 Jan 2020 18:38:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityPz-00014Z-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:38:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BD521FB;
 Tue, 21 Jan 2020 10:38:25 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB3F93F6C4;
 Tue, 21 Jan 2020 10:38:23 -0800 (PST)
Date: Tue, 21 Jan 2020 18:38:18 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V3] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200121183818.GA11522@bogus>
References: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
 <CAK8P3a0fWf-wd8exJa+_UL9n0bQ26W6wd0iQH32osM1Q+cLu_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0fWf-wd8exJa+_UL9n0bQ26W6wd0iQH32osM1Q+cLu_w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_103827_347756_156221B5 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 peter.hilber@opensynergy.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 04:11:11PM +0100, Arnd Bergmann wrote:
> On Tue, Jan 21, 2020 at 9:27 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > The SCMI specification is fairly independent of the transport protocol,
> > which can be a simple mailbox (already implemented) or anything else.
> > The current Linux implementation however is very much dependent on the
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
> > ---
> > @Sudeep: Can you please help me getting this tested?
> >

Sure(I may need to rebase on top of -next to test on top of what's queued
for v5.6)

> > V2->V3:
> > - Added more ops to the structure to read/write/memcpy data
> > - Payload is moved to mailbox.c and is handled in transport specific way
> >   now. This resulted in lots of changes.
>
> This addresses the comments I had about the implementation.
>

Thanks for review and all the suggestions Arnd.

> It's still hard for me to judge whether this is a good abstraction as
> long as there is only one backend in the framework, but I see nothing
> immediately wrong with it either.
>

Peter and Peng(both in cc) is trying out virtio and smc/hvc based transport
respectively. Hopefully they will raise concerns(if any) with the abstraction.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
