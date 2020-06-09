Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF911F48B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 23:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+622RBKMXEec4EKKug4futzKANnHYe5ZY8NES64OANM=; b=RPUv2IbpLkmcJ3
	elqzFEbeoJsCqAnTCGdTG/LHiKehhoXlOEIOm66OFoEobBoNby19BP4CFFHObwdgfGDK29LRqaE09
	6hhu3zgWU6Vszqg+yWCHB0gVAlW6INvnjBOHHPWYsFX2fjmGE5Ts/CKu0pQHGk+KmGuHpwWvHpzPs
	487ney5B02u3gbWJuqtfVoRjcXZLGDrCddDVZB8bKqNxT4gO+8he5Rep2PTG2+YVTYqDG3iLTzmw8
	4hfIqK4rr9qzt44Pv6Tx71bpRB349LMSfbItzKEcHHGEMoQkrPBolq3OofITce/9xswLEOkbn7ENR
	xGtDi12ibhXzLhzklEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilbX-0003Ft-Cg; Tue, 09 Jun 2020 21:16:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilbP-0003FY-Oy
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 21:16:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14EB0206D5;
 Tue,  9 Jun 2020 21:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591737370;
 bh=e26IpfGJ9WhIIDdNAB2BegdKpPxmPKMY/Is6gl++1es=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=FHDziFwD/dq7QDdliYeGTcN1ASQzrlpy/nXiO8tY7COvOY8lJSQnK5B2MtWqTpBXz
 oW71W1X4mMgrDI9YcqWIDMAOfZcMF+Xy3YWHm9FVxwWeWppV24HA4SWHZunLxby0Qg
 Xo1DNTY6ue0ejJZCrNc+nFrQSfKEYJ5FQMnfay98=
MIME-Version: 1.0
In-Reply-To: <202005310615.TVwTAUgp%lkp@intel.com>
References: <202005310615.TVwTAUgp%lkp@intel.com>
Subject: Re: [clk:clk-mediatek 5/6] drivers/clk/mediatek/clk-mt6765.c:537:35:
 warning: unused variable 'ifr0_cg_regs'
From: Stephen Boyd <sboyd@kernel.org>
To: "Owen, Chen," <owen.chen@mediatek.com>, kbuild test robot <lkp@intel.com>
Date: Tue, 09 Jun 2020 14:16:09 -0700
Message-ID: <159173736939.242598.14069411610834841250@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_141611_831748_7288BEC7 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Mars Cheng <mars.cheng@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting kbuild test robot (2020-05-30 15:25:16)
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-mediatek
> head:   571cfadcc628dd5591444f7289e27445ea732f4c
> commit: 1aca9939bf72893887cb7e3455e44c864bada2f9 [5/6] clk: mediatek: Add MT6765 clock support
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 1aca9939bf72893887cb7e3455e44c864bada2f9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/clk/mediatek/clk-mt6765.c:537:35: warning: unused variable 'ifr0_cg_regs' [-Wunused-const-variable]
> static const struct mtk_gate_regs ifr0_cg_regs = {
> ^
> >> drivers/clk/mediatek/clk-mt6765.c:543:35: warning: unused variable 'ifr1_cg_regs' [-Wunused-const-variable]
> static const struct mtk_gate_regs ifr1_cg_regs = {
> ^
> 2 warnings generated.
> 
> vim +/ifr0_cg_regs +537 drivers/clk/mediatek/clk-mt6765.c
> 
>    536  
>  > 537  static const struct mtk_gate_regs ifr0_cg_regs = {
>    538          .set_ofs = 0x200,
>    539          .clr_ofs = 0x200,
>    540          .sta_ofs = 0x200,
>    541  };
>    542  
>  > 543  static const struct mtk_gate_regs ifr1_cg_regs = {
>    544          .set_ofs = 0x74,
>    545          .clr_ofs = 0x74,
>    546          .sta_ofs = 0x74,
>    547  };
>    548  
> 

Thanks. I'm just going to pile a patch on top of clk-next to remove
these two structures.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
