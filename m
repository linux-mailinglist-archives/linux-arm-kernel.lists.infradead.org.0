Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D58F5D59
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 06:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3dGvB89xS1S+Ad9PtMly+BY56OPzbHcOa/gBY6eTVkQ=; b=JA7
	SreB/U9iPGzq4OBU7dJo+foHGsNZ91uiJsWGV9nfQZQZdjD1OD3JI5q0Q4A+Jo6v8V0leChI/SdYz
	bKrpd5P8o5vRpCnArBlnFTR+1M8o6tGjIklXiRrT9Vxs+gS91qvp+I1vuQLN8/ZJW6ZV/K7lFPquh
	H+q0s32Qor6zUpm4cl6rzLUPbO9DdnOSziIjRf+1RXdxvg1wP5ELicqWH95tm+9gzvwoDhHXFY7iX
	6+xFeAjCRjubaKlKQBnYHXwn9Uhp3ZfheK9BIgw6Jerw56Ar3fpiIFT8ItRsf7Nr1/UUKRcbRdxIQ
	NFv+JeNTwQY5vHIw/gjU75hhLj96aaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTIs3-0002rS-2X; Sat, 09 Nov 2019 05:01:11 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTIrv-0002qI-1x
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 05:01:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 21:00:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; 
 d="gz'50?scan'50,208,50";a="206637771"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Nov 2019 21:00:52 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iTIrk-00085H-7v; Sat, 09 Nov 2019 13:00:52 +0800
Date: Sat, 9 Nov 2019 13:00:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>
Subject: [xlnx:master 20/144] drivers/usb/dwc3/core.c:1006: undefined
 reference to `dwc3_mask_phy_reset'
Message-ID: <201911091346.0FJdZPpv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3nwsskcz2w43bilm"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_210103_199866_E3B3BCD3 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--3nwsskcz2w43bilm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx master
head:   2320db49769e9480e68b5546b8f3c251c01c082d
commit: 31d7800cc8d815f78d1bfa30655799f5733a4f59 [20/144] usb: dwc3: Add support for masking phy reset signal
config: i386-randconfig-g003-201944 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
reproduce:
        git checkout 31d7800cc8d815f78d1bfa30655799f5733a4f59
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: drivers/spi/spi-mem.o: in function `spi_mem_exec_op':
   drivers/spi/spi-mem.c:343: undefined reference to `update_stripe'
   ld: drivers/usb/dwc3/core.o: in function `dwc3_suspend_common':
   drivers/usb/dwc3/core.c:1790: undefined reference to `dwc3_set_usb_core_power'
   ld: drivers/usb/dwc3/core.o: in function `dwc3_core_init':
>> drivers/usb/dwc3/core.c:1006: undefined reference to `dwc3_mask_phy_reset'
   ld: drivers/usb/dwc3/core.o: in function `dwc3_config_soc_bus':
   drivers/usb/dwc3/core.c:593: undefined reference to `dwc3_set_simple_data'
   ld: drivers/usb/dwc3/core.c:585: undefined reference to `dwc3_enable_hw_coherency'
   ld: drivers/usb/dwc3/core.o: in function `dwc3_resume_common':
   drivers/usb/dwc3/core.c:1809: undefined reference to `dwc3_set_usb_core_power'
   ld: drivers/usb/dwc3/core.o: in function `dwc3_get_properties':
   drivers/usb/dwc3/core.c:1456: undefined reference to `dwc3_simple_check_quirks'
   ld: drivers/usb/dwc3/host.o: in function `dwc3_host_wakeup_capable':
   drivers/usb/dwc3/host.c:18: undefined reference to `dwc3_simple_wakeup_capable'

vim +1006 drivers/usb/dwc3/core.c

   952	
   953	/**
   954	 * dwc3_core_init - Low-level initialization of DWC3 Core
   955	 * @dwc: Pointer to our controller context structure
   956	 *
   957	 * Returns 0 on success otherwise negative errno.
   958	 */
   959	int dwc3_core_init(struct dwc3 *dwc)
   960	{
   961		u32			reg;
   962		int			ret;
   963	
   964		if (!dwc3_core_is_valid(dwc)) {
   965			dev_err(dwc->dev, "this is not a DesignWare USB3 DRD Core\n");
   966			ret = -ENODEV;
   967			goto err0;
   968		}
   969	
   970		/*
   971		 * Write Linux Version Code to our GUID register so it's easy to figure
   972		 * out which kernel version a bug was found.
   973		 */
   974		dwc3_writel(dwc->regs, DWC3_GUID, LINUX_VERSION_CODE);
   975	
   976		/* Handle USB2.0-only core configuration */
   977		if (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
   978				DWC3_GHWPARAMS3_SSPHY_IFC_DIS) {
   979			if (dwc->maximum_speed == USB_SPEED_SUPER)
   980				dwc->maximum_speed = USB_SPEED_HIGH;
   981		}
   982	
   983		ret = dwc3_phy_setup(dwc);
   984		if (ret)
   985			goto err0;
   986	
   987		if (!dwc->ulpi_ready) {
   988			ret = dwc3_core_ulpi_init(dwc);
   989			if (ret)
   990				goto err0;
   991			dwc->ulpi_ready = true;
   992		}
   993	
   994		if (!dwc->phys_ready) {
   995			ret = dwc3_core_get_phy(dwc);
   996			if (ret)
   997				goto err0a;
   998			dwc->phys_ready = true;
   999		}
  1000	
  1001		ret = dwc3_core_soft_reset(dwc);
  1002		if (ret)
  1003			goto err0a;
  1004	
  1005		if (dwc->mask_phy_rst)
> 1006			dwc3_mask_phy_reset(dwc->dev, TRUE);
  1007	
  1008		dwc3_core_setup_global_control(dwc);
  1009		dwc3_core_num_eps(dwc);
  1010	
  1011		if (dwc->scratchbuf == NULL) {
  1012			ret = dwc3_alloc_scratch_buffers(dwc);
  1013			if (ret) {
  1014				dev_err(dwc->dev,
  1015					"Not enough memory for scratch buffers\n");
  1016				goto err1;
  1017			}
  1018		}
  1019	
  1020		ret = dwc3_setup_scratch_buffers(dwc);
  1021		if (ret) {
  1022			dev_err(dwc->dev, "Failed to setup scratch buffers: %d\n", ret);
  1023			goto err1;
  1024		}
  1025	
  1026		/* Adjust Frame Length */
  1027		dwc3_frame_length_adjustment(dwc);
  1028	
  1029		dwc3_set_incr_burst_type(dwc);
  1030	
  1031		ret = dwc3_config_soc_bus(dwc);
  1032		if (ret)
  1033			goto err1;
  1034	
  1035		usb_phy_set_suspend(dwc->usb2_phy, 0);
  1036		usb_phy_set_suspend(dwc->usb3_phy, 0);
  1037		ret = phy_power_on(dwc->usb2_generic_phy);
  1038		if (ret < 0)
  1039			goto err2;
  1040	
  1041		ret = phy_power_on(dwc->usb3_generic_phy);
  1042		if (ret < 0)
  1043			goto err3;
  1044	
  1045		ret = dwc3_event_buffers_setup(dwc);
  1046		if (ret) {
  1047			dev_err(dwc->dev, "failed to setup event buffers\n");
  1048			goto err4;
  1049		}
  1050	
  1051		switch (dwc->dr_mode) {
  1052		case USB_DR_MODE_PERIPHERAL:
  1053			dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
  1054			break;
  1055		case USB_DR_MODE_HOST:
  1056			dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
  1057			break;
  1058		case USB_DR_MODE_OTG:
  1059			dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_OTG);
  1060			break;
  1061		default:
  1062			dev_warn(dwc->dev, "Unsupported mode %d\n", dwc->dr_mode);
  1063			break;
  1064		}
  1065	
  1066		/*
  1067		 * ENDXFER polling is available on version 3.10a and later of
  1068		 * the DWC_usb3 controller. It is NOT available in the
  1069		 * DWC_usb31 controller.
  1070		 */
  1071		if (!dwc3_is_usb31(dwc) && dwc->revision >= DWC3_REVISION_310A) {
  1072			reg = dwc3_readl(dwc->regs, DWC3_GUCTL2);
  1073			reg |= DWC3_GUCTL2_RST_ACTBITLATER;
  1074			dwc3_writel(dwc->regs, DWC3_GUCTL2, reg);
  1075		}
  1076	
  1077		/* When configured in HOST mode, after issuing U3/L2 exit controller
  1078		 * fails to send proper CRC checksum in CRC5 feild. Because of this
  1079		 * behaviour Transaction Error is generated, resulting in reset and
  1080		 * re-enumeration of usb device attached. Enabling bit 10 of GUCTL1
  1081		 * will correct this problem
  1082		 */
  1083		if (dwc->enable_guctl1_resume_quirk) {
  1084			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1085			reg |= DWC3_GUCTL1_RESUME_QUIRK;
  1086			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1087		}
  1088	
  1089		/* SNPS controller when configureed in HOST mode maintains Inter Packet
  1090		 * Delay (IPD) of ~380ns which works with most of the super-speed hubs
  1091		 * except VIA-LAB hubs. When IPD is ~380ns HOST controller fails to
  1092		 * enumerate FS/LS devices when connected behind VIA-LAB hubs.
  1093		 * Enabling bit 9 of GUCTL1 enables the workaround in HW to reduce the
  1094		 * ULPI clock latency by 1 cycle, thus reducing the IPD (~360ns) and
  1095		 * making controller enumerate FS/LS devices connected behind VIA-LAB.
  1096		 */
  1097		if (dwc->enable_guctl1_ipd_quirk) {
  1098			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1099			reg |= DWC3_GUCTL1_IPD_QUIRK;
  1100			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1101		}
  1102	
  1103		if (dwc->revision >= DWC3_REVISION_250A) {
  1104			reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
  1105	
  1106			/*
  1107			 * Enable hardware control of sending remote wakeup
  1108			 * in HS when the device is in the L1 state.
  1109			 */
  1110			if (dwc->revision >= DWC3_REVISION_290A)
  1111				reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
  1112	
  1113			if (dwc->dis_tx_ipgap_linecheck_quirk)
  1114				reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
  1115	
  1116			dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
  1117		}
  1118	
  1119		if (dwc->dr_mode == USB_DR_MODE_HOST ||
  1120		    dwc->dr_mode == USB_DR_MODE_OTG) {
  1121			reg = dwc3_readl(dwc->regs, DWC3_GUCTL);
  1122	
  1123			/*
  1124			 * Enable Auto retry Feature to make the controller operating in
  1125			 * Host mode on seeing transaction errors(CRC errors or internal
  1126			 * overrun scenerios) on IN transfers to reply to the device
  1127			 * with a non-terminating retry ACK (i.e, an ACK transcation
  1128			 * packet with Retry=1 & Nump != 0)
  1129			 */
  1130			reg |= DWC3_GUCTL_HSTINAUTORETRY;
  1131	
  1132			dwc3_writel(dwc->regs, DWC3_GUCTL, reg);
  1133		}
  1134	
  1135		/*
  1136		 * Must config both number of packets and max burst settings to enable
  1137		 * RX and/or TX threshold.
  1138		 */
  1139		if (dwc3_is_usb31(dwc) && dwc->dr_mode == USB_DR_MODE_HOST) {
  1140			u8 rx_thr_num = dwc->rx_thr_num_pkt_prd;
  1141			u8 rx_maxburst = dwc->rx_max_burst_prd;
  1142			u8 tx_thr_num = dwc->tx_thr_num_pkt_prd;
  1143			u8 tx_maxburst = dwc->tx_max_burst_prd;
  1144	
  1145			if (rx_thr_num && rx_maxburst) {
  1146				reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
  1147				reg |= DWC31_RXTHRNUMPKTSEL_PRD;
  1148	
  1149				reg &= ~DWC31_RXTHRNUMPKT_PRD(~0);
  1150				reg |= DWC31_RXTHRNUMPKT_PRD(rx_thr_num);
  1151	
  1152				reg &= ~DWC31_MAXRXBURSTSIZE_PRD(~0);
  1153				reg |= DWC31_MAXRXBURSTSIZE_PRD(rx_maxburst);
  1154	
  1155				dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);
  1156			}
  1157	
  1158			if (tx_thr_num && tx_maxburst) {
  1159				reg = dwc3_readl(dwc->regs, DWC3_GTXTHRCFG);
  1160				reg |= DWC31_TXTHRNUMPKTSEL_PRD;
  1161	
  1162				reg &= ~DWC31_TXTHRNUMPKT_PRD(~0);
  1163				reg |= DWC31_TXTHRNUMPKT_PRD(tx_thr_num);
  1164	
  1165				reg &= ~DWC31_MAXTXBURSTSIZE_PRD(~0);
  1166				reg |= DWC31_MAXTXBURSTSIZE_PRD(tx_maxburst);
  1167	
  1168				dwc3_writel(dwc->regs, DWC3_GTXTHRCFG, reg);
  1169			}
  1170		}
  1171	
  1172		return 0;
  1173	
  1174	err4:
  1175		phy_power_off(dwc->usb3_generic_phy);
  1176	
  1177	err3:
  1178		phy_power_off(dwc->usb2_generic_phy);
  1179	
  1180	err2:
  1181		usb_phy_set_suspend(dwc->usb2_phy, 1);
  1182		usb_phy_set_suspend(dwc->usb3_phy, 1);
  1183	
  1184	err1:
  1185		usb_phy_shutdown(dwc->usb2_phy);
  1186		usb_phy_shutdown(dwc->usb3_phy);
  1187		phy_exit(dwc->usb2_generic_phy);
  1188		phy_exit(dwc->usb3_generic_phy);
  1189	
  1190	err0a:
  1191		dwc3_ulpi_exit(dwc);
  1192	
  1193	err0:
  1194		return ret;
  1195	}
  1196	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--3nwsskcz2w43bilm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--3nwsskcz2w43bilm
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--3nwsskcz2w43bilm--

