Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE55B28CA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 01:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hTOvlKUFx2EKIMfm0VqbEebcWzvDlyjxUhu5WVQGx2s=; b=TnKesNL7QSojCK
	NauZv0eKXgkA4gkXMKACuLh+7QfYIaXMEfEXzyDwQAIOxHuC8AH+yS1yKYYvIzKlKskGIIQWsuR+W
	S5A6ntxsbV8c7+L2LlKBzduLoeQhh47tMT0wCw7Nyt/6mRJhnbUKGRisxhctOJUp+lwK6z1DtyUYE
	rZRclOBLlz+s8ChONU6GJ7Rk91Oym09zt3qI8qO12fS5xzTDWRJVn+M683ToBVtWJDNHJkYav5T8H
	JHaJK10nEBJ/QRJJ+BoSy1ZGV83JUHuVMMCO+b35u1I2X7KUeUslFTMyT21cymH/5H49u7ELIgm9o
	Uqpn+xNPaLdn9wCfpAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8umg-0000T0-Uh; Fri, 13 Sep 2019 23:15:22 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8umV-0000Nj-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 23:15:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 16:15:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="215564288"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2019 16:15:02 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i8umM-0008Ie-FJ; Sat, 14 Sep 2019 07:15:02 +0800
Date: Sat, 14 Sep 2019 07:14:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [arm:cex7 11/20] drivers/net/ethernet/freescale/dpaa2/dpmac.c:67:30:
 sparse: sparse: incorrect type in assignment (different base types)
Message-ID: <201909140713.9unu4ut3%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_161511_637119_215B6D05 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   5b0bee16ea663db4aefd0cc1d0dc5e41acabb5e8
commit: 3b1e790b01fd2e3f28840734f5ced7e2083f1209 [11/20] dpaa2-mac: add PHY layer
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        git checkout 3b1e790b01fd2e3f28840734f5ced7e2083f1209
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:67:30: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] dpmac_id @@    got restrunsigned int [usertype] dpmac_id @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:67:30: sparse:    expected unsigned int [usertype] dpmac_id
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:67:30: sparse:    got restricted __le32 [usertype]
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:139:28: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] mac_id @@    got restrunsigned int [usertype] mac_id @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:139:28: sparse:    expected unsigned int [usertype] mac_id
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:139:28: sparse:    got restricted __le32 [usertype]
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:180:30: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] dpmac_id @@    got restrunsigned int [usertype] dpmac_id @@
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:180:30: sparse:    expected unsigned int [usertype] dpmac_id
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:180:30: sparse:    got restricted __le32 [usertype]
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:292:26: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] mask @@    got restrunsigned int [usertype] mask @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:292:26: sparse:    expected unsigned int [usertype] mask
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:292:26: sparse:    got restricted __le32 [usertype]
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:337:17: sparse: sparse: cast to restricted __le32
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:371:28: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] status @@    got restrunsigned int [usertype] status @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:371:28: sparse:    expected unsigned int [usertype] status
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:371:28: sparse:    got restricted __le32 [usertype]
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:381:19: sparse: sparse: cast to restricted __le32
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:413:28: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] status @@    got restrunsigned int [usertype] status @@
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:413:28: sparse:    expected unsigned int [usertype] status
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:413:28: sparse:    got restricted __le32 [usertype]
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:453:20: sparse: sparse: cast to restricted __le16
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:454:26: sparse: sparse: cast to restricted __le32
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:488:24: sparse: sparse: cast to restricted __le64
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:489:21: sparse: sparse: cast to restricted __le32
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:516:29: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned long long [usertype] options @@    got nsigned long long [usertype] options @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:516:29: sparse:    expected unsigned long long [usertype] options
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:516:29: sparse:    got restricted __le64 [usertype]
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:517:26: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int [usertype] rate @@    got restrunsigned int [usertype] rate @@
>> drivers/net/ethernet/freescale/dpaa2/dpmac.c:517:26: sparse:    expected unsigned int [usertype] rate
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:517:26: sparse:    got restricted __le32 [usertype]
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:558:20: sparse: sparse: cast to restricted __le64
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:615:22: sparse: sparse: cast to restricted __le16
   drivers/net/ethernet/freescale/dpaa2/dpmac.c:616:22: sparse: sparse: cast to restricted __le16

vim +67 drivers/net/ethernet/freescale/dpaa2/dpmac.c

    35	
    36	/**
    37	 * dpmac_open() - Open a control session for the specified object.
    38	 * @mc_io:	Pointer to MC portal's I/O object
    39	 * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
    40	 * @dpmac_id:	DPMAC unique ID
    41	 * @token:	Returned token; use in subsequent API calls
    42	 *
    43	 * This function can be used to open a control session for an
    44	 * already created object; an object may have been declared in
    45	 * the DPL or by calling the dpmac_create function.
    46	 * This function returns a unique authentication token,
    47	 * associated with the specific object ID and the specific MC
    48	 * portal; this token must be used in all subsequent commands for
    49	 * this specific object
    50	 *
    51	 * Return:	'0' on Success; Error code otherwise.
    52	 */
    53	int dpmac_open(struct fsl_mc_io *mc_io,
    54		       u32 cmd_flags,
    55		       int dpmac_id,
    56		       u16 *token)
    57	{
    58		struct dpmac_cmd_open *cmd_params;
    59		struct fsl_mc_command cmd = { 0 };
    60		int err;
    61	
    62		/* prepare command */
    63		cmd.header = mc_encode_cmd_header(DPMAC_CMDID_OPEN,
    64						  cmd_flags,
    65						  0);
    66		cmd_params = (struct dpmac_cmd_open *)cmd.params;
  > 67		cmd_params->dpmac_id = cpu_to_le32(dpmac_id);
    68	
    69		/* send command to mc*/
    70		err = mc_send_command(mc_io, &cmd);
    71		if (err)
    72			return err;
    73	
    74		/* retrieve response parameters */
    75		*token = mc_cmd_hdr_read_token(&cmd);
    76	
    77		return err;
    78	}
    79	
    80	/**
    81	 * dpmac_close() - Close the control session of the object
    82	 * @mc_io:	Pointer to MC portal's I/O object
    83	 * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
    84	 * @token:	Token of DPMAC object
    85	 *
    86	 * After this function is called, no further operations are
    87	 * allowed on the object without opening a new control session.
    88	 *
    89	 * Return:	'0' on Success; Error code otherwise.
    90	 */
    91	int dpmac_close(struct fsl_mc_io *mc_io,
    92			u32 cmd_flags,
    93			u16 token)
    94	{
    95		struct fsl_mc_command cmd = { 0 };
    96	
    97		/* prepare command */
    98		cmd.header = mc_encode_cmd_header(DPMAC_CMDID_CLOSE, cmd_flags,
    99						  token);
   100	
   101		/* send command to mc*/
   102		return mc_send_command(mc_io, &cmd);
   103	}
   104	
   105	/**
   106	 * dpmac_create() - Create the DPMAC object.
   107	 * @mc_io:	Pointer to MC portal's I/O object
   108	 * @dprc_token: Parent container token; '0' for default container
   109	 * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
   110	 * @cfg:	Configuration structure
   111	 * @obj_id:	Returned object id
   112	 *
   113	 * Create the DPMAC object, allocate required resources and
   114	 * perform required initialization.
   115	 *
   116	 * The function accepts an authentication token of a parent
   117	 * container that this object should be assigned to. The token
   118	 * can be '0' so the object will be assigned to the default container.
   119	 * The newly created object can be opened with the returned
   120	 * object id and using the container's associated tokens and MC portals.
   121	 *
   122	 * Return:	'0' on Success; Error code otherwise.
   123	 */
   124	int dpmac_create(struct fsl_mc_io *mc_io,
   125			 u16 dprc_token,
   126			 u32 cmd_flags,
   127			 const struct dpmac_cfg *cfg,
   128			 u32 *obj_id)
   129	{
   130		struct dpmac_cmd_create *cmd_params;
   131		struct fsl_mc_command cmd = { 0 };
   132		int err;
   133	
   134		/* prepare command */
   135		cmd.header = mc_encode_cmd_header(DPMAC_CMDID_CREATE,
   136						  cmd_flags,
   137						  dprc_token);
   138		cmd_params = (struct dpmac_cmd_create *)cmd.params;
 > 139		cmd_params->mac_id = cpu_to_le32(cfg->mac_id);
   140	
   141		/* send command to mc*/
   142		err = mc_send_command(mc_io, &cmd);
   143		if (err)
   144			return err;
   145	
   146		/* retrieve response parameters */
   147		*obj_id = mc_cmd_read_object_id(&cmd);
   148	
   149		return 0;
   150	}
   151	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
