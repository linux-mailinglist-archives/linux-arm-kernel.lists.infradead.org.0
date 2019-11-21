Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B5510575D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8rVlSamgdFc9iL5ScVc/JpJBtOYLJ31KRtQyv7AGZM=; b=HTLwTbW35Z1q8r
	v68nxGjtyTAbuJP/ZfGuuDbdQwycDzctdLsHUbk5QRollEdQG/ld2WAYA+Ecru/slhkjHR/F4vXTP
	euZfwRtfJVfEOco8YdL/BHySE97TdQS+EvQ+/z6tKIljpgqFcI0tplAhtwATal2MfGooMmd1RPe4R
	ieZiPqC8j7+T+vfazSbIZ+D9WoWyEIyUKsSRVBjwxnXuCQLMPEl+Q78iPtDKJlCWFySiM+klKwbRW
	Vvju/B4CpL0RHmjn674LCTym52qOWzwRrduY16Vc9xoDHFSXxMv05wACRoGvubAG/9FxLHFzS5s9O
	9VFSIuqrrn5A8beGwEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpbL-0005fS-GK; Thu, 21 Nov 2019 16:46:39 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpbE-0005f7-1k
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:46:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id v201so2136934lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 08:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EjangubdYbmIqePnQ2tFTagrb21HEQtT8HpyfP7ti1w=;
 b=iItYx5dQzTP531ILoUqhAXs7e+4wRs6j6pWyYQQxjrmpyioKzvJb36V20DpUtFeF0u
 PbRiDJUbyJpSR0WWRRJUwwMNbcuVvOrG7VUrV0l2bMogckdzTreDbhs2uHNWoQs2tnri
 rfyy4wsFfGe5IRqit3VjlaCz8F3hb/Op7pd7vkWM25vWC/qSvN5JvCL+7PL0kU+kQyUa
 WFr8ZuwovAYDixeXnydSWN3h6rAi38rxOc/Q1aLoYnRcqfgKim6IQwDYG7vwy/LRQab9
 E7O8FOb97tbHzP0nGPpIJlx1tvgWR9lAzFp6/8VfS0Voh7YqTYkZsU3yHw/4cIrTmHTW
 S/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EjangubdYbmIqePnQ2tFTagrb21HEQtT8HpyfP7ti1w=;
 b=dgYPKeDP/E1MlDkdny/YkrwB/i+1ez6KycGW1Q8GhHtXLmDVvafG4HOEmMrgZHUMfn
 BOuiGWOA9LSBshR8mAWk5/ff1jnpP4Smzil765z2YMEjkQK2NFJ7EwEhQHCiWEk3+zPx
 MtlRruU+Nt+5ll7+z8kFKsXeTzVtXNOpfEftP1W2nt8xILJaNWObFgTFLNNitQTj1iwM
 4fWflIMeABRJi2l5Qb6wb71dvyMD8amjS/F6Sn1bkkRfM74oB5FTrDSoTV2rYmTy8CLv
 GTlaKyCCLuUvTsXgzYSiUSCjS/rTZYTtVZInMD6qU6ZJSF3YlqEg0SoIYHSUNKAz9bl9
 wkeA==
X-Gm-Message-State: APjAAAWfJahYRnQxLSoNiaZ2zlGbOX5Qv9hCmYk4buQZ6sCdSI0X+32b
 Q+zRt1+7FpUcSz6sTWTH+LRnqkRYnJsDP+I0+lytIQ==
X-Google-Smtp-Source: APXvYqwt7Q3Tcz5l9BHsHKlZA/wVWUZ0x2W/W2EvB1/diUYJozdnSbuDZ5tPKX3zSB6GmSvliMB927yOQXDkS/YKPp0=
X-Received: by 2002:ac2:5b86:: with SMTP id o6mr8591591lfn.44.1574354789928;
 Thu, 21 Nov 2019 08:46:29 -0800 (PST)
MIME-Version: 1.0
References: <1574332142-7130-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1574332142-7130-1-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 21 Nov 2019 13:46:31 -0300
Message-ID: <CAOMZO5AHd7Sucj4pjVnFt_iGexMk-2_ENp4D3xDQe8PPqaoqdw@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: clk-composite-7ulp: add lock
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_084632_091905_750334BE 
X-CRM114-Status: UNSURE (   8.48  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Alice Guo <alice.guo@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Thu, Nov 21, 2019 at 7:30 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add lock to mux/gate/divider to protect the access to the register

The "access to the register" is too vague.

Could you please be more specific in the commit log and send a v2?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
