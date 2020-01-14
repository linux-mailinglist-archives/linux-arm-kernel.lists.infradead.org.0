Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F239113B12E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hdHCQR79gaYua/t/87bmZr3hoIboAaBMrJz0Hgvvg4=; b=CdPYnqFpBpiYRZ
	tRNIR5E0O2LpPEFdbzb/JaF8rjZ9CvZo0N4hUOKdJDUsAtOlAsUUmJQljIFPzK7ArbkuPPHxL23iz
	EwSwR06PPf4cn7pbHwbP2jvXCsDrIU3cZiHDxOzNE4cDA7AnSXNgOJiYwBAcSajP4cAs8LsiCj/a3
	ubNDMKtP70vW+kOx7M5tG8S2T8Q27FU/ZyLS1F+J3aEeikBiE4F2BeGTJLo1S9K76LNiashCz+bou
	+D/90nb8fuTKkmWizN5Jcwci05ucq5btkk6t4Ky7UQfgWbjG6jBdrNrsS/GQrcKqXFedhd43mMKcT
	/qGZQpP6ucPDS2/1xsJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQCs-0004Fm-BK; Tue, 14 Jan 2020 17:42:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQCf-0004ES-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 337A31396;
 Tue, 14 Jan 2020 09:42:07 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A7063F68E;
 Tue, 14 Jan 2020 09:42:05 -0800 (PST)
Date: Tue, 14 Jan 2020 17:41:57 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200114174157.GA23201@bogus>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
 <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
 <20200114111110.jhkj2y47ncp5233r@vireshk-i7>
 <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_094209_285356_45D806A1 
X-CRM114-Status: GOOD (  17.68  )
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
Cc: peng.fan@nxp.com, Viresh Kumar <viresh.kumar@linaro.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 12:17:28PM +0100, Arnd Bergmann wrote:
> On Tue, Jan 14, 2020 at 12:11 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >

> >
> > Okay, I think I understand that a bit now. So here are the things
> > which I may need to do now:
> >
> > - Maybe move payload to struct scmi_mailbox structure, as that is the
> >   transport dependent structure..
> >
> > - Do ioremap, etc in mailbox.c only instead of driver.c
> >
> > - Provide more ops in struct scmi_transport_ops to provide read/write
> >   helpers to the payload and implement the ones based on
> >   ioread/iowrite in mailbox.c ..
> >
> > Am I thinking in the right direction now ?
>
> That sounds about right. What I'm still not sure about is whether the
> current kernel code is actually correct and should use iomeap()
> in the first place. Can you confirm that all current hardware
> implementations actually use MMIO type registers here rather than
> just rely on a buffer in RAM?
>

I remember we had this discussion in the past and was trying to dig up
the archive. I found it [1]. At that time and even today, I don't have
knowledge of any upstream platform using memory other than SRAM and
hence I found it safe to retain ioremap as is.

But I agree in general, this abstraction will allow us to add shmem of
other memory types like RAM. However, it's difficult to have understanding
and representation of the memory type used by the platform firmware say
in DT or even ACPI.

--
Regards,
Sudeep

[1] https://www.spinics.net/lists/arm-kernel/msg647292.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
