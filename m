Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F04219F7F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q71+EtdJP0+RlDKpczTVq++VLHNeRHcytAPjRmGIg9s=; b=dpDewtwWbmE7Na
	fSAcvTsd8ZZZBYExq2GQn+PB1URtnLvgIMigp8zlQbVv97c8Z58QLc2YdibrEh4y5wq46fXsy7mmN
	8RQEolGf+AQl9BaCuQ7xl+2GaSsP96TuGHA/unLcg9fTvJEtCeEL8itIOn2ikfbplB8fkV88cI0+O
	cPPmf6UBfPIVn02lrVxUCo98NB7p23vAlhQKYwld8VdIYN7eLyVoSCf1tQLyqcWqPVd/ycOiI9Hvc
	WCs68ZjisykfDHw7sulHjUUspVMzZq6omZAegbzwtipnFDO4ds2jVyexlIESZzVoSrg4ZmUoM+Gcy
	ChkAx1gNrJJmrraZE2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSk9-0007AX-GW; Mon, 06 Apr 2020 14:28:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSim-0005rz-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:27:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EFC601A0E64;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E26791A02FE;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5FD0A204E6;
 Mon,  6 Apr 2020 16:27:25 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: anda-alexandra.dorneanu@nxp.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
Subject: [PATCH 04/10] bus/fsl-mc: Propagate driver_override for a child
 DPRC's children
Date: Mon,  6 Apr 2020 17:27:07 +0300
Message-Id: <20200319154051.30609-5-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:4:3f::44) by
 DB8PR04MB6665.eurprd04.prod.outlook.com with HTTPS via
 DB6PR0201CA0034.EURPRD02.PROD.OUTLOOK.COM; Thu, 19 Mar 2020 15:41:18 +0000
Received: from AM0PR10CA0010.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:17c::20)
 by DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Thu, 19 Mar
 2020 15:41:17 +0000
Received: from VE1EUR01FT059.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:208:17c:cafe::c3) by AM0PR10CA0010.outlook.office365.com
 (2603:10a6:208:17c::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Thu, 19 Mar 2020 15:41:17 +0000
Received: from vger.kernel.org (209.132.180.67) by
 VE1EUR01FT059.mail.protection.outlook.com (10.152.3.127) with Microsoft SMTP
 Server id 15.20.2814.14 via Frontend Transport; Thu, 19 Mar 2020 15:41:17
 +0000
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1728188AbgCSPlN (ORCPT <rfc822;diana.craciun@oss.nxp.com>
 + 1 other); Thu, 19 Mar 2020 11:41:13 -0400
Received: from inva021.nxp.com ([92.121.34.21]:51828 "EHLO inva021.nxp.com"
 rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
 id S1728077AbgCSPlM (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
 Thu, 19 Mar 2020 11:41:12 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C5EC12000D3;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B81182000C1;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 520F8205C2;
 Thu, 19 Mar 2020 16:41:10 +0100 (CET)
Thread-Topic: [PATCH 04/10] bus/fsl-mc: Propagate driver_override for a child
 DPRC's children
Thread-Index: AQHV/gTVMVIUZZx1LU6aLCYeQL3f1Q==
X-MS-Exchange-MessageSentRepresentingType: 2
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: VE1EUR01FT059.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-Organization-ComplianceLabelId: 3dbb5f39-dc76-4916-9db3-fa9191760a55
X-Auto-Response-Suppress: All
X-MS-Exchange-Organization-Network-Message-Id: 63fb6234-689c-48f5-3a87-08d7cc1bf6a3
X-MS-Exchange-Organization-RecordReviewCfmType: 0
received-spf: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
x-ms-publictraffictype: Email
authentication-results: spf=none (sender IP is 209.132.180.67)
 smtp.mailfrom=vger.kernel.org; oss.nxp.com; dkim=none (message not signed)
 header.d=none;oss.nxp.com; dmarc=fail action=none
 header.from=oss.nxp.com;compauth=fail reason=601
x-ms-traffictypediagnostic: DB7PR04MB4010:
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:1; auth:0; dest:J;
 ENG:(20160513016)(750127)(520011016)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ZS3HDomW0h2YO0sm3jw+7uXjbmDzu1R7aZ5B7MyKIFkkJrE+JN78ADm9my?=
 =?iso-8859-1?Q?5AW8JpkenZ2LEUga08+apFqeQPP6O4oimcQNcwVbdFbhLvWAVaFoSfhHFL?=
 =?iso-8859-1?Q?6GQ2FpOIOfRimRS49RUTI5eGdV1y2X6Zvt4JOuXEO95kYyu83+UlMWH1BV?=
 =?iso-8859-1?Q?cAvNMoUBwyq/nuH4fU125psmHHmczP1fslqDXOs3p/AgFdEUGsq4/IFUdg?=
 =?iso-8859-1?Q?MmflsBQEikS6CBfdQ4h+15znhRZuJVjDWUGD/1z1VhUIxodR0Q8GIgO8To?=
 =?iso-8859-1?Q?Rw03kAesneZaldR1IJzJreQNr+5oCMMkHrnw718HD8Cc14GuJYC5Cno5G9?=
 =?iso-8859-1?Q?gbK46AnG0AA5UAHf6qktK4/5U9jK2xrjf258tKdk2ikVi9HstYpBY4Lkcb?=
 =?iso-8859-1?Q?AC33aKUHohkxOvcLj99YeJQx2cUjBeFc249pgGE5a9ZQQ40Rpgm5lf1mNS?=
 =?iso-8859-1?Q?zg1ZLXX3/CZj53wuG12nOlgyN8YI7D1z/+D584Jkqsbkmtqrgq/6r+apsk?=
 =?iso-8859-1?Q?1+kPhO1wTCXCHTA2aOlrAVDxfjlgdxK9EoH820QHIkeeDJ0J7uRSUsIIYF?=
 =?iso-8859-1?Q?AtjquREnISpivJay0KpoRI9CJrgOGIV3NW161xR1kebo6AWYttfLjp8Zx/?=
 =?iso-8859-1?Q?US1U4dNq8nOEwIuYvhEW2v+SCAiFDfZoLqDs2+jOvDzQkg53l8da0PmJBQ?=
 =?iso-8859-1?Q?MIn4Q+t2q1Q/ft0
 zp40VjELqYRr0Zpt/83STvMb/FY7pFw9b40ibbqU4f9?=
 =?iso-8859-1?Q?Vwpkbexi7wG9qkfhpr13Xl+RBGy4jeqQQCEtMAZj6s6nCFnXAug1f0cPbP?=
 =?iso-8859-1?Q?R9Vyw5Mw7LXE5bUw92xh2xKF2MEFOynS5YyXYyADOh/H6vs9P38Slx1FBX?=
 =?iso-8859-1?Q?RRwRs3E4KNPKfF5EE4xuyUVeAJIQFUM8GlkglysmX8dflPmE0MGw0SKjpP?=
 =?iso-8859-1?Q?splGs4AiO5fr0dvNOflUH8WrCFPhTVnhTFb/T8mnbuWlJTliiy2zaW+gwf?=
 =?iso-8859-1?Q?6WQKZBvgIQkR2xkXfAzQd8vj/EMevq98PYtB2UgxZDNcDTDIjxc35CYFZu?=
 =?iso-8859-1?Q?DkffAPn+u2PJBhdjql0XJCwQGNZHJMbcuveIcHtAoI7LLidcRho1JhHoiI?=
 =?iso-8859-1?Q?xk05M1BoDp1JwtUb2r9DuR18hb0ylpw2QTJ7Uf2myUokbmUvw2Gk1XEIMM?=
 =?iso-8859-1?Q?G0JvPqaZA0hZGe33NsrWbfle5THvg+qS9aMU3SLwTUAFSe9S7R+6OjTG0Z?=
 =?iso-8859-1?Q?WIiLpjrv1AQyqFnCaCZfdGzihwPczEbW+rBPl+nLbPJWg0teeOUFiP6WTQ?=
 =?iso-8859-1?Q?7lfYr9x40wtFojuJLpVWWRHBYynZ3YDyCUCEIh9n++SmMvkSZ6jg7GO3uw?=
 =?iso-8859-1?Q?F59ZwXi4q+2b1mmglvWF5YANAEAASfW44R8cjjYwCRH036WSSC30X9en0D?=
 =?iso-8859-1?Q?+XIj6bcpdzj0gs2VRmku2XRzZ5HyAT3CxXIBlimC4nGDJUomnGk/FZRaqx?=
 =?iso-8859-1?Q?ehP
 jkYHMDto1lJ00XPDN2USxoGOJucbgr1sCoVDGZ34esx25AhVv6dLwNo?=
 =?iso-8859-1?Q?HQrmcicPDgZevydyXFqxA2inS0FAMDlGAT3N3+3/at9m59E8yUdyeV0KGL?=
 =?iso-8859-1?Q?mYNDGFmDMIpVbXn8mNcfvcsDfjqB+l17VdoKnxlcSOk/D5S73khyvHDgFA?=
 =?iso-8859-1?Q?FadHOyTlG4d7tcNHzn91jp1a85BE/9ljXEZ0Kg7Tf/HAbRV5wsWPibuyXk?=
 =?iso-8859-1?Q?VZKWgWnEKM/EtHIw9ZgkeUyrQYTc8YPJKKCniIUZ//qTYyyeeocOctD9Qf?=
 =?iso-8859-1?Q?yTfin7GJ7zUe6oOWNF6INbZnRpUHfMnghaPVXJ5EoL7D4PHHxAFR/LPMYx?=
 =?iso-8859-1?Q?Pc+DQIq8EDdMEH2dF+2w1Nbp4qRbKvMcTlL0xWgODx8bp+7Qou0sBtBxUW?=
 =?iso-8859-1?Q?tY7thHcmmWsqL0JngNWYjtiU0JQq39NgiYb85FGqJFZKGFnscM0VHHX8DZ?=
 =?iso-8859-1?Q?LsihPIqnD8rMTxSKcJhgcN7OFPNSSzbvuzmTXlJQ+rIcxMT41GZ83h7qvS?=
 =?iso-8859-1?Q?Hopa48CSrkD4C8JSEU0yqvMeXAmpkWvXVEvF3sedQE/EuX59n1rFYyO4I/?=
 =?iso-8859-1?Q?BZr9cFvcU/qWTMLLE6Drh11RMTRn7I8vZEk6uAMeqvte7dJVSjhiY8xGj2?=
 =?iso-8859-1?Q?zqP4qktYW3SnhQZU+ugXl725?=
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072729_017319_96FBD169 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bharat Bhushan <Bharat.Bhushan@nxp.com>

When a child DPRC is bound to the vfio_fsl_mc driver via
driver_override, its own children should not be bound to corresponding
host kernel drivers, but instead should be bound to the vfio_fsl_mc
driver as well.

Currently, when a child container is scanned by the vfio_fsl_mc
driver, child devices found are automatically bound to corresponding
host kernel drivers (e.g., DPMCP and DPBP objects are bound to the
fsl_mc_allocator driver, DPNI objects are bound to the ldpaa_eth
driver, etc), Then, the user has to manually unbind these child
devices from their drivers, set the driver_override sysfs attribute
to vfio_fsl_mc driver, for each of them and rebind them.

Signed-off-by: J. German Rivera <German.Rivera@freescale.com>
Signed-off-by: Stuart Yoder <stuart.yoder@nxp.com>
Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c    | 12 ++++++++----
 drivers/bus/fsl-mc/fsl-mc-bus.c     | 18 +++++++++++++++++-
 drivers/bus/fsl-mc/fsl-mc-private.h |  2 ++
 include/linux/fsl/mc.h              |  2 ++
 4 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index d373b28abe2d..7eaf78900dfc 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -155,6 +155,8 @@ static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
  * dprc_add_new_devices - Adds devices to the logical bus for a DPRC
  *
  * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
+ * @driver_override: driver override to apply to new objects found in the
+ * DPRC, or NULL, if none.
  * @obj_desc_array: array of device descriptors for child devices currently
  * present in the physical DPRC.
  * @num_child_objects_in_mc: number of entries in obj_desc_array
@@ -164,6 +166,7 @@ static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
  * in the physical DPRC.
  */
 static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
+				 const char *driver_override,
 				 struct fsl_mc_obj_desc *obj_desc_array,
 				 int num_child_objects_in_mc)
 {
@@ -188,7 +191,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
 		}
 
 		error = fsl_mc_device_add(obj_desc, NULL, &mc_bus_dev->dev,
-					  &child_dev);
+					  driver_override, &child_dev);
 		if (error < 0)
 			continue;
 	}
@@ -214,6 +217,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * of the device drivers for the non-allocatable devices.
  */
 static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
+			    const char *driver_override,
 			    bool alloc_interrupts)
 {
 	int num_child_objects;
@@ -313,7 +317,7 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
 	dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
 			    num_child_objects);
 
-	dprc_add_new_devices(mc_bus_dev, child_obj_desc_array,
+	dprc_add_new_devices(mc_bus_dev, driver_override, child_obj_desc_array,
 			     num_child_objects);
 
 	if (child_obj_desc_array)
@@ -342,7 +346,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, true);
+	error = dprc_scan_objects(mc_bus_dev, NULL, true);
 	mutex_unlock(&mc_bus->scan_mutex);
 	if (error < 0) {
 		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
@@ -412,7 +416,7 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
 
-		error = dprc_scan_objects(mc_dev, true);
+		error = dprc_scan_objects(mc_dev, NULL, true);
 		if (error < 0) {
 			/*
 			 * If the error is -ENXIO, we ignore it, as it indicates
diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index baf8259262a9..b9ccac9862b7 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -617,6 +617,7 @@ static void fsl_mc_device_release(struct device *dev)
 int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 		      struct fsl_mc_io *mc_io,
 		      struct device *parent_dev,
+		      const char *driver_override,
 		      struct fsl_mc_device **new_mc_dev)
 {
 	int error;
@@ -649,6 +650,19 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 
 	mc_dev->obj_desc = *obj_desc;
 	mc_dev->mc_io = mc_io;
+
+	if (driver_override) {
+		/*
+		 * We trust driver_override, so we don't need to use
+		 * kstrndup() here
+		 */
+		mc_dev->driver_override = kstrdup(driver_override, GFP_KERNEL);
+		if (!mc_dev->driver_override) {
+			error = -ENOMEM;
+			goto error_cleanup_dev;
+		}
+	}
+
 	device_initialize(&mc_dev->dev);
 	mc_dev->dev.parent = parent_dev;
 	mc_dev->dev.bus = &fsl_mc_bus_type;
@@ -740,6 +754,7 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 
 error_cleanup_dev:
 	kfree(mc_dev->regions);
+	kfree(mc_dev->driver_override);
 	kfree(mc_bus);
 	kfree(mc_dev);
 
@@ -980,7 +995,8 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
 	obj_desc.irq_count = 1;
 	obj_desc.region_count = 0;
 
-	error = fsl_mc_device_add(&obj_desc, mc_io, &pdev->dev, &mc_bus_dev);
+	error = fsl_mc_device_add(&obj_desc, mc_io, &pdev->dev, NULL,
+				 &mc_bus_dev);
 	if (error < 0)
 		goto error_cleanup_mc_io;
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index 21ca8c756ee7..be6bb0fb4603 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -3,6 +3,7 @@
  * Freescale Management Complex (MC) bus private declarations
  *
  * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2019-2020 NXP
  *
  */
 #ifndef _FSL_MC_PRIVATE_H_
@@ -567,6 +568,7 @@ struct fsl_mc_bus {
 int __must_check fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 				   struct fsl_mc_io *mc_io,
 				   struct device *parent_dev,
+				   const char *driver_override,
 				   struct fsl_mc_device **new_mc_dev);
 
 void fsl_mc_device_remove(struct fsl_mc_device *mc_dev);
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 88095fd30c80..f997f8091408 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -3,6 +3,7 @@
  * Freescale Management Complex (MC) bus public interface
  *
  * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
+ * Copyright 2019-2020 NXP
  * Author: German Rivera <German.Rivera@freescale.com>
  *
  */
@@ -161,6 +162,7 @@ struct fsl_mc_obj_desc {
  * @regions: pointer to array of MMIO region entries
  * @irqs: pointer to array of pointers to interrupts allocated to this device
  * @resource: generic resource associated with this MC object device, if any.
+ * @driver_override: Driver name to force a match
  *
  * Generic device object for MC object devices that are "attached" to a
  * MC bus.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
