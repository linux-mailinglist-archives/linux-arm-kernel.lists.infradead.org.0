Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C77AD3E0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GaJbMNChEn2x87qxJjAC29iK59UVDThlixrU4YhRuw=; b=n3Il5l4zNEHp1P
	ImL5XsWkP5LqUwK0oNglhfMma3kl7WihH9zCiWI+WUYr/Mipx7hhyG9zyxwTuxsjDHtdpD4+gU/K9
	4zCOdaEbtIDiAi5Pry8eZ88vNvP6dtHMsDaw4HMd0E8rHcfc0uZHlyQUEyGKkDGKa4vjymCGwxy8F
	2z7KL0+JUip8vGPsjBHylUCs/TMNY+yx6sIZNeX81w9MtY5XOE5Axv0+76XFpYraCa0T/dfIbqFAw
	jZ8JQF5Fu1MsogaZYZQhfXfZHG/iy1Tb63Q7RvITAjuB2AEnglEUKco8kG/NX5L9FCSePkUXlRdjn
	bWhEs2b2xE0XTAHesfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsso-0003S2-6g; Fri, 11 Oct 2019 11:14:54 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIssf-0003RM-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:14:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id r22so6761590lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 04:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6XRPBHy88G3xNbXeVwV2n/tikjG8xG4XiQm2Q6YAxdE=;
 b=DECCbZCrPys8WgUmo5NZZ/FL3X6q4Z5+ZpwOXV54DB3G5hd/25jr47OrIkjJcANpST
 BG8NJmQ7IMuptLOapxCuYAI8VX9tsRTkPq/cXcXwi8fkg5mpmMpzWg7ohb2/k3apksqM
 rd00NENTAa56ZoMa7BmK4MizGGqkyF7RaZ867Mb1Y3MQbAgmXKQYbvnjDsZYijLpe0IN
 L78X5rzLMRfeMHP2dpPD+M6fGeToVIlEUpfRcsXe2VohjsEnsowXoZ0BGBcSw2O8FuR4
 SmT6IB3o5ncGJMV+bswtra2cdQMzlDd61uuU4nBwKZ73wb4YY3iqhcNQe+hHXfrgIeWQ
 RKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6XRPBHy88G3xNbXeVwV2n/tikjG8xG4XiQm2Q6YAxdE=;
 b=n0YwSKobYlyVJOFrKDcepyFMBjXChDcp6pY5leBHEcNWAwltzEEBRaDFfAnhiEKbo4
 0DsJBOfNhmGhr+XOUk06JiwrvNzZoKN8f+Qs0iVMkwdFFc7KO7+BE+SHxnjZCwZTMget
 RVKeXLWiGSw+7Oa4tJeycSC7aTK6aqQBRsKlcjoSvLZWV9vWHTy0ouFm2ZP6WrtU7BoJ
 driwqYsJwq7YZixc6kT+UU1Rp4xwp5x46NSg1AbyLPa3PzftvD7WPjjadk5kWZhvihUd
 mdQ1fAwCaThTYrUIUnH5V6sW8gRI7sPe0rpQp4fisTOLU+4z0Uv1FBgRo9SXvz0jH2sL
 cnLw==
X-Gm-Message-State: APjAAAVXhBX8x6dQVC6GDZHWhcgyj+fEo4QJ1bcoVA9r54T2THwLtaRk
 ChKzuDjLIv9br+z8dhTPBE6cGgfKmzmDQUbwp0o=
X-Google-Smtp-Source: APXvYqzwJzXOjPEkwfUFJfsMRUF053ml+64En13k0ziyab36K6XmeWqmRmcPA8CPnGkIkrbLsecdf4oj7wNXaGr4c9A=
X-Received: by 2002:ac2:4c13:: with SMTP id t19mr8718845lfq.20.1570792482568; 
 Fri, 11 Oct 2019 04:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <1570783006-28099-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1570783006-28099-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 11 Oct 2019 08:14:33 -0300
Message-ID: <CAOMZO5DUVv_cT59pTBmfa60TM0E9=6rFdpDw71g_6cQidOPW+A@mail.gmail.com>
Subject: Re: [PATCH] clk: imx7ulp: Correct system clock source option #7
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041445_479585_B08739D1 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 5:39 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> In the latest reference manual Rev.0,06/2019, the SCG1's system

This should be SCS instead of SCG1.

> clock source option #7 is no longer from upll, it is reserved,
> update clock driver accordingly.
>
> Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
