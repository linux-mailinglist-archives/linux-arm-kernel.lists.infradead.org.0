Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318C7A8609
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TOG1pwEpMUDJgH32zJvFHuDcFXstd1XctTrOxSQ6HM=; b=UA+cPi9EQ17OTZ
	Ohh3GbMxwK6+AiwfQnDjv+XIiCmBjMSIAsAa4S/0xHGTWKCrNw3DfOBDu9As5oUsc740MTnRJQ8zo
	3bG5bppmQJtbOobAk2p6FSpETIIU6JcVZOvsW3fg7MMl1wpajbLg3vOR250zfiA50EdZ3yOLV4U29
	RHIED+cVNefNIK2QC8ATv1GuL6qAzLER4WKPAYWeQ5d7iQWQMzfwgk6qkWMFAHfP5htYj/DH1NZUq
	J6v01I8cgRC5nieDsp9I6HXAHee9zMdWsgD5th2FGi8NNYom2jswtrXEIff5+8Wwhz0OkNCAQXyIh
	OVmuzCa+9h3PL0OHMFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XBM-0006tI-Pu; Wed, 04 Sep 2019 15:26:52 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XBA-0006sZ-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:26:41 +0000
Received: by mail-qt1-f195.google.com with SMTP id r15so19176801qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DABWG+eaL7f1l3FkKdJb8DYEm6uMRDe9I7ADfmro334=;
 b=ZS040l6DOpoaFnaGY9W/URjzUkVRvZfIAXcWjzFvS2VrRkZPgs2qWWzu835xYg8iYg
 IUQ7QU2HosO53TINsg50MfJzK5/jQVXpcW6EHpJjnQElBziauDJtRn0vXlfBaLLpNUCj
 AdepiDc4YlywfOzKne4hJoAvA7ElU5gWlZ58pL4Tzg21oZCQDPM5FjXHLPE6nAGfiYhk
 xZWq6djrZpfz8qybPmXKAwnsfg4t8RTUk7mezM8tRd5pDm8Lq9+PmoyDFH4Ro0pV15v9
 oNGt01ED2LqQe6qLb7gJYX2cUTcsPAn6K9n8ex0SGzA04z/J+tDbkJtLqcEQCzrA9/WX
 Kz0g==
X-Gm-Message-State: APjAAAUfhlaB7+RJRVVXOl8GefiOk1Siwk44wc4QZC+dponhynt5Dait
 dar3NZ3PNgOpNROmsTWUIQSHB9xKNL/t7bxeqMs=
X-Google-Smtp-Source: APXvYqwZyMKAoyunn/3lv5bd8d4pnIpPJThQ/mKRZx5bTL2Yk9viBbGlJNtSjIv6XKutfivLFx/WQuEZsR6dtCrBUns=
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr25545961qvn.62.1567610796803; 
 Wed, 04 Sep 2019 08:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1566599057-142651@atomide.com>
In-Reply-To: <pull-1566599057-142651@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:26:20 +0200
Message-ID: <CAK8P3a1Hh8nFe7h0Jr7tf_aoarvwr3utD7LrFf9rV_OePL-+Zg@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] ti-sysc driver changes for v5.3
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_082640_186565_E0B12049 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:24 AM Tony Lindgren <tony@atomide.com> wrote:
> Driver changes for ti-sysc for v5.4
>
> Few changes to prepare for using a reset driver for PRM rstctrl mostly
> to deal with the clocks for reset. Then few minor clean-up patches and
> SPDX license identifier changes, and add a MAINTAINERs file entry.

Pulled this one into an arm/late branch, together with the three
other pull requests that depend on this one.

Don't worry about the arm/late name, I expect to send this off
together with the other branches, it's just easier for me to
describe what's in each of the top-level branches this way.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
