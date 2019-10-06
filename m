Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ABECD95E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 23:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1F80sNKEhzdTVF24QxeS0fZda76HsrtJXQd0gndMSC4=; b=LAvo5NrqC7wPbu
	KprbanppQ2r7sX2GAM4HUwxJriCdHR7d9v0NrObXldhC3PGwVTd5X1lMv42T1k9OHz1nivbf3uNjD
	SnPhHaQWB0euVy1QHmEkVnUm0WmjMgiuJh3++HzzUK43igbFN8c/slMUmA6Tl3S/W4JT7jlduVVKB
	pYLa3NxMQnq3sCz/xNprQSeJzwvMZ3RIn1+ZLJBRw3ZMhWk1oFf9BlYM87GnDL407a4j2OCfvEhBm
	LpWVwKg3yasWhIqHHb7JU2vd2OFQd5hIZefM1Ujqi8MZcPTUcmxYLZgg9+849R0Am0Bv7DAI1Ohzm
	HQb05ZQSl+40WsIT8png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHERB-0005Jb-4V; Sun, 06 Oct 2019 21:51:33 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHER4-0005Iw-J9
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 21:51:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Oct 2019 14:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,265,1566889200"; d="scan'208";a="217779937"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 06 Oct 2019 14:51:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iHEQx-000AgY-9V; Mon, 07 Oct 2019 05:51:19 +0800
Date: Mon, 7 Oct 2019 05:50:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 1/3] net: stmmac: Fallback to VLAN Perfect
 filtering if HASH is not available
Message-ID: <201910070529.LpPdh7OD%lkp@intel.com>
References: <3504067666a0cee6ecf636cf30081b09a6b79710.1570360411.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3504067666a0cee6ecf636cf30081b09a6b79710.1570360411.git.Jose.Abreu@synopsys.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_145126_671177_5314E47E 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kbuild-all@01.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose,

I love your patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Jose-Abreu/net-stmmac-Improvements-for-next/20191007-013324
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-42-g38eda53-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void [noderef] <asn:2> *ioaddr @@    got void [noderef] <asn:2> *ioaddr @@
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17: sparse:    expected void [noderef] <asn:2> *ioaddr
   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17: sparse:    got struct mac_device_info *hw
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:4224:21: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned short [assigned] [usertype] vid @@    got  short [assigned] [usertype] vid @@
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:4224:21: sparse:    expected unsigned short [assigned] [usertype] vid
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:4224:21: sparse:    got restricted __le16 [usertype]

vim +4224 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c

  4206	
  4207	static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
  4208	{
  4209		u32 crc, hash = 0;
  4210		int count = 0;
  4211		u16 vid = 0;
  4212	
  4213		for_each_set_bit(vid, priv->active_vlans, VLAN_N_VID) {
  4214			__le16 vid_le = cpu_to_le16(vid);
  4215			crc = bitrev32(~stmmac_vid_crc32_le(vid_le)) >> 28;
  4216			hash |= (1 << crc);
  4217			count++;
  4218		}
  4219	
  4220		if (!priv->dma_cap.vlhash) {
  4221			if (count > 2) /* VID = 0 always passes filter */
  4222				return -EOPNOTSUPP;
  4223	
> 4224			vid = cpu_to_le16(vid);
  4225			hash = 0;
  4226		}
  4227	
  4228		return stmmac_update_vlan_hash(priv, priv->hw, hash, vid, is_double);
  4229	}
  4230	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
