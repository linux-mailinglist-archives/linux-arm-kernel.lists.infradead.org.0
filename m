Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDEE1D5531
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8mY5BGqPZQdJDrXFIlp2QYo0B6uf8WvWvIoFj+ipwkA=; b=DKvYlnd84tr1jDlvrTukrdtSet
	XviDJ8H5uistbVu2geUQI1346iAwpbvqIVW0vBGufo1GatB3/v6jn37QiFd3x9qRJeCHCCMJQg/5y
	lU/8s568VnRdvmmgDT86Rn99gwO8vEYS1QsZRUzidsl7QmDmqhTAZNmCxsq0LwsyXzufy5Vwjup5E
	5/fVXlNbGgp9yJlGEoW43BoWL+nwDClHjjWhDuOhFFqlJBDpplGU2DD7BQeBzPoktopWCZMQMgpZ5
	b6vlfon4CYR6tpGTJX2XIXZaFTY8oe+XL+yP6zyFYnmwuGeIjDttc3jmVT/WKcjdQbdpK/hf6KwuF
	9wUpR6qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZce1-0002Lf-Bz; Fri, 15 May 2020 15:53:05 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcdo-00029o-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589557972; x=1621093972;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=DT1liw8u3FiqTUb6GhvHyfaThMNxutoSlfg3fkyelUI=;
 b=gHLPcmhnyjpvZBrljH2X85nSxTTUr4joa2Mcbqd87EcQxleMTYtdfW56
 ydE0ue32KErLuTkTrjWJbJmnqTiVUgwAj2iYhgnS03I5LVjvr8jEqldJ5
 q7UnIZNdSVatGJNwt3m/r+mijIhr6rrIvAASPtlvHHKbHGKobge1xsYi0
 2KQUFTHY/VIqeK+N4/9EFgLjLUlrELcGPk7C/bxyV00a+N69ef3wZxxUu
 YqpKF5cyFyqknNTlGc7SJveQSMivwPNblkOfzP0RmIoOJ0VLn2AeKr3rA
 Lpkl7D2HypmuKFdBxfFeMtyiOqy67y/wt/gvo/Fdm4yXEkGsY/6MIP5u7 A==;
IronPort-SDR: ICu01KXEUFTELz9+q4Bnk3/5o0+7ZDR8cNHr+wFVRriw8cMa6LNxnLsS2rUWo/pBqtfDBEUDMh
 UioiNPZw09VcW8U3kSt9Q8b4Duy7/TtvIHtVunCZldj61/DIs6xCf5tYcnjb9od08vPgBz0McP
 JQNO7hWvLo8fRcAeFMicg6+9NhPA8BcJOnOXQ2uQQZ6L+YRD9U4cf1u8MotCTU+gNvd/YtZy8c
 WSIfrz4sVn2eTAIVy3namJZxzY7JQ4YxKOjPnhmBITMNvM7RPLsnndjgQMw1cYjPtRuS1ADJbA
 vOA=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="75403050"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 08:52:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 08:52:50 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 08:52:50 -0700
References: <20200513125532.24585-10-lars.povlsen@microchip.com>
 <202005150200.wnjISCrm%lkp@intel.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH 09/14] pinctrl: ocelot: Add Sparx5 SoC support
In-Reply-To: <202005150200.wnjISCrm%lkp@intel.com>
Date: Fri, 15 May 2020 17:52:46 +0200
Message-ID: <87y2ptnqk1.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_085252_526937_29BCC439 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kbuild-all@lists.01.org,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-clk@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>, Michael
 Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>, Steen
 Hegelund <Steen.Hegelund@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


kbuild test robot writes:

> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
> Hi Lars,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on robh/for-next]
> [also build test WARNING on pinctrl/devel clk/clk-next linus/master v5.7-rc5 next-20200512]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Lars-Povlsen/Adding-support-for-Microchip-Sparx5-SoC/20200514-163536
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: powerpc-allyesconfig (attached as .config)
> compiler: powerpc64-linux-gcc (GCC) 9.3.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> drivers/pinctrl/pinctrl-ocelot.c:28: warning: "clrsetbits" redefined
> 28 | #define clrsetbits(addr, clear, set)          |
> In file included from include/linux/io.h:13,
> from include/linux/irq.h:20,
> from include/linux/gpio/driver.h:7,
> from drivers/pinctrl/pinctrl-ocelot.c:10:
> arch/powerpc/include/asm/io.h:849: note: this is the location of the previous definition
> 849 | #define clrsetbits(type, addr, clear, set)          |
>
> vim +/clrsetbits +28 drivers/pinctrl/pinctrl-ocelot.c
>
>     27
>   > 28  #define clrsetbits(addr, clear, set) \
>     29          writel((readl(addr) & ~(clear)) | (set), (addr))
>     30
>

I'll change the code to avoid the name clash.

Thanks,


> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
