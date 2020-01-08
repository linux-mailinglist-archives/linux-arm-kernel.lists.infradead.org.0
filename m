Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22883133EC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ge15nQr3EAXYfDRmtOS1BfQg6IK+YfyNK+5yGAF0Jas=; b=GGkuh6nXCPsEPB
	AScdqsmfjKY11UWTfBSnM1GSCmYys8YzN5rNLQ76vR+2i03EcZpOpTAXzeULgL6jtD/SLVbbQs6LX
	4bt9Jr3EnphhFEpikxpLjBYgDkAq56rpiG3pAX1UH+ZKh7KwQGzBH/aHn0qxHAzp2HoqPHQRRDJSS
	lNARSvMoO/GBNduAYO5E2lDcXMCgWqy6TJ4wGu3kHaLHdnrTifSY4X0YdUd0cPxopCv470hu7OLQe
	LAdmaJc6OGXH7igAO/zhbC/G0x7FKaOw6+HJwb/2tNPyfLJ/An0NT1yHC7ITa4/+vG7hoTZzfivZk
	edBZkXmj4bRudAOgSMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip86v-0007XY-V1; Wed, 08 Jan 2020 09:58:45 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip86i-0007Vg-TD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:58:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so2486002ioi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 01:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QAtR7WNLGbja1kZFYbC1LM6r/2gOOz73oNIxwZf1sK8=;
 b=LGhwTuIZMsvckUaUhJ+tDGp6Y0jn0LYn/xbxleZUSDMkTwotTTy+1Fg5ZHuiCgbnuW
 ABixaa78LQAMQqSXxlOdTlfDx+n2+WrJQM9cCO+dERP4pTnItxTE5IlWAuVhshqD5D0f
 0ZiCF95TJ+fR3w2e37nT74ePbWYE2y6TFcorU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QAtR7WNLGbja1kZFYbC1LM6r/2gOOz73oNIxwZf1sK8=;
 b=BtMA4LBD4rZ8dni5k8w4SIy08OkN3vpky64UKMpJLU7+iJ5Aa+tDQnYO/KK3R1VBvz
 7cICpt76h1eFB4ic+KOlxSpE5ZooFu+VFDFSY7dRIXr13I4eVS47iCPl22Ejpj0MT1RO
 4KN0FcJz2HrIUWMgDEExmkEOJjK6Ent+LBUyaM/7irhywV2IoEKpucOBbFcfj0+YbUk9
 t0Au/Wn+qMndBjZ46d90FN6wPd16ALF5DiUUlVnEM6nrrLB56qNmROyyk3b6twPOBG6n
 qJS76wlQh/PgmyXkiroFDehI1WL0VsBe4U5biYpqwBi0BPF4GStCZWUOVPUYQch5rj7D
 /QGg==
X-Gm-Message-State: APjAAAWIcFlJeX/LjxdCp2pNbXxzte+K4apnFifEI9MpEAzbImH5BLgk
 V3GKW3E3wLUtOpMqyeeRP6xomIM86vovmy2k05AsGw==
X-Google-Smtp-Source: APXvYqwH5rufYzM9JfRPQjj7bRhJ6sm9RgJQyx7qvhgpJjalHtt1/UbVPcBLfTvCu23laYbDf4TKavfcetdwMpGEoRY=
X-Received: by 2002:a6b:3845:: with SMTP id f66mr2819729ioa.102.1578477511547; 
 Wed, 08 Jan 2020 01:58:31 -0800 (PST)
MIME-Version: 1.0
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-7-michael.kao@mediatek.com>
In-Reply-To: <20200103064407.19861-7-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 8 Jan 2020 17:58:05 +0800
Message-ID: <CAJMQK-hQ5BWp7isGDTz_Y4ttxfoM0guqfcAEFrh3Eq7SMcNM5w@mail.gmail.com>
Subject: Re: [PATCH v3,
 6/8] thermal: mediatek: mt8183: fix bank number settings
To: Michael Kao <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_015832_968777_21521C2E 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 2:44 PM Michael Kao <michael.kao@mediatek.com> wrote:
>
> MT8183_NUM_ZONES should be set to 1
> because MT8183 doesn't have multiple banks.
>
> Fixes: a4ffe6b52d27 ("thermal: mediatek: add support for MT8183")
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
