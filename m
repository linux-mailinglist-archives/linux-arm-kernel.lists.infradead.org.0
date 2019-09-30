Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE546C1BC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 08:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46UqKPARAqaliuRFhxVS7SAM5/y7caXfEB0/8lNU1/g=; b=oWAOPHKjEN5Pgh
	4vjQP7Pk+e+OS+CmXBXPfUCA0sQ0+8fqZY71JnmWsC1CVRd/E6D6SdcLV/FF0+E0dNtAm0PwOffBa
	fEHke0zlatb1mVIDArKJy681iBkOLkRrRyrGYZZ430MZKvFjACiWR7H1SdKKOqAxYGZqNTw4kagxX
	1/qlL6mrzvtj56OMo7O+zkk3UWRm3KyJVROzJFuEdJ9LoSqrhEtCNeWbDKAsLfS6v/RKtAenLVOwb
	kwmMJcLz9PaqE61AT4eIdQ5ORHepkBDMoTFQDcN+WlDxccO4cQgOLfg1TmRlgmcu7Jl7GvE6amlms
	iRX+lymFnMYraCmMVHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEpYh-0005EW-En; Mon, 30 Sep 2019 06:53:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEpYW-00056J-Nu
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 06:53:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id l21so8201471lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 23:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yATsTcqOqIzZMV98qWIAPWwEMjMrM8gXIgA2HND81Xc=;
 b=FtkhRbMuAFq9oBu9QY8Qq4PUBi7P8wG9pwBBI5gh9ZFAP1uE5Z8owLiNoz//UjqGYQ
 fQhndMyHQ1hPRQnD6ur2p6trxwMyp46wm3Vcw6Fyrpl81AW00cOdQytunyp/2v8lQemU
 SaOycOu6xeFMyUosNLzTevrP3MKyY/e5X/5NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yATsTcqOqIzZMV98qWIAPWwEMjMrM8gXIgA2HND81Xc=;
 b=SQbWrl+ittt9Mr+0MUAH6M2byTeXRLg3M6B+qX+7ohaxgtaTdZAPbIfa5jP3wlVJXI
 +emWXijGFSRoPq2lmW7gXcq99SZINdRHQ4CVsBX5owcZomGo4ImVDHSQr/3ReU8OZE7S
 9+EoZww8BAWbvOGzFzc34nMn4Vk1eOk6QaDBj8Bb3ykqSky/ZLoSRxhrAS5V3c819mpn
 pcKr6AeXa51m88qzbtcByDwU4rEoT5JYBR0rUkzGqAhoF6J2LJP+RHc/aM3eNSWUgpQc
 wuEzEQfI8aUcy/KCOrwqFYVWrQVQjPMswOska7b3kvOx3HV+A78CpQoVH8pQuAoe1wzF
 SNUw==
X-Gm-Message-State: APjAAAWCmS7BPLHyiw4MnLiBcwV/+fqWYfKyH4V/hXRJA6yTsrMssEn/
 CJlrqiAt0q5ZmbaRB+koz72+PvMeIAid8J7XbHYRWg==
X-Google-Smtp-Source: APXvYqziLiuF94ED9ic8k7xqYKDkQNdzt1q3xAbH4DhKGFt+OHhSfqDtzXLbca2sgZAoi7etyCT/7Lt0hhqj6DqlfRM=
X-Received: by 2002:a2e:1246:: with SMTP id t67mr11165358lje.174.1569826390743; 
 Sun, 29 Sep 2019 23:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <1569472808-15284-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190928181910.GB12219@kunai>
In-Reply-To: <20190928181910.GB12219@kunai>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Mon, 30 Sep 2019 12:22:59 +0530
Message-ID: <CAHO=5PHj1PQUGi3EYBPVNUsRHsEo9WxU6CsvR=9+bP4n6z-cMA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_235312_777995_F55C1A53 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Icarus Chau <icarus.chau@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 11:53 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>
> On Thu, Sep 26, 2019 at 10:10:08AM +0530, Rayagonda Kokatanur wrote:
> > From: Lori Hikichi <lori.hikichi@broadcom.com>
> >
> > Enable handling of i2c repeated start. The current code
> > handles a multi msg i2c transfer as separate i2c bus
> > transactions. This change will now handle this case
> > using the i2c repeated start protocol. The number of msgs
> > in a transfer is limited to two, and must be a write
> > followed by a read.
> >
> > Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> > Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
> > Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> > Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
> > ---
> > changes from v1:
> >  - Address code review comment from Wolfram Sang
>
> No, sorry, this is not a proper changelog. I review so many patches, I
> can't recall what I suggested to do for every patch. Please describe
> what changes you actually made. It is also better when digging through
> mail archives.
>
Sorry for inconvenience, I updated the changelog and resent the patch.
I have kept the patch version as v2 only. Hope that is fine.

Best regards,
Rayagonda

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
