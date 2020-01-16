Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D65113DE8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8PCvz14t4kK5Ujq2YGckq235mxINi+t/PRQoOcKPn8=; b=JSb+374Y81pjwf
	fPPM/TJmgKNE/rm32NsxHcPQXT4zxlSZkK+psevoiDJiAyyHAkwReQsUtk6GMsg0Xq2cmiTpp/UrS
	noVImUjiN6lVLnj60EmMgXfI9o3GFeQpO1p02JpcuAWWBTfyLEmqVXrQNAuARk2oOAAed7L+IGepK
	o+wWr44Q2tNK7u3AWmdDXMWGCLh4BTqYtMv37WH+yfb/l2Lf0uX2JSGXr3bQWc8wt2ZtPqeypMT/c
	pMcc8Rw5xBRQxqjp0e9/4zjU9K2eke+AcLOq3H7PASvfZI+3GSIhr+ALdOJdw3xHGb8xTnBG0PtJV
	FUzSwHlL37aNfQTN2Ndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6zM-0001s1-K8; Thu, 16 Jan 2020 15:23:16 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6yJ-00018z-9t
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:22:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 07:22:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="305882826"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 16 Jan 2020 07:22:06 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1is6yD-000364-O7; Thu, 16 Jan 2020 23:22:05 +0800
Date: Thu, 16 Jan 2020 23:21:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <202001162201.1Pv3qXxS%lkp@intel.com>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_072211_908211_97F5F413 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, kbuild-all@lists.01.org, arnd@arndb.de,
 Viresh Kumar <viresh.kumar@linaro.org>, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linux/master]
[also build test WARNING on linus/master v5.5-rc6]
[cannot apply to arm-soc/for-next next-20200115]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/firmware-arm_scmi-Make-scmi-core-independent-of-transport-type/20200111-034851
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1522d9da40bdfe502c91163e6d769332897201fa
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-130-g1a803e7a-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/firmware/arm_scmi/driver.c:166:37: sparse: sparse: incorrect type in argument 1 (different address spaces)
>> drivers/firmware/arm_scmi/driver.c:166:37: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:166:37: sparse:    got unsigned char *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:168:24: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:168:24: sparse:    expected void [noderef] <asn:2> *
>> drivers/firmware/arm_scmi/driver.c:168:24: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:171:54: sparse: sparse: incorrect type in argument 2 (different address spaces)
>> drivers/firmware/arm_scmi/driver.c:171:54: sparse:    expected void const volatile [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:171:54: sparse:    got unsigned char *
   drivers/firmware/arm_scmi/driver.c:220:9: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:220:9: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:220:9: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:220:9: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:220:9: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:220:9: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:223:25: sparse: sparse: incorrect type in argument 2 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:223:25: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:223:25: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:225:20: sparse: sparse: incorrect type in argument 2 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:225:20: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:225:20: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:226:57: sparse: sparse: incorrect type in argument 2 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:226:57: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:226:57: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:227:47: sparse: sparse: incorrect type in argument 2 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:227:47: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:227:47: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:229:29: sparse: sparse: incorrect type in argument 1 (different address spaces)
>> drivers/firmware/arm_scmi/driver.c:229:29: sparse:    expected void volatile [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:229:29: sparse:    got unsigned char *
   drivers/firmware/arm_scmi/driver.c:321:29: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:321:29: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:321:29: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:363:23: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:363:23: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:363:23: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:363:23: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:363:23: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:363:23: sparse:    got restricted __le32 *
   drivers/firmware/arm_scmi/driver.c:368:26: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/firmware/arm_scmi/driver.c:368:26: sparse:    expected void [noderef] <asn:2> *
   drivers/firmware/arm_scmi/driver.c:368:26: sparse:    got restricted __le32 *
>> drivers/firmware/arm_scmi/driver.c:707:24: sparse: sparse: incorrect type in assignment (different address spaces)
>> drivers/firmware/arm_scmi/driver.c:707:24: sparse:    expected void *payload
>> drivers/firmware/arm_scmi/driver.c:707:24: sparse:    got void [noderef] <asn:2> *

vim +166 drivers/firmware/arm_scmi/driver.c

aa4f886f3893f8 Sudeep Holla 2017-03-28  162  
aa4f886f3893f8 Sudeep Holla 2017-03-28  163  static void scmi_fetch_response(struct scmi_xfer *xfer,
800abc7f2fa85c Viresh Kumar 2020-01-10  164  				struct scmi_shared_mem *mem)
aa4f886f3893f8 Sudeep Holla 2017-03-28  165  {
aa4f886f3893f8 Sudeep Holla 2017-03-28 @166  	xfer->hdr.status = ioread32(mem->msg_payload);
c29a628976b39e Sudeep Holla 2019-07-08  167  	/* Skip the length of header and status in payload area i.e 8 bytes */
aa4f886f3893f8 Sudeep Holla 2017-03-28 @168  	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&mem->length) - 8);
aa4f886f3893f8 Sudeep Holla 2017-03-28  169  
aa4f886f3893f8 Sudeep Holla 2017-03-28  170  	/* Take a copy to the rx buffer.. */
aa4f886f3893f8 Sudeep Holla 2017-03-28 @171  	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
aa4f886f3893f8 Sudeep Holla 2017-03-28  172  }
aa4f886f3893f8 Sudeep Holla 2017-03-28  173  
aa4f886f3893f8 Sudeep Holla 2017-03-28  174  /**
aa4f886f3893f8 Sudeep Holla 2017-03-28  175   * pack_scmi_header() - packs and returns 32-bit header
aa4f886f3893f8 Sudeep Holla 2017-03-28  176   *
aa4f886f3893f8 Sudeep Holla 2017-03-28  177   * @hdr: pointer to header containing all the information on message id,
aa4f886f3893f8 Sudeep Holla 2017-03-28  178   *	protocol id and sequence id.
1baf47c2e5c946 Sudeep Holla 2018-05-09  179   *
5b65af8f60f580 Sudeep Holla 2019-07-08  180   * Return: 32-bit packed message header to be sent to the platform.
aa4f886f3893f8 Sudeep Holla 2017-03-28  181   */
aa4f886f3893f8 Sudeep Holla 2017-03-28  182  static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
aa4f886f3893f8 Sudeep Holla 2017-03-28  183  {
354b2e36d7dea9 Sudeep Holla 2018-05-09  184  	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
354b2e36d7dea9 Sudeep Holla 2018-05-09  185  		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
354b2e36d7dea9 Sudeep Holla 2018-05-09  186  		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
aa4f886f3893f8 Sudeep Holla 2017-03-28  187  }
aa4f886f3893f8 Sudeep Holla 2017-03-28  188  
22d1f76109f74b Sudeep Holla 2019-07-08  189  /**
22d1f76109f74b Sudeep Holla 2019-07-08  190   * unpack_scmi_header() - unpacks and records message and protocol id
22d1f76109f74b Sudeep Holla 2019-07-08  191   *
22d1f76109f74b Sudeep Holla 2019-07-08  192   * @msg_hdr: 32-bit packed message header sent from the platform
22d1f76109f74b Sudeep Holla 2019-07-08  193   * @hdr: pointer to header to fetch message and protocol id.
22d1f76109f74b Sudeep Holla 2019-07-08  194   */
22d1f76109f74b Sudeep Holla 2019-07-08  195  static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
22d1f76109f74b Sudeep Holla 2019-07-08  196  {
22d1f76109f74b Sudeep Holla 2019-07-08  197  	hdr->id = MSG_XTRACT_ID(msg_hdr);
22d1f76109f74b Sudeep Holla 2019-07-08  198  	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
22d1f76109f74b Sudeep Holla 2019-07-08  199  }
22d1f76109f74b Sudeep Holla 2019-07-08  200  
aa4f886f3893f8 Sudeep Holla 2017-03-28  201  /**
800abc7f2fa85c Viresh Kumar 2020-01-10  202   * scmi_tx_prepare() - callback to prepare for the transfer
aa4f886f3893f8 Sudeep Holla 2017-03-28  203   *
800abc7f2fa85c Viresh Kumar 2020-01-10  204   * @cinfo: SCMI channel info
800abc7f2fa85c Viresh Kumar 2020-01-10  205   * @t: transfer message
aa4f886f3893f8 Sudeep Holla 2017-03-28  206   *
aa4f886f3893f8 Sudeep Holla 2017-03-28  207   * This function prepares the shared memory which contains the header and the
aa4f886f3893f8 Sudeep Holla 2017-03-28  208   * payload.
aa4f886f3893f8 Sudeep Holla 2017-03-28  209   */
800abc7f2fa85c Viresh Kumar 2020-01-10  210  void scmi_tx_prepare(struct scmi_chan_info *cinfo, struct scmi_xfer *t)
aa4f886f3893f8 Sudeep Holla 2017-03-28  211  {
800abc7f2fa85c Viresh Kumar 2020-01-10  212  	struct scmi_shared_mem *mem = cinfo->payload;
aa4f886f3893f8 Sudeep Holla 2017-03-28  213  
9dc34d635c67e5 Sudeep Holla 2019-07-08  214  	/*
9dc34d635c67e5 Sudeep Holla 2019-07-08  215  	 * Ideally channel must be free by now unless OS timeout last
9dc34d635c67e5 Sudeep Holla 2019-07-08  216  	 * request and platform continued to process the same, wait
9dc34d635c67e5 Sudeep Holla 2019-07-08  217  	 * until it releases the shared memory, otherwise we may endup
9dc34d635c67e5 Sudeep Holla 2019-07-08  218  	 * overwriting its response with new message payload or vice-versa
9dc34d635c67e5 Sudeep Holla 2019-07-08  219  	 */
9dc34d635c67e5 Sudeep Holla 2019-07-08  220  	spin_until_cond(ioread32(&mem->channel_status) &
9dc34d635c67e5 Sudeep Holla 2019-07-08  221  			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
aa4f886f3893f8 Sudeep Holla 2017-03-28  222  	/* Mark channel busy + clear error */
aa4f886f3893f8 Sudeep Holla 2017-03-28  223  	iowrite32(0x0, &mem->channel_status);
aa4f886f3893f8 Sudeep Holla 2017-03-28  224  	iowrite32(t->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
aa4f886f3893f8 Sudeep Holla 2017-03-28  225  		  &mem->flags);
aa4f886f3893f8 Sudeep Holla 2017-03-28  226  	iowrite32(sizeof(mem->msg_header) + t->tx.len, &mem->length);
aa4f886f3893f8 Sudeep Holla 2017-03-28  227  	iowrite32(pack_scmi_header(&t->hdr), &mem->msg_header);
aa4f886f3893f8 Sudeep Holla 2017-03-28  228  	if (t->tx.buf)
aa4f886f3893f8 Sudeep Holla 2017-03-28 @229  		memcpy_toio(mem->msg_payload, t->tx.buf, t->tx.len);
aa4f886f3893f8 Sudeep Holla 2017-03-28  230  }
aa4f886f3893f8 Sudeep Holla 2017-03-28  231  

:::::: The code at line 166 was first introduced by commit
:::::: aa4f886f3893f88146e8e02fd1e9c5c9e43cbcc1 firmware: arm_scmi: add basic driver infrastructure for SCMI

:::::: TO: Sudeep Holla <sudeep.holla@arm.com>
:::::: CC: Sudeep Holla <sudeep.holla@arm.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
