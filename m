Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A9AA7B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tae4kDza/QoJ9XML/nfYW5eyAhPRTYzlQrF25LEr0fA=; b=UYptTznaRftCT1
	Uhlj/qv3/Qow6L9BTuBW/3QAEBEIiTbVffbodhcOqwLxwHKJzhAGClBFMJaWQawWa1KHP+ZdDWR0V
	fe/yiqFiadAMbNrhafBHrFQtciFbkdYrpSIUsPADM6/BlUtraX5UCcg2mD4Ti/2A7fnfJNJo2IQmN
	IDufMYNLQVzKc83DFccYcFf/UH+Xv27OQkBSmOpuGA2FYT3uh7eiyRlMduYvgApeZYXDQCPooWsMf
	c035jMo+4L9akdb1xYHjzfJj0uet5iEAVDHgljwcgI4eK7EkHTTYAVPZVx8LJxrc+7NfPYa3Bujxh
	kusEZyUjIV5MDLVxNcmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5u3T-0007EX-Il; Thu, 05 Sep 2019 15:52:15 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5u3K-0007Du-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 15:52:07 +0000
Received: by mail-qt1-f196.google.com with SMTP id g13so2947910qtj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 08:52:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hJUoUKMyHFFk9Ggcl9KNkce6XFsFI42bscDZ4mcnBIU=;
 b=Y+a/9CQ62aXM4Ivj5M1DNZ/4WPV3+jVVB6gwHCrQFwEhArNjNAbfAZ2JVWYwORUgbZ
 6E2oZNbHDGu7jjqwTimCWg16kRjqR64wqCbrju9coj6+k6YaBAy4eHqvsVRAl5u94PcX
 UmzwLZxsykTDDpUfipfGvcclY7rsqQ3Jr7EpX61QLbw1vkgB+KVQAMHF64qxndtXmKa7
 kTsWAw2XAtFyvzPHNGpn0CDALGEAonpw5Rd/79qwBxqSpRBtvtEsTpPZwKIg56MZON/N
 /3nqYGVIXBNfbJ8a6SPMGKOt/ROzJ7owcWdOtRjhjFlIHu9mggvVWdqyvvoEEPwHIHs+
 7Dkg==
X-Gm-Message-State: APjAAAWLXc/na8LUXg+bhiwLnCUb9PR11sodMa7qt9nXfvd6En9OxfZ9
 P6MjFSFqV5X3MOoD7jCvIAwT6vKMDOZ+Km11R+Y=
X-Google-Smtp-Source: APXvYqxP0Igsd3rt23FCju+duUZdmf7tF6sOX2UBQ87OlqWc2jWSjzRmUOli5SrBElIAJWm4cJ6/eVS5IahPIguwQ/w=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr4188392qtn.204.1567698725012; 
 Thu, 05 Sep 2019 08:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8Xdp4gVuetmiu2bRTTH6oHhRrC7FELHWKVB2ZGSbPbH7HQ@mail.gmail.com>
In-Reply-To: <CACPK8Xdp4gVuetmiu2bRTTH6oHhRrC7FELHWKVB2ZGSbPbH7HQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 17:51:48 +0200
Message-ID: <CAK8P3a0Vjwgyrw9wZLr1=W85FbvgZ=RADSHoL_JscvELMdF=qw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.4, round two
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_085206_733822_D69653C6 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Jeffery <andrew@aj.id.au>, SoC Team <soc@kernel.org>,
 arm <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 2:43 AM Joel Stanley <joel@jms.id.au> wrote:
>
> Hello ARM maintainers,
>
> Here are some late fixes I collected for the ASPEED boards.
>
> I've thrown the commits on top of the ones in the first pull request, which
> you've merged. I've not sent a second pull before so if that's not the done
> thing then let me know what you prefer.

This is the best way to do it.

> ASPEED device tree updates for 5.4, second round
>
>  - Alternate flash support for Vesnin
>  - Minor cleanups and fixes

Pulled into arm/dt, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
