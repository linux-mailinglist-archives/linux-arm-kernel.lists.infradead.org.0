Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E1A112DB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tR6IqcyLTts6/wXXkRPqzYq21/I55D5rMyyZjWck/ds=; b=pOtBTjbU2tBegJ
	WK1tzhewPdvlNISLXnnAA9unBgjsEdUcdRmgomOTGwz/YyIU9spvvfzpmdn/TKKOTTEbEYLcByqgB
	5ovHG7V5Fzd1bdoctzWxZpdbJ/rskI2qccT1dYlqHRXaRvtUvswaHcR/4pfCnK6Zikvg5cwtA9erq
	DAqVYPg0txsHd+uAWqFORfVUo3IfD1mDhVWMyL4yGmjEP7xcH0Y3YRJ623YXOnlIxwe3qna2cqbaA
	MZrJdQY3dVeaUMyD3rESoCfv7IoSNFPckNsvJNRAr6sO4wWLArbq4k0ud8AFSbHI6QFb++89H55xO
	mmRHV8pecY+n4fP7FgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVvY-0004Pf-It; Wed, 04 Dec 2019 14:46:52 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVvP-0004Os-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:46:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 06:46:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="208830167"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2019 06:46:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1icVvN-000GdG-RA; Wed, 04 Dec 2019 22:46:41 +0800
Date: Wed, 4 Dec 2019 22:46:34 +0800
From: kbuild test robot <lkp@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: [arm:cex7 71/84] drivers/net/dsa/mt7530.c:1357:57: sparse: sparse:
 incorrect type in argument 2 (different base types)
Message-ID: <201912042232.wVMDzon1%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_064643_990016_6EE85D78 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   ec23eefa195e352e11a7289aeaeee478f3e42d47
commit: 64f322c951364f5d3b2d4acd5f5a8ed4c1745349 [71/84] net: of_get_phy_mode: Change API to solve int/unit warnings
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-91-g817270f-dirty
        git checkout 64f322c951364f5d3b2d4acd5f5a8ed4c1745349
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/dsa/mt7530.c:1357:57: sparse: sparse: incorrect type in argument 2 (different base types) @@    expected unsigned int enum phy_interface_t [usertype] *interface @@    got unsigned int enum phy_inunsigned int enum phy_interface_t [usertype] *interface @@
>> drivers/net/dsa/mt7530.c:1357:57: sparse:    expected unsigned int enum phy_interface_t [usertype] *interface
>> drivers/net/dsa/mt7530.c:1357:57: sparse:    got unsigned int enum phy_interface_t [addressable] [assigned] [usertype] interface
>> drivers/net/dsa/mt7530.c:1357:57: sparse: sparse: non size-preserving integer to pointer cast

vim +1357 drivers/net/dsa/mt7530.c

  1238	
  1239	static int
  1240	mt7530_setup(struct dsa_switch *ds)
  1241	{
  1242		struct mt7530_priv *priv = ds->priv;
  1243		struct device_node *phy_node;
  1244		struct device_node *mac_np;
  1245		struct mt7530_dummy_poll p;
  1246		phy_interface_t interface;
  1247		struct device_node *dn;
  1248		u32 id, val;
  1249		int ret, i;
  1250	
  1251		/* The parent node of master netdev which holds the common system
  1252		 * controller also is the container for two GMACs nodes representing
  1253		 * as two netdev instances.
  1254		 */
  1255		dn = ds->ports[MT7530_CPU_PORT].master->dev.of_node->parent;
  1256	
  1257		if (priv->id == ID_MT7530) {
  1258			priv->ethernet = syscon_node_to_regmap(dn);
  1259			if (IS_ERR(priv->ethernet))
  1260				return PTR_ERR(priv->ethernet);
  1261	
  1262			regulator_set_voltage(priv->core_pwr, 1000000, 1000000);
  1263			ret = regulator_enable(priv->core_pwr);
  1264			if (ret < 0) {
  1265				dev_err(priv->dev,
  1266					"Failed to enable core power: %d\n", ret);
  1267				return ret;
  1268			}
  1269	
  1270			regulator_set_voltage(priv->io_pwr, 3300000, 3300000);
  1271			ret = regulator_enable(priv->io_pwr);
  1272			if (ret < 0) {
  1273				dev_err(priv->dev, "Failed to enable io pwr: %d\n",
  1274					ret);
  1275				return ret;
  1276			}
  1277		}
  1278	
  1279		/* Reset whole chip through gpio pin or memory-mapped registers for
  1280		 * different type of hardware
  1281		 */
  1282		if (priv->mcm) {
  1283			reset_control_assert(priv->rstc);
  1284			usleep_range(1000, 1100);
  1285			reset_control_deassert(priv->rstc);
  1286		} else {
  1287			gpiod_set_value_cansleep(priv->reset, 0);
  1288			usleep_range(1000, 1100);
  1289			gpiod_set_value_cansleep(priv->reset, 1);
  1290		}
  1291	
  1292		/* Waiting for MT7530 got to stable */
  1293		INIT_MT7530_DUMMY_POLL(&p, priv, MT7530_HWTRAP);
  1294		ret = readx_poll_timeout(_mt7530_read, &p, val, val != 0,
  1295					 20, 1000000);
  1296		if (ret < 0) {
  1297			dev_err(priv->dev, "reset timeout\n");
  1298			return ret;
  1299		}
  1300	
  1301		id = mt7530_read(priv, MT7530_CREV);
  1302		id >>= CHIP_NAME_SHIFT;
  1303		if (id != MT7530_ID) {
  1304			dev_err(priv->dev, "chip %x can't be supported\n", id);
  1305			return -ENODEV;
  1306		}
  1307	
  1308		/* Reset the switch through internal reset */
  1309		mt7530_write(priv, MT7530_SYS_CTRL,
  1310			     SYS_CTRL_PHY_RST | SYS_CTRL_SW_RST |
  1311			     SYS_CTRL_REG_RST);
  1312	
  1313		/* Enable Port 6 only; P5 as GMAC5 which currently is not supported */
  1314		val = mt7530_read(priv, MT7530_MHWTRAP);
  1315		val &= ~MHWTRAP_P6_DIS & ~MHWTRAP_PHY_ACCESS;
  1316		val |= MHWTRAP_MANUAL;
  1317		mt7530_write(priv, MT7530_MHWTRAP, val);
  1318	
  1319		priv->p6_interface = PHY_INTERFACE_MODE_NA;
  1320	
  1321		/* Enable and reset MIB counters */
  1322		mt7530_mib_reset(ds);
  1323	
  1324		mt7530_clear(priv, MT7530_MFC, UNU_FFP_MASK);
  1325	
  1326		for (i = 0; i < MT7530_NUM_PORTS; i++) {
  1327			/* Disable forwarding by default on all ports */
  1328			mt7530_rmw(priv, MT7530_PCR_P(i), PCR_MATRIX_MASK,
  1329				   PCR_MATRIX_CLR);
  1330	
  1331			if (dsa_is_cpu_port(ds, i))
  1332				mt7530_cpu_port_enable(priv, i);
  1333			else
  1334				mt7530_port_disable(ds, i);
  1335		}
  1336	
  1337		/* Setup port 5 */
  1338		priv->p5_intf_sel = P5_DISABLED;
  1339		interface = PHY_INTERFACE_MODE_NA;
  1340	
  1341		if (!dsa_is_unused_port(ds, 5)) {
  1342			priv->p5_intf_sel = P5_INTF_SEL_GMAC5;
  1343			of_get_phy_mode(ds->ports[5].dn, &interface);
  1344		} else {
  1345			/* Scan the ethernet nodes. look for GMAC1, lookup used phy */
  1346			for_each_child_of_node(dn, mac_np) {
  1347				if (!of_device_is_compatible(mac_np,
  1348							     "mediatek,eth-mac"))
  1349					continue;
  1350	
  1351				ret = of_property_read_u32(mac_np, "reg", &id);
  1352				if (ret < 0 || id != 1)
  1353					continue;
  1354	
  1355				phy_node = of_parse_phandle(mac_np, "phy-handle", 0);
  1356				if (phy_node->parent == priv->dev->of_node->parent) {
> 1357					of_get_phy_mode(mac_np, interface);
  1358					id = of_mdio_parse_addr(ds->dev, phy_node);
  1359					if (id == 0)
  1360						priv->p5_intf_sel = P5_INTF_SEL_PHY_P0;
  1361					if (id == 4)
  1362						priv->p5_intf_sel = P5_INTF_SEL_PHY_P4;
  1363				}
  1364				of_node_put(phy_node);
  1365				break;
  1366			}
  1367		}
  1368	
  1369		mt7530_setup_port5(ds, interface);
  1370	
  1371		/* Flush the FDB table */
  1372		ret = mt7530_fdb_cmd(priv, MT7530_FDB_FLUSH, NULL);
  1373		if (ret < 0)
  1374			return ret;
  1375	
  1376		return 0;
  1377	}
  1378	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
