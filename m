Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B24E8FA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:03:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3tl8Hb1q5bi3r6BVHHgK6oFS2bQVRCL4SYXk9AyyDI=; b=ja6YytwPcP0N6e
	AlU8GRAXHI0mAgiN3VlZWyIWukxmtc/zYevLIUJJWV/HI+5kKVIUyfYej53Oo8UvrJNeYr7C4hqLM
	dYrVFRDtMu8wedc0H8egiC4oQx35YtFo1wZjFvRGyS2w8etfQuuAxA/oVLL+A6/MVj9fnW2K9HPA3
	/4toS9uqPIsYjulLtEsGw4+crn0ZdBMA8rch0gW1r18zRrExsBY5RWJXlnzEstMg7jl20B/viIkHB
	huc85lgxaa/dVerd6h+hCuG//6xAO4oYnH0CsI+1qjHxZXuskRI4EUAonMgLQlCVwKA1mjMY90YwX
	EO5DLr8oYFjT2zTuLG/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWlh-0003tn-3l; Tue, 29 Oct 2019 19:03:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWlV-0003t7-0w
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:02:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id j5so5008999lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R+5n6HzGqXwqylYQMJuUdb3nBEM9S+F065OE1s2NqT4=;
 b=JWJt/IwbphIEGjhvM8Mkx2Krgta251lsS3ryU+P1KWl5pA4pmnxitipM9KclwTJHNr
 CCEBoAIIi2zFetwMqzDluLM6612o4DgEaJzW+uegkm+a3LfJTpg7tY8H6ZpU5j0pWHMj
 X0lbrt409/7nWB+vCjGkOEFEHA6bE7C4sbQ+F/9NF7/HwGnbSLbBA50XkJT9laFkF0vZ
 dzLQO/SRVbvR2nzvZkDJyAHQOCksFJKTBzSeMvxm+/xSFP97F8H/bBjjtS1eulQocXrC
 Ssw8HMkdrSAjqMUEeAOthNgLV7fGVivELZuu4mt8Uf+yL/Kjk2suTZkipN3iKbonQiVs
 lUbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R+5n6HzGqXwqylYQMJuUdb3nBEM9S+F065OE1s2NqT4=;
 b=R42y1DrBrczJqqd+FfOPu36f74P+eCoZd/TIZtHaF/bnFyt9EtTiYEwegocpIC+odM
 pYOdwcx0nH4mrVBMFID5sMfZNP+0w+08WrTzAqJqLztqKI86vgOk2HW50jblcAF3UnBg
 IAlDPng/A3a2gyNcelYVeX1cbG49g+QxntGzB75CIIVzjyXNYrX4nSlUHr6HUMyaXPz8
 rXalR2y0vha6NSxmNRpGEj4SexfNeQ3yheiy9nGkioUW0+dbBOTMre/F+QumkE6DIa4d
 akkBs1gcUTbn/Pn7MIS7gJ6RHPwyfXYeWphoc6FYihqkqth0QXx3gB35yIqCT5QF1Q5Y
 O3bA==
X-Gm-Message-State: APjAAAX5QoZnjWAJtbAvuuGlFXm4a3JREhCWnj7U2QG69R8Prq8zYZLM
 esGVSUEtrA0hWg5E82nL2efhs8vqagCqdJxjMGM=
X-Google-Smtp-Source: APXvYqxvJAzOcdbgfYPkBxJQAQ0zwhUQS9PZL+lzJrE8mOVv7fJHfsreK8SX3W4pZVAE21BGaOS8HOPd713iJOBucpc=
X-Received: by 2002:a19:4318:: with SMTP id q24mr3415688lfa.12.1572375766538; 
 Tue, 29 Oct 2019 12:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191028140545.10218-1-festevam@gmail.com>
 <20191028142913.GN16985@dragon>
In-Reply-To: <20191028142913.GN16985@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 29 Oct 2019 16:02:49 -0300
Message-ID: <CAOMZO5DcCXA3FExsw5Eo6Ua6VEkbwBu7rA4KCJObHsGb7LYx3w@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx51: Adjust CPU operating points
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_120249_095490_08AD05BD 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Chris Healy <cphealy@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Mon, Oct 28, 2019 at 11:29 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Oct 28, 2019 at 11:05:44AM -0300, Fabio Estevam wrote:
> > Adjust the CPU operating points as per the characterized settings from
> > the vendor BSP at:
> >
> > https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm/mach-mx5/mx51_babbage.c?h=imx_2.6.35_caf#n1343
>
> Does it match what datasheet says?

It matches all operational points from the i.MX53 consumer datasheet.

On i.MX51 I noticed one discrepancy, so I will update it in v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
