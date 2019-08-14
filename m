Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC49B8D1B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqCLggkIcfGDhaYd4sbfdT6qsOKW605ld89HBQoc0fI=; b=JnHjA6uF8Xa9II
	scrytOdwdhK0kMWK/9O8PPXGFwp70mZjfz9XMnYCoGPNNwGENqhTa+5SCF5FY5LQvQvwxT+sIGx0f
	Et2jumztBjEl9YOAgDPV8mNz9p6QSPXbZQWJEWIcQb4hpbl9C6atY2om08PAnWuw+hmF8ou+45FJL
	jbk39wri4Rys2TD1GS5yVptW23kh/azODGQ0cnHT+QL8hedeBxHNIrPjwXrddqpImnDBa/jRNz6Kf
	zStN921DX6XKiV8OQiWz8jvQWLAyjyj6FbYWYBPPwlwyMqLzO7gq8Dc9ESpPaL4yiWd7RXRZer08Q
	jNL5CcfA9fNtQfYq+uTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxr8B-000624-9T; Wed, 14 Aug 2019 11:07:51 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr6g-000611-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:06:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id y26so109658986qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fRJMc9uYmRAo2MIcDUP/qwCpNYHg3b2mNU+bPSGNRlg=;
 b=YvIEps3ePORM1oQIG3JG+75UFHTRJHX8snjBuaIDZqzEV/9hqzBOynHHHig20/qjl8
 NrA0JMgK7an9/PAxJ2TGnd2Z7Jg4SAl3PzcW816aBaLyu9yLlkfIgE/HjmXFIIh8Byw/
 y3WlZyWDdcMYizU4dmjPPNiTjBc/FExbSpp6boLHpXMBoBcXTcelMgBE1zjZr28IXRK+
 N/NQrnPf8XVtU9vXlUUIjnQ+cj+Q3RtKNdZFFAUEqUgK7cBMLATKxYg1Jz7crlSzfSWM
 ex1KLEqPXzWRHchghF7hsUcjJki+6pQyfxHGZg4+qMrefmUwsA0I5DaLYvkMuCdW7jz4
 ogeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fRJMc9uYmRAo2MIcDUP/qwCpNYHg3b2mNU+bPSGNRlg=;
 b=pJIPPzOVJojLkvhqar2mODoyEhUt0mFcPm+8D7S0idf4V/wDNigoHpm4VRM5NAmuIQ
 yZhhDE0AHXd3BuM14hxETk/ZcyDFC3ovTfodTUbXVqxHqHurMY3i1hPwn5VXp43ndSTj
 ZiBAh4jhnqLL2oMoP/1rEAfZF6ybLzW66JpCieDJjZdBndaa8CNU5+sr2CnOGQnmyWKq
 b6n91uaw5Qgudkr9N/jdqw90iNLPnx/tcPocfLQSk2iV9nyy18O9AJIZ3YMgIzdSKzYH
 wt9nb2Wllp1Vz+zNAlxkoP//PeL28LHCzZznJreQj4Qp1jdXlRJUVSnJanw7WF2mvFlm
 bvag==
X-Gm-Message-State: APjAAAWzTY4bdd+mMRcTW5nOGTtWAltkXSPDTYH3KDP69RVlq2gANzo+
 mKs5ycAbJ2sVtJ2jA98vgANPal/jLz+iSVv0ZYHB/g==
X-Google-Smtp-Source: APXvYqxAUaRNn9KQ0WLSkZB8h+jzjImrm4GKTXicTV4YjcRNgcclLzp/RKJ9IpDXJj8mshiNoTY1Zpjn9NN/5Y2ZnTI=
X-Received: by 2002:ac8:6b8f:: with SMTP id z15mr8879486qts.62.1565780776084; 
 Wed, 14 Aug 2019 04:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
 <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
 <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
 <20190814100152.GB43882@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190814100152.GB43882@e119886-lin.cambridge.arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 14 Aug 2019 12:06:05 +0100
Message-ID: <CAJ9a7Vj+bo2PMnh2fbMJnaHRwJm9jU689P+iZ4q8_Vg7-3SnDg@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040619_664542_6B4370E4 
X-CRM114-Status: GOOD (  35.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Al Grant <Al.Grant@arm.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, 14 Aug 2019 at 11:01, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Sun, Aug 04, 2019 at 07:13:45AM -0600, Mathieu Poirier wrote:
> > On Fri, 2 Aug 2019 at 08:37, Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
> > > > Hi Andrew,
> > > >
> > > > On 30/07/2019 13:51, Andrew Murray wrote:
> > > > > Some coresight components, because of choices made during hardware
> > > > > integration, require their state to be saved and restored across CPU low
> > > > > power states.
> > > > >
> > > > > The software has no reliable method of detecting when save/restore is
> > > > > required thus let's add a binding to inform the kernel.
> > > > >
> > > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > > ---
> > > > >   Documentation/devicetree/bindings/arm/coresight.txt | 3 +++
> > > > >   1 file changed, 3 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > > > > index fcc3bacfd8bc..7cbdb7893af8 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > > > > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > > > > @@ -92,6 +92,9 @@ its hardware characteristcs.
> > > > >     * arm,cp14: must be present if the system accesses ETM/PTM management
> > > > >       registers via co-processor 14.
> > > > > +   * arm,coresight-needs-save-restore: boolean. Indicates that software
> > > > > +     should save/restore state across power down.
> > > > > +
> > > >
> > > > Do you think we could be a bit more descriptive here about when people could add
> > > > it to the DT ? Here we don't mention when someone should use this property and
> > > > it may be added to platforms where it may be absolutely unnecessary. How about :
> > > >
> > > > "Indicates that the hardware implementation may not honor the Powerup request
> > > > from the software and thus might loose the register context on CPU power
> > > > down (e.g, during CPUIdle). Software must save/restore the context during a
> > > > CPU power transition cycle."
> > >
> > > How about the following:
> > >
> > > "Indicates that the hardware will loose register context on CPU power down (e.g.
> > > CPUIdle), despite the TRCPDCR.PU bit being set."
> > >
> > > I'm keen to avoid making suggestions about what the kernel will do when it sees
> > > this flag and thus prefer to focus on describing what the hardware does. So I
> > > dropped your last sentence. However the name of the flag still implies policy
> > > which I don't like.
> > >
> > > I also changed the 'may not honor' wording, I'm not sure if this is really the
> > > case or if the spec is open to interpretation.
> > >
> > > It would great for this wording to also apply to other CS components though I
> > > haven't investigated if these have a PU bit or something different.
> >
> > Exactly - the definition needs to be broad enough to apply to other CS
> > components.  Mike what do you think would be appropriate for CTIs?
>
CTIs have no power control at all - i.e. no PU bit to request we stay
up - and reside in the debug power domain. So they are coupled to the
CS/CPU/ETM/ power domains and reliant on outside forces to request
power.
The expectation is that for a PE bound CTI, if debug is powered then
it will be fully powered - so an ETM with PU respected, or the
external debug logic with DBGNOPWRDWN respected should be sufficient
for CTI to stay alive.

> How about we keep this short and simple:
>
> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
>   will lose register context on CPU power down (e.g. CPUIdle).
>

So the above name is generic enough to encompass the CTI as well.

> I could have added something like "... despite TRCPDCR.PU being set", or to
> apply more generically: "... despite available register controls being set to
> prevent such context loss". However whilst these are more informative - they
> elude to some of reasons as to why context is lost and as we cannot be
> exhaustive I'd rather not give a limited example.
>
> However if a longer explaination is required:
>
> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
>   will lose register context on CPU power down (e.g. CPUIdle). An example of
>   where this may be needed are systems which contain a coresight component and
>   CPU in the same power domain. When the CPU powers down the coresight
>   component also powers down and loses its context.
>
> Any objections/preference? :)
>

Don't really care about length of explanation - but shouldn't mention
ETM specific features.

Mike

> Thanks,
>
> Andrew Murray
>
> >
> > >
> > > Thanks,
> > >
> > > Andrew Murray
> > >
> > > >
> > > > Cheers
> > > > Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
