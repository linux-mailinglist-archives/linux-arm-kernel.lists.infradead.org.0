Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12454D4FC4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 14:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLo1gZvTOu/WyIY2DcJK4OI3BmR5e0kAtqtLCe7se78=; b=uipylJQ0Q54sKn
	3RGPLTaH63GOG5wh5Y7iMu6/6WP3StOsYN5gA0gYGahS2/1lrE/xqdefOP0RZH3FWomeZJOFz9Gcs
	4W3OR9tf4DdCra3Jgp7B0f4mMZIwPW8Ebx5UtEjYO2UCOPZq4hTQsXpnumwZkXmSpAJQcGSqIT7Z4
	P1Wj4XybIIMVGVgdaVjZIhi7vfNdMt44wqNWkFcxKT0Ak0eZfbeBNNLz6bThfAvWTNpxJ/GO+MzBV
	bV/sOPRq+w739WEEr0pXrjyRerf7UT6ARc9+kNfEuAoq47L37bB5mKwSShnqFL0omMWt2YeOxes/E
	Y8biSpEJckq5sBIVVBXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJGke-0004ZP-7E; Sat, 12 Oct 2019 12:44:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJGkY-0004Z1-JJ
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 12:43:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id 7so12339745ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 05:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9CADlOUghANhRG0HNGinC5AsguWpKsMKBHiOplFJxWw=;
 b=VZg4aI3IFPw1ni74/UsQXVoams17Q70FhdajE5eAzynPoqGYPD5ihMK0e16g/WQmKh
 ioddabTuOQiv5A6b3GnrkkzDuNKs/MpAOHoG3cFm9JLnKy06mlN5YPBxK8ExLptwWl/J
 rIvL0YuQxe9y2+yPiI3gE5lLkDFwzmlN4t0x68uT9gKhu7l9TIxgEGE5IpDsPWCDWb5i
 BkM9OXGKRynz3ztXS7307U2LiE0XKkwX3Pwsx80PVoXtqhBU7hjsC3NQFJrv3d51rlnr
 pSxrDio6YN60VY+X2C/sb0XPpMeOgdD4ZLBOI/mTaqFUPEKYiz53ZA3xSebC91KnKC2k
 lkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9CADlOUghANhRG0HNGinC5AsguWpKsMKBHiOplFJxWw=;
 b=tiQEAcMY2zj6gGK8AHPasBHvZDTC9qyuffa520mIVPy7Vzsn6A5fJ+7vmdFTUuUc7E
 pSS9s+qTiB4zxx/3Z3uB6HWpN765UaaCI7tSdAn4+aRotURrQdbJcfUee8z6TOXcGCVZ
 slvLVJpvJdRpYBDK5qxMyDI9tRmhpqURKSBq4PQmochZIlc04SQRyqMJf8i3lef2sjiK
 R4CEREadIcMUhPE+X/lqOQGJK70w2y2ESovUKy153DGGEkzLZHt1ySfbrdyi8GcbLnIk
 nr2k9QHxFtB4AhYhUhhve6usUnSfzGNu+BNZocYyIR9pFL1XgbUEFMjBRJxbgoH7mvEZ
 v3og==
X-Gm-Message-State: APjAAAXfTajaDmtHcb8K8lL4v4lJOamYNocAEWwM7c7VtOBLyQO0Wb6z
 pt4qK0RaBHJVH4xhOmkgmhTBjI7aXQpW2fVo0Ts=
X-Google-Smtp-Source: APXvYqygSUnmZtuIfmzJugXxu14SrCzb03W4144W6rGpVhHWELNeoEFWiIrj9eMmuk1ByG9SW1xei+QzlZLFo8GqUyE=
X-Received: by 2002:a2e:9205:: with SMTP id k5mr5181539ljg.202.1570884236119; 
 Sat, 12 Oct 2019 05:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <1570783006-28099-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5DUVv_cT59pTBmfa60TM0E9=6rFdpDw71g_6cQidOPW+A@mail.gmail.com>
 <DB3PR0402MB391628A077B9D689469D38E3F5960@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391628A077B9D689469D38E3F5960@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 12 Oct 2019 09:43:49 -0300
Message-ID: <CAOMZO5DH0dfmd-=b1F3nSdoLiPE+Y871RBnrBUg_pC864JQ=Dg@mail.gmail.com>
Subject: Re: [PATCH] clk: imx7ulp: Correct system clock source option #7
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_054358_642709_A10B1A76 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Fri, Oct 11, 2019 at 10:05 PM Anson Huang <anson.huang@nxp.com> wrote:

> The reference states SCG system clock, SCS stands for system clock source, so I think
> it is actually meaning SCG1's system clock source
>
> Selects the SCG system clock.

Yes, SCG is the name used in the Reference Manual and also the driver
calls it scs_sels,
so it would be better to keep consistency and spell SCG in the commit log.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
