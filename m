Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83156E5F2F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 21:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+c92ECwy1N57xRg1xJUAhV/+mbUll6KeqLt9t00OUg=; b=NWKSgr9y/T+Csr
	XrFz3TFS76VEu7vxzIeovs/RQjA0lXEui/4SwZ7KI4qecpelHv6U2h7O48HzFwtGBfWeJuLu00BLB
	VYjWnePBsnKqYH73LSpPqcpKAtQyEPvJ6cgGfg/uZuuk45HKMO/Tu+yjJAOtSHu3J89cDCK0VrX57
	UvQx1D6IpUEXqo4542CfGu9SADquZlgJ8G9BmL2MDwZEJ+WqPFvQBDhyf8Pql9jj7x4fqF8QloEJk
	wfxSH1XdYekcOCsEUmf3YZtih7dPlJGck16bioKY6U5Rs1eSfRVojBF5NymkS0vWIaAdS1CgArLfM
	a2oGRU38PX9/uSATSQsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iORbp-0005Mr-1P; Sat, 26 Oct 2019 19:20:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iORbf-0005MO-8K
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 19:20:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id l21so6974785lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 12:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zWsuoyZAPYwca/EI+O1VE1qcAi/s4YJoaszzQreRPF4=;
 b=TeDUOpDL4hTaTuuw4pizV86DSL17k4SGI2tz5Mir3tX3hbG+UF750wESPULT64i5Fa
 DEnXuPiiBBlPAk7+3ZXVu9DjESJI44nFyrewyYrgIfVjBGEeTNz67gpP4vAckxL5qaGq
 W/FoPayExUNlvhqsu8LYuua0xFky44Jr6DIaY1vi5al2roFxnhK0BbkimrXdyvkAKw9s
 Z/qUBkM7UK+Q2un4H3DFIG7ABhsTsZJrd4CGFFD8q9+YFB35nwIE5vp3siMH8+BoNzRD
 jGVqvwwi7IALYd2B+hL6eqS1Mnk2+imgEtBu/Rab3nCmpWtXMykRhNNJLMldyslLGkuf
 jpZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zWsuoyZAPYwca/EI+O1VE1qcAi/s4YJoaszzQreRPF4=;
 b=RSr6Gd4gS7gjO3Ig2VX0z52TDUABQXlhp84jWfzc+9CnZCnptRI5SxEzf8+MujQYte
 N+dTv2LrCh+pfKxLuWwplZssKJcmyk4WEmNC2VU7S8r5QNopOVdq8g5tYlxQhn9ra3uE
 q23gLHmbGByNWa7UGRU4EmYD5aDIMGHjGORZisb+/dO6oklDGnlXUTfPStBUPEkbbn8t
 Rjhss+zGnQBxSgkis4Dv1DqKdJ2F4qXj58/14ERgN/ogj0HVhJBLTp6R65NUCnEwoNRS
 7RX6cilOoaBmTf92Qhcva3vy1BeTv+d95V3TiZHqdVrHsLC6JVSThmTiVSegi+IPur2+
 zYgw==
X-Gm-Message-State: APjAAAVOLv8pT32fy/1daF05DjA+Z6oRY6N4EOy3aV+zsxgUCvxUdkQ4
 eoKyqvUoAZOSBknhxDhX670vjD5gOxcDGDBCd+s=
X-Google-Smtp-Source: APXvYqxK5PEuDVL1bg3Au4IojFJdnipM55bXALNKVuwOG9O05h1SfUnaIBX/iObuEqHXNCOEqiNYoZMdiO08hmXs/Ew=
X-Received: by 2002:a2e:42d6:: with SMTP id h83mr6637936ljf.21.1572117609221; 
 Sat, 26 Oct 2019 12:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191025082247.3371-1-offougajoris@gmail.com>
 <20191025184544.7gwwbsrketjtwrwi@pengutronix.de>
 <5a73d00e-397a-f4ed-2bfa-bb26324685ba@gmail.com>
In-Reply-To: <5a73d00e-397a-f4ed-2bfa-bb26324685ba@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 26 Oct 2019 16:20:10 -0300
Message-ID: <CAOMZO5CPg=mJSKNuNVFF=zGUaZqMpr9Ocv89msS-120Shc0=RA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7d-pico: Add LCD support
To: Joris Offouga <offougajoris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_122011_296300_1878E295 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joris,

On Fri, Oct 25, 2019 at 6:16 PM Joris Offouga <offougajoris@gmail.com> wrote:

> otherwise Fabio made me notice that I should leave his From however with
> the changes made I should put mine?

It is normal when we submit someone else's patch and we need to change
a few things based on review feedback.

Even so, the original From should be kept.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
