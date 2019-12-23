Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2529E129A6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTh/73V1D+SDTPJDL8LOyCnHPOKW9hPvIyRgNPslVlc=; b=XrlCOM2+FaKWVi
	tKxp3PHJ/KqrlxajhsrB3tByqdslZNbeKC+BHgYN95OZkaj96JvvRIsmkibMjBt74wyG3KvXeyR6x
	9eEal9OpQOgar53QMrAjpoXR4xk4GDK/SDuvVEivCVHjbhcTQ9eJANVU/OAnoCN6wX9o6eWUn4MRH
	ub3GH/fzDhCdCtpBfDdOhGqJARVq7sjjKXY57QZap7uwbnQkOYB6C9P15fBekfaKqeNm+pItWRL9f
	5Qh/y2ftfAUxfMM4X2vOmCOkvWnKrXk0ZiVwLG5RhmYhbMi38FbU9H7J45toUprov2LAO+Wi7d4Av
	N4Yevfh/MlGYZDkbbhYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijTXv-0001ju-T0; Mon, 23 Dec 2019 19:39:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijTXl-0001j8-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 19:39:07 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:39:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="418768668"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 23 Dec 2019 11:38:58 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ijTXe-000ARz-50; Tue, 24 Dec 2019 03:38:58 +0800
Date: Tue, 24 Dec 2019 03:38:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: Re: [PATCH net-next v2 2/3] net: emaclite: In kconfig remove arch
 dependency
Message-ID: <201912240321.RasGegIt%lkp@intel.com>
References: <1576832220-9631-3-git-send-email-radhey.shyam.pandey@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576832220-9631-3-git-send-email-radhey.shyam.pandey@xilinx.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_113905_478083_E940AFD6 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, git@xilinx.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Radhey,

I love your patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]
[also build test WARNING on net/master v5.5-rc3 next-20191220]
[cannot apply to xlnx/master]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Radhey-Shyam-Pandey/net-emaclite-Fix-coding-style/20191223-163233
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git ac80010fc94eb0680d9a432b639583bd7ac29066
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
>> drivers/net/ethernet/xilinx/xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
   drivers/net/ethernet/xilinx/xilinx_emaclite.c:612:17: sparse: sparse: non size-preserving pointer to integer cast

vim +411 drivers/net/ethernet/xilinx/xilinx_emaclite.c

bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  363  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  364  /**
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  365   * xemaclite_recv_data - Receive a frame
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  366   * @drvdata:	Pointer to the Emaclite device private data
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  367   * @data:	Address where the data is to be received
f713d50f33c1fb drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  368   * @maxlen:    Maximum supported ethernet packet length
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  369   *
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  370   * This function is intended to be called from the interrupt context or
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  371   * with a wrapper which waits for the receive frame to be available.
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  372   *
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  373   * Return:	Total number of bytes received
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  374   */
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  375  static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  376  {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  377  	void __iomem *addr;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  378  	u16 length, proto_type;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  379  	u32 reg_data;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  380  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  381  	/* Determine the expected buffer address */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  382  	addr = (drvdata->base_addr + drvdata->next_rx_buf_to_use);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  383  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  384  	/* Verify which buffer has valid data */
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  385  	reg_data = xemaclite_readl(addr + XEL_RSR_OFFSET);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  386  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  387  	if ((reg_data & XEL_RSR_RECV_DONE_MASK) == XEL_RSR_RECV_DONE_MASK) {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  388  		if (drvdata->rx_ping_pong != 0)
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  389  			drvdata->next_rx_buf_to_use ^= XEL_BUFFER_OFFSET;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  390  	} else {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  391  		/* The instance is out of sync, try other buffer if other
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  392  		 * buffer is configured, return 0 otherwise. If the instance is
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  393  		 * out of sync, do not update the 'next_rx_buf_to_use' since it
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  394  		 * will correct on subsequent calls
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  395  		 */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  396  		if (drvdata->rx_ping_pong != 0)
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  397  			addr = (void __iomem __force *)((u32 __force)addr ^
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  398  							 XEL_BUFFER_OFFSET);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  399  		else
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  400  			return 0;	/* No data was available */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  401  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  402  		/* Verify that buffer has valid data */
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  403  		reg_data = xemaclite_readl(addr + XEL_RSR_OFFSET);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  404  		if ((reg_data & XEL_RSR_RECV_DONE_MASK) !=
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  405  		     XEL_RSR_RECV_DONE_MASK)
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  406  			return 0;	/* No data was available */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  407  	}
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  408  
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  409  	/* Get the protocol type of the ethernet frame that arrived
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  410  	 */
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14 @411  	proto_type = ((ntohl(xemaclite_readl(addr + XEL_HEADER_OFFSET +
44180a573ec936 drivers/net/xilinx_emaclite.c                 Michal Simek        2010-09-10  412  			XEL_RXBUFF_OFFSET)) >> XEL_HEADER_SHIFT) &
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  413  			XEL_RPLR_LENGTH_MASK);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  414  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  415  	/* Check if received ethernet frame is a raw ethernet frame
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  416  	 * or an IP packet or an ARP packet
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  417  	 */
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  418  	if (proto_type > ETH_DATA_LEN) {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  419  		if (proto_type == ETH_P_IP) {
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  420  			length = ((ntohl(xemaclite_readl(addr +
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  421  					XEL_HEADER_IP_LENGTH_OFFSET +
44180a573ec936 drivers/net/xilinx_emaclite.c                 Michal Simek        2010-09-10  422  					XEL_RXBUFF_OFFSET)) >>
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  423  					XEL_HEADER_SHIFT) &
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  424  					XEL_RPLR_LENGTH_MASK);
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  425  			length = min_t(u16, length, ETH_DATA_LEN);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  426  			length += ETH_HLEN + ETH_FCS_LEN;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  427  
69ddb40fcc98c1 drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2019-12-20  428  		} else if (proto_type == ETH_P_ARP) {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  429  			length = XEL_ARP_PACKET_SIZE + ETH_HLEN + ETH_FCS_LEN;
69ddb40fcc98c1 drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2019-12-20  430  		} else {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  431  			/* Field contains type other than IP or ARP, use max
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  432  			 * frame size and let user parse it
49a83f002731db drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2018-06-28  433  			 */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  434  			length = ETH_FRAME_LEN + ETH_FCS_LEN;
69ddb40fcc98c1 drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2019-12-20  435  		}
69ddb40fcc98c1 drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2019-12-20  436  	} else {
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  437  		/* Use the length in the frame, plus the header and trailer */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  438  		length = proto_type + ETH_HLEN + ETH_FCS_LEN;
69ddb40fcc98c1 drivers/net/ethernet/xilinx/xilinx_emaclite.c Radhey Shyam Pandey 2019-12-20  439  	}
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  440  
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  441  	if (WARN_ON(length > maxlen))
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  442  		length = maxlen;
cd224553641848 drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  443  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  444  	/* Read from the EmacLite device */
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  445  	xemaclite_aligned_read((u32 __force *)(addr + XEL_RXBUFF_OFFSET),
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  446  			       data, length);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  447  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  448  	/* Acknowledge the frame */
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  449  	reg_data = xemaclite_readl(addr + XEL_RSR_OFFSET);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  450  	reg_data &= ~XEL_RSR_RECV_DONE_MASK;
acf138f1b00bdd drivers/net/ethernet/xilinx/xilinx_emaclite.c Anssi Hannula       2017-02-14  451  	xemaclite_writel(reg_data, addr + XEL_RSR_OFFSET);
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  452  
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  453  	return length;
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  454  }
bb81b2ddfa194b drivers/net/xilinx_emaclite.c                 John Linn           2009-08-20  455  

:::::: The code at line 411 was first introduced by commit
:::::: acf138f1b00bdd1b7cd9894562ed0c2a1670888e net: xilinx_emaclite: fix freezes due to unordered I/O

:::::: TO: Anssi Hannula <anssi.hannula@bitwise.fi>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
