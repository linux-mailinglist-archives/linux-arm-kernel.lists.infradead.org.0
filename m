Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950F6A202E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULI7oV4tor2jnrQDYS/ebVYpmz4JV8P4Gri3GceDQUE=; b=o1wXDnnFD2M6d0
	yvf56d8e7H27BYOXFHOI51iv9jq9H64+0OaBZTtxDqDcJGCJobvhuagH9SiD0YIlPdvTCd24TsTs9
	FTzTiBdNhdTpeiCpxLHGf981SUrRgGm8Z5fTLl7Ig9ah3GgK/N5ckFhdX8SNq3/mHcvD0zJN29djr
	CgDOG4GJsaCIaDuQyXNf/dAbUdy3yCWpt6xUEgOJkU7ZGDesULb/Mja4646wtr/c6iSbhxi1PExBF
	4ooXypIOngTBsGjFze/a6JTwcpme3unz3vqucD01ey5nHATCpOxkHNAI7TxhOAOe207qyoS1pTIp/
	vZTepifeot9hNu295e4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mp8-0008GT-1Q; Thu, 29 Aug 2019 15:58:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Mop-0008Fv-CX
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:58:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id t14so3577078lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 08:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AY0115yLZC8XJ8HVrPibL1RQkgMosVhDDFJBDKJROF4=;
 b=KBrA7d/YGkRk5kixECnIlk3nFFr4Lne8mGRw2/XM9XpjRl2C90lyCg07FStGekU52l
 fATaesqrWhbMu7R0zAgWR8WQBHqWdaQ5Wwdzm66+rYUSI63rjd/wvdxltfv5Ycywm6BZ
 Tqd8qMZ7bFbqr5m6pwMS1RJpYMPPoBUdMKf/ZpaxbRhfabhK3tg8wSFs2UJV0ssr3az6
 CZGW7N3XCc13G49bZ5BaTFNF7NGbqtNgrWEa8uMgIsoECsY/soKyc+Q7ex0CidkMuO8k
 cGYsPQVTzha5bjlcr/HgQbtBwjyUBBnZdWINLOdzLbKPgjsWAKLQVOxudVatBKL8PjXX
 MI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AY0115yLZC8XJ8HVrPibL1RQkgMosVhDDFJBDKJROF4=;
 b=A4z6Sws6WqOKnHYJs8WUnlJIR/8n8SoRQd1YG0lvLxKT1SV2rAcq+Ae/SpsvS3wny/
 laYG9Ziflmf5uz9pyTwVJRva6PLSkL18/JR63NUdz91//LypxkqZciDVY8+w0b7HBper
 tTgOHOilVHVpsaEB0JlL+drfEq6yzPxGDUTYX0rt5lCde+8FF7H65MTEBNDsd5puMI3T
 Y3mDaCVREEgWk+ap3oVO2B/8L80c0izB7YUaoz8h6+IighnCHhCC3C8lJZTV4RCdQCbC
 V/GBFfPe4bj1jEjcFchAyK6UTfZoVR/1bgQtgzsbFCG4SXPvSVkIQONw/uZo48IQUn9C
 2zCQ==
X-Gm-Message-State: APjAAAX5j90D1YARbxuUQ/tt0aJLAGPNdLb2Mojdl/ooKuApZP9wNMYY
 vE9akn3hvNXlva+o6sYcqVPo3KHHlN3aWdaSvCc=
X-Google-Smtp-Source: APXvYqy+quD7SYDwowd87aTSxwdXTHHRbb3BNTJLJ1lxYkdKpEsNz2BVNS1kNpTeAQcBZKzMjERPUYLTID0sWhgWOx0=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr5941159lje.240.1567094317182; 
 Thu, 29 Aug 2019 08:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
In-Reply-To: <20190829154913.2049-1-thomas.schaefer@kontron.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 29 Aug 2019 12:58:25 -0300
Message-ID: <CAOMZO5BOYrpedOSH9fbBZkDj7n2dcVj8cG5h2U=mvw17F9hu5A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
To: Thomas Schaefer <thomas.schaefer@kontron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_085839_425230_176DF840 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Chen <peter.chen@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

[Adding Peter Chen]

On Thu, Aug 29, 2019 at 12:49 PM Thomas Schaefer
<thomas.schaefer@kontron.com> wrote:
>
> Currently the size parameter in the reg property of usbotg and
> usbh nodes in imx7s and imx7d dts includes is set to 0x200 which
> is wrong for the i.MX7 CPU. According to reference manual, spacing
> of USB controller registers is 0x10000 instead.
>
> This patch will fix this and set the 'size' to 0x10000.
>
> Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>

Thanks for the patch.

I would suggest adding one more sentence in the commit log explaining
that this size mismatch caused real world problems in U-Boot.

This way it makes clear that this change was not done merely upon
inspection, but it fixes a real bug instead.

Thanks,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
