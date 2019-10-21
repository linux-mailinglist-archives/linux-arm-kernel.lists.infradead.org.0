Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D286DE18D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 02:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6Wg430iD0qkmbQ1oZpmMDiUGVd/OYtZN7Ia6+mmPxY=; b=FbPwPg2l2spqz9
	ShuKpJdr7Dssnp7h3W+WA1f1tEKQFG2FZoRnnKGCdHTLB9jFMYHAR1CgvrdBzMnkarpOhskSvpCIY
	wFugkDWcF7/o/ZLPYpghTqLJIEBkB8N6WMGEvnivn6xh4pi0B8k4H75HGkccZ8hdJrnsuSgNqxdkO
	/KKs5CS4lct+OQbntQQNI3/Is9NlGtkJSSVzxrSXesPMP+s6BPAg1YpMQwynIGIrnm5XtjgP+pVDT
	/81d+zhuoarS7coYL20UEX11g/3eNQx1o4kz+YeINQNk+bVnwvQnFkq/Wr21cAvR9HurPCFZbOCmI
	nECf8JiCsNe/635ocaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLlb-0003HD-1y; Mon, 21 Oct 2019 00:41:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLlS-0003GN-4d
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 00:41:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id u3so8585169lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 17:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+bmNIcrnyOIzrPmxwvjVgZiBAJd1fM+3wbATTNFbEI=;
 b=mLAX2bW2iX5ydQdQba6GHiEYCGuP3ryiI3ZGiaySwfC3y8Qhd9wrPmUBZI5OiTWvwT
 wPQOA7PyZyWL2zcmKOeQYLc5fwcB20NjJgUletSLLOah1HsnJ29+iSbQWuDyeB8SQWTn
 Ld9wXWuG66dbY+YAzanSVTWfpZmcgDAXgJNhEPK2VzpwUHVRm1zO39/xCUi38A7323Oi
 8WDhYNPbYDeIKFkc63K7uVj7xqE2WZfnxrd0duu6RROq5ixmu/g8+fs0dtIJUe/Ifdu9
 SuQWLo/Gfs8DPn2mc6jejc3Iw/NOwYGQNv5V97tLh1nivdcvh1Iyg/RHcLvVBnaKRX2g
 xGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+bmNIcrnyOIzrPmxwvjVgZiBAJd1fM+3wbATTNFbEI=;
 b=LjX8KEdo+EUgSTe+6sXDeC3wsBg95djHzUYX4Ye+6BmYb0er4RdusmoQmoK2iH3S0n
 QPOSeDxt0u2OwuW4i28tpMO1pqaIbxOwy8IGr2SZpYz0OgP8vYkRkkcrGrizEvRrrirR
 cZHmvnKW/3DXfxGMFq0vrC/6VXB8wgUufF54v8K9p4nZHesSwQq6J0Imkk0n35nbLbcg
 6Zii+QGLTX/h8gneUhnzd2Gb8fxse1odghwSMA/V39yIwb5zgca1jtCjsw7ES5rq1JXQ
 W8wqWn/QyuKHeOCXE4KZnYqDVJgOxvCCyZyicaTSfXRrn+Imrys/usUgH2Bs59tgEkDH
 TKfg==
X-Gm-Message-State: APjAAAXSrJxw5nQAsp7Pb7mFX2Gbufw66+4lNDhZcDRQbbsqWxkH5mhr
 BXLSltEt5Cl9cWseTCrtcFVH0YJU2x1EAaKbiJvjog==
X-Google-Smtp-Source: APXvYqwIyNjawN1mEod1YyKYfTSA83orVXCv2STO/nJGv1866U3Q0y95F+b9JrmTVy90oQrZGDMZUrGbFb9ILn0rOUI=
X-Received: by 2002:a19:f018:: with SMTP id p24mr2105108lfc.93.1571618496433; 
 Sun, 20 Oct 2019 17:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-19-robh@kernel.org>
In-Reply-To: <20191016200647.32050-19-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:41:24 +0200
Message-ID: <CACRpkdYq86_h7yPr3+UJryNWHLqrzrR0SbhWRALcEVCR-pE9+Q@mail.gmail.com>
Subject: Re: [PATCH v2 18/25] PCI: versatile: Enable COMPILE_TEST
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_174138_180382_66DEA96B 
X-CRM114-Status: UNSURE (   9.98  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> Since commit a574795bc383 ("PCI: generic,versatile: Remove unused
> pci_sys_data structures") the build dependency on ARM is gone, so let's
> enable COMPILE_TEST for versatile.
>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
