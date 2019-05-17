Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC2421738
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7VAoWUuN/zCKNMai/BCAEl0mSri3MnTR/yYtaGyWWw=; b=uHu8pLDufQYeoD
	pB5rQ4gp/T2cbo0eCDtI2/dkVHSDsl2T1G7ojTRMiL94wnF17P7bU5BMtzZDMtSegu8Q4QJ0GBRkL
	QlGGHlaN/NRx8Zlfk/6ccyz66OliPXxzoML83r6AZc3YJ613gCvaEIhhdim2QxEJ9Wm1iZYnHIzGv
	AUMtlJX+vQGNdd969CMchXmLCe1UL6DLWSKrZHxJGFvvgTOCm108iL8pt2HYvnlFf/hEsWJqylG1o
	9veyN2A1QGH5QljTZm1ki6GGnZmXeFWeMrvcdtEYgI59zz2+J8/uYCgCICGLEA3Ex8DGEFuk5XCSe
	XA6vAYcJg9g9f8Yy9+zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaOc-0006Eo-5S; Fri, 17 May 2019 10:47:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaOV-0006EW-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:47:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id y10so5010800lfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 03:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ku+cJ0KGPggfXsWsOEHqzdK2uKS13WYhdMXnkwa2J94=;
 b=YGWxc2NYkRjVCyVbQ1/3Kdezha005MkUtmDXwU3Dnn66C729JPxJ5OvZuYRVpCUFLQ
 KI/g4RjNq9uklOniZJlfGCrkHS6f7BQowB7XoHbyskPrUjX0322lL4+aTWQYJ58goKjC
 Nr8MEiMJgf1uRPnhX2KIVgij8d4p4vWRG2K9znhvAsxnCpJRLpKrFqTRMRtJPKPose6i
 8e6Ebfc7YHlS+BhHuTdAlgIhCSANHprdYIW29we064YDbWX5agWqW7MV99e5EwGERmeE
 kwdvEmsqol/i7mS05ECUsNyxXxOFpD2NR/JDj3vMIQodyzu1KyCNMyn2Ufc0ZcKM/WRd
 nDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ku+cJ0KGPggfXsWsOEHqzdK2uKS13WYhdMXnkwa2J94=;
 b=ql/RyNo4GFuI6ss+nzUlbeNXX98+G2ZMz7soWoq7pr6xNLLKNAadyVkKzYqnOjfQAk
 3997yw91tdqpff/4kWmFCwYSvuMSHTxwGgwufDxlnzl7BN1Jx7EQBjokDhd4pTkEz3Po
 hleaLPbiUi11eSdnEPZpK1XcKnRrL8XxoqGsPvRBl6JaTQn/dNRTRnOuY8rX+gk/QNCV
 V45BXd0FN2kPnUb6uw/5EUIToxb7kiaPYzOm8/o3z44KVgQ2JnouGOkFdRH5kaKLdCYw
 hQ+CApNBlD5jUiL0P9FnOu/MxwSpvZCf1ZEYV+06MkQPmazTB3Gwn9/PiReUDFL2anUh
 L94g==
X-Gm-Message-State: APjAAAVzxyaMx/CdiRwkhSIcFgT2ppPaOV+4SH+o69JZ+nMKfIRLdFfb
 7G6uq1YLd5hrrsKNxtUoG5fwuGtGr3cqujHSZgI=
X-Google-Smtp-Source: APXvYqxZ2MG2AQvc33D8SCatH+kfTvr7StGGJTsiwIzC3IiePbUuBCM66Lyp5YEs5ptkeASOwJL4u708VtTLT1yA9fA=
X-Received: by 2002:a19:c60f:: with SMTP id w15mr27524114lff.61.1558090037048; 
 Fri, 17 May 2019 03:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190517074039.22614-1-peng.fan@nxp.com>
In-Reply-To: <20190517074039.22614-1-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 17 May 2019 07:47:08 -0300
Message-ID: <CAOMZO5CobB6oSKc9SY3LLdLc9+ZkfiZyYXyCQa5yR-Wwnv0OCQ@mail.gmail.com>
Subject: Re: [PATCH V2] clk: imx: imx8mm: fix int pll clk gate
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_034719_489008_63C4C70C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 4:27 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> To Frac pll, the gate shift is 13, however to Int PLL the gate shift
> is 11.
>
> Cc: <stable@vger.kernel.org>

The Fixes tag should go here instead.

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
