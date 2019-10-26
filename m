Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD6E5A7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 14:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V3hnBXw5n4GSziFwKFPPPbf6s45Lh0f37fbEcXfV/mA=; b=jwE/2F3sDtCH2K
	HoWXZBRmb8RY1l4fP0i3FrPi26Q+91dNAeV6XEQNzynn9odAAxQZBU4uzTTxHmwtQd2TNjO5xkbux
	kDnf8MDJlvqsPuhFKkFWrgdx8PaxFTbgm4FA3aCxN0Mb/q9uIazy7qpGTUmE257LO+ktrROtKErT9
	CMShxvlwbRUEz8caDHvHryaHtM3oO1D6RFlxM9UaZl8o3VXg8dXGW025p5Tv4pazyHnY0JEFGSJt8
	irg4i9nPXDJetiBD1JGrGakz59gXQZX0vd6z5TVz6uusax8BOdEkTVZ2KHdZY6xTXpGt5iRHyOWx+
	rxCZVBsdGqTDsrGVeF6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOLUg-0005i4-OI; Sat, 26 Oct 2019 12:48:34 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOLUX-0005hU-Gc
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 12:48:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 05:48:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,232,1569308400"; d="scan'208";a="373801185"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 26 Oct 2019 05:48:21 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iOLUT-0009jy-5u; Sat, 26 Oct 2019 20:48:21 +0800
Date: Sat, 26 Oct 2019 20:47:40 +0800
From: kbuild test robot <lkp@intel.com>
To: John Garry <john.garry@huawei.com>
Subject: [hisi:next/drivers 3/3] drivers/bus/hisi_lpc.c:82:38: sparse:
 sparse: incorrect type in argument 1 (different address spaces)
Message-ID: <201910262037.XAJp8pwT%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_054826_396301_A8490E9F 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
Cc: kbuild-all@lists.01.org, Wei Xu <xuwei5@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

First bad commit (maybe != root cause):

tree:   https://github.com/hisilicon/linux-hisi next/drivers
head:   c9af1b848cdfce80a0202766afce45ec1370c441
commit: c9af1b848cdfce80a0202766afce45ec1370c441 [3/3] bus: hisi_lpc: Expand build test coverage
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        git checkout c9af1b848cdfce80a0202766afce45ec1370c441
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/bus/hisi_lpc.c:82:38: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got eref] <asn:2> *addr @@
>> drivers/bus/hisi_lpc.c:82:38: sparse:    expected void const volatile [noderef] <asn:2> *addr
>> drivers/bus/hisi_lpc.c:82:38: sparse:    got unsigned char *
>> drivers/bus/hisi_lpc.c:131:35: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected unsigned char *mbase @@    got void [nodunsigned char *mbase @@
>> drivers/bus/hisi_lpc.c:131:35: sparse:    expected unsigned char *mbase
>> drivers/bus/hisi_lpc.c:131:35: sparse:    got void [noderef] <asn:2> *membase
   drivers/bus/hisi_lpc.c:186:35: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected unsigned char *mbase @@    got void [nodunsigned char *mbase @@
   drivers/bus/hisi_lpc.c:186:35: sparse:    expected unsigned char *mbase
   drivers/bus/hisi_lpc.c:186:35: sparse:    got void [noderef] <asn:2> *membase
>> drivers/bus/hisi_lpc.c:228:16: sparse: sparse: cast to restricted __le32
>> drivers/bus/hisi_lpc.c:251:13: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] val @@    got restrunsigned int [usertype] val @@
>> drivers/bus/hisi_lpc.c:251:13: sparse:    expected unsigned int [usertype] val
>> drivers/bus/hisi_lpc.c:251:13: sparse:    got restricted __le32 [usertype]

vim +82 drivers/bus/hisi_lpc.c

adf38bb0b5956a Zhichang Yuan 2018-03-21   76  
adf38bb0b5956a Zhichang Yuan 2018-03-21   77  static int wait_lpc_idle(unsigned char *mbase, unsigned int waitcnt)
adf38bb0b5956a Zhichang Yuan 2018-03-21   78  {
adf38bb0b5956a Zhichang Yuan 2018-03-21   79  	u32 status;
adf38bb0b5956a Zhichang Yuan 2018-03-21   80  
adf38bb0b5956a Zhichang Yuan 2018-03-21   81  	do {
adf38bb0b5956a Zhichang Yuan 2018-03-21  @82  		status = readl(mbase + LPC_REG_OP_STATUS);
adf38bb0b5956a Zhichang Yuan 2018-03-21   83  		if (status & LPC_REG_OP_STATUS_IDLE)
adf38bb0b5956a Zhichang Yuan 2018-03-21   84  			return (status & LPC_REG_OP_STATUS_FINISHED) ? 0 : -EIO;
adf38bb0b5956a Zhichang Yuan 2018-03-21   85  		ndelay(LPC_NSEC_PERWAIT);
adf38bb0b5956a Zhichang Yuan 2018-03-21   86  	} while (--waitcnt);
adf38bb0b5956a Zhichang Yuan 2018-03-21   87  
adf38bb0b5956a Zhichang Yuan 2018-03-21   88  	return -ETIME;
adf38bb0b5956a Zhichang Yuan 2018-03-21   89  }
adf38bb0b5956a Zhichang Yuan 2018-03-21   90  
adf38bb0b5956a Zhichang Yuan 2018-03-21   91  /*
adf38bb0b5956a Zhichang Yuan 2018-03-21   92   * hisi_lpc_target_in - trigger a series of LPC cycles for read operation
adf38bb0b5956a Zhichang Yuan 2018-03-21   93   * @lpcdev: pointer to hisi lpc device
adf38bb0b5956a Zhichang Yuan 2018-03-21   94   * @para: some parameters used to control the lpc I/O operations
adf38bb0b5956a Zhichang Yuan 2018-03-21   95   * @addr: the lpc I/O target port address
adf38bb0b5956a Zhichang Yuan 2018-03-21   96   * @buf: where the read back data is stored
adf38bb0b5956a Zhichang Yuan 2018-03-21   97   * @opcnt: how many I/O operations required, i.e. data width
adf38bb0b5956a Zhichang Yuan 2018-03-21   98   *
adf38bb0b5956a Zhichang Yuan 2018-03-21   99   * Returns 0 on success, non-zero on fail.
adf38bb0b5956a Zhichang Yuan 2018-03-21  100   */
adf38bb0b5956a Zhichang Yuan 2018-03-21  101  static int hisi_lpc_target_in(struct hisi_lpc_dev *lpcdev,
adf38bb0b5956a Zhichang Yuan 2018-03-21  102  			      struct lpc_cycle_para *para, unsigned long addr,
adf38bb0b5956a Zhichang Yuan 2018-03-21  103  			      unsigned char *buf, unsigned long opcnt)
adf38bb0b5956a Zhichang Yuan 2018-03-21  104  {
adf38bb0b5956a Zhichang Yuan 2018-03-21  105  	unsigned int cmd_word;
adf38bb0b5956a Zhichang Yuan 2018-03-21  106  	unsigned int waitcnt;
adf38bb0b5956a Zhichang Yuan 2018-03-21  107  	unsigned long flags;
adf38bb0b5956a Zhichang Yuan 2018-03-21  108  	int ret;
adf38bb0b5956a Zhichang Yuan 2018-03-21  109  
adf38bb0b5956a Zhichang Yuan 2018-03-21  110  	if (!buf || !opcnt || !para || !para->csize || !lpcdev)
adf38bb0b5956a Zhichang Yuan 2018-03-21  111  		return -EINVAL;
adf38bb0b5956a Zhichang Yuan 2018-03-21  112  
adf38bb0b5956a Zhichang Yuan 2018-03-21  113  	cmd_word = 0; /* IO mode, Read */
adf38bb0b5956a Zhichang Yuan 2018-03-21  114  	waitcnt = LPC_PEROP_WAITCNT;
adf38bb0b5956a Zhichang Yuan 2018-03-21  115  	if (!(para->opflags & FG_INCRADDR_LPC)) {
adf38bb0b5956a Zhichang Yuan 2018-03-21  116  		cmd_word |= LPC_REG_CMD_SAMEADDR;
adf38bb0b5956a Zhichang Yuan 2018-03-21  117  		waitcnt = LPC_MAX_WAITCNT;
adf38bb0b5956a Zhichang Yuan 2018-03-21  118  	}
adf38bb0b5956a Zhichang Yuan 2018-03-21  119  
adf38bb0b5956a Zhichang Yuan 2018-03-21  120  	/* whole operation must be atomic */
adf38bb0b5956a Zhichang Yuan 2018-03-21  121  	spin_lock_irqsave(&lpcdev->cycle_lock, flags);
adf38bb0b5956a Zhichang Yuan 2018-03-21  122  
adf38bb0b5956a Zhichang Yuan 2018-03-21  123  	writel_relaxed(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
adf38bb0b5956a Zhichang Yuan 2018-03-21  124  	writel_relaxed(cmd_word, lpcdev->membase + LPC_REG_CMD);
adf38bb0b5956a Zhichang Yuan 2018-03-21  125  	writel_relaxed(addr, lpcdev->membase + LPC_REG_ADDR);
adf38bb0b5956a Zhichang Yuan 2018-03-21  126  
adf38bb0b5956a Zhichang Yuan 2018-03-21  127  	writel(LPC_REG_STARTUP_SIGNAL_START,
adf38bb0b5956a Zhichang Yuan 2018-03-21  128  	       lpcdev->membase + LPC_REG_STARTUP_SIGNAL);
adf38bb0b5956a Zhichang Yuan 2018-03-21  129  
adf38bb0b5956a Zhichang Yuan 2018-03-21  130  	/* whether the operation is finished */
adf38bb0b5956a Zhichang Yuan 2018-03-21 @131  	ret = wait_lpc_idle(lpcdev->membase, waitcnt);
adf38bb0b5956a Zhichang Yuan 2018-03-21  132  	if (ret) {
adf38bb0b5956a Zhichang Yuan 2018-03-21  133  		spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);
adf38bb0b5956a Zhichang Yuan 2018-03-21  134  		return ret;
adf38bb0b5956a Zhichang Yuan 2018-03-21  135  	}
adf38bb0b5956a Zhichang Yuan 2018-03-21  136  
adf38bb0b5956a Zhichang Yuan 2018-03-21  137  	readsb(lpcdev->membase + LPC_REG_RDATA, buf, opcnt);
adf38bb0b5956a Zhichang Yuan 2018-03-21  138  
adf38bb0b5956a Zhichang Yuan 2018-03-21  139  	spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);
adf38bb0b5956a Zhichang Yuan 2018-03-21  140  
adf38bb0b5956a Zhichang Yuan 2018-03-21  141  	return 0;
adf38bb0b5956a Zhichang Yuan 2018-03-21  142  }
adf38bb0b5956a Zhichang Yuan 2018-03-21  143  
adf38bb0b5956a Zhichang Yuan 2018-03-21  144  /*
adf38bb0b5956a Zhichang Yuan 2018-03-21  145   * hisi_lpc_target_out - trigger a series of LPC cycles for write operation
adf38bb0b5956a Zhichang Yuan 2018-03-21  146   * @lpcdev: pointer to hisi lpc device
adf38bb0b5956a Zhichang Yuan 2018-03-21  147   * @para: some parameters used to control the lpc I/O operations
adf38bb0b5956a Zhichang Yuan 2018-03-21  148   * @addr: the lpc I/O target port address
adf38bb0b5956a Zhichang Yuan 2018-03-21  149   * @buf: where the data to be written is stored
adf38bb0b5956a Zhichang Yuan 2018-03-21  150   * @opcnt: how many I/O operations required, i.e. data width
adf38bb0b5956a Zhichang Yuan 2018-03-21  151   *
adf38bb0b5956a Zhichang Yuan 2018-03-21  152   * Returns 0 on success, non-zero on fail.
adf38bb0b5956a Zhichang Yuan 2018-03-21  153   */
adf38bb0b5956a Zhichang Yuan 2018-03-21  154  static int hisi_lpc_target_out(struct hisi_lpc_dev *lpcdev,
adf38bb0b5956a Zhichang Yuan 2018-03-21  155  			       struct lpc_cycle_para *para, unsigned long addr,
adf38bb0b5956a Zhichang Yuan 2018-03-21  156  			       const unsigned char *buf, unsigned long opcnt)
adf38bb0b5956a Zhichang Yuan 2018-03-21  157  {
adf38bb0b5956a Zhichang Yuan 2018-03-21  158  	unsigned int waitcnt;
adf38bb0b5956a Zhichang Yuan 2018-03-21  159  	unsigned long flags;
adf38bb0b5956a Zhichang Yuan 2018-03-21  160  	u32 cmd_word;
adf38bb0b5956a Zhichang Yuan 2018-03-21  161  	int ret;
adf38bb0b5956a Zhichang Yuan 2018-03-21  162  
adf38bb0b5956a Zhichang Yuan 2018-03-21  163  	if (!buf || !opcnt || !para || !lpcdev)
adf38bb0b5956a Zhichang Yuan 2018-03-21  164  		return -EINVAL;
adf38bb0b5956a Zhichang Yuan 2018-03-21  165  
adf38bb0b5956a Zhichang Yuan 2018-03-21  166  	/* default is increasing address */
adf38bb0b5956a Zhichang Yuan 2018-03-21  167  	cmd_word = LPC_REG_CMD_OP; /* IO mode, write */
adf38bb0b5956a Zhichang Yuan 2018-03-21  168  	waitcnt = LPC_PEROP_WAITCNT;
adf38bb0b5956a Zhichang Yuan 2018-03-21  169  	if (!(para->opflags & FG_INCRADDR_LPC)) {
adf38bb0b5956a Zhichang Yuan 2018-03-21  170  		cmd_word |= LPC_REG_CMD_SAMEADDR;
adf38bb0b5956a Zhichang Yuan 2018-03-21  171  		waitcnt = LPC_MAX_WAITCNT;
adf38bb0b5956a Zhichang Yuan 2018-03-21  172  	}
adf38bb0b5956a Zhichang Yuan 2018-03-21  173  
adf38bb0b5956a Zhichang Yuan 2018-03-21  174  	spin_lock_irqsave(&lpcdev->cycle_lock, flags);
adf38bb0b5956a Zhichang Yuan 2018-03-21  175  
adf38bb0b5956a Zhichang Yuan 2018-03-21  176  	writel_relaxed(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
adf38bb0b5956a Zhichang Yuan 2018-03-21  177  	writel_relaxed(cmd_word, lpcdev->membase + LPC_REG_CMD);
adf38bb0b5956a Zhichang Yuan 2018-03-21  178  	writel_relaxed(addr, lpcdev->membase + LPC_REG_ADDR);
adf38bb0b5956a Zhichang Yuan 2018-03-21  179  
adf38bb0b5956a Zhichang Yuan 2018-03-21  180  	writesb(lpcdev->membase + LPC_REG_WDATA, buf, opcnt);
adf38bb0b5956a Zhichang Yuan 2018-03-21  181  
adf38bb0b5956a Zhichang Yuan 2018-03-21  182  	writel(LPC_REG_STARTUP_SIGNAL_START,
adf38bb0b5956a Zhichang Yuan 2018-03-21  183  	       lpcdev->membase + LPC_REG_STARTUP_SIGNAL);
adf38bb0b5956a Zhichang Yuan 2018-03-21  184  
adf38bb0b5956a Zhichang Yuan 2018-03-21  185  	/* whether the operation is finished */
adf38bb0b5956a Zhichang Yuan 2018-03-21  186  	ret = wait_lpc_idle(lpcdev->membase, waitcnt);
adf38bb0b5956a Zhichang Yuan 2018-03-21  187  
adf38bb0b5956a Zhichang Yuan 2018-03-21  188  	spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);
adf38bb0b5956a Zhichang Yuan 2018-03-21  189  
adf38bb0b5956a Zhichang Yuan 2018-03-21  190  	return ret;
adf38bb0b5956a Zhichang Yuan 2018-03-21  191  }
adf38bb0b5956a Zhichang Yuan 2018-03-21  192  
adf38bb0b5956a Zhichang Yuan 2018-03-21  193  static unsigned long hisi_lpc_pio_to_addr(struct hisi_lpc_dev *lpcdev,
adf38bb0b5956a Zhichang Yuan 2018-03-21  194  					  unsigned long pio)
adf38bb0b5956a Zhichang Yuan 2018-03-21  195  {
adf38bb0b5956a Zhichang Yuan 2018-03-21  196  	return pio - lpcdev->io_host->io_start + lpcdev->io_host->hw_start;
adf38bb0b5956a Zhichang Yuan 2018-03-21  197  }
adf38bb0b5956a Zhichang Yuan 2018-03-21  198  
adf38bb0b5956a Zhichang Yuan 2018-03-21  199  /*
adf38bb0b5956a Zhichang Yuan 2018-03-21  200   * hisi_lpc_comm_in - input the data in a single operation
adf38bb0b5956a Zhichang Yuan 2018-03-21  201   * @hostdata: pointer to the device information relevant to LPC controller
adf38bb0b5956a Zhichang Yuan 2018-03-21  202   * @pio: the target I/O port address
adf38bb0b5956a Zhichang Yuan 2018-03-21  203   * @dwidth: the data length required to read from the target I/O port
adf38bb0b5956a Zhichang Yuan 2018-03-21  204   *
adf38bb0b5956a Zhichang Yuan 2018-03-21  205   * When success, data is returned. Otherwise, ~0 is returned.
adf38bb0b5956a Zhichang Yuan 2018-03-21  206   */
adf38bb0b5956a Zhichang Yuan 2018-03-21  207  static u32 hisi_lpc_comm_in(void *hostdata, unsigned long pio, size_t dwidth)
adf38bb0b5956a Zhichang Yuan 2018-03-21  208  {
adf38bb0b5956a Zhichang Yuan 2018-03-21  209  	struct hisi_lpc_dev *lpcdev = hostdata;
adf38bb0b5956a Zhichang Yuan 2018-03-21  210  	struct lpc_cycle_para iopara;
adf38bb0b5956a Zhichang Yuan 2018-03-21  211  	unsigned long addr;
adf38bb0b5956a Zhichang Yuan 2018-03-21  212  	u32 rd_data = 0;
adf38bb0b5956a Zhichang Yuan 2018-03-21  213  	int ret;
adf38bb0b5956a Zhichang Yuan 2018-03-21  214  
adf38bb0b5956a Zhichang Yuan 2018-03-21  215  	if (!lpcdev || !dwidth || dwidth > LPC_MAX_DWIDTH)
adf38bb0b5956a Zhichang Yuan 2018-03-21  216  		return ~0;
adf38bb0b5956a Zhichang Yuan 2018-03-21  217  
adf38bb0b5956a Zhichang Yuan 2018-03-21  218  	addr = hisi_lpc_pio_to_addr(lpcdev, pio);
adf38bb0b5956a Zhichang Yuan 2018-03-21  219  
adf38bb0b5956a Zhichang Yuan 2018-03-21  220  	iopara.opflags = FG_INCRADDR_LPC;
adf38bb0b5956a Zhichang Yuan 2018-03-21  221  	iopara.csize = dwidth;
adf38bb0b5956a Zhichang Yuan 2018-03-21  222  
adf38bb0b5956a Zhichang Yuan 2018-03-21  223  	ret = hisi_lpc_target_in(lpcdev, &iopara, addr,
adf38bb0b5956a Zhichang Yuan 2018-03-21  224  				 (unsigned char *)&rd_data, dwidth);
adf38bb0b5956a Zhichang Yuan 2018-03-21  225  	if (ret)
adf38bb0b5956a Zhichang Yuan 2018-03-21  226  		return ~0;
adf38bb0b5956a Zhichang Yuan 2018-03-21  227  
adf38bb0b5956a Zhichang Yuan 2018-03-21 @228  	return le32_to_cpu(rd_data);
adf38bb0b5956a Zhichang Yuan 2018-03-21  229  }
adf38bb0b5956a Zhichang Yuan 2018-03-21  230  
adf38bb0b5956a Zhichang Yuan 2018-03-21  231  /*
adf38bb0b5956a Zhichang Yuan 2018-03-21  232   * hisi_lpc_comm_out - output the data in a single operation
adf38bb0b5956a Zhichang Yuan 2018-03-21  233   * @hostdata: pointer to the device information relevant to LPC controller
adf38bb0b5956a Zhichang Yuan 2018-03-21  234   * @pio: the target I/O port address
adf38bb0b5956a Zhichang Yuan 2018-03-21  235   * @val: a value to be output from caller, maximum is four bytes
adf38bb0b5956a Zhichang Yuan 2018-03-21  236   * @dwidth: the data width required writing to the target I/O port
adf38bb0b5956a Zhichang Yuan 2018-03-21  237   *
adf38bb0b5956a Zhichang Yuan 2018-03-21  238   * This function corresponds to out(b,w,l) only.
adf38bb0b5956a Zhichang Yuan 2018-03-21  239   */
adf38bb0b5956a Zhichang Yuan 2018-03-21  240  static void hisi_lpc_comm_out(void *hostdata, unsigned long pio,
adf38bb0b5956a Zhichang Yuan 2018-03-21  241  			      u32 val, size_t dwidth)
adf38bb0b5956a Zhichang Yuan 2018-03-21  242  {
adf38bb0b5956a Zhichang Yuan 2018-03-21  243  	struct hisi_lpc_dev *lpcdev = hostdata;
adf38bb0b5956a Zhichang Yuan 2018-03-21  244  	struct lpc_cycle_para iopara;
adf38bb0b5956a Zhichang Yuan 2018-03-21  245  	const unsigned char *buf;
adf38bb0b5956a Zhichang Yuan 2018-03-21  246  	unsigned long addr;
adf38bb0b5956a Zhichang Yuan 2018-03-21  247  
adf38bb0b5956a Zhichang Yuan 2018-03-21  248  	if (!lpcdev || !dwidth || dwidth > LPC_MAX_DWIDTH)
adf38bb0b5956a Zhichang Yuan 2018-03-21  249  		return;
adf38bb0b5956a Zhichang Yuan 2018-03-21  250  
adf38bb0b5956a Zhichang Yuan 2018-03-21 @251  	val = cpu_to_le32(val);
adf38bb0b5956a Zhichang Yuan 2018-03-21  252  
adf38bb0b5956a Zhichang Yuan 2018-03-21  253  	buf = (const unsigned char *)&val;
adf38bb0b5956a Zhichang Yuan 2018-03-21  254  	addr = hisi_lpc_pio_to_addr(lpcdev, pio);
adf38bb0b5956a Zhichang Yuan 2018-03-21  255  
adf38bb0b5956a Zhichang Yuan 2018-03-21  256  	iopara.opflags = FG_INCRADDR_LPC;
adf38bb0b5956a Zhichang Yuan 2018-03-21  257  	iopara.csize = dwidth;
adf38bb0b5956a Zhichang Yuan 2018-03-21  258  
adf38bb0b5956a Zhichang Yuan 2018-03-21  259  	hisi_lpc_target_out(lpcdev, &iopara, addr, buf, dwidth);
adf38bb0b5956a Zhichang Yuan 2018-03-21  260  }
adf38bb0b5956a Zhichang Yuan 2018-03-21  261  

:::::: The code at line 82 was first introduced by commit
:::::: adf38bb0b5956ab5469acb1ca981a9287c7ad1d8 HISI LPC: Support the LPC host on Hip06/Hip07 with DT bindings

:::::: TO: Zhichang Yuan <yuanzhichang@hisilicon.com>
:::::: CC: Bjorn Helgaas <helgaas@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
