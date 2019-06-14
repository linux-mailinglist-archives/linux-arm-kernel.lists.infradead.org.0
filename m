Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F0A45E17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFHQH8WZaHvDN6Vdy/R+BfAJ1A6qFT28l75ZepA5cqM=; b=S9bJTC2D9/JR5K
	OL5nGItY4OtMWA30v6IzLR2rIQHqP11AmCJrV0Cc4HP0y4iyjoGMB4C1Z66RDjIbbITu/lNTOz5DD
	a8yeKXuf7SD81UpbjM8rw1bRBRMJMIKOPjt2hPACROlBDKsyBOacVMVMP1WAoVssq/fiQtZe1tX6L
	SkW+CGdnzdN4f8OPyPSXE+CMpHx4mLsEMzFFmndD6rSc5sIwh5KuRsbs6nbXtm9nJgIkBTWGaPrOW
	ZBqazro40mJjRVIrxKdkAN9sH3lrlFLf4fPHDlQ+Ak/u/tP/SYTNrf63HI9KsyEUmWLMqD9q9aNAi
	50UPv6AF6dCkDFZ5Zg0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmDg-0001x0-36; Fri, 14 Jun 2019 13:26:16 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmDU-0001wT-JB
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:26:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id n5so2645709otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q0OJmGrN/dUckm8xh8/mUqwvTl2m3MsC/Nix3u2EbOo=;
 b=qnmZOrT55WICaHNRVQwbPhpDLhQ9v0a+iHtcCyaMhVpCyoneH9oAOuBKoqF9Jhg5Y7
 fiMHHhBY5xT45QppZFNTXizLTM28cqcVtay4I/KmcB9PBLkZ+3UISDtysaQpGJAUvD8p
 FaXdCcyrG6eT2aYg9tfbalMYtjbqJO6ymYuutbIQSMpIZKD0DJqly6nfy0IEaOrsFA3s
 NgsQ40wco1ktUihHcmvXrLk3Mo7Stsqtcde9pZsHaqQA6xnQkosZhas2AFvQcbJi1Dv7
 qqxHhuKPtLo4A92pO77eJ27C09s8xT+N2ETINcJ9D2TOdn5BVdmhElSPO+TsokZM19EW
 cUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q0OJmGrN/dUckm8xh8/mUqwvTl2m3MsC/Nix3u2EbOo=;
 b=EpHOPPMnLem3pgNJnd2+/3nMqPgiUz5FxpvKoGuoF/AJucXdR8qrl3K6c3RZZN7L14
 Ume5h/N+7cEO4VCEM4xckuzC7NH8LYSOJAyONbCv/k8DBCdnL9Ylyl8s/kJ7nMAVGbAo
 pQnLzD/FA4fWWTdFsWupRne0NMLkOArhw5RjZeRDjUGGpxnwdKRCyWvJaluDNjO7LYOT
 OO5CZJmyuEHCpWfwrXyAO6KwmmBIhx6LRHi05pEILMo0eJH7ObYUdtQrHpoJN7mohEJ2
 15mFQ8TSQRreatu63y7TT4FDiUArxdmdGK48yLd4xsL8mMY0H6RmEDGX9mWqyqtW3TeF
 p9pQ==
X-Gm-Message-State: APjAAAX4hL2o7sbUI94kf+TGyAQxvqhmcnXlDcQjG0VNdkThGQqrxL5S
 mQIGZkPLyupzM1G5PD1qDw/ouQ6ZX9HILkQpghI=
X-Google-Smtp-Source: APXvYqzZ4yTzZxukuh4ByGQZgpQG6EO0dCIycVqbuDQkexw5XYN6RtEOuxvysNlyk3gw1XEj2+hMGs7NwNxta8Ox7+Q=
X-Received: by 2002:a05:6830:16:: with SMTP id
 c22mr12549596otp.116.1560518762637; 
 Fri, 14 Jun 2019 06:26:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
In-Reply-To: <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 14 Jun 2019 09:25:51 -0400
Message-ID: <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_062604_630497_7065ABCB 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 6:49 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> According to the original report from Sven the issue started to happen
> on 5.0, so it would be good to add a Fixes tag and Cc stable so that
> this fix could be backported to 5.0/5.1 stable trees.

Good catch !

However, the issue is highly timing-dependent. It will come and go depending
on the kernel version, devicetree and defconfig. If it works for me on
4.19, that
doesn't mean the bug is gone on 4.19.

Looking at the commit history, I think the commit below possibly introduced the
issue. Until this commit, sdma_run_channel() would wait on the interrupt
before proceeding. It has been there since 4.8:

Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
interrupt handler")

But my knowledge of imx-sdma is non-existent, so I invite the more knowledgeable
people in this thread to take a look at this commit.

[Adding Michael Olbrich to the thread]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
