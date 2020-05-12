Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA151CF491
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yVSIhMYVh39Viuom145eOOJdp7X09Je6VuLU9JWVT1Y=; b=h7N
	h1A2vP07marDYDgzFq4ZSniOppPhzxewVvRw/qnP62tLnrmCnnVN7bvYI0/J5Whj+NIVUHpseSsJj
	k52b8xMJOx4VaOuxpeHD1qX44fK2UA4wX3rpNBQL6rempWM5NChgWMD41Gz9D9SVrCc3010y42xwM
	guJ1sZn1v2b7+i6Evw2jA2h0zcatY6H7fPzu0orPsGNXJcMU2qWCTCyQaB+54IsI+ziKDqxPRXCr2
	1zrHiqiWTK91BT8S8NpAJ9P0Hfq0TYk7giwImpCPr2ifqjNCcJIn7cuLyyOvbJhjusmVcZiO1gM+B
	kdYnpXbyb2dnQIE+aMHi6LkIPmC6MNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUCA-0000lp-Qh; Tue, 12 May 2020 12:39:38 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUBz-0000kt-EE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:39:32 +0000
IronPort-SDR: rINaAMImJemlU9YprIYwxyQqVYpDrzp6wOyFKrUofn5ZkJS1qx4QsQjXCPAJf4WguYYz61Se74
 DDsVElvntYyw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 05:39:26 -0700
IronPort-SDR: EUIJnpFIrvsWqjyZOPFEwQfb4MTqHp9AOgF6hzxq1waz+J1Etpwk6z9LZqJS/LnY/5Gl65vuOf
 8+jqKD4AaKQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; 
 d="gz'50?scan'50,208,50";a="286636171"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by fmsmga004.fm.intel.com with ESMTP; 12 May 2020 05:39:24 -0700
Date: Tue, 12 May 2020 20:37:52 +0800
From: kbuild test robot <lkp@intel.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: [kbuild] [xlnx:xlnx_rebase_v5.4 67/1297]
 drivers/misc/xilinx_flex_pm.c:356:22: error: 'struct xflex_dev_info' has no
 member named 'lock'
Message-ID: <20200512123752.GG22126@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vSsTm1kUtxIHoa7M"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_053927_576469_8DD85DCF 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--vSsTm1kUtxIHoa7M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   22b71b41620dac13c69267d2b7898ebfb14c954e
commit: dca3c6831fc7bdc1e021e7608da3a0becd20cd25 [67/1297] misc: xilinx_flex: Add support for the flex noc Performance Monitor
config: um-allmodconfig (attached as .config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce:
        git checkout dca3c6831fc7bdc1e021e7608da3a0becd20cd25
        # save the attached .config to linux build tree
        make ARCH=um 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

Note: the xlnx/xlnx_rebase_v5.4 HEAD 22b71b41620dac13c69267d2b7898ebfb14c954e builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

drivers/misc/xilinx_flex_pm.c: In function 'xflex_sysfs_cmd':
>> drivers/misc/xilinx_flex_pm.c:356:22: error: 'struct xflex_dev_info' has no member named 'lock'
mutex_unlock(&flexpm->lock);
^~
In file included from include/linux/kernfs.h:12:0,
from include/linux/sysfs.h:16,
from include/linux/kobject.h:20,
from include/linux/device.h:16,
from include/linux/firmware/xlnx-zynqmp.h:16,
from drivers/misc/xilinx_flex_pm.c:7:
drivers/misc/xilinx_flex_pm.c: In function 'xflex_probe':
drivers/misc/xilinx_flex_pm.c:604:20: error: 'struct xflex_dev_info' has no member named 'lock'
mutex_init(&flexpm->lock);
^
include/linux/mutex.h:108:16: note: in definition of macro 'mutex_init'
__mutex_init((mutex), #mutex, &__key);                       ^~~~~

# https://github.com/Xilinx/linux-xlnx/commit/dca3c6831fc7bdc1e021e7608da3a0becd20cd25
git remote add xlnx https://github.com/Xilinx/linux-xlnx
git remote update xlnx
git checkout dca3c6831fc7bdc1e021e7608da3a0becd20cd25
vim +356 drivers/misc/xilinx_flex_pm.c

dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  151  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  152  /**
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  153   * xflex_sysfs_cmd - Implements sysfs operations
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  154   * @dev: Device structure
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  155   * @buf: Value to write
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  156   * @cmd: sysfs cmd
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  157   *
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  158   * Return: value read from the sysfs cmd on success and negative error code
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  159   *		otherwise.
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  160   */
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  161  static int xflex_sysfs_cmd(struct device *dev, const char *buf,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  162  			   enum xflex_sysfs_cmd_codes cmd)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  163  {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  164  	struct xflex_dev_info *flexpm = to_xflex_dev_info(dev);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  165  	u32 domain, src, offset, reg, val, counter;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  166  	int ret;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  167  	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  168  	u32 rdval = 0;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  169  	u32 pm_api_ret[4] = {0, 0, 0, 0};
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  170  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  171  	if (IS_ERR_OR_NULL(eemi_ops))
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  172  		return PTR_ERR(eemi_ops);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  173  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  174  	if (!eemi_ops->ioctl)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  175  		return -ENOTSUPP;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  176  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  177  	switch (cmd) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  178  	case XFLEX_GET_COUNTER_LPD_WRRSP:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  179  		reg = flexpm->counterid_lpd | FPM_WRRSP_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  180  		ret = eemi_ops->ioctl(FPM_LPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  181  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  182  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  183  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  184  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  185  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  186  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  187  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  188  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  189  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  190  	case XFLEX_GET_COUNTER_LPD_WRREQ:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  191  		reg = flexpm->counterid_lpd | FPM_WRREQ_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  192  		ret = eemi_ops->ioctl(FPM_LPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  193  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  194  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  195  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  196  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  197  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  198  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  199  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  200  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  201  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  202  	case XFLEX_GET_COUNTER_LPD_RDRSP:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  203  		reg = flexpm->counterid_lpd | FPM_RDRSP_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  204  		ret = eemi_ops->ioctl(FPM_LPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  205  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  206  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  207  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  208  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  209  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  210  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  211  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  212  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  213  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  214  	case XFLEX_GET_COUNTER_LPD_RDREQ:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  215  		reg = flexpm->counterid_lpd | FPM_RDREQ_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  216  		ret = eemi_ops->ioctl(FPM_LPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  217  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  218  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  219  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  220  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  221  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  222  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  223  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  224  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  225  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  226  	case XFLEX_SET_COUNTER_LPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  227  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  228  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  229  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  230  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  231  		flexpm->counterid_lpd = val;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  232  		reset_default(dev, val, FPM_LPD);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  233  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  234  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  235  	case XFLEX_SET_PORT_COUNTER_FPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  236  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  237  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  238  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  239  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  240  		counter = flexpm->counterid_fpd * FPM_COUNTER_OFFSET;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  241  		offset = FPM_PORT_SEL_OFFSET + counter * FPM_COUNTER_OFFSET;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  242  		fpm_reg(flexpm->basefpd, val, offset);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  243  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  244  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  245  	case XFLEX_SET_PORT_COUNTER_LPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  246  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  247  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  248  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  249  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  250  		counter = flexpm->counterid_lpd * FPM_COUNTER_OFFSET;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  251  		offset = FPM_PORT_SEL_OFFSET + counter * FPM_COUNTER_OFFSET;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  252  		fpm_reg(flexpm->baselpd, val, offset);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  253  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  254  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  255  	case XFLEX_SET_SRC_COUNTER_LPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  256  		reg = flexpm->counterid_lpd;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  257  		domain = FPM_LPD;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  258  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  259  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  260  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  261  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  262  		for (src = 0; src < FPM_NUM_COUNTERS; src++) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  263  			reg = reg | FPM_SRC | (src << FPM_PROBE_SHIFT);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  264  			ret = eemi_ops->ioctl(domain, IOCTL_PROBE_COUNTER_WRITE,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  265  					      reg, val, NULL);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  266  			if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  267  				dev_err(dev, "Counter write error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  268  				goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  269  			}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  270  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  271  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  272  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  273  	case XFLEX_SET_SRC_COUNTER_FPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  274  		reg = flexpm->counterid_fpd;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  275  		domain = FPM_FPD;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  276  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  277  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  278  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  279  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  280  		for (src = 0; src < FPM_NUM_COUNTERS; src++) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  281  			reg = reg | FPM_SRC | (src << FPM_PROBE_SHIFT);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  282  			ret = eemi_ops->ioctl(domain, IOCTL_PROBE_COUNTER_WRITE,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  283  					      reg, val, NULL);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  284  			if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  285  				dev_err(dev, "Counter write error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  286  				goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  287  			}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  288  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  289  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  290  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  291  	case XFLEX_SET_COUNTER_FPD:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  292  		ret = kstrtou32(buf, 0, &val);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  293  		if (ret < 0)
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  294  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  295  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  296  		flexpm->counterid_fpd = val;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  297  		reset_default(dev, val, FPM_FPD);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  298  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  299  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  300  	case XFLEX_GET_COUNTER_FPD_WRRSP:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  301  		reg = flexpm->counterid_fpd | FPM_WRRSP_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  302  		ret = eemi_ops->ioctl(FPM_FPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  303  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  304  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  305  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  306  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  307  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  308  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  309  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  310  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  311  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  312  	case XFLEX_GET_COUNTER_FPD_WRREQ:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  313  		reg = flexpm->counterid_fpd | FPM_WRREQ_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  314  		ret = eemi_ops->ioctl(FPM_FPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  315  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  316  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  317  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  318  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  319  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  320  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  321  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  322  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  323  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  324  	case XFLEX_GET_COUNTER_FPD_RDRSP:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  325  		reg = flexpm->counterid_fpd | FPM_RDRSP_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  326  		ret = eemi_ops->ioctl(FPM_FPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  327  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  328  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  329  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  330  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  331  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  332  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  333  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  334  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  335  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  336  	case XFLEX_GET_COUNTER_FPD_RDREQ:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  337  		reg = flexpm->counterid_fpd | FPM_RDREQ_L | FPM_VAL;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  338  		ret = eemi_ops->ioctl(FPM_FPD, IOCTL_PROBE_COUNTER_READ,
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  339  				      reg, 0, &pm_api_ret[0]);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  340  		if (ret < 0) {
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  341  			dev_err(dev, "Counter read error %d\n", ret);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  342  			goto exit_unlock;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  343  		}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  344  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  345  		rdval = pm_api_ret[1];
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  346  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  347  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  348  	default:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  349  		dev_err(dev, "Invalid option\n");
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  350  		break;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  351  	}
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  352  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  353  	return rdval;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  354  
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  355  exit_unlock:
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03 @356  	mutex_unlock(&flexpm->lock);
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  357  	return ret;
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  358  }
dca3c6831fc7bd Shubhrajyoti Datta 2019-12-03  359  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--vSsTm1kUtxIHoa7M
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBFiul4AAy5jb25maWcAjFxZc+O2ln7Pr1A5L/fWnSTeWumbKT+AJEghIgmaAGXJLyy1
Wt3tirey5Ez638854IaNVFfNnQ6/c7CfHZB//unnGXk/vjxtjw+77ePj99nX/fP+bXvcf559
eXjc/+8s4rOcyxmNmPwVmNOH5/d/fnt/mn349frX89ly//a8f5yFL89fHr6+Q7uHl+effv4J
/u9nAJ9eoYu3P2Zfd7tffp/9q/r0/nx8n/3+64dfz3+Zv6uvy38339Ai5HnMkjoMaybqJAxv
vncQfNQrWgrG85vfzz+cn/e8KcmTnnSudRGSvE5Zvhw6AXBBRE1EVidcci+B5dCGOqQ7UuZ1
RjYBrauc5UwykrJ7GmmMPBeyrELJSzGgrLyt73iJk1A7kqi9fZwd9sf312HFQcmXNK95Xous
0FrDQDXNVzUpE1hLxuTNxeXHjrqgJKJlLamQQ5MlLXOa+mkpD0nabdXZmQ+uSaVvTFCxNKoF
SaXGH9GYVKmsF1zInGT05uxfzy/P+3/3DOKOaIsQG7FiRegA+G8o0wEvuGDrOrutaEX9qNMk
LLkQdUYzXm5qIiUJFwOxEjRlwfBNKpDg4XNBVhQ2Nlw0BOyapKnFPqDq+OA4Z4f3T4fvh+P+
aTi+hOa0ZKE6bbHgd5rcapRwwQpTMiKeEZabmGCZv3lEgyqJUbZ+nu2fP89evljTsRuFcLBL
uqK5FN385cPT/u3gW4Jk4RLkj8L0tT3Keb24B9HOMp6rgbu9u68LGINHLJw9HGbPL0eUaLMV
i1Jq9aRtPksWdUkFjJvR0liUM8deEkpKs0JCV0pBGwtTVL/J7eGv2RFazbbQw+G4PR5m293u
BYzLw/NXa4nQoCZhyKtcsjzRJF1EMAAPKcgT0OU4pV5dDURJxFJIIoUJwWGlZGN1pAhrD8a4
d0qFYMZHr3gREyRIlfHpd+0HNkJtWBlWM+E7/nxTA20YED5quoZT1mYrDA7VxoJwO9p++qmZ
Q5qmJWD5pWYa2LL5j5snG1FHoDM2Fk4MnCnHTmNQQBaDnfx9EBuWyyUYsZjaPFfNnojdt/3n
d/BTsy/77fH9bX9QcDt9D7U3P0nJq0I7+4IktFYnScsBBfsUJtanZSQHDOx9d7gGbQn/aEKZ
LtvRNWOovuu7kkkakHDpUES40PuNCStrLyWMRR2QPLpjkdQMailH2Bu0YJFwwDLKiAPGoMn3
+g61eERXLKQODLJtak2LB0Xs6QKspCaxPFz2JCK1qaDnEgUBtdY8hhR1rntv8FL6N3iU0gBg
ycZ3TqXxDfsULgsOAojGDkIDbXFqE5W/tc4RfA7sf0TB3oVE6httU+rVpXY6aHJMCYH9VDFE
qfWhvkkG/QhelbDbg2Mvozq5130UAAEAlwaS3usnCsD63qJz6/vaCKd4ATYfYqc65iV6Efgn
I7k69t6/2GwC/sPjaOxwQLn0ikUXc20fdCGxDZrFm4F1ZXjI2pYnVGZopJ34oDkMHwxzcvF4
AQqVOoFN7/8Ma6VHYJo00zQG66ILUUAE7FBlDFRJurY+QVCtXWrgMCvW4UIfoeDGYliSkzTW
xEfNVwdUgKEDYmFYKsI0cQBPV5WGkyPRignabZe2EdBJQMqS6YexRJZNJlykNva6R9X2oGJI
tqKGTLgHhOeu/KuxuiygUaTrYBFenF934Ueb/BT7ty8vb0/b591+Rv/eP4PfJeA8QvS8EMvo
3uQHW3SjrbJmgzunoi1dpFXgmDvEWl+ixJNr0SWEcQWRkGssdVUTKQl8qgU9mWzcz0ZwwBLc
Xhud6JMBGpr6lAmwfyD+PBujLkgZQdhqiFEVxyltXCocFCQpYD8NPZM0U0Yd0z8WM2Bg+noh
YohZakgbWL6QKntshJxmVqaOq8rSXw6v+93Dl4fd7OUVs9rDEC4BVZPUTIuAIM5l3FAANSZG
8HFKEjAYVVHw0szKlmDSXQLEleGyae3Q+hgf0tCgBF/QRJyakt/fXAxZcl6iExU3F83iFi+H
4+z17WW3Pxxe3mbH769NyGiEP93qlh/1cx/wQoR+AlqoSz8JjjDzSFG/mkLbyfXHOTgrkPmc
RxBUQWpH27htrrOkF+M0KUKzv9beza9tmK9MJAM3mVWZShdikrF0czO/1gQLswH0SzSlRmAC
7HBWat6pC5MscsHFJjG0tIVD0HpSlS7hfkH4muW6/J48T01ucXlDp/PrQM+Jcen65qj0GBS7
jcrPtm+7b7+9P/22U9Wew2//KP768/5Lg/ShxFWdgt1K6yKRGM0KV3IXdxRyQFPcIUOzSjZY
fQhLBllfQ9YEnAsZa+E/iF0uuO5gM5IwVWUobzXX0NRHlG7VHIxOeXM5KDIpID4Y+gRlNsLX
djXN2sTNVT91GqJx1XwJ7DN6SlR+3IZBf/sz8xqYzvTMwm/bt+0OXMEs2v/9sNtrtkdImHRZ
O8sVQpO4HEICiD6Jbg5hAjYkNxYiHWQNGphZGPxTQ/zOG/jsy+c/zv8H/t/Fmc7Q0P6BNTyd
aXNs8dfj9zN9tyAYzaNh532fNdZ6zPAHhQDrNBxY9Z317F+/tfn++H8vb3+5G4vTgADePEWM
6KlcQNRICpciwSn7cJEyDxoRmumq3uErGhqurccj6oJZSIRnjkU4Mo+ysKTO2YA+1mClxAAN
fNuTWa1EtX847ndoTH75vH+FziBkcd1iWBKxsI9IldlEVmc8aouMwqailWl1qAaXbSTPY3hb
mFWKDAZZqj3sakN677gsq+yDRkizEzyqwERhAKgibIwXLQuplNkyi2Ac2oqUnoPFagwrJEcX
r8dxfT0uCfnql0/bw/7z7K8mMAQr/uXh0ahbIVNrtzQziqBKnWR9Xf9uRDMTnfaan1YJy5X+
hOHN2df//OfM2DSstzc8uuk2wHYB4ez18f3rw7MRNAycdbgJVeSZ0jWTG5/zH3ghTsc9gv+V
vNj4BlZhZFNnP0F2Ust+d7QZ2wHgCUHvjxnUEPMn3a+pVENkmFKcm5KFWVR7VI7Q2QDyhVin
IpFDqnIv3LTwEF1tc9VwCM3aqZZhfxOQpp7TGpbkTKRdpl7A0ShGrqXhYkEufBNpSJeX1/5I
0uT6MP8BrquPP9LXh4vLyWWj1VncnB2+bQd311JRzEsIDJ11doSuvGIP3dPX9+NjYw50B4Gp
EGjB+vJVzTL07HqVKgdLBnHTJgt46kxGQExCUcL4Ui86BWij9M9lXd42eZdl/JAkQsHA2N1W
xv1SV3IKROIFjduYoT4laVKCaXBJ99zICDtYLsDcSzOxc2mwwjuTHmYR3u1BRlkaJR6k3QXW
OtqaIePKJoWbEWrI7Q2Anurs1p4ZZOl1LPyob514gLwg/cVTsX07PqARmkkI7jWXC4uRTCp9
jVZo67SOCHjifOAYJdRhBWaSjNMpFXw9TmahGCeSKJ6gFvwOQisajnOUTIRMH5ytfUviIvau
NGMJ8RIkKZmPkJHQC4uICx8Br4ciJpYpCXT/jAnkGuL+wNME4nYYXKhsy0OuoOUdKamv2zTK
fE0QtktBiXd5VSpL/w6KyisrSwKOy0egsXcAvN2df/RRNP3rSb0HtgVcV4bsto1NO21gfLiV
0XQB+BhvyuoRJZF5ka8Rl5tAz/I6OIhvBxA+6k7JresOJFm3DcONrDGzwe/mF8b5qkcGtSgg
YkHHrVve4W5ELZX+s9+9H7efHvfqNcZMVQ2P2qIDlseZxMBVO5o0NoNw/KqjKiv6O0QMdLsr
tO9WX03Gre1FA4PrCQcQu8Qe9dWPTVatJNs/vbx9n2Xb5+3X/ZM3f4jB2Bq1MwRqVf8BGFTT
vDHDS3+GymRJYJFCxF5IFXWrste11ShAv2YocQM0JdLQElsPBlalJDYbpBZJ4zG1DHuxEWAC
o7KWdq1lKbSFdseCJQi0HarNzfX5f/t6Vk5BRCGmVanMUmsaphTsPpbAdCGC2Zg3jKFxDwcq
bdmLHtLNNYJgiYi46a9T781u7wvONft0H1Ra2n5/FfNU/1bxMdekqKuoYOXFcOgdq6r7DDA+
KmhKwlgYXZr35bRUNTLzOj7Bi0Lw4IuMtIXvVljH5XHYcv0pBKTTMJwZ36nqgIWJZVDTNQQN
XYytpL9NuiEHc8UexGtJNX1rvsH8E+0iHL2C+QV6qomBQswmMhXGh3O/uo7LzPyqeRybiYRC
SZrwoSsFqWsyE1LV2hhiUgsHLwiOPmV6FKUIjRpZE2oqfUIaUUXTf6GqbE/67i/pxgE8/UaF
ugqmumRooLVxzDh5VjQXg2bhBdAu4qrBFxi1CYbligBElFFbHLvOIB+u7dIo0FRPLQfR7957
GqRnARfUQwlTArlBZFCKvLC/62gRumDAuXTRkpSFpQIFs06AFQk6F5pVa5uA9TGsWrj8vi6C
EgTP2eSsXVz3Bsmm+JindrhgGWTBqwsfqF10iw16A75kVNgbsJLMnH4V+Vca88oBhl3Rp4VE
sjAFsIb8zkV6BTUptmooUCmNPTHW1i1d0NWBWoaFD8YFe+CS3PlghEA+hCy5ZgCwa/jPxJO3
9KSAaa6iR8PKj9/BEHecRx7SAv7LB4sRfBOkxIOvaEKEB89XHhCvl1H8PKTUN+iK5twDb6gu
GD3MUgghOfPNJgr9qwqjxIMGgWbGuzCkxLk4wUnX5ubsbf/8cqZ3lUUfjJIQaMlcEwP4ao0k
1kxjk681XxBkcovQvAFBV1BHJDL1Ze4ozNzVmPm4ysxdncEhM1bYE2e6LDRNRzVr7qLYhWEy
FCKYdJF6brzUQTSHJDBUIbDcFNQiescyrKtCDDvUIf7GE5YTp1gFWDyyYdcQ9+CJDl2724xD
k3md3rUz9NAgmAsNs2ylyYDgq2u8PGjDPs0KF7JofWW8cZtAxK4KXuC3MzMkBQ77EqKHPFYs
KFkEcerQ6ql7FP+2x3AQMiS8n7Ifzjs9+4LOloQLx+vSJ5fUXFq3k/C1bRlsB2/23Lxg9XTf
0ZvH2hMMKU+myFzEGhlfN+W5iuwNFJ9ttgGADUNHENX6hsCu1G2Lf4DaEgyd5IqNTsVynRih
4dOAeIzYv8X2EVHmQGMmqEoiR+hK/q2uJc5GcvAHYeGnJHqNQCeIUI40AdcP2TUdmQbJSB6R
kQ2PZTFCWVxdXo2QWBmOUIZw0U8HSQgYVw86/Qwiz8YmVBSjcxUkp2MkNtZIOmuXHuXV4V4e
RsgLmppPFRzVStIKwmZToHJidgjfvjND2J4xYvZhIGYvGjFnuQiWNGIldScEiijAjJQk8top
CMRB8tYbo7/WmbgQqK70wWZGN+Ct+dAosMVVhvfDTzpmWEH4jvEuxokrFGf7+tsC87z5/Y4B
m8YRAZcHd8dE1EaakHWuboCPGA/+xNjLwGz7rSAuiT3in9TegQZrNtZaKz4zNDF1Z2ZuIAsc
wNOZqlAYSJOxWysT1rKkIzLSL0hRVbguBJjH8Pgu8uMwexdvxKSpcNlr02g+LV73Iq6ChrWq
qh5mu5enTw/P+8+zpxesMR98AcNaNr7N26sSxQlyoz/GmMft29f9cWwoScoEs1f14yp/ny2L
egwvquwEVxeZTXNNr0Lj6nz5NOOJqUciLKY5FukJ+ulJYG1TPa+eZsPfhkwz+EOugWFiKqYh
8bTN8Tn8ib3I45NTyOPRyFFj4nYo6GHCQh8VJ2bd+54T+9I7okk+GPAEg21ofDylUSj1sfyQ
6EL2nQlxkgdSaSFL5asN5X7aHnffJuyIxN9HRlGpsk//IA0T/s5iit7+WmmSJa2EHBX/lgfS
AJqPHWTHk+fBRtKxXRm4mrTxJJfllf1cE0c1ME0JdMtVVJN0Fc1PMtDV6a2eMGgNAw3zabqY
bo8e//S+jUexA8v0+XjuBFyWkuTJtPSyYjUtLemlnB4lpXkiF9MsJ/cDyxrT9BMy1pRb8Knx
FFcej+X1PYsZUnnod/mJg2tvfCZZFhsxkr0PPEt50vbYIavLMe0lWh5K0rHgpOMIT9kelTlP
Mtjxq4dF4uXVKQ5VFz3BpX5rNcUy6T1aFnz9NcVQXV3eaM+vJ+tbXTesMDO15hs6XN9cfphb
aMAw5qhZ4fD3FENxTKKpDS0NzZOvwxY39cykTfWHtPFekZp7Vt0P6q5BkUYJ0Nlkn1OEKdr4
EoHIzBvelqp+xWUfqW5T1WdzL/DdxKyHCA0I6Q8eoLi5uGzf/ICFnh3fts+H15c39WuX48vu
5XH2+LL9PPu0fdw+7/By/fD+ivQhnmm6a4pX0rr47AlVNEIgjafz0kYJZOHH26rasJxD91TI
nm5Z2ht350Jp6DC5UMxthK9ip6fAbYiYM2S0sBHhIJnLo2csDZTfdoGo2gixGN8LkLpeGD5q
bbKJNlnThuURXZsStH19fXzYKWM0+7Z/fHXbGrWrdrZxKJ0jpW3pq+37jx+o6cd4lVYSdZNx
bRQDGq/g4k0m4cHbshbiRvGqK8tYDZqKhouqqstI5+bVgFnMsJv4elf1eezExhzGkUk39cU8
K/BxPXNLj06VFkGzlgxnBTgr7IJhg7fpzcKPGyGwTiiL/kbHQ5UytQl+9j43NYtrBtEtWjVk
I083WviSWIPBzuCtydiJcre0PEnHemzzNjbWqWcju8TU3auS3NkQ5MGVeiFu4SBb/nMlYycE
hGEpw6PNCeVttfvv+Y/p96DHc1Olej2e+1TNdIumHhsNej220FaPzc5NhTVpvm7GBu2U1rgY
n48p1nxMszQCrdj8eoSGBnKEhEWMEdIiHSHgvJuHriMM2dgkfUKkk+UIQZRuj54qYUsZGWPU
OOhUn3WY+9V17tGt+ZhyzT0mRh/Xb2N0jly9H9Y0bEqBvP5x3rnWiIbP++MPqB8w5qq0WCcl
CapU/b0AbRKnOnLVsr09NzStvdbPqH1J0hLcu5Lmrw45XRlXmSaxezoQ1zSwFaylAQFvQCvp
NkOSdOTKIBpnq1E+nl/WV14KybieSuoU3cNrOBuD517cKo5oFDMZ0whOaUCjCekffpWSfGwZ
JS3SjZcYjW0Yzq32k1xXqk9vrEOjcq7hVk096GzTdxupKysANwuGzYu8cHjX1+gYALMwZNFh
TLnajmpkuvSkbD3xagQeayPjEn/0H4xQnF9YjE51WEj7N1YW291fxg9pu479fVqttEZmTQe/
6ihI8D41zPU/YKAI7Vu55u2oeqiEj+Nu9D+lMsaHP4X0/kJxtAX+3Nn3V1mQ353BGLX9CaYu
Ic2IxlvOMhLGR228MkTAOmGJf/XxSf8Cqwl9mtm2ws2RiMyMDwgwdWPSIepvrYT6kxikpMb7
DESyghMTCcrL+cdrHwbHbSuWWfnFr/53Eiaq/11ABTC7HdULxIaFSgwrmrkm1TEKLIG8SOSc
m4/UWiqaudYFGGT1425lAoT+t9Ba4MkCwA8m6BMubv2koAwz92GWxTDRFC0uzSM/RyLu7Kfm
HWl0rnSUksmln7AU937CbTjSFWztf6/Or/xE8Se5uDj/4CeCt2ep7pTVMVkbPGB1stJTcI2Q
GYQm8Bl6aAMh+1cJqV7kgY9LXQFIutQ7WNWkKFJqwqyIosL6rGlu/OWJ9aW29pQU2iuPYsGN
ac4hPSl0b9wC7s+QOkK+CF1uANXrcj8Fw0nzwlCnLnjhJ5jZjk7JeMBSI17WqbjnRs1dJ1aR
Z7QECPT/WfuSJrlxXd39+RUZXrzojjh9nPOw8IKpIVMuTSUqh/JGUV2VtjO6plvDOe376x9B
agBIqOx74y7sSn0AKZLiAIIgcFRbA7/gi7N5LyXMf1xJca5842AOuuXiOCxJMwqCAHribMph
VRrXP7S/vQjaX2A73o7TPg1BJKd7qKXKfqdZqsztTL3+X76d3k5q+f5Y38Ik63/NXXnrSyeL
aluuGTCUnouS9akB8yLKXFSfxzFvKywjDg3KkCmCDJnkZXAZM+g6dEFvLV0wKBnOUvB12LCF
9aVzGKlx9TdgmscvCqZ1Lvk3yos1T/C22UXgwpdcG3mZb1/IARgu7/IUT3B5c1lvt0zz5RGT
ujHedrnj3YZppdaHXiv7NWJfeMmKhp1UqOr0LkdT8XeZJH2NRVWyUZhVIbmi1dDqKnz68PT1
/PWx+nr98vqhNni/u355ATdXrom7kuOs61UKcLS9NVx6Rp/vEPTkNHXx8OBi5rCyBmtAu4pB
l15r1L05oF8m9zlTBIXOmRKAEwoHZUxhTL0tE5o2C+ukXeNa1wROVQgl0LB1QbU9M/YuPk3G
DMmzb1XWuLaiYSmkGRFuqUU6QqlWEpbgiTTyWUqUy4BPQ26nNw0iPOu2rgCjdTBCsKoA+Ebg
jflGGPv2tZtBEhXO9Ae4FODSyMWdogFoW9WZogW2xaTJOLI/hkYv1jy7ZxtUmlLnsXRRqvto
UKfX6Ww5gyZDKfVFLa6EScY0VBQyrWTMk93Lu+YFFFMZ6Myd0tQEd6WoCex8UXrNBW36rfVU
H+EbaL6HuoOfSvDgnEGcBLQVU5KA0J5XOKz5iczLMRE7GUO4j6+7Izz1WNhyB4czsqVom8ZS
tNtYlgKqSrKXzNTeba82aTDh3DMgvYmGCfsj6YkkTZAGe5Rs31zbdhBLaVB7r2P4KYHbr+r7
EjQ7PYJIDwFEbUozyuNK/BpV0wBzITjFp+VbaUtEugXodQSwrJiAvh00ew4p9XCIAHiqsiAB
RyuVUdOjPlN7LIFkesRwBOcGud5GHqv1Tl5V1DP0+hI/gD/lsghE0jlXwl4PBq+nl1dHFM8v
SnrPAnbKRZarLVYaGYeIrYbOycgiYL8KbQOLpBB+5zUmv7756/Q6KK5vz4+t/QiyfBVk7wpP
ajAmAjwV7+nVlCJDc24Bt/FrPao4/ms8GzzUhb3VDhYHt8/nf1M/NRcRFgnnObEJXeeX2uEk
nlKuVKetwPl86B9ZfIvxKwHFa5vo3UK1vQAPSAidQ86KAFhjVQ4AG4vh82g1WTUtoYDaweTA
t+sPzHvnhfujA8nYgYi5IACeiD0wDoGbwnh2AlriVss43TKOMIgPaKbAbTtjVT0cuwQ+Vryr
IRLCpEKYDAT+VAnnOg1ympkC1CTuuLdsSMZyiKFuJXnEnmDVo7N51iw+TSODOKQRghBYBZ6/
5SkkRhGcjrQrjf7067u30+vj4+v33gEAx0DaQzJpCY+2ING/QYW9aCeKksNgCJDJEZG2UxZe
ezJnCaLcTi5YCpn+OnhyiIqApVheoMnbExaHOrOF2syPR5aSFHvnFXv1jzSTZsLAIaJXD4Gn
vOCat5ARnkt6v207bYZqwSiw4r9BLCOHDk610UGc4TvOLdWSVIrjBXYEoNgucLexF6EaBuuI
grrbhI8Wk2vVDUJlw0Og70zhL6whGo5GQxK7LK2ZItQpvXAD+qsRWvG0nmykw3Qp4TlweWGm
CuIM/D5BCDI1w0mGyQuUiNM4wK+ydMcxgbtGVUUd0wF81gQbf82wgRfc2km2ZgEhnctO1a8Q
HQtcSewiiaCXqocgjnexUItURK4/EyZwunvUJzoF2wq1AoJL7nqtatul8IXrO78lH8iXjqO1
9XkaROVzlatBg6dui+aRLbRFLC8ijmh17Vq9id7fINrRceG5rAoEZ2HQ62Oe2voV+xWuTx/u
zw8vr8+nu+r76weHMQnklklPl5UWdr4Kzkc2HrzIkk3TKr50xxDTzI7R15Jq30h9LVslcdJP
lKXjE637AGUvKfOcKBwtLVpL51S0Jeb9JLWFeIemVqh+6vaQOEGQyBcEoyFnWqUcnuxvCc3w
TtFLP+4nmu/qhjIh36A2eT/qoD+dL+VDBJcD7sljnaF2x/+pjYtYhBcR1ouZZ6uf1uAmt5UH
q9x+bpxP2rDtQE9EIZY1o5DjgMSWDKvAnUSafy/It9oiwkHgwFRJlHa2DRWmbqKoQBaFxHoW
Dtw3EZzJEDDFYkMNVFQoAHRrs8mtH3vdlu/6eRCeT3cQzeb+/u2hsbb+TbH+XosN+L4hZBAl
NMfQzx2gisZWJfJ0Np0yEMs5mTCQy5lEXqFWe3qrH8FMCiJcNQjTbhp2kstyPFJ/BY9y/O53
MpjLmx5z5qMakMl5Eh6KdMaCNTfadv/SV25yyjl1KdEMut5+GoRG8PJVXS1nlxsIRBGQ4FE6
7NtexJEPoXGOSWRr+4CeSOrcB2QtGn0kFFGc7TvXPc6GtouScL6p4UHmBAsynv/ru44/WLjS
3v5wjNV9meR4+WyQKtE+bbqqluC+IyZxD9Q0ofMOoyLRnoR1sMVmhIbn5/v/XD+f9NUZfP8h
PGjH81j10ELa6aYPwRO71xgRsHkJKn2XSkfMs2vOklVjxzENW9jxIc/qbRe0q9HuCbSfdDBh
QC5q20bUu38lluPytDqBIpA2qje8JoGaV5MMa4I0TZj11HDAGQLq1CiuEVI5NCtQsCEObc0z
HZY1JvMkcsAIh7VpsAlK7IPuaqu+jP5sIamxIoVB6gX1NXQ7Fpbbm83O/u0FTeDdphDB7aKU
qbHrGQvcpjVSrPWCJ9i3R3gV0mAC0To5goyKkKfs1keHkJQ+edCfq3Wo0fmbfrp+fqHqOcUr
ioX2Uy1pFtiFtUXKQg5VjQ+eNd8jGStR7ZZYe4L+Y9SbQbVL60hoJD6owwYLVZbGV59YB9tN
hU1EHPVzkBhnIjoEXQlX7O7MZB5f/3BaZh1fqK5s1cWU3IWqAolNYUkd0lhPVYH89UeUXoQ+
TS5l6KOuLhNK1h8ky61Sas/FBGldkasxYpTszSRZiORjkSUfw7vrl++Dm+/nJ0aPCz0ijGiW
nwM/8Kx5AHA1F9jTQ51en66Aq0MSq6MhplntcLkLGlFT1mpev1LLG9D5wBY1Y9zDaLFtgiwJ
yuKKlgGmlbVILyodDLYavUsdv0udvktdvv/e+bvkydhtuWjEYBzflMGs0hDnuC0T6PfIuXb7
RRMlp/gurhZr4aK7MrL6biESC8gsQKylsWrrwiz391icMFXiglFo3Ttw4CmB7wAHJwk90uIZ
1LDzrGlIHDRjf9K1tk4wQ+z6Px/VXHR9d3e6GwDP4Ksp+uPD6/Pj3R0SsZLzyw0ddzpP+M/s
HTRXnPt+Mfh/5u94kHvJ4N44+WaHrmajJb2Es+12mLZN+/OMcSa7tTUlKKA6xBCbBMKrK0EM
+3VvGNbBur4DMR7aNLC4oc7vawL4eOPeZkVz8Uv0nbIQ/wa/4SU9BMhC7XcfPH0SMBBFfMWT
LrL1ZwL4V6lIIvJW7UaGaFwVRoSYTO+OyXPi4413FjZ7W8IEIjoX+9gBTFi8NbZptSmV0ZcZ
pTR18O+bQdhOr1/UiGOm0ybH3ZqJXaNArYBxKZ4SWm0n1w0tzrBhKEZ1rADj5XLp5AjKx4xP
6xdrNEjhqb/ibRPhJA1IZioE1oUazTma1uzgQQBBXOErUgv5+uSefK8O00GI3FKaihlVxD4J
BtJ2CACoNQFqiHG6rvFQrAvwRU+5zT03FrQ+F6aYKxPdLhoXsJ3oXB2J8Gfj2bHy8wy9EYF0
06C2PMmVHlktpMq/mozldIi0y0r8jzO5gxOBoDB7ky7v3Jer5XAssBlRJOPxaogN3w0yHiJB
LEhlVsiqVJTZjCGst6PFgsH1G1dDpOHbJt58MkNmZr4czZfo+QiHWEc1IUF8a3w2Pa79V5gA
KoGazhPXL4TBVc8bIxVSDcbBRmDXNTWciON8uZg5+GriHecOquSSarna5oE8OrQgGA2HU9wV
rGLqopenv69fBhGo5N/udYzol+9qw3uL3GDcnR9Og1vVac5P8LOrXgnCBn7B/yIzY9IANyWv
B2G+EYOvzZb79vE/D9rxhnFDOPjt+fRfb+dntYVQPfF31HHh2FqA2JO3QSWjh1e13qvFQS2o
zye101Bl6L6OxQJbS7MTbWjSi0IG3mc5RZv5Qs2R6510X65j5tI8OqJ3/XzLvbeX/7GLvitf
VZVwWJHfvEwmv9taIygwU1g000Fwxqr24NPdpH2n9dpO5m1JQFQyqdSVkVFzguuMDB3cjdjy
FSJSEqda9tFsoGdf8tRYUiHdFKBwUlp11gH61fU7TaTi31SX++ufg9frp9M/B57/hxoHqAs1
87pE5fG2hcHwcXXDV3AYeNf3cYzVNosNky02aNN1aOdKC1e/Qf+GTzU1HmebDTna0qgEAxRR
L/9dY5TNAHyxvoHMI67Vq9Bj4Uj/z1GkkL14HK2l4Ai6+xFTD0Mq8javtofZ9bAa42BOaLrd
vcbJ/UEDaR2GMUHE56X49EI/ZvaHMEciFLOPbQzj1qqPv60KHztYatBtrvYrLhwkDK+Id8Jp
D2t8tTI6IxYmeMfkQwxsJWwTCIbg0EFGLuIyTWdzgnWCDka1+HdFIMcf49po3q1nx5rUoPWI
cU4DWxE00WrpMmJETR8t525oO50yxJ+24am1ThDNcKOkSXggw9DiM1HAnXNoyD+CbWAksaEo
hN6D2KhSB6n1BbZ0V7Rdqh1sYmNxhWohnCAyFbnaBlKw3EZaPbSPIGoU2XxDJrTZG0SNzkuC
HoqoDFxmtQTTxPq0ACNg5Y5VtQoCpwWgntdBRgkF+hQBIBQ4zc7tYRit8OUlQpCl9U1hW0eQ
ncViTlHIt1M7VGJYriC1tSBX9lpI/wmvqkJNPPrgmUQx6dhCHKISPqJl9lw3mP4AksBdfFPS
ZDrkZ4u0/orxClN6KrWlWQUsjOIgyiiW0+UYIPh4SFqGTclad3dr56KzxO6/zORs72/0sTU9
wUgD2zRqnaU+7bywF0Hi7+VOxNEX4u/EvvRWBiJxERBIcIioHoYCAsUX2TpKezmEEgR6XwCB
/vYBtJN9QafjgTOptYh1YOluuhQevV4BQEn9LOkLvPGEBkEhiSC4FE5jGcrbxvEbfIVcvVAG
9NoUiCeZdexaY66GJgW/fzENoqKNvnVow0L9wCdI5S7F3RfHG9ql1V53jSKTkhim7rntPbkT
nMbOXfJ9gcwq4Ka+OWvDxoIA0o4GkJEvamtkJbx3Gx1HHaiNMEo8RjWy1WPKHP2e1cbp/Ocb
yNvyP+fXm+8DgYKFMzauM+xIZTbRqqzm6JEQtPGqdV0HboxbaoQaTcrFbDJk8P1yGcyHc44E
xgveNsrhsnvvfX3CtZouFr/AYhkRcGzLxYq5DW9Kezwe3yFVmzhT42xMeyRlycvcJV96Ysnc
9gf/rmWgVv0kcokykV7/zX5M5etMOGqtZedf5Bc7TztNgv1/akefNFsYJWsKT6/zW56ciC9Y
e4dJavZNy0jwxMLj8Z2SDPgknthHu4QngSPUlE8WfIG+wZI2WbaJA5a03YlDELGkaDmeYfNo
TKIm2IiSiELtSXpoiiBSHfK6O0yLj/Kglzv+rC0+hgdGG4xzbYYF/06gyiDhq5iKsp8GF1LS
LOHbLeUTLSerIUvIg1TCEskSYfnWVx1aohpri+EQTTo1YNk/FUlq3+WssyzUmgYbUO51BVzZ
KliSFIncWdG5WhrE11ZSYMG3iMw8OPG1bwA21Ks0y+UVX6A9HjxmQjchVe8JaBROBInKtSBH
ajVfRcJmYrQNnXYMCouDWi1qiExK+faK2vdrAMlZ8qAQZGoV+BCsdAN7JkMwyugoGqjH3msc
MsReeXzYwWzxGqy2kBSo5x8LPS7VGjFfW2i5HE6OFFt7yUJP+ha4XDCgEV+sehv5MUsotxd5
wrdKVU9gFPTVhOek9vPlZDkeu2DpLcHM1+GdLhlwvqBgGB0Dq/kiL1cbcguD+a06HsQVxWNQ
WpWj4WjkWYRjSYF6HuTB0XBjEdQsFdjM7XLfA5cjhgLTGYVTfX1BWLlfuozNQm6Beh6xQDWB
uCXTazVFymA0PGIhVu2ZVQeKPCvDPezvZEDB+iBio8bLuID/0cDLc/JQraVPAxYA6AdwqhpQ
0L7zBViS5xaXniSo1lXBGXFRAgBJVtL3Z9TFFWRrtJQE0nZuREaWxC2XjLF3HqC1ZnvYWkkT
wHdIaWF6bwW/5s38Ayr6P17Ot6fBTq5bnTGssafTrRKlvj4+a0pzOVTcXj+BW0dHo32AXVT7
tvaizwEbhANPK/P4iepfPTR8QMiY4gOkjeryjF53AQLcdKk3Xsb2EYDtL/DBDR9twEYUVYp1
foF0KeaZKRGgjpqrxuEKT5YIrIaj9U2wBIVJzWyKxSTw6xWqrSgjCuGkXiS9jM/VEtlsUiEj
RAUlNd58mufOJvVHD6FK93By3Y2Z2dTZGAFGLw3gsjjyo1po1EcSVHOtEfuDtDi9UdPCoAyE
gjI5NSTkw7CZVA9RGAXHn7S7dsDX27cLQWcSQjOTbkcsysNy2RWR8OKDefVQrUZIyCkafT02
by70aUpw5F+OzVO8w2iMBU7MV0Y4/Wg8G2G+0RjvN9Xzkj5T9RvO98uVL3r6gZZpghTvdbpr
QwdyswEUHhV8pkapcDgn4qj+fz7dnV5eBuvnx+vbP6/VnrGzADBn2A8QrInMgq+P6hOf6hyA
0Eln7bbzp9m39cHTo77McY+f6F3wBqG2Gho1o5piYWEBZEnUCLl3r4CIPumoIK11C/iUs+7H
w019tWAhqajzItYoizhaKC6CeM2SrC9ntJ82hO8HNOge74f3SlQk1isN0g5fo536fv18fQMr
l2P5Qe6P79LouFLCY4l3J8ZWoRes7XBQUJW02khUD71WNb4CLVTS+KRgIkUEgFgHpxY7sDLC
13JVWyVBQp4vCGBstfVRD9krqdzh2CXFzho7rL7o1dZku/ccW/5aqejZms8oT9b1Zs0sIzSK
yfbgKIZbyDlI3CWxww0DwlbuwQ01jYO9NPoCSl6Mr0y9O/cDTh/octaFKIudLPUBaX1Howkk
MvaYoCd4N6geVDpR+FaEdQXXsTopthUFuaEGoNmlml3h293r+enu9LcqK7zcA0tTrgSVKNZ6
q1ppR1UBicFVZ2ptZTuUbIsbOC696WQ4dwm5J1az6aiP8DdDiFKvLGJK8INekt6Qx0e1BfPx
Z3u3MXD6+pILjBXa3DIhI0BD5W5tIdQFSQvV9kR2Lcwty8JKYXARb7JP6F4A7j8tN75GQi+f
bCV9ID3LSO0y4kx4NXx3BsujrpdABtDf8E4DTWM5umhqbm3kssnE7XLA7cURHM5eWHE0EUnP
WSyl7orti77BTZjr18fnF9s+SW2gVDEeb/5iClHm1Wi2XMIhKzHBVZv8+XRYbxy7WxlOTm1G
dS/8gQH1qwOa20UOwXxoNgMFVImXjydyiGQ3qDlxwV0D2vBYH8way+TZaGxzRMUlVWmal+u2
JNnZnqU0pmbIxWTYTi3QFwEfnP5+UnIKUTZpfuHns9nSKnmdy5BDx0cL1RPCxEXD5Wxho2Ue
eeOltqggw8UqopkVQ98tejdNuFRa1oweOObg868SezwWNKR20/hYAIHwf0l21UWgzWm0Ywks
gQQJTzKZgbuE+Mp+hUHtjUwOWjPqnrDplGpjCM7D1EKL5AV9Yc5KAMMf9I7waYdzNIXXqStf
jhfY7LPBlYyTVcF+4lIkdnna5E/AxkCEgE3y9eV4QU6mLAJdXW2iX1a7HK6dSioMNnyqW44W
w+nQzaGmjN2yK8pyhc+lGkKcLxfjhYvTVbXLRtcabaWabMrJHG+VGtwPSn01TRdtOsd2RA2L
qvZ0NDv2EFZDnjCeMYUGwmIyYwmzJZeVWjsn04Xbkhux2wQgLYxXU6ZaRbmazpj37Dw5Gg5R
+8M2I8Gei2ugi78oXVqgVh41CkD8hp6ehaGxY6kS2XkzaJjxZYwGAyMSHbQHzImYFzQ+PTYZ
WEAGudpSygCrAjhGtVUpzG1Q9viKS6IVT9r855eT1POWuaOYFYwyoklFy+RW0q4cQ4YDFf0f
T+6Kz9OtspLdSlgEl/1fX0mJsaB3JPC016TrNAngtNTPUDkbxLL4aeE0O4grtSVjUmzVdgAu
9MH8HaTQT3yGC1wq6sidkMnQITdrsdFCQAjo28dvg/z59Hq+Pz2+vQ42j/8+PT884gW4TQxO
KEzO0I7MyykD+A1jqmgxpcTYoY8rF2lk/BC8w4g7JGTLqcR+ksy8x26fPn92MgvL7iPfszB6
U9diX6KoACneTZuozyfGo+rgo1NT2He6rEWwqWMd/XAgx31WSzDnS/ssLgXelnUMsOndCW38
I3dEmO54WvvAd7mWy3yznB85kvDK5XI+Y0n+bLJachRfrMbYzNWijDhKKNLZZDZj30QXyw6P
ZLyaDNkkijQfL0aCo8X5ZLVgC6EpY56i1nG2hYDCF1stbxO1LPaR5os5R4KVfLbsIy3nUzZD
TZqzba5lkxlbK01aTFiSl4/msyGfrJxP+K+Yh7svcHOGpe2XyyFfRE1a9pNWPOmQcPCldrlp
O2SoiTLezEZDvoDySm0l5myXUaTleMp+/zKXs9F8wjaUos3HE77OQFPtyza+oS363qdEQf59
+1otYryePF8/fT/f4L1x50PCpnVT4i71KzALhIUP5kQvFhGSkndyXWVbL1IbzrJUy1yQ+hFW
TqvNC4hd2NdAjVBFQaKv58rXs9pZu5d/myS7VIoQQrbB3IVeIvMic3wayBZx3qDvEnmtzsNd
IdLgYB0lwZPxt4vUqS0GNszYV7CmrItosy1TOLncHkBoTTdd4AvF4VZUJxOiHI1xFzdoOhmO
Zythw3Iyn85sNE4mxOawA8cuOJ9y4ApPby06HNkonYwNo5o2sZ+nFpw5L8pnM7UFsw/yWtp4
xIETBpy7WS9nQze5Wr3sdtEahpldrxq1FCMtaT5xEuDpRyPdQm/1C3+8HDrlLSezlV2z0hMw
8G009mar0ZH5PrPZ3xZ4Ufpj9S0tNJKTURhPRis7j5pgzt2sfqqP7/+8Oz/89dvod32EVWzW
mq7ktTdQkgzk0+nmfH032EZt5x78ph70MegG3xIzDQGnl3arJfFRNZwFguBit4Kac5JdT9+B
DrzAVSifz9++uWOtNqKyx3ljW2VpJQktSwN6K4RQwZkNn+c2EEW5DkRfSrBlj2Hi6KF7+a4n
Z20LTy4uEDIzUhtSI0rrhtRtdn56hSPMl8GrabjuG3fROG90OL/Bb9C+r9fP306v9gdu27EQ
qYxIVCdaJ5GQOy+E2Mj2HM12zmclBO2C3Tfa1toRVwXC89REHdWxoupJ2k/Eehe2jsq7DQSY
1sC1DnRCdrD8BOxMYrRN1c+tV2ZymmS9qC3U7uhHMie+Erb+dLrAwpFqnyCul5fGVydS+Wmq
0R7WtA8fuv0YqFJiD7z/VFkYsnoDzJIyezNEN6vgD4uCNkTkVA70uH6xh704ufyuj92dSwP2
oV59cEidjjbeBkBL0HXm5Hzz/Pjy+PV1sP3xdHr+Yz/49nZSEgAjCf2MtXnRpgiuyDmQVPsy
6s88A9sNpLTSz46LyQY1A1B3kOhLUF2sP42H0+U7bEpYx5xDizWBk16nEWsiXPtxSlaSsGM1
mIuivpxP8QhcjvbknnvxAu8HEIzv7mN4zsJYhOng5WjMw2wmy9GSgZMJVxTweQiuNrPxcAg1
7GHIPSXEv0+fT1i66pzLoVspDbuV8oXHonI0T9zmVfhwyb5Vp+BQrizA3IPPp1xxSiXMMKVR
MNMHNOw2vIZnPLxgYSydNnCSTMbC7aphPGN6jIDTqSgbjSu3fwAtitSWgmk2b34EX6yZQ0hy
b871Kf9yNF47cAoXv0FjNHObuqa5r9CEhHl3QxjN3WGtaLFYg992pmuokSDcJAr1BTvKEu7t
Ct5xDaJD6U0cXM6Y4b4cz9y2U6DbKQCsmKpcmL/UD687rt8b0/yY6m1RjlDyX8cJOlOUMSmp
ea5dAFneySmNOienNOPx3BzNRtng5fX6GwRauaWeLMTNzUnteh/vT6/WsadFMdwP13eP38B+
7fb87fyqpHsl96nsnLTv8eGcGvKf5z9uz8+nG+25kOTZSD9+uZjgIVgDtm/bX8zXmG5dP13f
KLaHm1Nvldq3LcjoVM+L6Ry/+OeZ1VcRoTTqjyHLHw+v308vZ9J6vTz/wGF5oKY//vv0/M9B
dP90utUv9tiiq73k5BPx//tLOdT941X1lwFYU3z7MdB9AXpR5OEXBIslHrE14Hya3qyMR7nT
y+MdbC1/2rt+xtke9zPd3njueDpd//X2BIlUTqfBy9PpdPMdv6KHwxLwjEVus0EQD7fPj+db
1DByawznUO80LK3kKCvwzQMSOZKF00heSamkLXREZURMe6PSwJABMSVqCNbmsYXxGUQHmkvm
LsU2E6hhYlnagPtoXVA9R1tIHd3auhfTEOmGtEHJYX1bmgNT0frGmtFuXr9ArCjG2a1FaTI5
RnEljpE0QeTavMMoiH3InGwrtwko4OClkto/AiEvsjAit+V2BzSzB8dQrebYQYpB/CwtjW/o
ah9im76arOR3UfgODCfTge2TztDqKCDWDqNJpyM0SIbQxSMFl9GfppMFzxFlsJ8Dc5YPb69f
l63z6O1B5lFaW0+ZSVYbSMnHt2dyC62bNzl6k10ionidIbvyKEuSHYoK8g/sw1sTB/n1t5PW
VyDvcY6D5D5W+h4rNlJxun98PYGzKK4iDNWkerp/+cYmIIR2agEtu45KVPdm1TQPt2AHXh9h
tku3zLzBb/LHy+vpfpA9aOvF32GiuoFwrbbHKnGvlkUFy0ePKwtHNulg5rvtTeZSNVlbq988
3velY+lmdTvmH8Pn0+nl5lp9lsvH5+iyL5OfsRrd1b+SY18GDu0fJgr19Z0qWm/ZWXr39Txz
j0GnOJ7vzg9/92XEUdv155e+bavXSRq7h1ZZZR45U4DGQkKf7kfg2b/KUj9IiOdXzAQBdrMi
oS4zCAMsD1Lse8icIxqcGsIW7tvu3pTcOYbpKllZbmOCIzjGaKoe/P2qVu3e837DrG09PpPF
ribQhagGE3GcTPD+o8bzMp0RubDGixLOToWDy2RGzk1rGA7OrGvBQZJhZ84RMbTW94ypU/gO
q7w1x6qPnZyDfqBf6MDQoJ4kcK0b7RzQE6r5iVcylIYWq3mrhJ7Usowxizw4d7FruGG/79mu
tCLnMZ5McQRIA1AJQoP4EL8GLKPARIywTnWdeOoba6VwzKOWC08xxsl9QQ7E/USt5NgM3gAr
C8A2EropyvpVExBUemhgKG7RL47SX1mPtLgXR+/zxWg4QpvzxJuMsb4tScSCGN3VAM0IQGJn
oIDlFJ/zKWA1m41sD9YGtQFcnqM3HWJjDgXMiT5AlhfLCdZSALAWM2L++7/Y0XbbvfFqhPvN
YoXPy4LUBHprjS6RVHgk+s8oFePjEaafDgNbxym2OtHAcmYBK6T9AkuQyXxCgNWcxB/z8sl0
jAN9i92CaBa1McQeJkL73Kw1k6giUtAO3/fgCsZfxdfzbJL59tlnqVmHy5FnYVL1xBmzof+5
KiF8fnx4HQQPt+i7wegoAiU8xwGTJ0pRy0hPd2p9dUSjFq0vfJ3uzzewLz+pvSHpJWWs77DX
fnHxXBHM6YwCz3T0eJ4kStJIXNJhkidyQRz4wluiAoIGyk2Oh6vMJX7cf1nqvoquK1k1MHc8
zrc1oDfOEBno8QE3BM+AmzqRrUtgUzcjp8q8Sedm6hKtmY1myNPqhqoVLKaXqA5zbT4zP6Bn
wzlRWcwmS6LfmU2nRNs0m63GcCArAwudFASYL2my+WpuLQ/g85k4rfTldIq1xcl8PMHGGWps
z0Z08M+WYzrWpwt8D7PUBwazmZ5UkF7pnaZpFYW3b/f3jW98OpKMb+pgTwI/609hxEjLjZdN
MWKbpMIBYWiFGqLCIQXSxQzBY/Hp4eZHqxv7b7Au8H35MY/jZstjdpab5iLQx9aR05l2wXf5
zJWh79cvpz9ixaY2O/Hj49PgN/We3wdf23K8oHLgvP+nKdv4SO/XkPT0bz+eH19uHp9Ogxd7
Rlonm9GcTDzwTPtjeBRyDKbzLGYt8fluMsTybg2wo3NzVWQ94oomMdJKVG4mRi/vdFq3lmbW
Ol3fvX5Hc3GDPkOwcPDl/PhwfqXTdBhMp8MpGU+TIbFMrJExLgibJyLiYphCvN2fb8+vP9zP
IpLxBB9x+dsST/1b31Olwd7USznG490800bfljvMIqMFkZjgeUwa1imemQHUKHgFs5370/XL
27Nxgv2mqkt6VWT1qsjpVRfJcU7Enj30lbnuK2QvgwlMJ4plMvexE3aKv5emvgmJvG/3Vs2Y
Bp2/fX9lPpb/2a8kkeFFrObnIdreaQf45BabcYlPWmk7WsysZ7zkeMlkPFqOKICXAfU8wfZu
HtjgzegzuQm0ycciV19dDIdob9cuqNr/Pz4Rp5QxomhkhFeYz1KMxljgLvJiSG30yoIa3e3V
iJp65CLXUQ1Ea9wBgjYsaSZGxI47y0vV0CjfXBVkPKSYjEYjHDMSnqd0uzCZ4C2W6jW7fSTH
Mwaifaz05GSKj601gDeVJIwCltE1sLSABU6qgOlsgiqyk7PRcowUM3svjWmbGQRfvdoHSTwf
4kAN+3hOtrRfVCuqRiPSAe3+xlbm+tvD6dXsl5iBcbFcLbAMBc94C34xXK3wsKm3zInYpCxo
rTViowYd2U56k9l46m6MdVp+oWmytcnNN9om3mw5nfQSaJEaYpFMyHJBcfvci23Ff1i38a1N
i7lBz91Ub+fpm7vzg/Np0GTH0DVDY/04+AMOxx5ulSCIY0/A27eFNnZEyhdE1A4Yih2ExubI
JZw46eg2LFlfXkKkLsQFWywi6Dw9vqop+8wof2ZjPIp8sFqhe+PZlAjUSl4mMx8AZNyVeWyv
/z2lYEuoaoAXzDjJV/XNgt7sTBIjbj6fXmCBYobcOh/Oh8kGD598TLeW8GzvOCSZ7LY5aZ08
HmFhxDzbcl88oUxyRrUN+tlKpLDJwhmSJhYoi1oz7WyKy7nNx8M5In/JhVoe5w5gDz+nNbvF
/gFOhpnB4xLr7/L49/keRCbth+f8Yk77na+kV0u69kW+KOBaRFDtcT9cj8gKX4RgVoB1NLII
saQqjyrfISWjbryPZ5N4eHRb4N1y/9+evps55nT/BLspthMn8XE1nOMl1CC4JcokH2IlqX5G
falU8whuYP08Jt49uDK0MsMBuw87JLZ/A4C0Zb9WwpkJt7g0cflcbym2FwURV6G2Uu5mYztx
+8X17X8P++g2XW17NZBvf77oE6DuVa3XiC0ND0q420rAsYxHotQK2W+sAK7XI3TGXAPVOkoh
im+Ue3003HJWqsbt/Ic/z2Aw/s/v/6l//Pvh1vz60P++1jz6PRMKX2DnwdR1kfGXQO7Lbg/g
SvxGj20ndg72u6ge4DS/BANiGXkcQWVclZRgqUAAktmuqC9ZEqdGiIavAXT7M7ekTVKwGcG7
ER2nKYc2s1TrwFjbXVhgEWwirPKFuIEcrkE/jF2kChM7U0BFuEModjgT6ihDJrpzCs4rfmCK
ieBqHYMhwha71Ql1QB5s8KKRdWAZcCgw8/CSRLzy2jIYc9lsB6r6zWI1xpE/Hc9H2r9QQt2G
c/m2IzNR2xgcmyfK0A4XnirXJkbGkeVtCAQxz4RqRrtAsCKhopV1FGpUaGewatITBqpvG3Vd
yWg52HfgwN8SrCLwdBIcy7FlzKKB6ggxhhw+NSHJSLWnF7skGXi7IsL+0hRlYmc+6c9l0pvL
1M5l2p/L9J1cLFOaz2sfrVfwZHNAuHc76E4RRBImTFKmFlSs2O1Qi+soXNQBGMrIbm5MYqqJ
yW5VP1tl+8xn8rk3sd1MwMg43Dha74Hny11WCsrCvBpg7CkHnrNUR/aWXrFbs5QiyEVUUJJV
UoCElOCrNRQldh2xCSXt5zXQhCiq/BgtOplnszdIlY3x2XwLo5v4dtCmlgfaUNovqQ25hLyI
sYMKTMRr87q0e16DcO3c0nSvRKFwXI5il1ZSpBBrx9xmsljsIFIaNG3N5RaEdWQftJJHsd2q
4diqjAagnUilazZ7kDQwU/GG5PZvTTHN4b6iLwIr1B/LKH2TD1i04VwbpA53lWFvMnDdzA2Q
BSY8Qgej5+kqryDV1uF2AesQSy7EzGk1oQ7/BTGXUlFCrDDMlWYl+X6+DUQGMJc5u4TC5muQ
+k4emJAkkZQ03Lo1cejHJqAhchjZiffgkbJmO4giJa1kYKveBtShk9v+dhkmZbUf2QA+YYdU
Xok+M7gQDCVdkgxGu7JqFgJ4O3zuWN9sI3OMCaPcg6kx5UeF6pmVj2dBjkHEB6Hk2lBtR7ID
ywry+ZGlHNVXtbwkImoSqMbI8vZCpXd98x27Sw2ltVjWgD33NfBWrSnZhniCbkhOrzVwtobR
qfbhxCUxkGDA4OZuMeeOXkfB70fXAHSlTAV1OMyP/t7X4pYjbUUyW83nQ7reZnEUEC8zMsOz
ws4PDX/3Rv4tRi+VyY9qMfuYlnwJbGvkRKoUBNnbLD+zE+6xEj6/PC6Xs9Ufow8c464Ml2iy
L63hoAHrQ2isOOC276mt2VC/nN5uHwdfuVbogpxi4II64dSY2vGR4axBaIEqydTyh934aJK3
jWK/CNBkC3bZ+FWW4qFMcueRWy4MwVrT1GY39CuvCCAcAbqICX+aFu10Bm6DtPnAdVHdx6+U
NJJgsaOAi8XW1xE+D5iv02ChxRTohYiH6tvJZFreWunVs46oQcQZu2gasKUPuyCOxGtLGg1S
5zR0cB050LbI7KhwQ9cWaAxV7pJEFA7sftoWZ2XxRkZkBHIgNZEcwFQo04u/tFm+EA+iBou/
ZDakzwUccLfW8QfaS+L1W3VMiDRLA+aeOGZRq3FWF5vNAm42s5fRMVMo9tmuUEVmXqbKZ33j
BlFddQ92zb5pIzTNNgykEVqUNlcHS+zpwcACmgzdWLDTWB+6xd2P2RV6V26DVO2nLD92nlqL
iNCgn438CFdYLEbql0Je7oTc4uQNYqRJszajT0TJRnpgGr9l8wNoY3BLbqKEuRnVHFpJw35w
lhNEQi/fvfdqq41bnH7GFo6/TFk0Y9DjFy5fybVsNdXxccGDPHRphiFI1oHvB1zasBCbBBwd
1yIRZDBpF2l7N51EqZoliCyY2PNnbgGX6XHqQnMesl3TOdkbBK6TgQH5Ve1+CX11m0F1Rvab
Oxll5Zb51oZNTXBr6ro5VzIasaLUz03QnnZqdBjU136POH2XuPX6yctpNyHbxdQdp5/aS7Br
08hVuL2ZejVsbLszVf1FflT7X0mBG+RX+EkbcQn4Rmvb5MPt6evd9evpg8NoFPR24+bkopwS
ifZ0KbGXFjNHa5EAzd3umAHvspYkUiN9nI5etcE5fUJDY7SZDekLPrRq0VoHZcRa4zp81Ard
QXnIigteOExtqR2UBWPreWI/02JrbEp55AErnQ1HNXIQFGo0T5tlKTaeWO8JxXIOZ7jj4Mim
aN5XaUNVmIL1qltFflVHXvrw1+n54XT3r8fnbx+cVEmkdoh0ma5pzYcB/wFBbDdjs9wiEHQC
dWwQP7Xa3d4chdInVfDVl3Ba2ofPYQMc19QCcrKF0ZBu09jye6spEJGaJTRNzhLfaaCNDm+i
Vv0oQ5XUQo71aJcc6taKYuQL1zcgumG+Swvs1ME8Vxs8odcYLE3gcCnFZaxptOsqRNUJMqku
ivXMycmPpHYdHaW66uBA0SuvcqxZazgtpUSQb6m6yABWJ6pRbrpoSH1t7kUk+6jWtMoxZdEe
mQ9dBUx3tXgOgbio8kO1pf6hgLTLPRFbr7VnPY3pKliY3SgtZhfSaMb9nZIgLwIcecdQ+8rh
tmfmC7rxtTfCbqkEl1HLV6lWk1iLsMpJhvrRSqwx7psagjv/pzGepGO0MrpKGiA3Wp5qiq15
CGXRT8EWgYSyxMawFmXcS+nPra8ExMmjRRn1UnpLgA06Lcq0l9Jb6vm8l7LqoawmfWlWvS26
mvTVZzXte89yYdUnkhn0DuwjiSQYjXvfT4O5AUlID4faxPmPeHjMwxMe7in7jIfnPLzg4VVP
uXuKMuopy8gqzEUWLauCwXYUS4QH2x2RurAXqA2xx+FpGeyKjKEUmRJP2LyuiiiOudw2IuDx
IgguXDhSpSKXy1tCuovKnrqxRSp3xUWEXesCQeuOWwSOYvGDPf/u0sgjtic1UKVwxT2Ovhjp
rrU8QhpTYjJhbradbt6ewa7OcQpJ1xV4qorgcgchVKzpO4egmEqShsBHgWrydIOPT52s6gM8
tRd2XlH5WwgdYMRNLDM0a7qfBFKbnJVF5JUuA5OkDWexzbILJs+Qe0+9S+inVMewSBhyTuKz
xjKBq8A5aDMq4fvFp/lsNukCyIHzfR3uLFWtAeeIcLjExYRwmN4hVaHKQHvBeYcH5jSZY9fW
2sTBhHsFdaQJGPYTsqnuh48vf54fPr69nJ7vH29Pf3w/3T0hq7i2bVSPVOPlyLRaTdFOgHJB
zsMcnlrEfI8j0FeZ3+EQe88+knN49CG56vFgKAdWRbugU5t3zAlpZ4qD2Vr6/ys7luU2jtx9
v0Ll026V4kiyrDiHHHoeJCecl2aGIuXLFC0zEsumpBKpxNqvXwA9D6AfsrYqKZkAuqcHg0aj
0WhgunAOhPAgS2aVZYNClWWcR/qEOnWNtimy4rrwIqgGIJ47l1ito6muRRpOJ/EiShrKrnR6
cnbuoyxgT82CPoaSgB7ywZoejtzjRpYSHlrAGyuQMFdnPcowu9145kDy0hmK1UPQhXm4uG8Q
dhlpXZTIoZLXODYx8HkmRRW65PpaZcolIWqCobc84JV1CnvHYpmjBvoJuo1VxQtuUagGIbsE
TDQsOgXhzjgP2RBj4/R/eRoRNsLzAJUaTbuGjtCdATTGb7iQqr7OshiXC2O5GUmotKVejioh
lCNJmaoGM8i8RkMzhyH4R4MfIB2qxjlQhlWbRCuYXxyLX6JapCQ8A78Q0cQZPt11BIXofDpQ
mC2BLz9r3Z9eD1282+7Wv9yPXiBORNOqnqlT80EmwdnHC+fnd9F+PD37ydhotr/b361PxajI
PQmbRrDjriWjq1hFTgRM10qJek4ErcLZq+SktV7vkUyjBD7uUOAbmF//hHYer+LwLYSUfeJN
XeoxvkYJfQFWIv0TAJC9Safjlhqabd05RqfMsYJIDC0icQ6MbYOUsr/XjbtrVH3t6uPJ7xKM
kN6y2Bxufv22edn/+gOBIJzvecC9eLNuYEnOZ2HMa+DBjxY9Me2kXiy43kREvGoq1S275K+p
jYZR5IQ7XgLB/pfY/L0TL9HLucNOGmaOTYPjdE4yi1SvwW+j7Re0t1FHKnTMXVxy3mFCgq8P
/9wfv6x36+PvD+uvj9v74/36rw1Qbr8eb+8Pm1vceBzvN9+3988/jve79c2348PD7uHl4Xj9
+LgGYxKYRLuUObmnj+7WT183dKlp3K38ayyGcrS93+Lt6O1/112ChEFHo9w2ZHIZy9g0DEG5
L6Zok8A0CJsUXXto2ThZ4CYPrqvYnWz+FXo0850rXYKFC/QmgFcyeDEpJrBXlQRj5L6bHz3a
z84hp4m5LewfvoLJTo5y7iOk+gHy2oaGZXEWltcmdMUTy2hQeWlCYE5HF6DXwoIlrtR5gf/o
o++eXh4PD0c3D0+bo4enI73tGL96l0RYpVNVJszlycFnNjzmlcQZ0CYN0nmYlDNR0dLA2I0M
l/EItEkrkX9/gDkJbXO3H7p3JMo3+nlZ2tRzftuj7wFPJm1Su86ngNsNZDkUST0cKRhh2R3V
dHJ69ilbpBYCq8U7gfbj6U9kDUDHqIQW3CgsoIFxDnN8yOBTPn/5vr35BXT+0Q0J6S1WpHqx
ZLOqlTWayBaPOLRHEYfRzAGsIsolri/IPR/u8GLuzfqw+XoU39NQMIv0P9vD3ZHa7x9utoSK
1oe1NbYwzKz+p2Fmc2+m4L+zEzA9rmWeg2HyTJP6lOdi6BB1fJlcOV52pkDFXfVvEVBuG3Qs
7O0xBqE9nklgPSlsbGkMHdIUh4EFS6ul1V/heEaJgzGBK8dDwBRaVqq0aPOZn4VYhaxZ2B8E
Q+IGTs3W+zsfozJlD26GQHN0K9drXOnm/UXxzf5gP6EKP5zZLQlss2U1E/XFRuLm9CRKJvY0
d6pNL7+y6NwB+2hrpASEDbahWWKPvMoil9AimB/HjOAzUZ94AH84s6m7TZQhaEnQbZ4slB+M
tSAc4A/2IzMHDG8DBDyRdq/iptXp7/ZnW5a69IRefbePd+KmIXsNFdti74FhrllL3PNFkNQW
mHquQvvTOoFgpSwniUPKeoSVM7CXQpXFaZooBwJ9375GdWPLIUJtocD3iGL7/VywCf21wPOZ
+qzsJatWaa0c8tbraIcKjh29xFUpilsNImRzuYltPjXLwsn4Du5jYY9efbpo6SBSi9nD7hHT
HwiDfmAYBY3ZDOZxjh3s07ktzxgl6YDNbGVA4ZDdiKr1/deH3VH+vPuyeeqTrrmGh0XC2rCs
cnuCRVUwNWo9cYxTM2uMSw8SxrXGIcIC/plgHTH0BotzBGaLtWgwm0PuEa1TdQ/YurcqvRQu
fgxIMr9tPaUc6yh5kOSV0h6ztDkRX2FNGTPRrYV1mVojFvXwybkt8UhhFvRiKPTUrkTqXemV
bDFEZhwyQ5aLIO1o6kUgycjDEMbw1AnGUcfWdedyHtafMDb9CrHYR0ex4xS/9W5rZ/vfyNzF
xmOrztFSxjpAje4FjJHcetZinrK/yPLcU6HF/fb2XieyuLnb3HyDTSe7oj64t+g5726g8f5X
bAFkLRjR7x83u/E4iYL2/D4rG19jiTiJ1c4exjyrvUWhA5bPT34fju8Gp9dPB/OKH8yiILGm
+11U2K6/IvUGhvZdBkmOg6IrgpP+i6TbL0/rp5ejp4fnw/aem4h6p8134D2kDWD/A7qIH4SW
yriSGSRgRWDhNMbDPslHHuPFqISfXPWoSZJH6C2FNw64wy4sqkhaYyFsRUBlCZCoZAUUttkY
tkmzaGWrD8JWgp/8kFzCYdbFwfUn7ioSmHN3bUFNoqql4XI3KOCNXZUHq/BCLEjSqgl54dQk
sA3ukFmrnYU96hQ61uuYP4IrlUdFxhkxoESU945D9dUFCcd7CKiMUzGXPmtTx1ilRWD6C4ey
nhncFanuC1FHalcvMix9J8Cu91l9RjBTtvQbbRMLRklqSps2URfnFlDxqIER1swWWWAhsICO
3W8Q/mnBpAyPL9RORYQ0QwSAOHNi0s/85Ioh+EURQV944Oz1YaMRtXWRFsLy41Bs+sndAENG
Ti88OGjGcUHIjJMGtHgd4wHPSDDC2jkvS8bgQeYET+qMr+B1ESaw6F3F8AErXtI0x+FFeOKn
SrJd+NqOHSEOo0HaBgxdof0IU1plNQW4FcH801S7ihnxJY80TotA/nLovDyV8alptWiNi8xh
+rltFOsqqS5x/80elZWJvIxkH8sCfhKx18VkSZiup274yVGNiZ8KHoqMrvsoLgt+mg98E6lc
MCQonzrDnqy1Tx4q9OYIQR+ftveHbzrN2G6zv7UDo2hdnbfyHmEHxJhb4fnUNzIwniLFqJTB
Tfubl+Jygbenh8iL3jizehgoqBhu93yqp8RE4TpXWTIGWw8c8b7lsOfaft/8ctjuOvNiT6Q3
Gv7EeMIOh1A00Rx3rGxxTi7cbIEbaJkhZlLBdptSGMjQFPiaJUwyzH3Fb2jg2S71pXhgg50o
BC+JZlhPNsHsKcJg6SaRTnKBN4Uz1YQynkRgaHCYheXaHHVZUGYGaxwU1KBjxIcK16Ml91bm
DhKgpgnd24YZ1x/3aIb+cfLj1EUFVnzCs7/oYemQCxOKN6V7G7E7Noo2X55vb4WJTiGwoAkx
Xz8/i9J9INZUQhLRS4B1SkEdF8tc7DtoM1IkdSE/nIS3edFlbPFSfI6rwjUkzM9iwnVihdoD
dthHEo+HcT4cZSL19izjDCWuCheYWS3y4fW90SFhlofK4P0gMnW6CHpSHpmEYGPLTZGKnRhl
cYanmJZ4/QSOh4Gk1/VG6vTi5OTEQ2laMwI5nHhOrG840GACj7YOlSWp+hB4IWuKa9SVpU+u
MnJ8y2DXAVUFDmA5BVt3an1rXQvJCE0IQ9zrtXMFUmxb5hpM44UvZp7sjlNUGBbUH56Ymg+B
vgCMhevx3hF/jKDGXxisB/tZuqkrbpB0HJxhcfO+RhcO4whrAzw/ai02W9/f8rSxRThflO1Q
U2YUsmLSeJFDGCgnK2Guh2+h6YI1T/nahE9oZwsMllL13LFCLS9BzYOyjwqxTvpecFQ4+EBM
SiCSGwnwMB6BRKWAd8bGmFIQs8gKSSSgdHIRzIxeJTot3Rgwaiyy+tPhI+dxXGqlqr0CeLY2
CNPRv/eP23s8b9sfH+2eD5sfG/jH5nDz/v37/8iPqrukCqJWYoCyKq4cuZuoGY7bHFfVgGUA
dnZszRtWiVHOJzf5cqkxoMKKpYzE7p60rMV9Tw2lgRnrl044UP7xYlo4HcIhQiMeuUK+0G7R
qA0mgLCjXWzouXH0LhP2//hQw9aFZjtMV0MnkZgQcoSRjQM8aBc5ngmAMGnXgKVi9aLiAcPC
CvqXe4LYwgH/X8VVUNSWNvVjZJ6jbgV3AWvLwKOkW4lj4Q2ruIs1Hctihgun1UOCDEhTtnFd
lqNwf1Kkw9qDDrC/gfFlEBRfjrfwxizGYtDGTLjsrNCqtz8lw0kMwZ5D9zS/t9rxrI2rqqhY
KrhhgMWEYnL81GxXGTc6T+qrVP6kcypJ65RvORGi7TdjshIiU/O4v6FioCinu1a3EjHB+cZh
YiyObQU6svLwuuG3C3JKFA/fjK1g+jcF1BufU0/KUGo12rma2Xeo1hDRCzUKf9An0dbLBDcn
5pNZV91VVnmDtwRDNYPNEWwTqCntYWo5PvG83mHrekWn+p8Yb8yeaJVPqi5h9Z5YfevlzITO
lsB+H6vrXJX1jHsIDES/FzP4EYCew/hfrHqc2mHuPVzlIMcKffy6QVy7Ezz05KBJXYT9Q1PK
o0KCKZmlmefYbvSIRoHeKFuJHEXlLRR0ooN5wGCUxpfX4uDy+3O5GtE7F9o9AiYG5KUwNJ8e
Wgy2ErnNkItMBtEu7XlrylcFmx9MUIT96Yrm+YJ/wnQeNZnzaxEj6NClBgn2k3ixQb+Q0gcj
YncGmAAjLSx8j+XuzGHh76cI7uyQK84eRsHTO0HPE1RTZEl4cS5Nix7J4i29/RMfZvEKr5y/
wijtg9OXw1yC31PVOixUtp4DoilWvmbdedZOADsvoNkVgKn0uX+oGADux67IpevHY07ICShX
P0WF5y908fAVfgKJH5tEyseKdJ5ZrwxbVVwVfU3ohJ1uDhoMLC2W4lHkrCCPwRV/DB3ZAWfH
+e97WH8Lwui5yz1ojnxB+sAvLXTxkM5xZXfzrIiszjDkGFYJl4Hed4cGOr+127eTUABIBab9
JG2kGoWnlFg/JilE1rhaYYIVl9wvgpo7I+gnOrBUmkzzTJSC1iwh+mEsdEWr8/FyE9BwYf8P
BRrh/UxRAQA=

--vSsTm1kUtxIHoa7M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org

--vSsTm1kUtxIHoa7M
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--vSsTm1kUtxIHoa7M--

