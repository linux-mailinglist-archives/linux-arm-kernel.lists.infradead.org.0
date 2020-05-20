Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B141DA871
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug3j7q71YT9oBQVQRn0v8qOYOjLZ9ukOz5tvPKZRYgE=; b=RDQCVlX36e4N9C
	tAg6UyT0nBjr1Vq8Bwke/LHKAUDHlX0V+l/SuXW8hPlVjXNXU1SGfHr0GzNzIFsInq4ZWK5nqo59r
	kx8tO4bQlsyXF3kLk6bZxLFvdt8sFFgyj6l3EVOM5deVRyeSoViG24OXVUiFE3AijXiModkJWHVsA
	ODiK3ElCAAzfTYtBg495Q2WMo+IP38P2TTmDymSX8ThHfmIajIvEFLapcLOs3HjO/gP+ZQ4n2oTKH
	nsz8Hr2Gg24s+kSqt3N8YJLpmjG7eyiGzCudFi0wwpcVgNqk2urzAAxuioe7AIsDerc08IzMOFROO
	md+uAjRG9+QIjk/FxW9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbF2t-0004Id-7k; Wed, 20 May 2020 03:05:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbF2j-0004II-P0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 03:05:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id g4so1946333ljl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 20:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HoeSq/8pPr91BzAJhNOgffpepxPbgET+ZXok/fBudck=;
 b=gXWaUVl9AECOIaCl0Fcc+xIuo4vo2rEIF5DT5q2sv+aXAEEHz28fli9wQX7i4ZL0vd
 OTMHmhNz8TAFAW+eEa4bcvhbiIu5W4TKrw/tR8wq4t6xZR6Ed2hk+0PNmkujpnyDWgvc
 s7tPAX538te6tQJPButCPQupE1SOrMPA/IVar+zT+v5TIELfDPahdw4HGt8fdOeVrY0J
 i2LbrOe9t80DtGsd00VNOZshUUf2oNbffcVgAzIrNwv2ZnsFdYSy5fOnGSuVECXxNRbs
 10VLvYUYyRv5pXPhGbClPwhJc8VvC7G2u30dXXZh2SByvRn1fWehU7xco2tsGt7/dpXo
 sAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HoeSq/8pPr91BzAJhNOgffpepxPbgET+ZXok/fBudck=;
 b=Fr9sS69aaYeHpYZvcmRggPxDiBMq0VzpLoaQqnW8QuloPVDPT8s6rC/rM7E6fSvrnL
 Xzv1KqzqKHrSAavbd11oWkRsOom0liy9XdDqV4g09lIeed8avnEPP7rDtVhrEUdTO85u
 UqidDZYSXoh9tSPdIvdeDJXi6lR0rLBUvnFhkb+XXJw+a03DQs3CHTF4SSa26Ysm6jE2
 xejHq5wHU8Dqy+Jfs9VqUSR8QQYcu6Z1/j77QlP3SS2FuM+JI/CqEwmfp01v31gE9Bvu
 QTJ5UeLSoyC9CqbsgKw1EwRXpkd8UHUg5kfxfj4+FbfgDmiNm5XmDjKnM3q4Q8ZhcqyG
 R6lg==
X-Gm-Message-State: AOAM5304zXSFkojxibIeE+zQdbVR0vWCXbPR62mJGmlyaby1dvhSL7nP
 fBIlsHCQcSrksr7taahhAfbPgK48GK69jCUHm44=
X-Google-Smtp-Source: ABdhPJxUgi5dbYAyeOHZlGuF5KVl0KkfJn5CPaaSvjLesR7QA9yJpSBV50lArSyjN0Eg4earSj4hHAa4IsUApfKwREg=
X-Received: by 2002:a2e:920e:: with SMTP id k14mr1474641ljg.288.1589943916318; 
 Tue, 19 May 2020 20:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
 <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
 <DB6PR0402MB27602682E90E4CED55244BCC88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB27602682E90E4CED55244BCC88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 20 May 2020 00:06:36 -0300
Message-ID: <CAOMZO5DmiQbfJjTLKPiv6uUNaQ8ae-0h7uOpPf2J9ZMwDoE+Eg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: imx8mp: add mu node
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_200517_831459_1B184B54 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, May 20, 2020 at 12:01 AM Peng Fan <peng.fan@nxp.com> wrote:

> Nothing specific in i.MX8MP for the mu part, so do we really need
> add "fsl,imx8mp-mu"?

It is good practice to add a more specific option.

Let's say in future a bug is found that affects imx8mp MU, then you
could fix the MU driver and keep the dtb compatibility.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
