Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85B4142FA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 17:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC9LTiSQLKCUmZRoIUoPMhJQehXHEaLyNSsjy6COpGs=; b=p7K9TcHkddYRt7
	TS1CZxZZXzySW4QlFJE/kIiVFi6Kv8xqakdHVWGvL0HLWDSVrabfIEnb/J5EvqSpoXVlMc7O5yduT
	jinUCnFSBoSjGCK2IrvBQQ1+J1xl7/UF0Zo6lpWnPCjUQzIbEZbcCeAFtHPPQja8nGk7ad2IsjYSn
	/EkqCmZ8OmrmOb/sTGgpEc4l8WftXQHHmjixuVbEZQbWv5rL2YXqWiGa/zAh3gHG+Mr8FPwWYkIU0
	Wyqtdo/bkvNNWfUAqbP9ypdFTaLuINR24pAey+fRWFXcP6gLJuvLMNBjq0lipHTSsrB+rB/Jj/2K+
	545uMA9uUqDdovCUL98w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZvL-0002Ic-GY; Mon, 20 Jan 2020 16:29:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZuz-0002HP-Sh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 16:28:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so15786419pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 08:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GR1APR+Wyd2YLYbRnsV0u2x1C6uwTZZ2OEWNdjnqjo4=;
 b=S6+Ui0Ryg93xsfEPW/3lRMkkxdRzUj5Lj4DWAsydzFghegwFbHnFn4k4+y4g+3n72x
 aLHNWwUI48bhXguZbAg7T8bRrfqn+CD+jmkVdCFXplLf/ZegqNFp+Ew4+PciPqsf8fXO
 2BPK9SKgxQpIhyNCP5UxRci1fAXsIj7TQHQ5KiBuZidvYnf8hRi/jZcgxyg+W8ckdvO+
 yDKLUjJN5owNIXL43AP60swXX9MhAGAB8/9rcgWpoOfctWcx1kBj+csXRrMnOgfoFyqu
 AEhRqyShDMoqtf8kGVGOvM20fPC/reJw4pAWJJZB2jh+qVq2w9eb1He8yJ32mbzTIzKi
 WwEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GR1APR+Wyd2YLYbRnsV0u2x1C6uwTZZ2OEWNdjnqjo4=;
 b=XCkme3rTNOgv+x2BDy/yyuN8JIddgD3VRqpqM1A0v+i9WiYXEGQhy6jIYHscIUVLv0
 /gU40/OhywUUpFqpdSNo128HtiMSlv+a86eT49ILceUZ4mjOuAvragGF+/XAz2syGnk4
 Gyv4DRATvR/gSyW+vkXWQXVgy0JA5NWU4PNpz0qd1HQRJROdmOvAQQVOrBIrizzMYY6y
 Pvgjsz8587PydwvfGdn8nsOaUZDHNsYmd7chHONfu43cRVv4zth4WFmtVAs1vg33X86d
 PC/TCbYOeb+lJrUB2FLBSeYBJ2FlcEQlQQOknrarhTYEkedQAvrRR+7FkTFXKymPsp4I
 Owbg==
X-Gm-Message-State: APjAAAX3BglBqhKUHzUwT1chk0V6P8mQUl4ZH6PA67xP55qVeLsCccgS
 5d4QmbagXHymFOwYyyAbgog=
X-Google-Smtp-Source: APXvYqwsolQ7KdarCdpFxI9kDgOcqi9S5elKUvLwcvNAHuPL+EqeFJc3kZAVTtrTKnyWkVXKShj07w==
X-Received: by 2002:a63:3dc6:: with SMTP id k189mr453630pga.396.1579537728723; 
 Mon, 20 Jan 2020 08:28:48 -0800 (PST)
Received: from localhost (64.64.229.47.16clouds.com. [64.64.229.47])
 by smtp.gmail.com with ESMTPSA id w11sm38347342pfn.4.2020.01.20.08.28.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 Jan 2020 08:28:48 -0800 (PST)
Date: Tue, 21 Jan 2020 00:28:45 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 2/2] net: stmmac: remove the useless member phy_mask
Message-ID: <20200120162845.GA11480@nuc8i5>
References: <20200108072550.28613-3-zhengdejin5@gmail.com>
 <202001181542.rImVkJEi%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202001181542.rImVkJEi%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_082849_935548_DF7FCDC3 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, kbuild-all@lists.01.org, alexandre.torgue@st.com,
 weifeng.voon@intel.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com, tglx@linutronix.de,
 treding@nvidia.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 18, 2020 at 03:51:11PM +0800, kbuild test robot wrote:
> Hi Dejin,
> 
> Thank you for the patch! Yet something to improve:
>

Thanks for reminding, This patch has been dropped, the patch V3 that replaced
it no longer contains this content, Please refer to
https://patchwork.ozlabs.org/patch/1219694/ for details. It should be fine after
giving up this commit.

Finally, Thanks a lot for Jose's help (Jose.Abreu@synopsys.com), he told me 
that the phy_mask is useful and should be kept when I submit this commit.

BR,
Dejin

> [auto build test ERROR on net-next/master]
> [also build test ERROR on net/master linus/master v5.5-rc6]
> [cannot apply to sparc-next/master next-20200117]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Dejin-Zheng/net-stmmac-remove-useless-code-of-phy_mask/20200110-011131
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git daea5b4dc16c3edc90392a512492dae504f1a37a
> config: mips-randconfig-a001-20200118 (attached as .config)
> compiler: mipsel-linux-gcc (GCC) 5.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=5.5.0 make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> arch/mips//loongson32/common/platform.c:82:2: error: unknown field 'phy_mask' specified in initializer
>      .phy_mask = 0,
>      ^
> 
> vim +/phy_mask +82 arch/mips//loongson32/common/platform.c
> 
> f29ad10de6c345 arch/mips/loongson1/common/platform.c Kelvin Cheung 2014-10-10  79  
> ca585cf9fb818b arch/mips/loongson1/common/platform.c Kelvin Cheung 2012-07-25  80  /* Synopsys Ethernet GMAC */
> f29ad10de6c345 arch/mips/loongson1/common/platform.c Kelvin Cheung 2014-10-10  81  static struct stmmac_mdio_bus_data ls1x_mdio_bus_data = {
> f29ad10de6c345 arch/mips/loongson1/common/platform.c Kelvin Cheung 2014-10-10 @82  	.phy_mask	= 0,
> f29ad10de6c345 arch/mips/loongson1/common/platform.c Kelvin Cheung 2014-10-10  83  };
> f29ad10de6c345 arch/mips/loongson1/common/platform.c Kelvin Cheung 2014-10-10  84  
> 
> :::::: The code at line 82 was first introduced by commit
> :::::: f29ad10de6c345c8ae4cb33a99ba8ff29bdcd751 MIPS: Loongson1B: Some fixes/updates for LS1B
> 
> :::::: TO: Kelvin Cheung <keguang.zhang@gmail.com>
> :::::: CC: Ralf Baechle <ralf@linux-mips.org>
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
