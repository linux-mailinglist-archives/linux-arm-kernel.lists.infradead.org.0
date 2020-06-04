Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C81EE12F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8F9evY6SXYcJBXFf4Uryo23sV5FEIRHJBjwoxf2URk=; b=Q7aRu8WjABSL75
	/9KXYOXG4hwjewKN9PVTfCoC5H0M35fVb0vHwyfPSy7nqpf70a2ctE3vxI7R1Cue6zs3Zk4CV1UpH
	VI0tC7ETgf2/kJKHNrPe57uBBS7YdTMHLhiA2G23ZFpmp+m/1mxz2Fgx2UUu55aEhKJwAZ/IL5d7H
	7DSPRpxksyoPWajrsfbBNHpq+cLBK5FyjDDqvxzusg8VkZtKEkUqFLPazx04h7M6zyCzsVgKjtQyw
	yBjjuRaAJ59cTTrMJMeamWBX7HSJNgVbslEgKVmOSh7n1fNZ0qO0Eeq/NqpVa2afyDoa1ke4JGGsS
	fGMvm5UvDqH7ZoUzJbJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm55-0007s9-2O; Thu, 04 Jun 2020 09:22:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm3W-0006Mk-DG
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:21:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91DBC55D;
 Thu,  4 Jun 2020 02:20:57 -0700 (PDT)
Received: from bogus (unknown [10.37.12.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B4FA3F6CF;
 Thu,  4 Jun 2020 02:20:55 -0700 (PDT)
Date: Thu, 4 Jun 2020 10:20:52 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200604092052.GD8814@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_022058_505291_924EB8F9 
X-CRM114-Status: GOOD (  18.89  )
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 01:32:42PM -0500, Jassi Brar wrote:
> On Wed, Jun 3, 2020 at 1:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> > > On 28-05-20, 13:20, Rob Herring wrote:
> > > > Whether Linux
> > > > requires serializing mailbox accesses is a separate issue. On that side,
> > > > it seems silly to not allow driving the h/w in the most efficient way
> > > > possible.
> > >
> > > That's exactly what we are trying to say. The hardware allows us to
> > > write all 32 bits in parallel, without any hardware issues, why
> > > shouldn't we do that ? The delay (which Sudeep will find out, he is
> > > facing issues with hardware access because of lockdown right now)
> >
> > OK, I was able to access the setup today. I couldn't reach a point
> > where I can do measurements as the system just became unusable with
> > one physical channel instead of 2 virtual channels as in my patches.
> >
> > My test was simple. Switch to schedutil and read sensors periodically
> > via sysfs.
> >
> >  arm-scmi firmware:scmi: message for 1 is not expected!
> >
> This sounds like you are not serialising requests on a shared channel.
> Can you please also share the patch?

OK, I did try with a small patch initially and then realised we must hit
issue with mainline as is. Tried and the behaviour is exact same. All
I did is removed my patches and use bit[0] as the signal. It doesn't
matter as writes to the register are now serialised. Oh, the above
message comes when OS times out in advance while firmware continues to
process the old request and respond.

The trace I sent gives much better view of what's going on.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
