Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941649EC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YalUlmLLBWyYS5gRpsYJIlG0iRtqIbld5iibKlIqw0=; b=toeQadywkYUWI8
	bBknLxQ7iGHh8DstKTMDyR+yXIpRIw1tVzgbuoj8S3zeA9vNUnmmYd79AYjyBky3REtBYPYbTLyHX
	+YzGXmoCrwZtLP/ztpFkgh4nHFizJAE/n04xfB1G7CcOJVjLIlQiC7EYpErl5KGavTBc4m7XYJZNT
	VHysg1ekECRoz6XCbkUvXNx0wSR6xTJeMlX0n5B8fHhPIDei+aM+WEDI0Yv9v0R5F+yKRiDMGpWK0
	HemBlgi3xOzBDtVygQ6FoQ9ewbo8uFubAOaceQKlQkOWHrUll296aW4EjSSvxiSEr8yv6U8UQiwiW
	gI83Bc6S9tEd9qdbguuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBpw-0004sq-DV; Tue, 18 Jun 2019 10:59:36 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBpk-0004sR-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:59:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id n5so28687113ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wDeuVf27dsWWQyi/G9Z1cR/nnFqjHy2XRRgIkWDwa+w=;
 b=T1wUG2r/CYW88UkEOUiQ7rn3R1tausZPc1kdqBEQIfxIQ9SSbgVOaTVYT/BDN6Z0Am
 hYXDY1Zib0Da5pwz+bxOXhsIs1AC7/iyzbrD6oihoif/2Rnd+FaZFJQYpHF1VLgYpKXo
 O6tD8pDILAHb9l68gGlzhLCUoZsRZY4jOGlPY/Rn2nMREMwL1N+U2BidEBPQUNfXWUYz
 2NkneM3j9QBpX2/lr9Rzjo9cX1ohCBkXmbjI8Vb0X8uNy0cTN4e8NwQedi7v+OHHRoZL
 4sBXCMpNc3bqtjIMZ22yHkjrRzfMvvcVrzyQc5JTtmBsGspb8vHTNwY1Yq5c0W7aSHhz
 223Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wDeuVf27dsWWQyi/G9Z1cR/nnFqjHy2XRRgIkWDwa+w=;
 b=JS9XGrEjSO8DXFlFFGO3RQ0kqJGOeY34+xSwtarum94Cm+dDTGfaMjh8ot4WJcGXwA
 ij5rAhaPUJhOa63BoYMv5Nr5E8y4IiKtpiGFk8MAH1d6N3RVP7jcqNrwJbD9J9IQ6I0B
 /9fojFK1/4220PMCoitAdOQJhA7eyWVc7xNx3pZm+8t/3OZSiArJLkihTCFeqDu4AVyZ
 gbYp+oNrg3qwOOl6aJCDwjCoo/Xc4J6dZTaTSWnUK8e4z4nDVOcoXh7Nk4hn9CmNn0uw
 WrU4PnPO5ZU2DtPJHSxXsW95kZFCW+vxQN8gt7vFTzVOOHMny8Aiw2UVVmjGLhLOmP77
 9uXg==
X-Gm-Message-State: APjAAAVGi/PPGfu8FQHScujBwZroS0i2KFLX+ro/DuyYVR7eNEPxP0Ja
 +1sYE8xC7nyq93pGrk1GRbTteb7Q2edJ4mBgLtB4Ww==
X-Google-Smtp-Source: APXvYqygUc9NtkUKqHAZsrJLDcE1z7TbO5n2M0BkA4Kg2xoRZpQqn8fUKR360iFU7smgRnci3PL6o8QOmteT2MwzdH8=
X-Received: by 2002:a6b:9257:: with SMTP id u84mr2859483iod.278.1560855563794; 
 Tue, 18 Jun 2019 03:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190617123352.742876-1-arnd@arndb.de>
In-Reply-To: <20190617123352.742876-1-arnd@arndb.de>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 18 Jun 2019 11:59:12 +0100
Message-ID: <CAOesGMjEwQw05g7ARDddQNgfnuk9yUXkmVz7BTOEe8FKknSL4A@mail.gmail.com>
Subject: Re: [PATCH] firmware: trusted_foundations: add ARMv7 dependency
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_035924_497542_D200A024 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thierry Reding <treding@nvidia.com>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 1:34 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The "+sec" extension is invalid for older ARM architectures, but
> the code can now be built on any ARM configuration:
>
> /tmp/trusted_foundations-2d0882.s: Assembler messages:
> /tmp/trusted_foundations-2d0882.s:194: Error: architectural extension `sec' is not allowed for the current base architecture
> /tmp/trusted_foundations-2d0882.s:201: Error: selected processor does not support `smc #0' in ARM mode
> /tmp/trusted_foundations-2d0882.s:213: Error: architectural extension `sec' is not allowed for the current base architecture
> /tmp/trusted_foundations-2d0882.s:220: Error: selected processor does not support `smc #0' in ARM mode
>
> Add a dependency on ARMv7 for the build.
>
> Fixes: 4cb5d9eca143 ("firmware: Move Trusted Foundations support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
