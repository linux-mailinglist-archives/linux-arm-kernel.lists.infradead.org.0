Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805CD60846
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PTDCqDt7ybWFGtkIafgd4TDC1hkX2vX/pC35uVLt68=; b=RZUi2Z6Fo8Ku3m
	W5r0uelx8mmXmVpEdmqdRBGe74O2K2jY02XUm8sOpGUGio28JOoucAHSx2fnXLXdWTMGwb9PIrTnP
	zi62iFYw2N+aqstkyluV+1yCAk/co1uh/Cr0O4bRAgrCP7rl+5W7Vc53AD5O59a6UDmI/s+nFTUXx
	7GeVZ7BHUwIm5bLLmxTOTe/rEXFhMwA3F91K1JsOXseD2m5NniG9C5OOMF6wNbQzGMqfc23cLQBf2
	y+tRq/LlhweZL4fkeXNJYWhPm15a/0D/emnj6OyAOzFUbyItH90zD3af5R0T/TaVJ+c1yTwoJHgPe
	kbYAKbUx9ln9rZ9MAkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPW3-0003zx-V8; Fri, 05 Jul 2019 14:48:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRu-0006aF-NI
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D5aBgcZX8BM3lrWnJ+kbRYl9+W/2MtbDb5XJ+5mk5o8=; b=KTXO26BpGSFdEXdkXeT+6Vg+L
 /qBFEaguWwyb04Ryju+s0hXhm2LO9AnzuqBuf+adUoWYllq9P2IrtGpkmLCQfIoL45R8Ax824Gdvf
 J5rqDUvWMr2pyoXQZ9NUdrBIwnhqzm/3yw3BAUSKX1o8Y008QxdWxxoZNy9a/BKfdNwCSZc8BsXSV
 of8K72+jG39NwGEqFD6GJ5mswMjX48GPdKwonD6iGymB6sgt0633h6GmgKlTLNFNDKwvvhpSyuShM
 03Msyz3GslogbhtzncIwCIVPb8Xw6JWN3V+dHvKNckyb8xCn/JeeYPS1XQEf3xDgljjq11qrt79Q+
 Lcj4x3iKA==;
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNzX-00026C-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:11:08 +0000
Received: by mail-oi1-x241.google.com with SMTP id l12so7128273oil.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 06:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D5aBgcZX8BM3lrWnJ+kbRYl9+W/2MtbDb5XJ+5mk5o8=;
 b=OewWw3WvArDnn1VafRBRT/VICgzg+jvhtqmojq9/wwo3ca8p+TO1E8ZN1+nqfZm8Uk
 ZhpWVDdTGaUg/Kh7P2lMU/RYpp7fWr+06UWvtqlFvSVqV2yrRz3db6T9LjBsCMspOlML
 ExkH05cgGPqmJgT+y+cfPnN+c6RUNjd3nadMvlxw2/FVgy9eul0ceJFFfIeaorbgIms5
 8Q3R1m+ZYMLGKFeB+UNpihZdVhZwG87drcgunyYcJJme7mP1wrJt+jtJ2jbNDAQ64lB/
 pDxrJrjczVzWvKHm51jlkU63C0Lu9n+R5i0GWcc2eaYQufKYJZgnd7527zOMVa/Ttq2M
 vsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D5aBgcZX8BM3lrWnJ+kbRYl9+W/2MtbDb5XJ+5mk5o8=;
 b=psEG/AGG4CPIyY8XxDoNqmB6H++Lgjo3b5GSakBT5mXCX7VpoGYB+la9l9Car602Kx
 dw2IttDSLqDE5dvKYHa5aCi2dld58AbXt7zx8Xd6rjjjJ8Un0Jq1gsEPcwzOUc/F5gMy
 f+w4Y46aEzaAuYEFRN9odfAaEAORx+dHaAKN7Gc/0DyGuUHvy/XuyA1YU8OJGc5wk+Gr
 8TbKqlR8ipDR1YGzoYfbnKXqzWctNami+HsSk5aXSYQhNPjxAe74a5XxZWINFegzvsE+
 p6/LMxasmm30RxCwCSet5eDtHetr8oeJIsKZM3PGJ1yDw3/5aDYAsu+kw2tF7tMVmdfz
 gVHA==
X-Gm-Message-State: APjAAAWr488ptBhFkDyzFnbQunN8NKyHEedRg3ZRvgH0goqjskDnVq6l
 A0KytCfUep9vbMM1AMN0/Al+PswjLT7gLC7vdFA=
X-Google-Smtp-Source: APXvYqxui889Mq8R7ntAdj+DPEOHSrvmC2KImz0tEUKn6wObFBF7Gej1LLd0cbAtmODQa/QDNY+TjhCj1VCsMQusUEI=
X-Received: by 2002:aca:bb08:: with SMTP id l8mr1835062oif.92.1562332143968;
 Fri, 05 Jul 2019 06:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
 <20190624140731.24080-1-TheSven73@gmail.com>
 <20190705124646.GD2911@vkoul-mobl>
In-Reply-To: <20190705124646.GD2911@vkoul-mobl>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 5 Jul 2019 09:08:53 -0400
Message-ID: <CAGngYiW2+sBv1WqB8+csb=mZm2owziJ5wWcWLNPy7=m72ppypw@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
To: Vinod Koul <vkoul@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

On Fri, Jul 5, 2019 at 8:50 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> there is an else here too!
>

You are of course right, I was looking at the wrong if.

Apologies for the confusion, I did try to look at what you
changed, but your git repo listed in MAINTAINERS appears
unresponsive for me?

Thanks, Sven

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
