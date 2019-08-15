Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7BE8EBB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nNQPVOIzpcxf32RDq6XuDG7tyHGvpBpYF7Whs0h9Qg=; b=KfyCIqQiZGym+K
	gSpJ/8LWLQRXHseBaUgrjVTP3jU0uPTel/aLar8q75SGLiB11dVRhKRkgCHYQBRSisV17P/2NLjCd
	+ezddqKZXZYFRQhV+qozh0Vgr8pCzfjEGk4v5W+hivpdBwEdkpcH4SqBp4P241C/+5F8Nt07oJ21u
	bM0pUZIh0mb9GyMhTLw9aTMy+5j+/WIMaatFNkAX6pBFd2RnyC4lu1uDfxDHYVlCTSl+LCmjxdBKg
	zVlrSEQThrIEasePWkCUySGc2S4SE+ghU2wgwLVmfB0ANlSMKFB77lKwa3N7Q8dJN9juC8qVkf0Na
	BDBsAWMKxhLnvidd6TWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF3x-0007r9-Dv; Thu, 15 Aug 2019 12:41:05 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF3Z-0007ms-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:40:43 +0000
Received: by mail-qt1-f193.google.com with SMTP id b11so2108725qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EJvDG/yXOvWs0d2Z6BDoLfF8J3ou8JkzkYlxcP/RHOU=;
 b=lGEgOszjsBBZrTcP/zR/KGderYN3zJWR/FWuSaCTgoG62dYOuB4W53XluZRXxQJwWh
 JBVhU9v3EChPPCeB2txQb/ay5aE2mtBWnqvjG+n45KRcmrabkFx35mKjl/MEV1HPKmfX
 HVBOGr1ap8t56kwNHg6ZLymtFeA8CukPi37apegMUQGdXrxAzYrwaWBZQnoLHNciYp9O
 yJ7EoGYXgUuB7pleqXoBd+copkZViMSqrbGJRa4yP1FI3SWXozvmo7cDa2sK0jhie0Wz
 +cF2KbhwoSEuEVpPV9Xekk3FCIxWPpEQ5dtxgtaJiG/72kNOIypHn8haJ59D4vNk3xit
 CaoQ==
X-Gm-Message-State: APjAAAXcqmQQ2fMmfl9XhqjDwSzGqU41I1Y56KMt4q2+3vLUVsjyLh4e
 6u71N0+iwkMvnkTEAAjV/iELdx0V2InZiMfS42s=
X-Google-Smtp-Source: APXvYqyMA/gBcLE0dGZzW88/mI9s/lnFLgTPLnjLUCLam8ylDOAE9y+7uzS2FpN7YYx0gvJTkKYNKlpFk0ABgcsPXtw=
X-Received: by 2002:ac8:2955:: with SMTP id z21mr3726199qtz.204.1565872840636; 
 Thu, 15 Aug 2019 05:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190814172454.26191-1-sudeep.holla@arm.com>
In-Reply-To: <20190814172454.26191-1-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:40:24 +0200
Message-ID: <CAK8P3a01C0xOPU_0zC4aoJFDc1ZPeD28JYa9BPoveqDBK0zx=w@mail.gmail.com>
Subject: Re: [GIT PULL] firmware: arm_scmi: updates for v5.4
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054041_781909_0116063F 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Olof Johansson <olof@lixom.net>, SoC Team <soc@kernel.org>,
 ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 7:25 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Hi ARM SoC Team,
>
> Please pull !
> There are minor changes in clock and hwmon subsystems that are Acked-by
> Stephen Boyd and Guenter Roeck. It also contains a new reset driver that
> is reviewed by Philipp Zabel. Further all these are in -next for a while.

Pulled into arm/drivers, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
