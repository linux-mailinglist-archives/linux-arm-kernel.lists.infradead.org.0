Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44981138614
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 12:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0vhd7M7hHyp50/Mkf+j9S0wkRzhT5VOF5qH5dvxbXnQ=; b=RP/
	ip0OjWYKJuc+tcVhpR1RezNBKATmWvIOY9htIJkiGVIltNaSxEuWceBopik2Urm4dfAKJQBgqrFEW
	QRN4xchI7IofjZhPNNoHmxguGatw6lPqBBZ6+oKRsrq3W979LoWNMX+EJBcxTX1qdXw2AxXtCbv+G
	9rW2yqgF9rPrWmwFnNexVXG1YBRPePqen+s/Bxj0lbFaB5vwmifT0dnfl7/gAZ1HTsFq278SRMsYt
	soSBBOj//pRojB1h6FECZspYdMGCAiEGhan5SemdG2pHNqGyVkZHWtsr7F+qCcc7Cuedfi32074DJ
	52ikbBrmYkgokJkNfSKolzXy9van8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqbmb-0000TL-7J; Sun, 12 Jan 2020 11:51:53 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqbmR-0000Sq-5E
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 11:51:46 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jan 2020 03:51:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,425,1571727600"; 
 d="gz'50?scan'50,208,50";a="272805461"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2020 03:51:39 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iqbmN-00021R-A4; Sun, 12 Jan 2020 19:51:39 +0800
Date: Sun, 12 Jan 2020 19:51:11 +0800
From: kbuild test robot <lkp@intel.com>
To: Phil Reid <preid@electromag.com.au>
Subject: [xlnx:master 95/163] htmldocs: include/linux/iio/iio.h:574: warning:
 Function parameter or member 'label' not described in 'iio_dev'
Message-ID: <202001121952.guTOX6jd%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y376dzhadwcmlkad"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_035143_295434_CCD5157F 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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


--y376dzhadwcmlkad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Phil,

FYI, the error/warning still remains.

tree:   https://github.com/Xilinx/linux-xlnx master
head:   efb8afa6517cc706ac1a722ab5551984c15932b2
commit: a96220b2103e430e4b994218021e97a7ee3b82da [95/163] iio: core: Add optional symbolic label to device attributes
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   Warning: The Sphinx 'sphinx_rtd_theme' HTML theme was not found. Make sure you have the theme installed to produce pretty HTML output. Falling back to the default theme.
   Documentation/sphinx/kfigure.py:174: RemovedInSphinx20Warning: app.verbose() is now deprecated. Use sphinx.util.logging instead.
   app.verbose("kfigure: check installed tools ...")
   Documentation/sphinx/kfigure.py:182: RemovedInSphinx20Warning: app.warning() is now deprecated. Use sphinx.util.logging instead.
   app.warn("dot(1) not found, for better output quality install "
   WARNING: dot(1) not found, for better output quality install graphviz from http://www.graphviz.org
   Documentation/sphinx/kfigure.py:188: RemovedInSphinx20Warning: app.warning() is now deprecated. Use sphinx.util.logging instead.
   "convert(1) not found, for SVG to PDF conversion install "
   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   Documentation/sphinx/kerneldoc.py:93: RemovedInSphinx20Warning: app.verbose() is now deprecated. Use sphinx.util.logging instead.
   env.app.verbose('calling kernel-doc '%s'' % (" ".join(cmd)))
   Documentation/sphinx/kerneldoc.py:125: RemovedInSphinx20Warning: AutodocReporter is now deprecated. Use sphinx.util.docutils.switch_source_input() instead.
   self.state.memo.reporter = AutodocReporter(result, self.state.memo.reporter)
   include/linux/srcu.h:175: warning: Function parameter or member 'p' not described in 'srcu_dereference_notrace'
   include/linux/srcu.h:175: warning: Function parameter or member 'sp' not described in 'srcu_dereference_notrace'
   include/linux/gfp.h:1: warning: no structured comments found
   include/linux/crypto.h:309: warning: Function parameter or member 'setkeytype' not described in 'blkcipher_alg'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.ibss' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.connect' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.keys' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.ie' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.ie_len' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.bssid' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.ssid' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.default_key' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.default_mgmt_key' not described in 'wireless_dev'
   include/net/cfg80211.h:4381: warning: Function parameter or member 'wext.prev_bssid_valid' not described in 'wireless_dev'
   include/net/mac80211.h:2328: warning: Function parameter or member 'radiotap_timestamp.units_pos' not described in 'ieee80211_hw'
   include/net/mac80211.h:2328: warning: Function parameter or member 'radiotap_timestamp.accuracy' not described in 'ieee80211_hw'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.rates' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.rts_cts_rate_idx' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.use_rts' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.use_cts_prot' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.short_preamble' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.skip_table' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.jiffies' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.vif' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.hw_key' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.flags' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'control.enqueue_time' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'ack' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'ack.cookie' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.rates' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.ack_signal' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.ampdu_ack_len' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.ampdu_len' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.antenna' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.tx_time' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.is_valid_ack_signal' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'status.status_driver_data' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'driver_rates' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'pad' not described in 'ieee80211_tx_info'
   include/net/mac80211.h:977: warning: Function parameter or member 'rate_driver_data' not described in 'ieee80211_tx_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'rx_stats_avg' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'rx_stats_avg.signal' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'rx_stats_avg.chain_signal' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.filtered' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.retry_failed' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.retry_count' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.lost_packets' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.last_tdls_pkt_time' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.msdu_retries' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.msdu_failed' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.last_ack' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.last_ack_signal' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.ack_signal_filled' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'status_stats.avg_ack_signal' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'tx_stats.packets' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'tx_stats.bytes' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'tx_stats.last_rate' not described in 'sta_info'
   net/mac80211/sta_info.h:588: warning: Function parameter or member 'tx_stats.msdu' not described in 'sta_info'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_excl.cb' not described in 'dma_buf'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_excl.poll' not described in 'dma_buf'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_excl.active' not described in 'dma_buf'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_shared.cb' not described in 'dma_buf'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_shared.poll' not described in 'dma_buf'
   include/linux/dma-buf.h:304: warning: Function parameter or member 'cb_shared.active' not described in 'dma_buf'
   include/linux/dma-fence-array.h:54: warning: Function parameter or member 'work' not described in 'dma_fence_array'
   include/linux/gpio/driver.h:149: warning: Function parameter or member 'request_key' not described in 'gpio_irq_chip'
>> include/linux/iio/iio.h:574: warning: Function parameter or member 'label' not described in 'iio_dev'
   include/linux/iio/hw-consumer.h:1: warning: no structured comments found
   Error: Cannot open file drivers/uio/uio.c
   Error: Cannot open file drivers/uio/uio.c
   Documentation/sphinx/kerneldoc.py:103: RemovedInSphinx20Warning: app.warning() is now deprecated. Use sphinx.util.logging instead.
   env.app.warn('kernel-doc '%s' failed with return code %d' % (" ".join(cmd), p.returncode))
   include/linux/input/sparse-keymap.h:46: warning: Function parameter or member 'sw' not described in 'key_entry'
   drivers/pci/pci.c:218: warning: Excess function parameter 'p' description in 'pci_dev_str_match_path'
   include/linux/regulator/driver.h:227: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   drivers/regulator/core.c:4479: warning: Excess function parameter 'state' description in 'regulator_suspend'
   arch/s390/include/asm/cio.h:245: warning: Function parameter or member 'esw.esw0' not described in 'irb'
   arch/s390/include/asm/cio.h:245: warning: Function parameter or member 'esw.esw1' not described in 'irb'
   arch/s390/include/asm/cio.h:245: warning: Function parameter or member 'esw.esw2' not described in 'irb'
   arch/s390/include/asm/cio.h:245: warning: Function parameter or member 'esw.esw3' not described in 'irb'
   arch/s390/include/asm/cio.h:245: warning: Function parameter or member 'esw.eadm' not described in 'irb'
   drivers/slimbus/stream.c:1: warning: no structured comments found
   drivers/target/target_core_device.c:1: warning: no structured comments found
   drivers/usb/dwc3/core.h:901: warning: Function parameter or member 'first_trb_index' not described in 'dwc3_request'
   drivers/usb/dwc3/core.h:1044: warning: bad line: a hibernation wakeup event
   drivers/usb/dwc3/core.h:1228: warning: Function parameter or member 'mask_phy_rst' not described in 'dwc3'
   drivers/usb/typec/bus.c:1: warning: no structured comments found
   drivers/usb/typec/class.c:1: warning: no structured comments found
   include/linux/w1.h:281: warning: Function parameter or member 'of_match_table' not described in 'w1_family'
   fs/direct-io.c:257: warning: Excess function parameter 'offset' description in 'dio_complete'
   fs/file_table.c:1: warning: no structured comments found
   fs/libfs.c:477: warning: Excess function parameter 'available' description in 'simple_write_end'
   fs/posix_acl.c:646: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:646: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:646: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:183: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_read_lock'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:254: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_invalidate_range_start_gfx'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:302: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:3011: warning: Excess function parameter 'dev' description in 'amdgpu_vm_get_task_info'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:3012: warning: Function parameter or member 'adev' not described in 'amdgpu_vm_get_task_info'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:3012: warning: Excess function parameter 'dev' description in 'amdgpu_vm_get_task_info'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_pin' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_unpin' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_res_obj' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_get_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_import_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_vmap' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_vunmap' not described in 'drm_driver'
   include/drm/drm_drv.h:610: warning: Function parameter or member 'gem_prime_mmap' not described in 'drm_driver'
   drivers/gpu/drm/i915/i915_vma.h:49: warning: cannot understand function prototype: 'struct i915_vma '
   drivers/gpu/drm/i915/i915_vma.h:1: warning: no structured comments found
   drivers/gpu/drm/i915/intel_guc_fwif.h:553: warning: cannot understand function prototype: 'struct guc_log_buffer_state '
   drivers/gpu/drm/i915/i915_trace.h:1: warning: no structured comments found
   include/media/v4l2-subdev.h:726: warning: Function parameter or member 'get_routing' not described in 'v4l2_subdev_pad_ops'
   include/media/v4l2-subdev.h:726: warning: Function parameter or member 'set_routing' not described in 'v4l2_subdev_pad_ops'
   include/linux/skbuff.h:860: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'skb_mstamp' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'offload_fwd_mark' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'offload_mr_fwd_mark' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:860: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
   include/net/sock.h:238: warning: Function parameter or member 'skc_addrpair' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_portpair' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_ipv6only' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_net_refcnt' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_v6_daddr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_v6_rcv_saddr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_cookie' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_listener' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_tw_dr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_rcv_wnd' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_tw_rcv_nxt' not described in 'sock_common'
   include/net/sock.h:509: warning: Function parameter or member 'sk_backlog.rmem_alloc' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_backlog.len' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_backlog.head' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_backlog.tail' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_wq_raw' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'tcp_rtx_queue' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_route_forced_caps' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_txtime_report_errors' not described in 'sock'
   include/net/sock.h:509: warning: Function parameter or member 'sk_validate_xmit_skb' not described in 'sock'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'adj_list.upper' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'adj_list.lower' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'switchdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'

vim +574 include/linux/iio/iio.h

1612244f8a70da drivers/staging/iio/iio.h Jonathan Cameron   2011-12-05  485  
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  486  /**
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  487   * struct iio_dev - industrial I/O device
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  488   * @id:			[INTERN] used to identify device internally
63b19547cc3d96 include/linux/iio/iio.h   Jonathan Cameron   2017-07-23  489   * @driver_module:	[INTERN] used to make it harder to undercut users
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  490   * @modes:		[DRIVER] operating modes supported by device
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  491   * @currentmode:	[DRIVER] current operating mode
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  492   * @dev:		[DRIVER] device structure, should be assigned a parent
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  493   *			and owner
5aa9618896e0ba drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  494   * @event_interface:	[INTERN] event chrdevs associated with interrupt lines
14555b14455f9a drivers/staging/iio/iio.h Jonathan Cameron   2011-09-21  495   * @buffer:		[DRIVER] any buffer present
84b36ce5f79c01 include/linux/iio/iio.h   Jonathan Cameron   2012-06-30  496   * @buffer_list:	[INTERN] list of all buffers currently attached
420fe2e9471518 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  497   * @scan_bytes:		[INTERN] num bytes captured to be fed to buffer demux
0118de7b4c04cb include/linux/iio/iio.h   Daniel Baluta      2016-02-08  498   * @mlock:		[DRIVER] lock used to prevent simultaneous device state
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  499   *			changes
e5c003ae82865c drivers/staging/iio/iio.h Jonathan Cameron   2010-05-04  500   * @available_scan_masks: [DRIVER] optional array of allowed bitmasks
32b5eecab0f2d6 drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  501   * @masklength:		[INTERN] the length of the mask established from
32b5eecab0f2d6 drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  502   *			channels
959d2952d124f0 drivers/staging/iio/iio.h Jonathan Cameron   2011-12-05  503   * @active_scan_mask:	[INTERN] union of all scan masks requested by buffers
fd6487f8439f78 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  504   * @scan_timestamp:	[INTERN] set if any buffers have requested timestamp
f1264809eb7fe4 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  505   * @scan_index_timestamp:[INTERN] cache of the index to the timestamp
14555b14455f9a drivers/staging/iio/iio.h Jonathan Cameron   2011-09-21  506   * @trig:		[INTERN] current device trigger (buffer modes)
f00fd7ae4f409a include/linux/iio/iio.h   Jonathan Corbet    2017-07-30  507   * @trig_readonly:	[INTERN] mark the current trigger immutable
25985edcedea63 drivers/staging/iio/iio.h Lucas De Marchi    2011-03-30  508   * @pollfunc:		[DRIVER] function run on trigger being received
735ad074ffa72c include/linux/iio/iio.h   Vladimir Barinov   2015-08-20  509   * @pollfunc_event:	[DRIVER] function run on events trigger being received
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  510   * @channels:		[DRIVER] channel specification structure table
1787948873fd2c include/linux/iio/iio.h   Peter Meerwald     2012-06-12  511   * @num_channels:	[DRIVER] number of channels specified in @channels.
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  512   * @channel_attr_list:	[INTERN] keep track of automatically created channel
1a25e5928e5ff7 drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  513   *			attributes
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  514   * @chan_attr_group:	[INTERN] group for all attrs in base directory
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  515   * @name:		[DRIVER] name of the device.
1a25e5928e5ff7 drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  516   * @info:		[DRIVER] callbacks and constant info from driver
bc2b7dab629a51 include/linux/iio/iio.h   Gregor Boirie      2016-03-09  517   * @clock_id:		[INTERN] timestamping clock posix identifier
ac917a81117ce0 drivers/staging/iio/iio.h Jonathan Cameron   2012-02-15  518   * @info_exist_lock:	[INTERN] lock to prevent use during removal
ecbf20ca95546f drivers/staging/iio/iio.h Jonathan Cameron   2012-04-10  519   * @setup_ops:		[DRIVER] callbacks to call before and after buffer
ecbf20ca95546f drivers/staging/iio/iio.h Jonathan Cameron   2012-04-10  520   *			enable/disable
1a25e5928e5ff7 drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  521   * @chrdev:		[INTERN] associated character device
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  522   * @groups:		[INTERN] attribute groups
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  523   * @groupcounter:	[INTERN] index of next attribute group
bb01443e2cdad4 drivers/staging/iio/iio.h Lars-Peter Clausen 2011-12-19  524   * @flags:		[INTERN] file ops related flags including busy flag.
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  525   * @debugfs_dentry:	[INTERN] device specific debugfs dentry.
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  526   * @cached_reg_addr:	[INTERN] cached register address for debugfs reads.
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  527   */
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  528  struct iio_dev {
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  529  	int				id;
63b19547cc3d96 include/linux/iio/iio.h   Jonathan Cameron   2017-07-23  530  	struct module			*driver_module;
4024bc73b1d1d8 drivers/staging/iio/iio.h Jonathan Cameron   2011-08-12  531  
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  532  	int				modes;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  533  	int				currentmode;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  534  	struct device			dev;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  535  
5aa9618896e0ba drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  536  	struct iio_event_interface	*event_interface;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  537  
14555b14455f9a drivers/staging/iio/iio.h Jonathan Cameron   2011-09-21  538  	struct iio_buffer		*buffer;
84b36ce5f79c01 include/linux/iio/iio.h   Jonathan Cameron   2012-06-30  539  	struct list_head		buffer_list;
420fe2e9471518 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  540  	int				scan_bytes;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  541  	struct mutex			mlock;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  542  
cd4361c7e2e077 drivers/staging/iio/iio.h Michael Hennerich  2012-02-22  543  	const unsigned long		*available_scan_masks;
32b5eecab0f2d6 drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  544  	unsigned			masklength;
cd4361c7e2e077 drivers/staging/iio/iio.h Michael Hennerich  2012-02-22  545  	const unsigned long		*active_scan_mask;
fd6487f8439f78 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  546  	bool				scan_timestamp;
f1264809eb7fe4 drivers/staging/iio/iio.h Jonathan Cameron   2012-04-21  547  	unsigned			scan_index_timestamp;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  548  	struct iio_trigger		*trig;
c8cdf70890d89c include/linux/iio/iio.h   Matt Ranostay      2016-09-02  549  	bool				trig_readonly;
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  550  	struct iio_poll_func		*pollfunc;
735ad074ffa72c include/linux/iio/iio.h   Vladimir Barinov   2015-08-20  551  	struct iio_poll_func		*pollfunc_event;
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  552  
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  553  	struct iio_chan_spec const	*channels;
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  554  	int				num_channels;
1d892719e70e47 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  555  
6fe8135fccd66a drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  556  	struct list_head		channel_attr_list;
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  557  	struct attribute_group		chan_attr_group;
1b732888d83f71 drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  558  	const char			*name;
a96220b2103e43 include/linux/iio/iio.h   Phil Reid          2019-08-27  559  	const char			*label;
6fe8135fccd66a drivers/staging/iio/iio.h Jonathan Cameron   2011-05-18  560  	const struct iio_info		*info;
bc2b7dab629a51 include/linux/iio/iio.h   Gregor Boirie      2016-03-09  561  	clockid_t			clock_id;
ac917a81117ce0 drivers/staging/iio/iio.h Jonathan Cameron   2012-02-15  562  	struct mutex			info_exist_lock;
1612244f8a70da drivers/staging/iio/iio.h Jonathan Cameron   2011-12-05  563  	const struct iio_buffer_setup_ops	*setup_ops;
1aa042783251c2 drivers/staging/iio/iio.h Jonathan Cameron   2011-08-30  564  	struct cdev			chrdev;
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  565  #define IIO_MAX_GROUPS 6
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  566  	const struct attribute_group	*groups[IIO_MAX_GROUPS + 1];
26d25ae3f0d8ff drivers/staging/iio/iio.h Jonathan Cameron   2011-09-02  567  	int				groupcounter;
bb01443e2cdad4 drivers/staging/iio/iio.h Lars-Peter Clausen 2011-12-19  568  
bb01443e2cdad4 drivers/staging/iio/iio.h Lars-Peter Clausen 2011-12-19  569  	unsigned long			flags;
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  570  #if defined(CONFIG_DEBUG_FS)
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  571  	struct dentry			*debugfs_dentry;
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  572  	unsigned			cached_reg_addr;
e553f182d55bd2 drivers/staging/iio/iio.h Michael Hennerich  2012-03-01  573  #endif
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18 @574  };
847ec80bbaa76a drivers/staging/iio/iio.h Jonathan Cameron   2009-08-18  575  

:::::: The code at line 574 was first introduced by commit
:::::: 847ec80bbaa76aae41062d6802cea9c1b2289f14 Staging: IIO: core support for device registration and management

:::::: TO: Jonathan Cameron <jic23@cam.ac.uk>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--y376dzhadwcmlkad
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
vqVyGkhvFKy5/7KkrD/XWwAA

--y376dzhadwcmlkad
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--y376dzhadwcmlkad--

