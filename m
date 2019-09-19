Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7A3B7782
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5xyNBVN3a+RUJAPCjzcdmPEE98ZVlmhGpegYImORgU=; b=uFaotJzBywxfKB
	0GReXPGqmyk1xthvJTrvNvVQMGzjpaZxODww7Q8GwJQ6qtF63PqlmixnAg5QEizIu9N1gakuIZNZS
	x9zuw4cgkawk2MzyF+TXKaqHsSIFyKvS5Y8hM/BMBpZFlxGo51BWs08ofUHmIpHUw0i3E2hLyMWe4
	S6JOFsF02+PuvqhVmkFvz29hTVr+KCPAxOqZi0XrOxlWW5sJIWeARYITWPoJDMlXWHMa/rROP9DlR
	9U3mZa/EJ+BuOhTXju962E45JITOfOpfyk3V7DNSH/fJKi6i01ot02pBnkQCYyMqe1w/qb/rmCTOk
	kdCfKXTQWNg9xK1SVbGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtl9-0006fw-HF; Thu, 19 Sep 2019 10:33:59 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtkp-0006f2-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:33:42 +0000
Received: by mail-lf1-x144.google.com with SMTP id r2so1964569lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 03:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fo7cMzw36a28m/r8Obxok4ZgaWlax9TMyQySR8fq2vo=;
 b=MEhGOqAMGWMHHchatTX9wNtJQnKTRcZaXQqnzw+IrGnmtSz2Y4HjblXYYKLy8Howpv
 xkJLR7asVj8OFYdHRzG39xTw1nkFxPOkbwDis7zrga12uLEHcWkrIfnOr4FYZ+Mwh72P
 7uzJVGCDKTxJhmMb8Lb5YsVlhKvlrJCz6AoFs1eegPzwtUcaw3hUnhG15lnwijQWZLWW
 7dE/NSwDfW0yieAyR80tr4IBa92YXsda8BLA08fzlEYT9T6d2oZYApeYF52WHHedMVuD
 XoKJ9k9MV+tInTCaC6/zus/C2JQX71j/1wkEWr6cJgfwLAg9zoVFPlTB15GhDgTIbbQN
 8WiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fo7cMzw36a28m/r8Obxok4ZgaWlax9TMyQySR8fq2vo=;
 b=gcMdWNdvMx3YKu/99Cq5dAFXo6PebLV+SKVZQlf1EfcmkFeL1MZrntLP31VeNMI75d
 xPP20Qh4u7pfx4ph9Gg8KjEqEPG3Sy4bM+URnBwngCc3dTIFuPDPYB1AkxWvzJJ7RNa0
 E+wkyDndI28wsYqZhHYAwmCxPZXQDfh55Rm9O8zcEKb7EcSY9dbpR3fYV/SVLBX4Ho1L
 tbbPtm3tWKPqoGu450cb5iipwAZF/1IpRN/ckzl941KxRcXblo2X518eYTnGHZYZ5cSE
 Vwlf0CqOPLEZcZzKGbyW2vXh4s1S0ceSGL6CKnJ/LcGtw/6AcZScX0PtcL93nBfUwG35
 vFvA==
X-Gm-Message-State: APjAAAWrT29/PkyV9KK4LzaPCcSN14zhpAdfvPdRGh33Dhf30/IamObj
 XuFyZKN/xwdrKzlJlvy3iikXy2OjSTNSrLLHf/A=
X-Google-Smtp-Source: APXvYqw+AnkepIIO8D0IoEIWU57tO3l2Zw5feO8lefnd4aiB/eZJqHOJH6XA9JNFBpT4QPlfg5B+pBZNXOyNP2okf/I=
X-Received: by 2002:a19:c709:: with SMTP id x9mr4782140lff.20.1568889214837;
 Thu, 19 Sep 2019 03:33:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190919102319.23368-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190919102319.23368-1-philipp.puschmann@emlix.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Sep 2019 07:33:33 -0300
Message-ID: <CAOMZO5Cp9qHSEOx3VnUC9SSbKyZrS2T0a_mTx7ubzs45Weud6Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Fix UART DMA freezes for i.MX SOCs
To: Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_033339_117531_4D5C9DFB 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fugang Duan <fugang.duan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, dmaengine@vger.kernel.or,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Thu, Sep 19, 2019 at 7:23 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:

> Philipp Puschmann (3):
>   dmaengine: imx-sdma: fix buffer ownership
>   dmaengine: imx-sdma: fix dma freezes

These two fixes deserve a Fixes tag so that they could be backported
to the stable tree.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
