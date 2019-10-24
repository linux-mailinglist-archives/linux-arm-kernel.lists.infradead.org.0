Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B0FE37CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwquWNvqagudy+zcInzkNuaGodtICU+jg9+Oe7Qnnjw=; b=KnXTFXtttir/eN
	mwuXlhuAuimAPQuZi9kRFkUvD6w+Bnj+wiT3F7PgHTrtCx7Z/2uzUMJOrDPOu1loi72wHQegWOIxC
	iePpXtTM//6lOymwN6s6UPe86D2gW7pE8+/WEHkU2ZtKwbQ+QiLSMu9r0rvGLlgh2oKvH2qKnazEr
	t54pw71Sr39AdgLP82SQc1tat5FdR1v6Ahs42MxOzQs7flvHazyU9pBidbAQNASHrgUE8YcwWAAnR
	NXYqg9NlLzEQOLxDhIVKEqeEHPBd5qsR4dn2AJ1aA1ppiMj2g8knoBbjsQZXscvAur0VFid1XkoPq
	8clCRrji08Uaz1QWiEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfuK-0006HT-CE; Thu, 24 Oct 2019 16:24:16 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfu9-0006Ga-0H
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:24:06 +0000
Received: by mail-ua1-x943.google.com with SMTP id n2so7328171ual.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a1anzqH1b5gzyZ3/d3q3kK38QkzN8HcncYb5zfSj0BQ=;
 b=E/q0K3696VpElrs2lpW8Q2s+GBHRhjRLGtFdCkxyHnAGVL1bRWQFwNrRb4kgVH/cyx
 afI3Ee1718yQo/k85rEzWO95aChy00LdxwV9EC3rtTs/dzkI11Jo8ovoossW+rZYfiSP
 Obe+KnX2k2n2nTwkOP///OvJCHTHFMKGzu/wK4e9jgHMyEO5bO0SFZZSAiO6QdsxqIDL
 yp5LglQMiOqOw0Yg0r+4GCeNbCWwZDsL0k9+c1IicVRBSHu1hkfECSu6q53VV0pK3p9a
 IbO8nQv7m8JnK+m3MvoR4OAOFrowCWKARS9/Oyz8P07H/p+uJrm4ScwzG3X8hzL3gHPZ
 qRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a1anzqH1b5gzyZ3/d3q3kK38QkzN8HcncYb5zfSj0BQ=;
 b=DtKjBLHsrhl64tdo5ztji84Fpvkmf7j2k+AqT+phgLWPAmgT0vu1zvcBzCT9san9nL
 /e2vQcVXJYDLOqopZvhz7d+sI+kTO14LPspynd6jzg50LTrb2wPKUdotFl7aRun3Rd8Y
 y+ktlzWTVen/HADPAKx/3D3XzVmLTlAsa4y2P2WvPS6CkyQIrV5hryZAbhtdNjzU7EeV
 WP6GYmnnfaMb0O2ApbzWbXEuHXg/nRfJ0WeY+O7wYEs+VRf18xneGdEW3qqt8cIDv9S4
 hYoBBtd8+Iy1QnbSKYqzTYKyzU2yfYYC9YK/lAaaedmphgJeTZcuD0JStgMfvaqtIbJw
 mCow==
X-Gm-Message-State: APjAAAX5mmFOKFcCQABj4LfuHu0XvedqMNw6JQOp+LTjaJUJbREeUg4j
 EKAZ27FU94AZgw3TCcl6QLnQBHeX4Q/moDAjqk7NUA==
X-Google-Smtp-Source: APXvYqyySL3xB/zgWf4uqU7Y5C8r4SvbrDVRO0QvG+k7GvkFZfc7dHw3X1con5tjqeOm2Zd1Ri21l6bd+BN2rpEbFmk=
X-Received: by 2002:ab0:348c:: with SMTP id c12mr9355249uar.100.1571934241763; 
 Thu, 24 Oct 2019 09:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-3-ulf.hansson@linaro.org> <20191024152504.GA11467@bogus>
In-Reply-To: <20191024152504.GA11467@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 18:23:25 +0200
Message-ID: <CAPDyKFroHhRGN6k+eDCMooZ+Wv0AC6R4JzLKcVWHzs6M64o4+w@mail.gmail.com>
Subject: Re: [PATCH 02/13] dt: psci: Update DT bindings to support
 hierarchical PSCI states
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_092405_048424_FD51601D 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 at 17:26, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:26PM +0200, Ulf Hansson wrote:
> > Update PSCI DT bindings to allow to represent idle states for CPUs and the
> > CPU topology, by using a hierarchical layout. Primarily this is done by
> > re-using the existing power domain description [1] and the domain idle
> > state description [2].
> >
> > Let's also take the opportunity to update the examples to clarify the
> > difference between the currently supported flattened layout vs the new
> > hierarchical layout.
> >
>
> This looks fine to me. FWIW:
>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>
> But before this gets merged, I would like to add another but "the golden"
> example Qcom *always* referred during ACPI LPI discussions. Ofcourse, it
> can be addition patch and if I get time, I can write this but no promise
> ATM.

I like the description below, thanks for clarifying that.

Although, as you say, we can for sure add it on top. As a matter of
fact, I think that is even the best way forward, as currently we can't
support it (because of limitations in genpd, that I have started
working on a bit).

>
> Hierarchical Representation:
> System
> 1. SYSTEM_RET
> 2. SYSTEM_PG
>
>         Cluster#0
>         1. CLUSTER_RET
>         2. CLUSTER_PG
>
>                 Core#0
>                 1. CORE_CG
>                 2. CORE_RET
>                 3. CORE_PG
>
>                 Core#1
>                 1. CORE_CG
>                 2. CORE_RET
>                 3. CORE_PG
>         Cluster#1 (ditto)
>
> Flattened Representation:
>
> Core#0
>         1 CORE_CG
>         2 CORE_RET
>         3 CORE_RET + CLUSTER_RET
>         4 CORE_RET + CLUSTER_RET + SYSTEM_RET
>         5 CORE_PG
>         6 CORE_PG  + CLUSTER_RET
>         7 CORE_PG  + CLUSTER_RET + SYSTEM_RET
>         8 CORE_PG  + CLUSTER_PG
>         9 CORE_PG  + CLUSTER_PG  + SYSTEM_RET
>        10 CORE_PG  + CLUSTER_PG  + SYSTEM_PG
>
> Though we may not implement everything needed to support this, but
> we must ensure we don't have to end up in a situation breaking backward
> compatibility trying to support the same.

Yep, right. I don't see any issue in regards to backward compatibility
to support this above.

Thanks for reviewing!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
