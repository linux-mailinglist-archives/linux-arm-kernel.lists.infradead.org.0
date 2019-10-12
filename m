Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817C1D4DEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 09:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2P2ponLXkvP/e18m7e3yLVTwJGyUo2ZcjPOXAKTv+ks=; b=n4/eQnZk5v0/SN
	W06qPP2u+rUpHlQ/eCEIWT1ouZ2dWIGoB7LAZZts0Ho1u3mPQ2VefiZKRzBa4hj6Gg62MoTI6jN2q
	8Wq9re1yt2J9NuWTGX4qPb0GJ/VWvRZQq1sylL3tOaveknD3TLPDMqzpYc4E9nt7OgNgLEHeTSse5
	oTLj0UVP6zFhU/MehdztrI/8u/y37RVJsy6qmE/rAEYIRsJL2OZ83NAzwMWYLwC6tm0QepfjSomY/
	yvmEzsdLMrUxIiXVo9Poc779cc8avsKUdjRykhis6Z+RuekDjzwkGDG/5zAfoX4g8KW6rhDOqLm+o
	Ur+lZ3YCqysht5sDS4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJBlL-0007PJ-RI; Sat, 12 Oct 2019 07:24:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJBlD-0007Oi-7U
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 07:24:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id p7so12391906wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 00:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zAYSIpIU3hJKU2u4hHTRX9v4IZBeJlln5UqpWWtBOKQ=;
 b=uR2hqb86vFeLoehGG9nQq+UzP1qbzEkHMu9gB1Z1mPmdY2pyRGj8GQIjU8AqIri6ic
 4xkbqIkn/uCLwxUBwSA1V0vsLY5X6eq1GrrUGx8G4PVgTiTb9DsevH9tzUE7zWquRaC5
 x7fmWKcwbdP/wcnaswp9we57PR6XnYoCouhhKJDfYkJUrovG3D3def0y/BDAexOKcaxz
 62Yp5v8CEy3I51k3l71lgZgCM/qf7u8Uv3KV5l7hdn/FAXcY22/JshOjYA1aDmGOM7jR
 9L/vdbgRF6SKyy1Fxx2CjN77fRn1CnJ8zP4YTQioHbc4EjiMWQEO7t6PNz8FUDSquVkf
 02tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zAYSIpIU3hJKU2u4hHTRX9v4IZBeJlln5UqpWWtBOKQ=;
 b=UCye5mem2OXUzdM41+yVPHKIZFpN6F0x370fLBopDIixYarRCq++H4HBPU+4KsAYmU
 kHzI71RSRJTTrjaGTW5HqZxkpFrSygLp8zb6Zod4VjqShRFzMAmXMmYNJgREeRetNlB+
 5cbUd2SE3POY8unJP/pUkDyln74vaq3+B4IeNOKUaxjkEnIwpa5OSLBAVUcJta1F5yEc
 70BeWA0JPAwMZ7x9kkRKa95j407egEOnvVUMMRKYiJzGCRCkvEgSFD/TUnvf6oeo63G4
 2HSncKeweqfvSnC3BtwCNWOUHnbSxTUGoblc3AcjJtmBSw6BlKrOpsOMVpUZBM1skFgF
 sc1g==
X-Gm-Message-State: APjAAAWOp8oTtraox53BRQ6ESlSQm+aGHnDCTotJidD+NX0+oeZ3uipd
 HJanJA2/vC9tKa8ijVbSVdTfLemaMqpcN7R4w/w=
X-Google-Smtp-Source: APXvYqwEsXRXwFwnnik3tZHluRyeExDE+ZTPScWLzikmZiNBW7pzwWZWUUmNoV5MLCdU1uXQk853i8QEPl5oBJ6JSvM=
X-Received: by 2002:a1c:a608:: with SMTP id p8mr6150105wme.25.1570865056487;
 Sat, 12 Oct 2019 00:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
 <CAEnQRZCkoA-q=C6nU0L_i33W8iTPY2RC4Cvb-aWuExA8VEqM4g@mail.gmail.com>
 <AM0PR0402MB35709FCA367D132B3E1634118C950@AM0PR0402MB3570.eurprd04.prod.outlook.com>
 <AM0PR0402MB357085BEB3A0B7FD7D5649AA8C960@AM0PR0402MB3570.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR0402MB357085BEB3A0B7FD7D5649AA8C960@AM0PR0402MB3570.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 12 Oct 2019 10:24:05 +0300
Message-ID: <CAEnQRZApkTEyvgoTGo6So5NJAHARmEnxfzTcahDVXr_9ns+_Sw@mail.gmail.com>
Subject: Re: [EXT] Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx
 v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_002419_292455_9A1254A0 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 4:12 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Hi Daniel:
> New version patch-set had been sent out on Oct9.
> https://patchwork.kernel.org/cover/11180683/

Thanks Richard. Jassi, care to have a look?

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
