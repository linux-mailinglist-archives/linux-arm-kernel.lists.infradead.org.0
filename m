Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99CF119A37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQYdt1R1NhyfNde2e5JmyFVYP8r1oOmcZhw5PwECTU8=; b=NVGsuH8JkZHn9+
	8/KDo/LAgj5xi0RM3YU4FbMfAzgds7CujOhTj/7Ea9KJivI3AKrVQJzsUgdpgNRf4YW5qHCDbC5WV
	X1okTnkyF9qgEVhKMJxWAiHOkrorFf8pC2qlsKyBsXniOwFko2CJLdAdrmDaaCRA4+9nlwhM9R5J3
	2eBhGAOWCPD3iCG74G9CyVdvq/ADLWIpCt15aK+QOrlApuhlbhz2LVhLsxWJv4JYxGtY6FTjO/mBN
	0KlqhfNpkAu+XHfF6iVzbUnO3kWISsRBodybgsPkKmmZ7MgV8dcaDK6MzLLYC5X4zBJtde1ro/9W4
	jrECeGN9+2Qz/6fudsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienRZ-0005ED-LP; Tue, 10 Dec 2019 21:53:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienRS-0005Dj-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:53:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id m6so21648256ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 13:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C0P+BDqECFsHQEkgxKzuMWN/weBTZqCGPDuNzvH2mA0=;
 b=NI4ZqHumHPCx46rh+uPEW3QwpUgc4VzmOUBWMd9uTdBJ1OcS8Z37GmZ1sXuzPpIphi
 RoSFTlXlhQ2HSx/tsTYrAPu+iRq2ObMB6mHU3XpJeuUJCdK96OSRiLeo66cHvVOIh+J3
 QfoND34DWwmJGSYoWPAmjPxOjTcd7XmyGV3KUo1JEo0trBXAzL8AKu0dxtAaJqWMcn/Q
 l2JBJA/IeqRxrpQSb317KYdrkhSW1JAYqJX0WgXOo4Hers8Ku5u2bFEAJ94jkzoip8So
 2yhyHUC1Yz0rnP6LLkhUoWZ7ckts0mpPaXM2QRvTFeCLEp276BI8AYSu8xAtHci0xlEX
 GNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C0P+BDqECFsHQEkgxKzuMWN/weBTZqCGPDuNzvH2mA0=;
 b=sz3dW72HDCbb+PeU36BFFDgk/vZ2z/l8+BPs8JWyAsk47x7JkX3Vp8+fqNV2jlJjl+
 O6KW0oCE26lkq1zWfDuueVGT/ynMr7RFNn6MZg/16rcxGhLKPG5yVXIExOemeQo8S4+a
 w38vI51XoYmjrOrfXoXizsTNLAym8/ysNL3UcXAjHE7lBYxKzk4ticWhuguFAoaYbf0G
 81RAGxf3CTpDaVUDMxtS2GjllgQyr3l+GZ+3SyJPxcoMZa+f+1pajTvsoArL+YqzM6ow
 KwR7d12xBfmvChbch6ROhG54QPaWbBpaqEn3B7N3ijha2AJWTJK667ShJj9/TKiFWYYD
 Lk5g==
X-Gm-Message-State: APjAAAVNrDUrRfkgT6jnfQ8DJs+DFmXxKm7jlW/jZbpkMHqb+M9LdztZ
 qjbQltedanN28pJd2eXv7OkTmwPueeStq6VOzwacKiu12zg=
X-Google-Smtp-Source: APXvYqxqvRJcsacZTXfKMDi0xt20m6ilvIutPjPcNecj6BchreGJUmh/W3KIL2XPqyj5M3EErl7fySpEJRDEe/NK+wU=
X-Received: by 2002:a2e:b4b5:: with SMTP id q21mr18626404ljm.17.1576014792712; 
 Tue, 10 Dec 2019 13:53:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
In-Reply-To: <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Dec 2019 18:53:01 -0300
Message-ID: <CAOMZO5B6VdvchKH6qbdtUS4LPH6YYm5d=X8u0gEF61bKQ+8kBQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
To: Leonard Crestez <leonard.crestez@nxp.com>, 
 Christoph Niedermaier <cniedermaier@dh-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_135314_307302_020FC0E7 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 6:50 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> The ocotp compatible string on imx6ull and imx6ulz is currently
> "fsl,imx6ull-ocotp" but the imx_soc_device_init function attempts to
> lookup for "fsl,imx6ul-ocotp" (single L).
>
> Fix the constant and make cat /sys/devices/soc0/serial_number print
> useful information instead of all-zeros.
>
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

This fix has already been submitted by Christoph:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-December/697761.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
