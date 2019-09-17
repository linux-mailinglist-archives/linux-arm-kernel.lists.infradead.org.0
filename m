Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A73B564A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 21:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUrYUv5AYzk2slCqPDqi8eX5rWEV6IHv7SMNJV4lfuo=; b=iXdGHaWS51sslP
	qBdwUaFkXuwD6lIecq2VJZQM/GOb9iA9ptPghMgcr2qX+McoDQLj38MaxSHI86QYMF70n3dclzRKi
	RP4vHZNHTCLX3DwwMyVVnDgrtkH2tqnlzpdkw9txjJ/a6kmjq8gKTX2iLUX0PElKW7+tvnsIeXcLg
	AdgrzS5I0VEtvbZGO7g/PEGNo6cVhhoPxKlva7CxlxA7H6UOy2SX8tvT1V/Pc1ONjG5R/zyG7b5Sg
	zxbWoHg2UAAS/7l3Pm2KTCEbRU8Es7JU5Ev5yst/5UrX6eU4Sc1L3PK3nR/pFfryD5k5czbddBeGU
	wJnGS4KjyEbAnzcYN9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJII-0000hV-ET; Tue, 17 Sep 2019 19:37:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJHu-0000h7-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 19:37:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id a1so10486714ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 12:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GzfOeM4YXNaVVug/Y9rP6TNjAdcpLeqrMGeWr12jW0I=;
 b=hy4k0YX9Sei1qtTc24MBS5tkfywUQM21yOn/s8yTtxIjcXW2VsWE+oz0lQZtylL4tq
 r4YGSTFoCR86rP7Bd0FUL3U8vXkjaCvM5Kx/keKoxqkohINRaEwCB/Ki8dgFY0zuOhsU
 BlAxabDqdis4f5+7+VchpavHcfLoemewRsVEsJUHEa2VLMsKlsd9f4OBSDPB1XKrmpMs
 fb6KABUtMOAQhfxjI8dYWpTmWaRf5af1fHztfDq7FRQ85nYzaHUbYNMiPy0F2FKbonk+
 3kQE2lVDSnuqlUII5iJGGP1KSUbrbhK0xtSM3qw9PmxsMtFL7a1V0FUj7p4JzrQynaTt
 5Buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GzfOeM4YXNaVVug/Y9rP6TNjAdcpLeqrMGeWr12jW0I=;
 b=IhNu9+x5QZYtNBruFNXk1Sk/QjCpl9CThXxI7ODRpdQau21+hDQiu49RbEu5iIJoRs
 Dhgoxve45wGTLOGEcFbPrxBS50/5EKkD4Uhu/A/JFzO+fSN9PTVl1mWhqWQriFOHUaNV
 VxgZgy+TKukPV/rF70Jpt/Pt9gwRrBpn+s4VsdRO2bZBX+OJ6jJXyDQ7CkppC0vy4FJU
 vdBujnnyZ+HOME2/HgLUxKBEBQgzUu49c6Vx0tORwy5Z14ZWDOCGvvqdNWuIaC4a5si3
 0shV8bKXr0DB8+wmJYhAl2BKW7weNBHoaWbWC0bX5VInJD6maxSf6uuDTxh4G1wQoBDa
 7pXg==
X-Gm-Message-State: APjAAAVzPNyQe3mc6CcGK0FP4lnxo/QVDnTagZJaXCXcgnnUkL3qlsEl
 Ti9ceGV9dh25G04LuRvENqWpLCxnivBxGuxzLuFaWg==
X-Google-Smtp-Source: APXvYqw0e0EFP8ROiwN4xfGdJ9tZBKB7V+WNcs9YTPwyEvUGBNKi/5NnjKvoxZM9PZbNrJ20S6rhUdURAVzLk4J/luc=
X-Received: by 2002:a05:6638:73d:: with SMTP id
 j29mr163533jad.21.1568749041507; 
 Tue, 17 Sep 2019 12:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190913115312.12943-1-andrew.murray@arm.com>
In-Reply-To: <20190913115312.12943-1-andrew.murray@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 17 Sep 2019 13:37:10 -0600
Message-ID: <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_123723_025391_4AA1E66E 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, 13 Sep 2019 at 05:53, Andrew Murray <andrew.murray@arm.com> wrote:

[...]

>
> Andrew Murray (3):
>   coresight: etm4x: save/restore state across CPU low power states
>   dt-bindings: arm: coresight: Add support for
>     coresight-loses-context-with-cpu

I have picked-up patches 1 and 2.  As per the conversation we had in
Cambridge where we kept finding ways to break things when dealing with
an external agent, I have not applied the 3 patch.

Thanks,
Mathieu

>   coresight: etm4x: save/restore state for external agents
>
>  .../devicetree/bindings/arm/coresight.txt     |   9 +
>  drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
>  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
>  drivers/hwtracing/coresight/coresight.c       |   8 +-
>  include/linux/coresight.h                     |  13 +
>  5 files changed, 443 insertions(+), 2 deletions(-)
>
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
