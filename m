Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA35BF8DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 20:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smdWDabCfQfBGlzuxSUAJtKMuWMnlt8himBaYShLSxg=; b=JGUH6tJntK2GH4
	ou3/uE7xfYBgCdZHGZYMKVEg3xNYkCLHVCft/SKhpdfDcYclh3931NsTXwJHG7Y9HQEsUL/4AghK+
	ayYBc7GHrriA3QveXiMwkqarI7m965FLzFY3OEvj9kWEztu+naM3V1150iYPsV9fPv6Aaa+iYh01f
	J1QvnlH+2MpggStXC+/Hg5+DOvbLLlZmy/qyyswSHjDjGJau3j1oh7YQrN8DcpWoQgJrma2A4BdU7
	/iqWVH8SrVeJO23ZeEKfc439dAfCLaOQDgXYlhgAwIXCH7XMy6pL6L8fAIlioc1Uy9ZKCeChGRmvj
	QZZG46D04XeCW4w3On3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDYE5-0002J5-Dm; Thu, 26 Sep 2019 18:10:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDYDw-0002IL-Iv
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 18:10:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id u28so2411808lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 11:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=58oAE4FBJrvRDbJC9Z0EK/F0sTVW2LhvzqkiBlcRcx8=;
 b=u8U76DKjRJoT8QCsQV+FPzbekduPDZgnFTln6B26fZz44ZHloyZi9UTQ0fHPQUj/Ue
 ohQAL9LYNvJaf7453XeiAM2FJbop88jKCf7o4tTUYe2yccfTc2+6mLxb6QikGQt/jHOx
 9GdlqiqxFAI3tBWFd9kdukJQqgF8PUShBKEwSisgbyB8SdQjWryFQRL57AmkIaqgrSgn
 etD/9GT0+9mPKJnvRPH7WEN1rdlakfS3UtkwBlMd/EvqPvkPP2H+16kM5sRfByZ7dOUU
 q4+z87r+y6FWA0Ovm8HpizSQlw48AtbvE00/5s8valSjwbplHbhOlTBTdH3+PVQ6kkXK
 ZfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=58oAE4FBJrvRDbJC9Z0EK/F0sTVW2LhvzqkiBlcRcx8=;
 b=ffAb83zunt63QVdOpGu79PGQVoBHIH/22yS3gLLalcll2vjaEYisUBc/VTilcM3GA4
 eAKYJyh+ITmq9P7Js67zMPQG4mey7sf/3WlB8Adr7oLgJ4MV+hW0HEEIGGrcAtZ3pT8j
 32t+sfulTLwHd0AshD0nF1nt/caXliIjihU3FZtKzNGbr38zXDAWkX5S3PaGJLtBVF0d
 OdKGmpVmHaI5IrPraasEYLjpA2CWei2s/SE7G9+t5QKTGcGs/CjL2SVf6y4lTH4ydquE
 CksIn6tlwQS9i0B6dhR7EpHB5E4wntwBm8VduJZJPz1u7X63l7BY3QxSXCHbopyxp8A3
 9ThQ==
X-Gm-Message-State: APjAAAWNk6jjdES6DcLElqx/9gznpIugWug1+2tg/qDPbrn7E61okfg7
 bIKwsSqz12eMNZhu0WrN4av2wlDkDdYoQ/+gkt0=
X-Google-Smtp-Source: APXvYqzubaCnRVu7ayU2jYF8LqYdVO+Sza2X45C+oWz4ZSoRko77F0nvAR95UPKZWe40qIwNje8/fb835ElINZntf1I=
X-Received: by 2002:a19:f11c:: with SMTP id p28mr2982279lfh.44.1569521438172; 
 Thu, 26 Sep 2019 11:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <1556169264-31683-1-git-send-email-Anson.Huang@nxp.com>
 <1556169264-31683-2-git-send-email-Anson.Huang@nxp.com>
 <155623699177.15276.12577395377027956830@swboyd.mtv.corp.google.com>
 <DB3PR0402MB39165F69F8B684D323C683B1F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916F96CD6F3E874204E6972F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916F96CD6F3E874204E6972F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 26 Sep 2019 15:10:48 -0300
Message-ID: <CAOMZO5AweYkXXuBqvw+T_fOttKpbOnekKq5CA2-3a_ag1DwnWg@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: imx: disable i.mx7ulp composite clock during
 initialization
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_111040_652220_0DA96D49 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "gustavo@embeddedor.com" <gustavo@embeddedor.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, Aug 5, 2019 at 11:25 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Stephen
>         I think we should resume this thread, without this patch, mainline kernel boot up will cause mmc timeout all the time. If it is NOT good to disabling those peripheral devices' clock in i.MX7ULP's clock driver, then we have to change the core framework to disable clock explicitly if the CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE is present, most likely it will impact other platforms I think, so the most safe way is just to do it inside our i.MX7ULP composite clock driver. What do you think?

Just tested your patch against 5.3 and mmc card can be detected with it.

Please note that I had to manually add:
#include <linux/io.h>

so that it can build.

I agree we need to come to a solution for this.

Stephen, please let us know your thoughts.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
