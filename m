Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F710204CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxiumQxYIws8IBXcBnDIFMjnZh4VEQzruDAc6KjfFO0=; b=c2oxdB6CQDg4Rf
	FJeIqhME9dgGz6FQ0FdonEMkDXPTE/3PSpCViwxQfOaK+voc6r1cFAsGWqjM4LMwBgaxWre0WrO2V
	V629y/M1Y6mjCiyYY3d7d1faOHWcgi2c5y741W0Oqi5vqRUmvX9cv5RTRuYH7i0HxmJhTHOi8qOIV
	Kzc71aagxz95re9brlazxtFuKlxsTJTQW7hWC9wgqnLkFIQ73D7HKCZUd2gjhxv+5i06SLSKq+NGH
	Wt7fIuI7vmAFvImeQcAJM5+p6n8YssCNdDiQq55eCLX+7ysFlds3pI9VrEGjW2lACF0dtdWwG27ML
	RmWadbvK0PDAIoKQPrKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREgu-0007oN-1C; Thu, 16 May 2019 11:36:52 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREgm-0007lg-2X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:36:45 +0000
Received: by mail-lf1-x141.google.com with SMTP id l26so2320367lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 04:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aPeEg8eIyCU96vIMnu0N/V0MLHBwOZKIewHfSDCMiN4=;
 b=LKVjY5hpXs6HG9vcNyUai5oARidkD4sevWY+apEsEee5Xz3ovQTbkaNF9/t2NI9WgH
 9tL+rXa0kDMzzRr3gVT8dsDWzqEQqUGOHCpGnU5PTh+B/mXmmnUeUS6DYTC7Tybu31hz
 NsUpznGUXOUtm2EVf66vPEe8tXbXgTgd9Uqhj6ZpgNM85yaJReEPfOV8c02vSI8KQyYg
 oujD/7hMdO4aYVJu7PBlux5a8OuxhrvaE/j8EnskrpmeLZe26tzguyPux8Vq8UmFmeEY
 mfKGuSfgBfFaNKpE8ml0knm3c79c1kPgTEGCscVsrPOKY8x8b+sgv6HLdqXjmjYnQc47
 R21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aPeEg8eIyCU96vIMnu0N/V0MLHBwOZKIewHfSDCMiN4=;
 b=DRT9W6NC0zicxSjHREvDoIIXjauLqCG+8ZkxygPmO/IU/2hIvMrKgkjQS+HWRDVnVj
 nWk2MpCZFHLnrNmvNtzyNWDV/+MLureqiPrgR4NjVANum+mIv6CTmW8AUIeakEVahx5O
 g6m+JhL/BwUdL7AAx9iZrzOif4NowuWq9eUBjfkcPSUbqDrzkD4F+eV7elly0Z+y+lWP
 sA6qtPhv/fr8jopTX89ECDPmcveoRxqg/RhVvM0LbgW5sWXIUzmHO7d/wzGMFlwxVrmA
 BYKNRLxwTHgAehB9qGECcdFPav3fXLPUTIEHylp185x1DfoUeTglM12vdG00MWgNrcXu
 MwdA==
X-Gm-Message-State: APjAAAWrP7azGUMfNnzZTLcR3D9RQFNBVBja+6bx3kzYraZVdSw2xoKB
 lUSbJjjpw8tXxBhSke1qi+6w9L04DwU3raNaSCk=
X-Google-Smtp-Source: APXvYqzbVaLyuRXck+ZijFR7Fq0g6tClfRO211DFZN7OHyacnqqRljvaYjthXlBGkYT/cQtq9BXely1ffRjACfbAP9Q=
X-Received: by 2002:ac2:434a:: with SMTP id o10mr18954257lfl.122.1558006602110; 
 Thu, 16 May 2019 04:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190515224601.4527-1-marex@denx.de>
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 16 May 2019 08:36:31 -0300
Message-ID: <CAOMZO5Cpp20AQqdfbSPdF4_QF5aM_wg78TrCjB3G0zCKoUw4vw@mail.gmail.com>
Subject: Re: [PATCH V2 1/8] ARM: dts: imx53: Update UART configuration on
 M53Menlo
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_043644_119170_4E751FF5 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 7:46 PM Marek Vasut <marex@denx.de> wrote:
>
> Enable flow control lines on UART1 and UART2, add matching pinmux entries.
> Add and enable UART3 with RS485 mode enabled on boot.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org

For the series:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
