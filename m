Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC0844F07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nah8NiGj2E3JmycrFrL4YCNS+dsWA7UzDgA2GYSIehs=; b=kwxiag96nGJs5v
	KPSGxzeCDATPIkbXaZmDusdNsEEFj5o4eb7/I2CG3LlDbA3U0n42SjIgBkYr/NH9M3zQd3y/RiHPy
	ah31J27hGZxT7AO/1dT+te4YyG3cBTcwvScpG+rgaQMG7btZjl42hiaw8wZcNqrh7fRzxcX+rS2Bo
	WDYy8oIu44E50KHJMZgqZftz+lrOY61HQCFg1hOEODKuf5LwcrsvBiyYfH1BSqKHYVcyIM/lce2xI
	HDZC5OTk7eVThaoMjK/+zSaJ8OrQ6ofCRsy9FM4RVYwHcIW7d+5DTJJjzrhxC77U5llkRczkInAOD
	jMqwpJLLNN5kgYmeTJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbY7C-0004MP-Qr; Thu, 13 Jun 2019 22:22:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbY73-0004LO-2b
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:22:30 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AF942173C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 22:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560464547;
 bh=aUOh1WB/1LP+BNnlP5BfMMXx909geouPRraXVggAoTU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sEmaxWaY64co9BX/Lfa7iQLbz/YwUgh+Mdysy2PHe2CwXbHGY9WIJ+ON6p94ghbrz
 bC7eFAAWq6rhaVhmhnuwxqeL8W/2ficUvjsmzPsCfFQe93XVeET97OAo3A+ZQce1WT
 CPliSnZCmSFjpjvzlKNRjKCQ32I5A0HXPckizvrE=
Received: by mail-qt1-f174.google.com with SMTP id i34so286019qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:22:27 -0700 (PDT)
X-Gm-Message-State: APjAAAU/20uZPlOJ4Islm919CjOGXhArWoW9HSOgcvrqNgGbTOjBsijr
 zrqJthvMfpghN/g8mUTMSjfOLUrHeTlkIfSLgA==
X-Google-Smtp-Source: APXvYqxMOtxDSnOaW6bOT/GwjEHw6PAvL0NJEyVCovSXbWc8PH0iLLexi7o+wnJj8fQHMlCDpnrPowRdj9mje1Flre4=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr24461318qth.136.1560464546761; 
 Thu, 13 Jun 2019 15:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190410053728.17374-1-lokeshvutla@ti.com>
 <20190410053728.17374-3-lokeshvutla@ti.com>
 <9fe962b7-0500-6916-1dc3-04db0e11cd4d@ti.com>
 <31dfd9ed-159f-95e7-f5a8-bcf6afec4eaa@ti.com>
In-Reply-To: <31dfd9ed-159f-95e7-f5a8-bcf6afec4eaa@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 16:22:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK9c=1YyJ9Gg0BpzD=fzwoZsVToFMyqJEhk6kHPdcprdw@mail.gmail.com>
Message-ID: <CAL_JsqK9c=1YyJ9Gg0BpzD=fzwoZsVToFMyqJEhk6kHPdcprdw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: ti_sci_pm_domains: Add support for
 exclusive and shared access
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_152229_141571_ED272752 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 6:35 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> On 02/05/2019 12:24, Tero Kristo wrote:
> > On 10/04/2019 08:37, Lokesh Vutla wrote:
> >> TISCI protocol supports for enabling the device either with exclusive
> >> permissions for the requesting host or with sharing across the hosts.
> >> There are certain devices which are exclusive to Linux context and
> >> there are certain devices that are shared across different host contexts.
> >> So add support for getting this information from DT by increasing
> >> the power-domain cells to 2.
> >>
> >> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> >
> > Based on some offline discussions with Rob, I am withdrawing my concerns
> > on this patch, thus:
> >
> > Acked-by: Tero Kristo <t-kristo@ti.com>
> >
> > We would still need ack from Rob though.
>
> Rob? Any chance to get ack on this?

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
