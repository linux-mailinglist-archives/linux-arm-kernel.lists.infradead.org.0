Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC93188A06
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 10:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hToj99nlZKKmqxjc3uyetk/KQ9gnghJkEqMskTk+XPU=; b=J8ZP2oM40lPEOO
	jRorDV2a6JLG4U+u1fhgrfrbpU2Yh8wCpMMf9Wd0Ca3aQB+clJ27T3V2YFofyApQJlBHVgLssCizG
	4wQWahg1jFDcKnhKOFsIfs1PXD9mHpj6EfDQm61CA3XHviD7pKZQH3N1GHN483WicdyWWDlKQdF82
	6i/kwxkiCvU0LXig0hMSSjQGhgxhDOldOADxO8kFD00mwjSpKD/8s9yyao0QXyS6CYN3UV9qY9Hhd
	5MnwVpGK9cU5vs0V7ms2kdQ7nZ4FxyxV4itPQ2mTO+reU4kpeUoLdHVT5aFz6Ec9fJ9HJ7BC8tIPs
	hwZR2jLFJjJdihgCx2Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwMlt-00011U-AQ; Sat, 10 Aug 2019 08:30:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwMlg-00011D-VB
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 08:30:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so17151386lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 01:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8cS6whuQx4DiXwl2uCBLk9T9CxxkX4y0PTjlTGjmUo8=;
 b=Bpi1rjkFJMHgOIbcvWSc0zU4OZ2FaIw3BXhaYreLp3dl1rPdyAtx7fd+PJ5GPdppFD
 RhmQRpdBJelObM08Xpq15gTBLaeY3eVklsUIU1COVpJBDGMr6D06dafHpv4s3c0bOWrx
 PEO5G3eXHmjYIXt0mpCmbdsdzjwjfLM6RPuHW7/ViqwSu1OPwu0Vn+IPZJrp2HLHTYUu
 o6sdoPMm+BfVXUscV1/9rv9JemSZFWrQKHpfsKMxUmfXGjGXlAvGUZCxn+3bAY4nu20t
 DsaD03+/+89dkFBwLUmx66hzM4UZg3pILCMqB2dKM34pkKrz1AYhkxRySfXRImNcBVzo
 esRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8cS6whuQx4DiXwl2uCBLk9T9CxxkX4y0PTjlTGjmUo8=;
 b=S0q3JTHHevUJYapOpNgijQOZoAfM1jqfwWgg393IsnT7uZt0rMa9kzfBumL/TfvDoL
 8tPDPoKz4Q54XHx8KX5llCb1kPvA3uicbXrTqwdMcVjGxQf/jlNJLNq+BztZ6xK/fhWj
 El+BaN9epOHaoQptv1b478PyvkfRyuS3Jki0FazN7aFNxk/V/04d4PX6RgX27S81BS1u
 FxvYMnTyW6it3cLWImJbyBiMCAvA1a3f1Q/zeYY8dwBMFrIMpDX8esDz1ajGpDTlZiOu
 ZjqV6GHUyfOt5TlE6DdKD2dFBR7xU0wFGXLBSYSYe34Ix7rUigJvnv5mbv5SkDY3yK5G
 Pq5A==
X-Gm-Message-State: APjAAAVnTr+uVUMmAgFTmgZ8hG+gKmiUJePdxWSauo1GPwextZuZBStD
 MhR50rURwi5L0SWY2Au9f6qKoMnAJlGvoKW0wCMpmQ==
X-Google-Smtp-Source: APXvYqz3iyknd9U+Aqu0UdmG71Iok1VwzPjyL6T+MtBSBCQBTIs98zUm+bnjNoxDGSuA4prPcqKrt8dfmYTe23qujFY=
X-Received: by 2002:ac2:5dd6:: with SMTP id x22mr14674947lfq.92.1565425827221; 
 Sat, 10 Aug 2019 01:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190808074720.15754-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190808074720.15754-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 10 Aug 2019 10:30:16 +0200
Message-ID: <CACRpkdZZmJUDiLnf7YtD8nQ4pzTsZfDu=B6jFFSuHF6Sc45EJw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: freescale: imx: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_013029_036011_5474D626 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 9:47 AM Nishka Dasgupta <nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node() puts the previous node;
> however, in the case of a return from the middle of the loop, there is no
> put, thus causing a memory leak. Hence put of_node_put() statements as
> required before two mid-loop return statements.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied with Philipp's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
