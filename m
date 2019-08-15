Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B268E78A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygREeKz7A17SsKldAEmu2hWEcSFqeOnaxFja9ziejPs=; b=dvHs5NVX6E4qOe
	ges0vVbUNSCQGWPo+kiPwyEYqzb8q9aqn504RKiVH/HeFoYuq3wRsCOTH56T6JwTyKHJ2yVTrlFdH
	pNEnBDL+Njz08ZHYy/XP/ovQay6G+h31TUiaCZzX4YNVhoxB+qWJjE1r22qUyJfuaN4XeBEnOuRUN
	H642LxprAUs9l1ZmjgiA1eHQuLuiZ8Nng5TftWTNhp1zIzrCujf1SYQfWYLflJc9gG283PWrnRNxf
	/7p0X+oGtvqGa6It3kffpqXl1mLUukCRF6r8oacNTT1HAZ7YaxuarJWnkd7Bku4ujvxr+EhB9dh6s
	KMYyR5tM1uH2c1wyUs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBaN-0004BQ-Tp; Thu, 15 Aug 2019 08:58:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBaC-0004Ar-5h
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:58:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13FC528;
 Thu, 15 Aug 2019 01:58:05 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE6D13F706;
 Thu, 15 Aug 2019 01:58:03 -0700 (PDT)
Date: Thu, 15 Aug 2019 09:57:55 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] ARM: vexpress: updates for v5.4
Message-ID: <20190815085755.GA26787@e107155-lin>
References: <20190814172441.26143-1-sudeep.holla@arm.com>
 <CAK8P3a1vUJZd4XfnOBLdrtzuea4Y0VOfg6CY1hnrXfUVnFL+6g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1vUJZd4XfnOBLdrtzuea4Y0VOfg6CY1hnrXfUVnFL+6g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_015808_262418_514E40B3 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Phong Tran <tranmanphong@gmail.com>,
 Liviu Dudau <liviu.dudau@arm.com>, SoC Team <soc@kernel.org>,
 ARM SoC Team <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 09:22:29PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 14, 2019 at 7:24 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > ----------------------------------------------------------------
> > ARMv7 Vexpress update for v5.4
> >
> > Single cleanup patch handling type checks using cppcheck tool
> > (bitwise shift by more than 31 on a 32 bit type)
> >
> > ----------------------------------------------------------------
> > Phong Tran (1):
> >       ARM: vexpress: Cleanup cppcheck shifting warning
> 
> I think this patch by Phong Tran is wrong, so I'm not pulling the branch.
> I'll reply to the patch instead.
>

Ah OK, thanks. Saw some patches of that series in the tree, hence pulled.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
