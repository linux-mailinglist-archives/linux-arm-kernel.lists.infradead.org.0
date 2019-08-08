Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5EF865F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4xbyZgJmbjxdNZGu5vHUIPBPBP2GQRF8heBMcO5vVw=; b=PbgVEU5PBvK6At
	MaLGttkzAWkmb2vjYqGmeDTapRolJo8oGAuM/b2z0kRrs1A2Ars+lfT4O3Jg4FraZ91p/uxG8kXaD
	a+RWaLh3Eg7M8RiV+Bo5/trs9aS1xF/Oxvx9NMKKXiYGzINxdcoJmEGA/dfyyD3a6YO7cyB8BrBof
	3fNJCKcyrLpnJB81ditXNd+rrpTMzatR7u7Qa/mCrCaXJBejD0NwRTAk71ObJm96TyMjS5MlqRnN0
	IAmcU1UZ/UEBTExrGQbZW1QidUQkc6DwYvC2SzzHz4o4UTlEZaKShK11+JNNM531dv1WZ+reEXMaU
	fk512d/O/lSAUJQyrH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkSO-0006j6-AY; Thu, 08 Aug 2019 15:36:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkSD-0006ie-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:35:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id c3so21172398pfa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 08:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Z55+MGOgvcuumHbRUgxjd+OA2ks4wMYux6QFgvB3mtA=;
 b=o0ZRjANBkQBpkvfcBk3USIxBNVv9hP/9puh0WcoZBsynuGf8UYZZyyosN3y1BJHe7A
 2yCD1kBcyAfeuj/0yLVFLUhjNeQDLUWB1e18nQXrJ6XwRml2CyFGVQhE4KI/6SYDKpRr
 VhjgIK2nL24MYeYXfjwTYySY/3qcSNOJa5eVoJXBxe9EXn9FFOcP6vPsaqwl+aEBJUmG
 YJJ9YHTLAWjlv3dFl29yE1tUg0n6Xr1aN4z7GemcdhrZMY6MfU6tT8VriArHZ049rRVC
 lUVy75hdZW7fXzKJhlZWFV88qBjtBsFbqgfuWs46lyEy5eES9sfqGib2cQLdU8RHM1zH
 UWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Z55+MGOgvcuumHbRUgxjd+OA2ks4wMYux6QFgvB3mtA=;
 b=UVwjKdMyRf/eChgXC8BRImQOQSlRBGcDcwDp+DH2zvu51p9KakoFxkXwmWPZHOtmnZ
 lEzm/k/6tHRyRh7vHf+K30oI0Ti7n4GlFicrWWlZndvJmCOUypGASzfiBDCw+HkilrEQ
 oUT8mveTZ/7wQI8vy1lEI+Yf0Zf8Hzj2FKp0iF+ttQrMunk4IS3VPHiFqX7RfgQcbhqT
 izEG0DZIjUDZhDzfNmozxqWZ/O+4fmYox1hg6XV8k9OBKpJYO+pnPPbfKJ4rQbDrRQGE
 E/VC6oqrYXpSARvoX9gn2d01+uk+FsOE74f7hHJsj8CR6typ5BdqvM9la2iIpQx/NWKO
 u4LA==
X-Gm-Message-State: APjAAAXe/4nhtyk9SkpDvC4D52w65V9P1DOyDvRWkZtalpbXnfnHNkXY
 eq0XGWBuyvCIA0fB4jfBUXabRg==
X-Google-Smtp-Source: APXvYqzSPU50ADcjl7sidQwHEoKkDIem9bNljhAaCTU5SS74dbcMGcTw0+AdiwGYj0zEov7W+QfYEg==
X-Received: by 2002:a62:187:: with SMTP id 129mr16263310pfb.128.1565278548454; 
 Thu, 08 Aug 2019 08:35:48 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b24sm66741286pfd.91.2019.08.08.08.35.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 08:35:47 -0700 (PDT)
Date: Thu, 8 Aug 2019 08:37:21 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien DESSENNE <fabien.dessenne@st.com>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Message-ID: <20190808153721.GI26807@tuxbook-pro>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
 <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
 <02329102-5571-c6c1-b78c-693747133f0e@st.com>
 <f0893b3f-0124-007a-3ca2-831f60ad9a80@ti.com>
 <d8d4a172-ec18-a758-d994-8e05bb6a1f48@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8d4a172-ec18-a758-d994-8e05bb6a1f48@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_083549_943166_25ACF73E 
X-CRM114-Status: GOOD (  41.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 08 Aug 05:52 PDT 2019, Fabien DESSENNE wrote:

> =

> On 07/08/2019 6:19 PM, Suman Anna wrote:
> > Hi Fabien,
> >
> > On 8/7/19 3:39 AM, Fabien DESSENNE wrote:
> >> Hi
> >>
> >> On 06/08/2019 11:30 PM, Suman Anna wrote:
> >>> On 8/6/19 1:21 PM, Bjorn Andersson wrote:
> >>>> On Tue 06 Aug 10:38 PDT 2019, Suman Anna wrote:
> >>>>
> >>>>> Hi Fabien,
> >>>>>
> >>>>> On 8/5/19 12:46 PM, Bjorn Andersson wrote:
> >>>> I agree that we shouldn't specify this property in DT - if anything =
it
> >>>> should be a variant of the API.
> >>
> >> If we decide to add a 'shared' API, then, what about the generic regmap
> >> driver?
> >>
> >> In the context of above example1, this would require to update the
> >> regmap driver.
> >>
> >> But would this be acceptable for any driver using syscon/regmap?
> >>
> >>
> >> I think it is better to keep the existing API (modifying it so it alwa=
ys
> >> allows
> >>
> >> hwlocks sharing, so no need for bindings update) than adding another A=
PI.
> > For your usecases, you would definitely need the syscon/regmap behavior
> > to be shared right. Whether we introduce a 'shared' API or an
> > 'exclusive' API and change the current API behavior to shared, it is
> > definitely a case-by-case usage scenario for the existing drivers and
> > usage right. The main contention point is what to do with the
> > unprotected usecases like Bjorn originally pointed out.
> =

> OK, I see : the hwspinlock framework does not offer any lock protection =

> with the RAW/IN_ATOMIC modes.
> This is an issue if several different 'local' drivers try to get a =

> shared lock in the same time.
> And this is a personal problem since I need to use shared locks in =

> ...atomic mode.
> =


Why can't you use HWLOCK_IRQSTATE in this mode?

> I have tried to see how it is possible to put a constraint on the =

> callers, just like this is documented for the RAW mode which is:
>  =A0=A0 "Caution: If the mode is HWLOCK_RAW, that means user must protect =

> the routine
>  =A0=A0=A0 of getting hardware lock with mutex or spinlock.."
> I do not think that it is acceptable to ask several drivers to share a =

> common mutex/spinlock for shared locks.

No it's not.

> But I think about another option: the driver implementing the trylock =

> ops may offer such protection. This is the case if the driver returns =

> "busy" if the lock is already taken, not only by the remote processor, =

> but also by the local host.
> =


I think it's typical for hwspinlock hardware to not be able to
distinguish between different clients within Linux, so we would need to
wrap the usage in some construct that ensures mutual exclusion in Linux
- like a spinlock...

> So what do you think about adding such a documentation note :
> "Caution : the HWLOCK_RAW / HWLOCK_IN_ATOMIC modes shall not be used =

> with shared locks unless the hwspinlock driver supports local lock =

> protection"
> =


But having local lock protection in the hwspinlock driver would defeat
the purpose of HWLOCK_RAW.

Also this kind of warning will at best be consumed by the client driver
authors, it will not be read by the dts authors.

Regards,
Bjorn

> Optionally, we may add a "local_lock_protection" flag in the =

> hwspinlock_device struct, set by the driver before it calls =

> hwspin_lock_register().
> This flag can then be checked by hwspinlock core to allow/deny use of =

> shared locks in the raw/atomic modes.
> =

> Let me know what you think about it.
> =

> BR
> =

> Fabien
> =

> >
> > regards
> > Suman
> >
> >>
> >>
> >>>>> If you are sharing a hwlock on the Linux side, surely your driver s=
hould
> >>>>> be aware that it is a shared lock. The tag can be set during the fi=
rst
> >>>>> request API, and you look through both tags when giving out a handl=
e.
> >>>>>
> >>>> Why would the driver need to know about it?
> >>> Just the semantics if we were to support single user vs multiple users
> >>> on Linux-side to even get a handle. Your point is that this may be mo=
ot
> >>> since we have protection anyway other than the raw cases. But we need=
 to
> >>> be able to have the same API work across all cases.
> >>>
> >>> So far, it had mostly been that there would be one user on Linux
> >>> competing with other equivalent peer entities on different processors.
> >>> It is not common to have multiple users since these protection schemes
> >>> are usually needed only at the lowest levels of a stack, so the
> >>> exclusive handle stuff had been sufficient.
> >>>
> >>>>> Obviously, the hwspin_lock_request() API usage semantics always had=
 the
> >>>>> implied additional need for communicating the lock id to the other =
peer
> >>>>> entity, so a realistic usage is most always the specific API varian=
t. I
> >>>>> doubt this API would be of much use for the shared driver usage. Th=
is
> >>>>> also implies that the client user does not care about specifying a =
lock
> >>>>> in DT.
> >>>>>
> >>>> Afaict if the lock are shared then there shouldn't be a problem with
> >>>> some clients using the request API and others request_specific(). As=
 any
> >>>> collisions would simply mean that there are more contention on the l=
ock.
> >>>>
> >>>> With the current exclusive model that is not possible and the succes=
s of
> >>>> the request_specific will depend on probe order.
> >>>>
> >>>> But perhaps it should be explicitly prohibited to use both APIs on t=
he
> >>>> same hwspinlock instance?
> >>> Yeah, they are meant to be complimentary usage, though I doubt we will
> >>> ever have any realistic users for the generic API if we haven't had a
> >>> usage so far. I had posted a concept of reserved locks long back [1] =
to
> >>> keep away certain locks from the generic requestor, but dropped it si=
nce
> >>> we did not have an actual use-case needing it.
> >>>
> >>> regards
> >>> Suman
> >>>
> >>> [1] https://lwn.net/Articles/611944/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
