Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E4710EB1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDhdJwPRAezPYVh4OGL8tdw8Qm+oRYsqLR7NZRHNbfQ=; b=b1e5lsBAaGzU5L
	NjQDK9O/LVJKMFul6CsT2RMrl0zk58SVY7PEJvkCppD+LBk2ysep4MVf2beDotWxwQeS4f4nIJnKQ
	hJ9lxbSLCv0jpB7hbjaInmdmtYC1dPPW1Lrrv45fCsYJqPW6Ax7Yp6A36CyTeptTv8cqaSe9S3++S
	DBPq8egGBlv1EGACzFcgV23zp305vNmX6U/4PNwmgi86xO0Na3HxPSfk+njUcxehbeEOmuI/h8/md
	yMCgAwKzjxkBUEpOjpPXTF1gQDBMPSCSN1LwhDXWVTSfmQlH0ODCV2uWwUFwy3C1bmbNTDIp4ynUk
	2RsTKfM43V54Ufep1VVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibm4s-0000DK-9p; Mon, 02 Dec 2019 13:49:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibm4j-0000Cx-3S
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:49:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id j6so31187723lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cLrt8YlKggUQkK/Axpll/L9fEHuQ6vyj3K902vDGR24=;
 b=F9VhBriEGMrpURhG7CrgqJaU40ICmCakl8hs2/+rvQaBpE8JU2XFM9876KI55XisqW
 6+KzJD0F/JTZg9SiMgwQtdXIPtJPf+DmGBAblkUyZV9OtfEViz6uQOaSSnJ61A0QZqX1
 SZjRFGp2RcePhNLhb5pxpq3OkXpGBRc+3oBXTftHWav70wbXZ9GTRJU8Y29eEElfYv03
 evv9YiDroQ9SxD4Dr7dBuu6eu+M2cxDalqxbWqmv+kESMmClUSEZIPX5in5GdQm55toE
 pnMo9fks03z0gcZeNWFHh4UsZ6xomiVfPXt891viP2qJb69wBPN8dsG0nDB7f3u4HOan
 g+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cLrt8YlKggUQkK/Axpll/L9fEHuQ6vyj3K902vDGR24=;
 b=InkKeg34FnVdNm6aIIul48lebJ30+aYsPm0Jfm7mhfvj0XCjtFtFz/HO/6zfxYmkSv
 E+Q4uDmrF2WhejLbvEh0nH6V38B9QeTouoF7jLpV3dCyVutLcsogS6dSXen11bcAU2KJ
 6LG5v3mzm0bRIywF1gRUEpyF4QF3psWopWxQtvC4wAOI96mFGQFHKKsWa6TMAtTHmUXA
 xDRlZXf2Li8lYBgP/XIs5xe7eM9ItLkxACkA7naJlRccXqSDdMJpHpxxZn73teun0jRU
 xMf+4e2Ko00BLn+YNzV0q8dzCC7X8jgkVPXZ2YkEiRXc/tb3qVAca14df4DsBbUBeP2u
 3l+w==
X-Gm-Message-State: APjAAAXMFRX7rWM8NGAGgurdcMKwN7W/Dd/5U1cg2pAkofOhUx87T2/A
 GHyKoKPte7QFeBnglYZbP2jkMPGPxQNJqNSz2t4=
X-Google-Smtp-Source: APXvYqyk0aoNW/8zVHupZBl3J/SZQl2I6lH2KJlenDC1l4ew984JmECm3M+q0uuTFooct8ULB9J0o5xubmtkl43z3n8=
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr46935451ljs.239.1575294555096; 
 Mon, 02 Dec 2019 05:49:15 -0800 (PST)
MIME-Version: 1.0
References: <de442143-568d-5fbf-ed0c-d169e33e5d66@gmail.com>
In-Reply-To: <de442143-568d-5fbf-ed0c-d169e33e5d66@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Dec 2019 10:49:29 -0300
Message-ID: <CAOMZO5Aoj9pUpMdqVTG2pOUBUpnHsxA-Kduhia7_EJZvdEGjwQ@mail.gmail.com>
Subject: Re: Issue with imx_get_temp()
To: Igor Plyatov <plyatov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054917_146889_895B7719 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor,

On Mon, Dec 2, 2019 at 10:44 AM Igor Plyatov <plyatov@gmail.com> wrote:
>
> Dear all,
>
> please  look at back-trace below. It happens on Freescale i.MX6 Quad.
>
> Found a few of those during power on/off stress test in the climate chamber:
>
> [    0.657596] ------------[ cut here ]------------
> [    0.657626] WARNING: CPU: 3 PID: 150 at /home/geosig/development/oe-core-toradex-cr7/build/tmp-glibc/work-shared/cr7/kernel-source/kernel/irq/chip.c:242 __irq_startup+0x94/0xa8
> [    0.657630] Modules linked in:
> [    0.657643] CPU: 3 PID: 150 Comm: kworker/3:1 Not tainted 5.1.1 #1

Are you able to reproduce this issue with a 5.4.1 kernel?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
