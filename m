Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD42E661
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TsnHsnYjoYm0s7zri/gT19XNVeNlDYiIhkOM1YlG+0U=; b=B01
	OA8/w3c14IiBUFzLl/txVdoGxyLT9YXEqFHLlvWvK0/918E9l+PvERzbhB0NkzOZsBjVrqcRIlvJH
	ROjdQSL8zs24FgacKMF5Na211PkrFD6GocEgaAcd5zm/VUnneV5gEPoaZukqwyJD4uF6pNkkxOy56
	hVPR5pYZMA9vM4rfO9aqIg05OfwTDQy54LIKjl2jNjDOeYynvY+0YBvfkm9yyfwBR1FPyXrWOQOXP
	NgBHKeq1c3OvRw5SCkHNIsWb4gzarFWtkQh+Uu0iJw7cseF4hhGZQ1K9TJsihqpXLl8SaUCEuAGpO
	IIHqwfvWPFBwck8F+lowwSw4Y45dTeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8DY-00070W-LM; Mon, 29 Apr 2019 15:29:20 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8DQ-000701-Op
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:29:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 08:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; 
 d="gz'50?scan'50,208,50";a="154752097"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 29 Apr 2019 08:29:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hL8DM-000Brr-Ou; Mon, 29 Apr 2019 23:29:08 +0800
Date: Mon, 29 Apr 2019 23:28:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: [arm-soc:zynqmp/soc 2/5] drivers//spi/spi-zynqmp-gqspi.c:1025:13:
 error: implicit declaration of function 'zynqmp_pm_get_eemi_ops'
Message-ID: <201904292354.5pBKsrOf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_082912_859323_E5AF9D3A 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jolly Shah <jollys@xilinx.com>, Michal Simek <monstr@monstr.eu>,
 arm@kernel.org, kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git zynqmp/soc
head:   c09f7471127e9debf3e814ffef4f4012c31a5a3d
commit: 3d0313786470acb414b7d5fdd2202f061acffb02 [2/5] drivers: Defer probe if firmware is not ready
config: i386-randconfig-l0-04290834 (attached as .config)
compiler: gcc-5 (Debian 5.5.0-3) 5.4.1 20171010
reproduce:
        git checkout 3d0313786470acb414b7d5fdd2202f061acffb02
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers//spi/spi-zynqmp-gqspi.c: In function 'zynqmp_qspi_probe':
>> drivers//spi/spi-zynqmp-gqspi.c:1025:13: error: implicit declaration of function 'zynqmp_pm_get_eemi_ops' [-Werror=implicit-function-declaration]
     eemi_ops = zynqmp_pm_get_eemi_ops();
                ^
   drivers//spi/spi-zynqmp-gqspi.c:1025:11: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
     eemi_ops = zynqmp_pm_get_eemi_ops();
              ^
   cc1: some warnings being treated as errors

vim +/zynqmp_pm_get_eemi_ops +1025 drivers//spi/spi-zynqmp-gqspi.c

  1008	
  1009	/**
  1010	 * zynqmp_qspi_probe:	Probe method for the QSPI driver
  1011	 * @pdev:	Pointer to the platform_device structure
  1012	 *
  1013	 * This function initializes the driver data structures and the hardware.
  1014	 *
  1015	 * Return:	0 on success; error value otherwise
  1016	 */
  1017	static int zynqmp_qspi_probe(struct platform_device *pdev)
  1018	{
  1019		int ret = 0;
  1020		struct spi_master *master;
  1021		struct zynqmp_qspi *xqspi;
  1022		struct resource *res;
  1023		struct device *dev = &pdev->dev;
  1024	
> 1025		eemi_ops = zynqmp_pm_get_eemi_ops();
  1026		if (IS_ERR(eemi_ops))
  1027			return PTR_ERR(eemi_ops);
  1028	
  1029		master = spi_alloc_master(&pdev->dev, sizeof(*xqspi));
  1030		if (!master)
  1031			return -ENOMEM;
  1032	
  1033		xqspi = spi_master_get_devdata(master);
  1034		master->dev.of_node = pdev->dev.of_node;
  1035		platform_set_drvdata(pdev, master);
  1036	
  1037		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  1038		xqspi->regs = devm_ioremap_resource(&pdev->dev, res);
  1039		if (IS_ERR(xqspi->regs)) {
  1040			ret = PTR_ERR(xqspi->regs);
  1041			goto remove_master;
  1042		}
  1043	
  1044		xqspi->dev = dev;
  1045		xqspi->pclk = devm_clk_get(&pdev->dev, "pclk");
  1046		if (IS_ERR(xqspi->pclk)) {
  1047			dev_err(dev, "pclk clock not found.\n");
  1048			ret = PTR_ERR(xqspi->pclk);
  1049			goto remove_master;
  1050		}
  1051	
  1052		ret = clk_prepare_enable(xqspi->pclk);
  1053		if (ret) {
  1054			dev_err(dev, "Unable to enable APB clock.\n");
  1055			goto remove_master;
  1056		}
  1057	
  1058		xqspi->refclk = devm_clk_get(&pdev->dev, "ref_clk");
  1059		if (IS_ERR(xqspi->refclk)) {
  1060			dev_err(dev, "ref_clk clock not found.\n");
  1061			ret = PTR_ERR(xqspi->refclk);
  1062			goto clk_dis_pclk;
  1063		}
  1064	
  1065		ret = clk_prepare_enable(xqspi->refclk);
  1066		if (ret) {
  1067			dev_err(dev, "Unable to enable device clock.\n");
  1068			goto clk_dis_pclk;
  1069		}
  1070	
  1071		pm_runtime_use_autosuspend(&pdev->dev);
  1072		pm_runtime_set_autosuspend_delay(&pdev->dev, SPI_AUTOSUSPEND_TIMEOUT);
  1073		pm_runtime_set_active(&pdev->dev);
  1074		pm_runtime_enable(&pdev->dev);
  1075		/* QSPI controller initializations */
  1076		zynqmp_qspi_init_hw(xqspi);
  1077	
  1078		pm_runtime_mark_last_busy(&pdev->dev);
  1079		pm_runtime_put_autosuspend(&pdev->dev);
  1080		xqspi->irq = platform_get_irq(pdev, 0);
  1081		if (xqspi->irq <= 0) {
  1082			ret = -ENXIO;
  1083			dev_err(dev, "irq resource not found\n");
  1084			goto clk_dis_all;
  1085		}
  1086		ret = devm_request_irq(&pdev->dev, xqspi->irq, zynqmp_qspi_irq,
  1087				       0, pdev->name, master);
  1088		if (ret != 0) {
  1089			ret = -ENXIO;
  1090			dev_err(dev, "request_irq failed\n");
  1091			goto clk_dis_all;
  1092		}
  1093	
  1094		master->num_chipselect = GQSPI_DEFAULT_NUM_CS;
  1095	
  1096		master->setup = zynqmp_qspi_setup;
  1097		master->set_cs = zynqmp_qspi_chipselect;
  1098		master->transfer_one = zynqmp_qspi_start_transfer;
  1099		master->prepare_transfer_hardware = zynqmp_prepare_transfer_hardware;
  1100		master->unprepare_transfer_hardware =
  1101						zynqmp_unprepare_transfer_hardware;
  1102		master->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
  1103		master->bits_per_word_mask = SPI_BPW_MASK(8);
  1104		master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_RX_DUAL | SPI_RX_QUAD |
  1105				    SPI_TX_DUAL | SPI_TX_QUAD;
  1106	
  1107		if (master->dev.parent == NULL)
  1108			master->dev.parent = &master->dev;
  1109	
  1110		ret = spi_register_master(master);
  1111		if (ret)
  1112			goto clk_dis_all;
  1113	
  1114		return 0;
  1115	
  1116	clk_dis_all:
  1117		pm_runtime_set_suspended(&pdev->dev);
  1118		pm_runtime_disable(&pdev->dev);
  1119		clk_disable_unprepare(xqspi->refclk);
  1120	clk_dis_pclk:
  1121		clk_disable_unprepare(xqspi->pclk);
  1122	remove_master:
  1123		spi_master_put(master);
  1124	
  1125		return ret;
  1126	}
  1127	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--a8Wt8u1KmwUX3Y2C--

