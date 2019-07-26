Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177E8763B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrY+AUtJp0MpknTOalO5O8Zubsqvg+ip6Z4/fWwhsfg=; b=BM/TLwMenFtvzz
	nENgz/u+nFWtbYNgskjzXRd1Ik8bD+hbGybWOVNrTD0MwJzhUESZJ8ssE3TpWDBvtvR56FoFW56nv
	6lKrXxrMIUickyzq+r/ni2KhYZF8klJbplBeX2KHbWoQX4MckAxnAKX7LtneRDZxm8PTNSc3i0aIb
	71CXwSny92BoNQh6v11CmKCremfNCfWmSJ6ZbHLmGJluf9FxOsMkLoZ970zm4L2t5+Bq02JRTnk0z
	I2TM4tpY5Robs6C+dy6q2ajkLtUi6pXJVpOVyxQqBcSirji/f0j8FvHEBRjQQfF47wLHpRY/mnB30
	hiZ1Tl3I33N31o9cluVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxeT-0001JW-Me; Fri, 26 Jul 2019 10:40:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxeI-0001IQ-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:40:32 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2006222CBD
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564137630;
 bh=rlMZw2kIjWSFQx2N6qrELfQmvs5bz98mWHdZxYeII18=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=d1JqT0eqtxipes4AUqhv40yTdtEMTEUbTTc9JG+qRYudalV0vr6kWIX7fUru/vEUl
 CgwC3sv1uciSIzjdAh7bjQa/dXeChkknse8K4GsFyYbcgZDMmr6wtgU95hbbIpvniZ
 2cLGBBFtYvaS+J+DvQUoISpaRDuX5uC/nC+5iWcM=
Received: by mail-lf1-f52.google.com with SMTP id s19so36756321lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:40:30 -0700 (PDT)
X-Gm-Message-State: APjAAAVm4vOFCo8MPioi14oIz04YJr831aNOUM35lH5tuUMqsWFyTE9D
 AhpGKf5kz8o0SXncqk60uqmOAbSPGy3DU6lCEDo=
X-Google-Smtp-Source: APXvYqzjsH7Dck8+dURTU0a/Aa4ududDaH9IccjOo1/JFsFpeyAQjn7Bf/bgmHvrPrfOyZfZUlOzw10vo43Fu6uJCro=
X-Received: by 2002:ac2:5601:: with SMTP id v1mr3307047lfd.106.1564137628324; 
 Fri, 26 Jul 2019 03:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
 <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
 <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
 <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
 <DBBPR08MB46788EBBB3BF3BB8C54FAD1283C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB46788EBBB3BF3BB8C54FAD1283C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 26 Jul 2019 12:40:17 +0200
X-Gmail-Original-Message-ID: <CAJKOXPevC8GN=te7ub5Voq=dfn2HgJBbb=niVdD-gtWDUsq3Ow@mail.gmail.com>
Message-ID: <CAJKOXPevC8GN=te7ub5Voq=dfn2HgJBbb=niVdD-gtWDUsq3Ow@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
To: Guillaume Gardet <Guillaume.Gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_034030_879873_79653938 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 at 14:37, Guillaume Gardet <Guillaume.Gardet@arm.com> wrote:
> > No, regulator is not provided. On all Exynos boards Mali uses its own dedicated
> > regulator (and sometimes additional one). It worked in your case because the
> > regulator was set as always-on but this is a workaround for lack of consumers.
> > Once there is a consumer, the regulator should not be always-on to save the
> > energy when not used.
>
> I do not have the required info here. Do you have it, or could I skip the mali-supply for now?

You can guess from regulator name :)
For the Arndale, the schematics are saying it is buck4.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
