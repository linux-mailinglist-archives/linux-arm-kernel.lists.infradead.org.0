Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC07AF59D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cMSXxJM01+P+tcrvwWhPxX5/A2MTSjp9H60l4XxEcJc=; b=J0t
	OmSGILrSc4FykOLoH5421AQCJH6uIldLjSAjjQJiWkhERyd41Ym8tuJIdRjrcAwdoYDpWZHB/yB0l
	rqrepCr/4VzcqydS3QHmVdhKcojhqUSjBiSJJMGvuNKv2HOnyVp21pd4Zs2990McI0r1ignAy+Gof
	YzH+D2rE5Zmq2IfMZEE3kAqfYHNIYEnOfZK427e63i/E87+QV+TLUuusrKzXH9EHPVgpyIN8+URfG
	Dr9RMaK3T/tv9YyvHYVmcbhk8waz1xmMHpSFD9tVsVgP5mT/EBOB+3irySiFQrdoh51hLM+B/S4T1
	UJSMJd8pQpKATQZnLsuh8juTgEWSS6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7vqf-0007qe-Sa; Wed, 11 Sep 2019 06:11:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7vqS-0007pi-60
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:11:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 23:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; 
 d="gz'50?scan'50,208,50";a="214567797"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2019 23:11:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i7vqN-000DSH-5Z; Wed, 11 Sep 2019 14:11:07 +0800
Date: Wed, 11 Sep 2019 14:10:59 +0800
From: kbuild test robot <lkp@intel.com>
To: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>
Subject: [xlnx:xilinx_rebase_v4.19 1607/1649] htmldocs:
 drivers/usb/dwc3/core.h:1228: warning: Function parameter or member
 'mask_phy_rst' not described in 'dwc3'
Message-ID: <201909111451.oqfiX6tj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ceenna3rbkkot3nk"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_231112_257222_0391249D 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--ceenna3rbkkot3nk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xilinx_rebase_v4.19
head:   a5be9440aaf62e63f672eebb76d16f2a20df88bb
commit: 89c9dfb4bded8b2a9803f63f421d4787bfdaf1f3 [1607/1649] usb: dwc3: Add support for masking phy reset signal
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
>> drivers/usb/dwc3/core.h:1228: warning: Function parameter or member 'mask_phy_rst' not described in 'dwc3'
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
   include/linux/netdevice.h:2021: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2021: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   sound/soc/soc-core.c:2918: warning: Excess function parameter 'legacy_dai_naming' description in 'snd_soc_register_dais'
   Documentation/admin-guide/cgroup-v2.rst:1485: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/admin-guide/cgroup-v2.rst:1487: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/admin-guide/cgroup-v2.rst:1488: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/core-api/boot-time-mm.rst:78: WARNING: Error in "kernel-doc" directive:
   unknown option: "nodocs".

vim +1228 drivers/usb/dwc3/core.h

72246da40f3719 Felipe Balbi 2011-08-19 @1228  

:::::: The code at line 1228 was first introduced by commit
:::::: 72246da40f3719af3bfd104a2365b32537c27d83 usb: Introduce DesignWare USB3 DRD Driver

:::::: TO: Felipe Balbi <balbi@ti.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--ceenna3rbkkot3nk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Td9SOQ2kNwrW3H/MuX682FsAAA==

--ceenna3rbkkot3nk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--ceenna3rbkkot3nk--

