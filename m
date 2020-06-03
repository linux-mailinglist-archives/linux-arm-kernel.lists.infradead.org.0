Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89E1ED61A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RygKq+7tXmns0NP6H1CB96M2ElXq19jjxcyiYJ4VrQ=; b=V8Sqf6Rlgi4ca9
	nvwpzQTW3IhLkGARdpblP2c32uJjWbliyccstzu27Wt/gkYjBMNoKzGfE8+ETr0yV+WcrkO74s9fI
	rbSxExJAP8A3LpO4xvNId8nxanUEZHtDIDC1gqtMZpfSBNwNUDqoLAgpnk1lwcJbLIkSwjUP74E7J
	fjiRZ3rRtAHuoBivFUBcgVfJHFjij2xdecGEtvrS2iV+fLXfwmTvHHt8zmizReKtomKtvmK/NszCo
	GOCpOqEzT+7l64rL9Ae+KYw3Y5qUR6HReF2ARfGVdl1ou0j253sSlqaeGh/eRHojHeamk1/3FeXpv
	zzgmk04C/2koSC1NSU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgY7g-00076L-In; Wed, 03 Jun 2020 18:28:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgY7Y-00075y-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:28:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9DF931B;
 Wed,  3 Jun 2020 11:28:10 -0700 (PDT)
Received: from bogus (unknown [10.37.8.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9073D3F305;
 Wed,  3 Jun 2020 11:28:08 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:28:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200603182805.GD23722@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200519012927.GT2165@builder.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519012927.GT2165@builder.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_112812_096563_AA24DBCA 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

Thanks for the details response.

On Mon, May 18, 2020 at 06:29:27PM -0700, Bjorn Andersson wrote:
> On Thu 14 May 22:17 PDT 2020, Viresh Kumar wrote:
>

[...]

I find this part nicely summarise your response.

> > - With serialization, if we use only one channel as today at every
> >   priority, if there are 5 requests to send signal to the receiver and
> >   the dvfs request is the last one in queue (which may be called from
> >   scheduler's hot path with fast switching), it unnecessarily needs to
> >   wait for the first four transfers to finish due to the software
> >   locking imposed by the mailbox framework. This adds additional delay,
> >   maybe of few ms only, which isn't required by the hardware but just by
> >   the software and few ms can be important in scheduler's hotpath.
> >
>
> So these 5 requests, are they conveyed by the signals [1,2,3,4,5] or
> [BIT(0), BIT(1), BIT(2), BIT(3), BIT(4)]?
>

Latter in this case. IMO it is platform choice on how to use it. It is
equally possible to send 2^31 different signals. But the receiver must
also interpret it in the *exact* same way. In this case, the receiver
which is platform firmware interprets as individual bit signals.

> In the first case you have to serialize things given that e.g. signal 1
> immediately followed by 2 is indistinguishable from 3.
>

Agree and we are not proposing to break that use case. It exists in the
driver/binding today and will continue as is.

> If you signals are single-bit notifications then you don't need any
> serialization.
>

Indeed, we are making use of that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
