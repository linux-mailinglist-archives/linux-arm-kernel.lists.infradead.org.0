Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77299151BA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h7wqEFZ2C6YUFw564lvGe7v8gkcoW+ufha6v7zXuSk=; b=J0MQz9/6/PdEdr
	hYM+2gZ07zkwQPYWgTom6+yRXN5ObUYX6VuwatUIb5uDNiS+TYQP1cmKYWZAfzj5b6lq9MPnC6usG
	WwpKOTdhRQxU92CmWwtWNJRpFhKWdcrke5XvL8dC+JUhyj1oVACxAbG6yhAO9ZQCl6HYKcO+ZKFjU
	sLTuCfQ5zXOIdpHHtSyS5cGYcn92+SVJ8LUUXMaAp1/QS+xzVp+F4Qf8CouVm6BXkhR05NgWb+Y5y
	6jLLUZucAKsl0n180BlTFCvfnhhbxT2Tmc9dvyPbBBXf7HKDsEUkLf5ijy+Oy9o37Ve+2i9wYTL1u
	YNeAaVtxX14aX/BhcsvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyybP-0002NV-TU; Tue, 04 Feb 2020 13:50:55 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyybK-0002NA-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:50:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so12217530lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 05:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9jLVAcyplvqzHsaCloEAHREkwig8WcGxJ3DAaOOUD3A=;
 b=GcxYe74/idVHZGr0GaeypVm2u2HL/+wZaUIBarQqgv78UGehNvGeO9nQsXManCpMBX
 fDgvAm1QoMCK47vmAtNf/UTARl1eJ2UL81UfRwIbWLlXtqgiMv0dErvjN7o1SzakSwpe
 3KWtUQlhn5zGJeJHw8AR0Xl1CIn4cEQQUBE9Iioma2649hekeOGtjErpydl/S8cYJXvY
 UFUEQmvqssk17dR97GYN8fGIz8YELs4Z9KPsv6uAQ5SzmH8iaB9x4vPdnOsuetI7tcHx
 6myRkTjT/QNtm/ilSvhRfD9KUSEgEOLcc3PThcc9uaWEhPTEJiL5e6pdwGZ3Izm4hgsP
 C+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9jLVAcyplvqzHsaCloEAHREkwig8WcGxJ3DAaOOUD3A=;
 b=T2EWcw2kR6WBpGsj33lanmhX+ytCdfNnWZBg5oQSM/9/AxWxWYMHifWbQL6T3TRLgD
 sTG5vgVIUcwqcH6WBNc7b1/wsmachbKtsNj4HIORDFZ43yzd0MUIRo+NZf2RvtiB6zIY
 JprN3BbJDhRL00+FreIDeOGpeyj4LUMPku3Oo2CZWSLZP8/D7Ihc48OmC38QZSGbc5cy
 tlcYnvfPmXzvvF6FN5lCGpi/ZrY1PnXLanzdcr30K6nnfuEcPdYKiFXknTwsxCvI3/rN
 q5dThD3Q4yg0bYZEJDz9GScxjI9QruaUYMx7/TJDl5G+UgMN/ynCoNNvpDwJczGg+7eV
 C57Q==
X-Gm-Message-State: APjAAAVjLrneNUJngjUAw+BeQOP5eaeOt6xrUHaXqnSueFz3Xvl6O9A0
 pIhHI8YbXHSzB05MuP8WfNPHjHc8KYMgJfQMyOQ=
X-Google-Smtp-Source: APXvYqyEjCRWCWA1erMGYdAPp7MEajrTswSid3c3EY+/9BGpIiG48e4yLchZKAedme8ceod4i+wIKWKZ+sqsGiUvpk0=
X-Received: by 2002:a19:5212:: with SMTP id m18mr15375040lfb.7.1580824248848; 
 Tue, 04 Feb 2020 05:50:48 -0800 (PST)
MIME-Version: 1.0
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
 <1580823277-13644-7-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580823277-13644-7-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 4 Feb 2020 10:50:41 -0300
Message-ID: <CAOMZO5BnfGdbDuobV=qi4zbzKriM0kNmAyd8zFCSdv2krVj=Og@mail.gmail.com>
Subject: Re: [PATCH 6/7] ARM: imx: imx7ulp: support HSRUN mode
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_055050_861236_2F19CA33 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Yongcai Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Ping Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Tue, Feb 4, 2020 at 10:41 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Configure pmprot to let ARM core could run into HSRUN mode.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

> +       writel_relaxed(BM_PMPROT_AHSRUN, smc1_base + SMC_PMPROT);

HSRUN cannot be configured unconditionally because if i.MX7ULP runs
with LDO-enabled it cannot run in HSRUN mode.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
