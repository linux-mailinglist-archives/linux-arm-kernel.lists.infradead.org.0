Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375B6136EC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0OHmZhq8vA9UoOFDFTFM9CsshQmF3KMDR0aO8arEjxQ=; b=UNt
	gkuGvQwbpbca7Iu38AD9IMrX5xQAhH3/xTdk3lta6U3wUqiQLejCJ23qcDmovod1NBEVySY6/2e8n
	SGBPmpw2/u0CXLLhGh2U7JwO3QXjZAELu838kD17oEmqoS8vv8/otARCU0JO0qpTQ4hubGLMrl0ZT
	ovz0aLy05YsUm7N7lGlcTGChamBE5sO8x3Bf51B/HuWvDrILjWS2B+H+YAwj5BiFmWXf5n9LUl9sW
	r5oSpgLt4/uTjh8Kghjk6NuFPAprzqNyyAv2YqgsPXZH9JXH0AXxKaK9fskE53kivslwpOIq5ndVB
	PNYHDSL6d5KMiCZ8gGDiARiBGl89M9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuiE-00084q-WD; Fri, 10 Jan 2020 13:52:31 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipugO-0006cM-Ss
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:50:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:50:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; 
 d="gz'50?scan'50,208,50";a="218668806"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2020 05:50:33 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ipugL-0006oF-G0; Fri, 10 Jan 2020 21:50:33 +0800
Date: Fri, 10 Jan 2020 21:50:10 +0800
From: kbuild test robot <lkp@intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [xlnx:xlnx_rebase_v5.4 177/707] htmldocs:
 include/media/v4l2-subdev.h:717: warning: Function parameter or member
 'get_routing' not described in 'v4l2_subdev_pad_ops'
Message-ID: <202001102149.Cwx0Zobm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="hqgslnaev6ppavcw"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_055037_258257_C0CAA3CD 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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


--hqgslnaev6ppavcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   1e95d891a328c985e29743b334c8368a76c24b18
commit: b31b9b5c23c894c56bc3d4d80361a13d7ae16cfd [177/707] v4l: subdev: Add [GS]_ROUTING subdev ioctls and operations
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   Warning: The Sphinx 'sphinx_rtd_theme' HTML theme was not found. Make sure you have the theme installed to produce pretty HTML output. Falling back to the default theme.
   WARNING: dot(1) not found, for better output quality install graphviz from http://www.graphviz.org
   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file include/linux/reservation.h
   Error: Cannot open file include/linux/reservation.h
   include/linux/spi/spi.h:190: warning: Function parameter or member 'driver_override' not described in 'spi_device'
   mm/util.c:1: warning: 'get_user_pages_fast' not found
   drivers/gpio/gpiolib-of.c:92: warning: Excess function parameter 'dev' description in 'of_gpio_need_valid_mask'
   include/linux/i2c.h:337: warning: Function parameter or member 'init_irq' not described in 'i2c_client'
   drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c:335: warning: Excess function parameter 'dev' description in 'amdgpu_gem_prime_export'
   drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c:336: warning: Excess function parameter 'dev' description in 'amdgpu_gem_prime_export'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:142: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_read_lock'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:347: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:348: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:494: warning: Function parameter or member 'start' not described in 'amdgpu_vm_pt_first_dfs'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'adev' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'vm' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'start' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'cursor' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'entry' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:821: warning: Function parameter or member 'level' not described in 'amdgpu_vm_bo_param'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'params' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'bo' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'level' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'pe' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'addr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'count' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'incr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1283: warning: Function parameter or member 'flags' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:2821: warning: Function parameter or member 'pasid' not described in 'amdgpu_vm_make_compute'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:378: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Function parameter or member 'ih' not described in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:1: warning: 'pp_dpm_sclk pp_dpm_mclk pp_dpm_pcie' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:132: warning: Incorrect use of kernel-doc format:          * @atomic_obj
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:238: warning: Incorrect use of kernel-doc format:          * gpu_info FW provided soc bounding box struct or 0 if not
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'atomic_obj' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'backlight_link' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'backlight_caps' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'freesync_module' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'fw_dmcu' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'dmcu_fw_version' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'soc_bounding_box' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_crtc_high_irq' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_pflip_high_irq' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'register_hpd_handlers' not found
   kernel/dma/coherent.c:1: warning: no structured comments found
   include/linux/input/sparse-keymap.h:43: warning: Function parameter or member 'sw' not described in 'key_entry'
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_unregister_driver' not found
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_register_driver' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_register_notifier' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_unregister_notifier' not found
   include/linux/w1.h:277: warning: Function parameter or member 'of_match_table' not described in 'w1_family'
   include/linux/regulator/machine.h:196: warning: Function parameter or member 'max_uV_step' not described in 'regulation_constraints'
   include/linux/regulator/driver.h:223: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   fs/posix_acl.c:647: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   lib/genalloc.c:1: warning: 'gen_pool_add_virt' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc' not found
   lib/genalloc.c:1: warning: 'gen_pool_free' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc_algo' not found
   include/linux/rculist.h:374: warning: Excess function parameter 'cond' description in 'list_for_each_entry_rcu'
   include/linux/rculist.h:651: warning: Excess function parameter 'cond' description in 'hlist_for_each_entry_rcu'
>> include/media/v4l2-subdev.h:717: warning: Function parameter or member 'get_routing' not described in 'v4l2_subdev_pad_ops'
>> include/media/v4l2-subdev.h:717: warning: Function parameter or member 'set_routing' not described in 'v4l2_subdev_pad_ops'
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'prepare_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'cleanup_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_atomic_state_helper.h:1: warning: no structured comments found
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:342: warning: Function parameter or member 'wakeref' not described in 'intel_shared_dpll'
   Error: Cannot open file drivers/gpu/drm/i915/i915_gem_batch_pool.c
   Error: Cannot open file drivers/gpu/drm/i915/i915_gem_batch_pool.c
   Error: Cannot open file drivers/gpu/drm/i915/i915_gem_batch_pool.c
   drivers/gpu/drm/i915/i915_drv.h:1131: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1145: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1156: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1178: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1190: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1201: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'pinned_ctx' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'specific_ctx_id' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'specific_ctx_id_mask' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'poll_check_timer' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'poll_wq' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'pollin' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'periodic' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'period_exponent' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1209: warning: Function parameter or member 'oa_buffer' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1131: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1145: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1156: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1178: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1190: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1201: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
   drivers/gpu/drm/i915/i915_drv.h:1131: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1145: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1156: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1178: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1190: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1201: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
   drivers/gpu/drm/mcde/mcde_drv.c:1: warning: 'ST-Ericsson MCDE DRM Driver' not found
   include/net/cfg80211.h:1185: warning: Function parameter or member 'txpwr' not described in 'station_parameters'
   include/net/mac80211.h:4056: warning: Function parameter or member 'sta_set_txpwr' not described in 'ieee80211_ops'
   include/net/mac80211.h:2018: warning: Function parameter or member 'txpwr' not described in 'ieee80211_sta'
   include/linux/skbuff.h:888: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'skb_mstamp_ns' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__pkt_vlan_present_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'vlan_present' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
   include/net/sock.h:233: warning: Function parameter or member 'skc_addrpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_portpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_ipv6only' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_net_refcnt' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_daddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_rcv_saddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_cookie' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_listener' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_dr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_rcv_wnd' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_rcv_nxt' not described in 'sock_common'
   include/net/sock.h:515: warning: Function parameter or member 'sk_rx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_wq_raw' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'tcp_rtx_queue' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_tx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_route_forced_caps' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_txtime_report_errors' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_validate_xmit_skb' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_bpf_storage' not described in 'sock'
   include/net/sock.h:2455: warning: Function parameter or member 'tcp_rx_skb_cache_key' not described in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2455: warning: Excess function parameter 'sk' description in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2455: warning: Excess function parameter 'skb' description in 'DECLARE_STATIC_KEY_FALSE'
   include/linux/netdevice.h:1765: warning: bad line:                                 spinlock
   include/linux/netdevice.h:2063: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'quotactl' not described in 'security_list_options'

vim +717 include/media/v4l2-subdev.h

f7234138f14c22 Hans Verkuil          2015-03-04  635  
291031192426bf Sylwester Nawrocki    2012-05-17  636  /**
291031192426bf Sylwester Nawrocki    2012-05-17  637   * struct v4l2_subdev_pad_ops - v4l2-subdev pad level operations
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  638   *
9b02cbb3ede89b Laurent Pinchart      2015-04-24  639   * @init_cfg: initialize the pad config to default values
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  640   * @enum_mbus_code: callback for VIDIOC_SUBDEV_ENUM_MBUS_CODE() ioctl handler
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  641   *		    code.
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  642   * @enum_frame_size: callback for VIDIOC_SUBDEV_ENUM_FRAME_SIZE() ioctl handler
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  643   *		     code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  644   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  645   * @enum_frame_interval: callback for VIDIOC_SUBDEV_ENUM_FRAME_INTERVAL() ioctl
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  646   *			 handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  647   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  648   * @get_fmt: callback for VIDIOC_SUBDEV_G_FMT() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  649   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  650   * @set_fmt: callback for VIDIOC_SUBDEV_S_FMT() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  651   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  652   * @get_selection: callback for VIDIOC_SUBDEV_G_SELECTION() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  653   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  654   * @set_selection: callback for VIDIOC_SUBDEV_S_SELECTION() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  655   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  656   * @get_edid: callback for VIDIOC_SUBDEV_G_EDID() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  657   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  658   * @set_edid: callback for VIDIOC_SUBDEV_S_EDID() ioctl handler code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  659   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  660   * @dv_timings_cap: callback for VIDIOC_SUBDEV_DV_TIMINGS_CAP() ioctl handler
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  661   *		    code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  662   *
3fb558f6c3bbcc Mauro Carvalho Chehab 2017-10-05  663   * @enum_dv_timings: callback for VIDIOC_SUBDEV_ENUM_DV_TIMINGS() ioctl handler
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  664   *		     code.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  665   *
1d8955b2c3fa47 Mauro Carvalho Chehab 2015-08-22  666   * @link_validate: used by the media controller code to check if the links
1d8955b2c3fa47 Mauro Carvalho Chehab 2015-08-22  667   *		   that belongs to a pipeline can be used for stream.
1d8955b2c3fa47 Mauro Carvalho Chehab 2015-08-22  668   *
291031192426bf Sylwester Nawrocki    2012-05-17  669   * @get_frame_desc: get the current low level media bus frame parameters.
e44cc20a1d0952 Mauro Carvalho Chehab 2015-08-22  670   *
1d8955b2c3fa47 Mauro Carvalho Chehab 2015-08-22  671   * @set_frame_desc: set the low level media bus frame parameters, @fd array
291031192426bf Sylwester Nawrocki    2012-05-17  672   *                  may be adjusted by the subdev driver to device capabilities.
291031192426bf Sylwester Nawrocki    2012-05-17  673   */
eb08f35480869f Laurent Pinchart      2009-12-09  674  struct v4l2_subdev_pad_ops {
9b02cbb3ede89b Laurent Pinchart      2015-04-24  675  	int (*init_cfg)(struct v4l2_subdev *sd,
9b02cbb3ede89b Laurent Pinchart      2015-04-24  676  			struct v4l2_subdev_pad_config *cfg);
f7234138f14c22 Hans Verkuil          2015-03-04  677  	int (*enum_mbus_code)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  678  			      struct v4l2_subdev_pad_config *cfg,
333c8b97785d5a Laurent Pinchart      2010-03-15  679  			      struct v4l2_subdev_mbus_code_enum *code);
333c8b97785d5a Laurent Pinchart      2010-03-15  680  	int (*enum_frame_size)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  681  			       struct v4l2_subdev_pad_config *cfg,
333c8b97785d5a Laurent Pinchart      2010-03-15  682  			       struct v4l2_subdev_frame_size_enum *fse);
35c3017a29d278 Laurent Pinchart      2010-05-05  683  	int (*enum_frame_interval)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  684  				   struct v4l2_subdev_pad_config *cfg,
35c3017a29d278 Laurent Pinchart      2010-05-05  685  				   struct v4l2_subdev_frame_interval_enum *fie);
f7234138f14c22 Hans Verkuil          2015-03-04  686  	int (*get_fmt)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  687  		       struct v4l2_subdev_pad_config *cfg,
333c8b97785d5a Laurent Pinchart      2010-03-15  688  		       struct v4l2_subdev_format *format);
f7234138f14c22 Hans Verkuil          2015-03-04  689  	int (*set_fmt)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  690  		       struct v4l2_subdev_pad_config *cfg,
333c8b97785d5a Laurent Pinchart      2010-03-15  691  		       struct v4l2_subdev_format *format);
f7234138f14c22 Hans Verkuil          2015-03-04  692  	int (*get_selection)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  693  			     struct v4l2_subdev_pad_config *cfg,
ae184cda8d0eeb Sakari Ailus          2011-10-14  694  			     struct v4l2_subdev_selection *sel);
f7234138f14c22 Hans Verkuil          2015-03-04  695  	int (*set_selection)(struct v4l2_subdev *sd,
f7234138f14c22 Hans Verkuil          2015-03-04  696  			     struct v4l2_subdev_pad_config *cfg,
ae184cda8d0eeb Sakari Ailus          2011-10-14  697  			     struct v4l2_subdev_selection *sel);
dd519bb34a09d8 Hans Verkuil          2014-03-07  698  	int (*get_edid)(struct v4l2_subdev *sd, struct v4l2_edid *edid);
dd519bb34a09d8 Hans Verkuil          2014-03-07  699  	int (*set_edid)(struct v4l2_subdev *sd, struct v4l2_edid *edid);
0349f6a5f18e92 Laurent Pinchart      2014-01-29  700  	int (*dv_timings_cap)(struct v4l2_subdev *sd,
0349f6a5f18e92 Laurent Pinchart      2014-01-29  701  			      struct v4l2_dv_timings_cap *cap);
0349f6a5f18e92 Laurent Pinchart      2014-01-29  702  	int (*enum_dv_timings)(struct v4l2_subdev *sd,
0349f6a5f18e92 Laurent Pinchart      2014-01-29  703  			       struct v4l2_enum_dv_timings *timings);
8227c92b696884 Sakari Ailus          2011-10-10  704  #ifdef CONFIG_MEDIA_CONTROLLER
8227c92b696884 Sakari Ailus          2011-10-10  705  	int (*link_validate)(struct v4l2_subdev *sd, struct media_link *link,
8227c92b696884 Sakari Ailus          2011-10-10  706  			     struct v4l2_subdev_format *source_fmt,
8227c92b696884 Sakari Ailus          2011-10-10  707  			     struct v4l2_subdev_format *sink_fmt);
8227c92b696884 Sakari Ailus          2011-10-10  708  #endif /* CONFIG_MEDIA_CONTROLLER */
291031192426bf Sylwester Nawrocki    2012-05-17  709  	int (*get_frame_desc)(struct v4l2_subdev *sd, unsigned int pad,
291031192426bf Sylwester Nawrocki    2012-05-17  710  			      struct v4l2_mbus_frame_desc *fd);
291031192426bf Sylwester Nawrocki    2012-05-17  711  	int (*set_frame_desc)(struct v4l2_subdev *sd, unsigned int pad,
291031192426bf Sylwester Nawrocki    2012-05-17  712  			      struct v4l2_mbus_frame_desc *fd);
b31b9b5c23c894 Laurent Pinchart      2014-03-26  713  	int (*get_routing)(struct v4l2_subdev *sd,
b31b9b5c23c894 Laurent Pinchart      2014-03-26  714  			   struct v4l2_subdev_routing *route);
b31b9b5c23c894 Laurent Pinchart      2014-03-26  715  	int (*set_routing)(struct v4l2_subdev *sd,
b31b9b5c23c894 Laurent Pinchart      2014-03-26  716  			   struct v4l2_subdev_routing *route);
eb08f35480869f Laurent Pinchart      2009-12-09 @717  };
eb08f35480869f Laurent Pinchart      2009-12-09  718  

:::::: The code at line 717 was first introduced by commit
:::::: eb08f35480869f7a82e9be1f19bc4575452e7f98 [media] v4l: v4l2_subdev pad-level operations

:::::: TO: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
:::::: CC: Mauro Carvalho Chehab <mchehab@redhat.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--hqgslnaev6ppavcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPBmGF4AAy5jb25maWcAlDxrc9u2st/7KzjpzJ1kziRx/Kp77/gDBIISapJgCFIPf+Go
Mu1oaku+ktwm//7ugqQIkgul98xpa2MXi9e+d+lff/nVY2+H7cvysF4tn59/eE/lptwtD+WD
97h+Lv/H85UXq8wTvsw+AXK43rx9/7y+uLn2rj5dfjrz7srdpnz2+HbzuH56g5nr7eaXX3+B
//8Kgy+vQGT3397TavXxN++9X/65Xm683z5dfTr7ePGh+gFQuYoDOS44L6Quxpzf/miG4Jdi
KlItVXz729nV2dkRN2Tx+Ag6s0hwFhehjO9aIjA4YbpgOirGKlMkQMYwRwxAM5bGRcQWI1Hk
sYxlJlko74XfIsr0azFTqbXcKJehn8lIFGKesVEoCq3SrIVnk1QwH1YMFPyryJjGyebGxub2
n719eXh7bS9mlKo7ERcqLnSUWEvDfgoRTwuWjuHIkcxuL87x3usjqCiRsHomdOat995me0DC
LcIEtiHSAbyGhoqzsLngd+/aaTagYHmmiMnmDgrNwgynNuuxqSjuRBqLsBjfS+skNmQEkHMa
FN5HjIbM710zlAtw2QK6ezoe1N4QeYHWtk7B5/enZ6vT4Evifn0RsDzMionSWcwicfvu/Wa7
KT9Yz6QXeioTTtLmqdK6iESk0kXBsozxCYmXaxHKEbG+uUqW8gkwAKgGWAt4ImzYGGTC27/9
uf+xP5QvLRuPRSxSyY3IJKkaWeJmg/REzWhIKrRIpyxDxouUL7pSGKiUC78WLxmPW6hOWKoF
IpnnLTcP3vaxt8tWsSh+p1UOtED6Mz7xlUXJHNlG8VnGToBRRC2lYkGmoEhgsihCprOCL3hI
XIfRItP2dntgQ09MRZzpk8AiAj3D/D9ynRF4kdJFnuBemvfL1i/lbk894eS+SGCW8iW3JSVW
CJF+KEg2MmBaBcnxBJ/VnDTVXZz6nQa7aTaTpEJESQbkjeY+Em3GpyrM44ylC3LpGsuGVVYr
yT9ny/1f3gHW9Zawh/1hedh7y9Vq+7Y5rDdP7XVkkt8VMKFgnCtYq+K64xLIleYJWzC9FS3J
k/+LrZgtpzz39PCxYL1FATB7S/ArmCV4Q0rl6wrZnq6b+fWWuktZR72rfnDpijzWtS3kExBS
w5wNu+nVt/LhDRwF77FcHt525d4M1ysS0I64zVicFSOUVKCbxxFLiiwcFUGY64l9cj5OVZ5o
Wh9OBL9LlARKwIyZSmk+rvaOJs/QInFSETKa4UbhHejtqdEJqU9cFPgcKgF+AQcDlRlKGvwn
YjHvsHcfTcMPzmuX/pdrSxGCJslCYAAuEqNFs5Rx0bOQCdfJHawesgyXb6EV39hbicAGSTAS
KX1dY5FF4N0UtQKjkRY60CcxggmLXZolUVrOSeVxlHJ41Dv6PXKHNHbPT89lYE+C3LXjPBNz
EiIS5boHOY5ZGPgk0BzQATMq3gHTE7DxJIRJ2uuQqshTl55i/lTCuevHoi8cFhyxNJUOnrjD
iYuInjtKgpOcgJxm/J6AEh+jDdBpb7cA1GKwcCDPHR2oxVdiPswSvm/79pU4wJrF0chaXPLl
rOOZGZ1Vh0NJuXvc7l6Wm1Xpib/LDehsBtqMo9YGW9aqaAdxXwBzVkA4czGN4EZUz5Wr1eO/
XLGlPY2qBQtjklxyg8EDA72a0rKjQ0a5hTrMR/Y5dKhGzvnwTulYNK6sGy0AQx1KcJJS0AOK
Zucu4oSlPng3LpnIgwAMUcJgcXOvDBS+Q3moQIYDaahvvhusNVcwv7kuLqz4BX63IzadpTk3
qtcXHFzYtAWqPEvyrDAqH8Km8vnx4vwjhtrvOhwO91X9evtuuVt9+/z95vrzyoTfexOYFw/l
Y/X7cR4aW18khc6TpBOKgk3md8YGDGFRlPcc2whtaxr7xUhWPuXtzSk4m99+uaYRGu76CZ0O
WofcMSrQrPCjvgcOAXtjyorA54TPC873KEXv20dz3ZuOOgSdOjTlcwoG4ZLAHIMwtpfAAK4B
ySqSMXBQ1tMnWmR5grJdOY4QrLQIsQD/ogEZfQSkUowPJrmd0ejgGUYm0ar9yBFEklXQBOZS
y1HY37LOdSLgvh1g42GZq2NhMcnBqoejAQXDPbrRXLAlI1odOQC5gGjnflGMtWt6buJCCxyA
eRcsDRccYz5heSPJuHIoQ9Bmob4972VuNMPnQf7GNxAcZLzxN5PddlXu99udd/jxWvnVHcez
JnQPYQUyF61FItr9w2MGgmV5KgoMzGntOlahH0hNB92pyMBLAO5yLlAxJ7hyKW0nEUfMM3hS
ZJNTfkz9KjKV9EYrj1dFEvRSCscpjJPssO2TBbAkeAjgk45zV9Ipury5pgFXJwCZphMZCIui
OWGKomujeFtM4HDwVSMpaUJH8Gk4fY0N9JKG3jkOdvebY/yGHudprhXNFpEIAsmFimnoTMZ8
IhPu2EgNvqAtZgR60EF3LMCGjedfTkCLkHaFI75I5dx531PJ+EVB590M0HF36Ow5ZoGdd0tB
bRoITkKoYfoYT1Mpfz2RQXZ7ZaOEX9wwdOIS0ENVoKnzqKsXgbu7AzxK5nwyvr7sD6tpdwSM
p4zyyGiEgEUyXNxe23CjjiHki3TazZAoLjQKqhYh6EYqGAWKoJbNya3UUzNsHq/j6DQQFvnD
wclirGKCCogNy9MhAHySWEciY+QSecTJ8fsJU3MZ2yedJCKrwify5f1IEmePjWHV6HCCaR2J
MdD8QgNBxw5BtUs7AMBAh+fwthJJazbzurwj7JXxshz9l+1mfdjuqpRU+7htTIGPASp71j99
7cE6aHU3EYox4wsIGxzqOVPA8CPaSsobOnxAuqkYKZWBfXclZSLJgU1B5tz3o+lXrW2kpNVZ
rDDr2AuMG3apIJedNF49eH1JZbemkU5CMI8XnSntKOZqyG00KOd0rN2Cf0rhC7Uv4xWqIAB3
8/bsOz+r/tc7Z88NC8BVgFFgakY4iSaJ7gYbRdLUFDA7b2kNGSIXhY33gMnvXNyeda84yU54
PKg3IRBQGqP5NDfZK4eurqoEYHfU7Pb60uKnLKXZxez/RHCJRDXEJE6g0ZGglWRywnyEoObn
5mLwWWxmoTBoe0tg9gtwresmOMZPtKd2X3w5O6P4/744vzrrMP99cdFF7VGhydwCGSvrI+bC
VYliGmLaPKKuLpkstIRYDf34FNn4S83FdrYV43fkx1PzIdwbxzD/vDe9DjCnvqbvkEe+CfNA
U9GeNjyBDBZF6Gd04qpRtCcijo4UVaLVSNFEZUmYj49xy/afcueBul4+lS/l5mDoMJ5Ib/uK
dfdO9FLHdHReg1J93UAMydpsYJYh2SzojDclFC/Ylf/7Vm5WP7z9avncM1HGXUm7WTi76kHM
PhKWD89ln9aw8mTRqiYcn+Knl2iIj972zYD3PuHSKw+rTx/sdTH1MMo1cZN1UgJte6capB2h
JEe+JEEqdBRwgaFprzoW2dXVGe2PGz220MGIvCrHiavbWG+Wux+eeHl7Xjac1hUh4461tAb4
3cIxOOKYvFGgVBvmDta7l3+Wu9Lzd+u/qxxpm+L2aT4OZBrNWGrkxaWfx0qNQ3FEHfBqVj7t
lt5js/qDWd2uPzkQGvBg391ug2nUcQtkmuXYQcL69qvT/oF5vfWhXKGC+PhQvsJSyKmtlNtL
qCpLadnjZqSII1n5vvYe/gBdW4RsJEJKcSNFE0pKTBHnsdGcWPTiGDD0bD6GNdjpkcm4GOkZ
63d0SIjFMJdHZMHu+omeahRzHxQAXCB6QjWKrTEBVcsK8rjKtoo0hWhHxn8I83sPDS6qN2LO
ZyhOlLrrAVG44fdMjnOVE6V3DTeMKqnuRaAShKBk0XBUzQAEArhttRVwAH2ZGn9rcOnVzqse
oyrbXMwmMjOZcSKxB9HKImYojpkp1ZkZPbyL8xG4meC1FP1nxNYpsIF1N1D/dVIxBksS+1Ue
ruahWi128LT46no47G1yTpzMihEctCrd9mCRnAPftmBtttNDwooSJtzyNIa4AJ5E2hn5fv2H
4BMsNWB6HUI5X1RpRjODIkKs35R40vqK0BGi3rMV2tNQk7PO5HTIUhWXF5oFokkv9EnVol4z
DQYQPYx6XtUB5oD5KndkkGXCi6oRp+kqI45Se611Bp3EwIsK4VX7efV+rrcxUHU+uAMe9Ix0
wS7NWB1GZhNQeNWDmaxo/1WJvo8+cyp8/Khfa2y0TozBFipgzLZ3H6K9T4QhjUIDE/afCoSy
CdsEB7a2EkwAykPQmai9RYhsGQ64RVcQExN1ShztNjvVnh6CmIO+IJVfd9ZNl4VUsmg0VxZa
NHmIqfgR3DeYcN8CKGwylOPa170YAFhP2V9foiLDp7GINw7MENQq3AzUeta05KUzqyp0AtSf
Xl28AyfFsl4ed9ormrFBp8HgMRJ4xIvzJhzqqmK7Lg4BBk8XSdZ4XWOuph//XO7LB++vqpD8
uts+rp87XU5HAohdNM5F1ZHWVkNPUDrGYxDMgORg0yLnt++e/vOfbm8odvtWOLZR7QzWu+be
6/Pb07ob8rSY2E9nHjZETqTbcSxsUJkobPBPCiz4M2yUikpH0mVhe3P9WvFPPLvmzKa9RGPV
304Z1oJLFTtqkc5SgXkPBebI5qMRWigqUImrImYCp8pjRKp7JLtwI5AV/BSMnDtLwfVwTbaB
3dm9YLSKF8CDJxzQr7nI0WrBIUx7pRslnVEIRkCbNpFiJAL8D5rkusPUcJj4Xq7eDss/n0vT
F++ZtOmhw30jGQdRhnqT7m2pwJqn0pHOqzEi6ah14f76iZIjg7k2aHYYlS9bCMeiNugdhBIn
03dNXjBicc7Cjtk8JgUrGMFk9eQutcLUUqp5lsPTkgPrmtlGqzJqIjKsXM8euL4BttKO8w5B
TJAmmZllUvCX9oWC5ueOTCKGakWmMMS3D3ynqdxJ045trFvVbOunt5dnv19beXLCrFO1B7u0
f9eJHjl4PbGpMTmSVXR+4T5xZa/uRzkdWN/rYcdRL8YxRfkmwuvUlkRq6jHwgI7iN/jKI7BD
k4illFY6SmWSicp9YR1L4+bmThrEGd1il9kf8mgC/fLv9cpOO3SQpWb24UQvidPx5Xkn3YMp
FDL5xjnrtn+2sf96Ve/DU8OMXl61bU1EmLiqWWKaRUngKOVnYLcYelKOXqeK/DGnYj7hGGzz
mO543i4f6kRJI9czMD34RQmpoPoT7VxWqGamM5bWcMfDYWeJn0Jw4zq9QRDT1NF1USHg5y41
GbBe6Iif4HLTopNnyvG5AoKneYidMSMJmkYK3fGJ6Dc9JhgfDOt1up3tYUtkYu2okWW0AKvA
JViRHE+yY3cU6KO666tlhGpo8PLxNBKefnt93e4O9o4745W5We9XnbM1959H0QLtPLll0Aih
0tg3g+UbyR2PqCHgorOb2Kk3L7QfOEoNNUIAPmEvA96q0HPy6ELA+0fe3jp8s2kDKX6/4PNr
ku17U+uU4/fl3pOb/WH39mJaNfffQDIevMNuudkjngduc+k9wD2uX/HHbj7y/z3bTGfPB3BB
vSAZMyubuf1ngwLpvWyxx957j3n39a6EBc75h+ZDPrk5gD8PLpj3X96ufDafB7aX0UNBDvab
LGrV3w8BKDE8VUl3tE2TqqSfWu8tMtnuDz1yLZAvdw/UFpz429djfUYf4HS2bXnPlY4+WObh
uHd/kCo+dU8Wz/CJInmlIzfdhELriWquZY1kvUEjHABE581WQtQES4EwLmMs4dcqkbr017fD
cMW2rBEn+VBkJvAGhsPkZ+XhlG5xCr8h+ncayqDa+mnMItGX0uNhqWXb1yEOUu0KBGi5AvGg
tFbmiB/B0Lia6wF054LheVhozF2PxdsbTSJZVB89OBrtZqfK1fHUpSITfvPbxfX3Ypw4uv9j
zd1A2NG4qsO7+2kyDv84lGsmQt4PRNtC3eAJrDSIOSs40Dm2uCY5Sb2DhJ0lQ1+kYudzTnLx
Od1eb6Nb2Be0idGuImkS0YBJ/8uv5qWSoSAmWeKtnrerv/q6V2xM3JdMFvixJtYzwf3Fb5Kx
AG4eC3y/KME+9sMW6JXe4VvpLR8e1uiPLJ8rqvtPtiobLmZtTsbO1lPknt4no0fYjC5Lmv6k
gk0dH/AYKPZ00FFzBcdUQUjL6WQWObopsgkE+Yw+R/PpJ6GktB7ZndLtI2vqk4gRhGUk+qgX
r1Wu09vzYf34tlnhyzS66mFYEY0CH1Q38Dcd8k0ydO205Be01wiz70SUhI5+TySeXV/87mix
BLCOXEVmNppfnZ0ZV949e6G5q1MVwJksWHRxcTXHxkjmOzp/EfFrNO93pTW29NRFWlpDjPPQ
+f1HJHzJmjTUMGLbLV+/rVd7Sp34jn5rGC987HvkA3IMphABgT1c4fHEe8/eHtZbcFyOjSUf
Bn+CoaXwryZU0d1u+VJ6f749PoIi9oe20NE6QE6ropzl6q/n9dO3A3hEIfdPuBEAxT/qoLF7
Er1/OkWGpR/jHrhRm0DqJysfY7T+K1oCrfKY+tAsBwWgJlwWEPFloekBlcyqMiC8/Zymjd9h
OA8T6egaQfAx9THhfm/qgF9wzHj7D13XFMeTbz/2+Ac9vHD5A03qUIHE4GLjinMu5JS8wBN0
umcaM3/sUM7ZInEEYzgxVfg98Exmjr8+EEUO0ReRxi+vHQ0wsyIUPm1MqkKyNLH6gngD4TPe
ZJs1T3PrMxcDGnwklYKiBXPXHYj4l8vrmy83NaRVNhmv+JZWDajPB3FvlaKK2CgPyC4vTFxj
OYZ8wt486x7yuS914vpSOXd4gCYnSsQJHQSp4IHifHCIaL3abffbx4M3+fFa7j5Ovae3EqK4
/TCl8DNU6/wZG7u+VsV2p+bjl4K42o4pwb+IUbh6FCcQwosjLdd3r2HIYjU//b3NZNbUKQb3
w423pbdvu47Jb/YQ3umUF/Lm/Moqc8KomGbE6Cj0j6Otj02tYIeCMhwpuq1MqijKnZYwLV+2
hxKDaErVYJItwzQI7WETkyuiry/7J5JeEumG1WiKnZlV1AyLv9fmjxZ4agPRxvr1g7d/LVfr
x2N+7qhB2cvz9gmG9ZZ31m/sKQGu5gFBiPhd04bQykTutsuH1fbFNY+EVxm5efI52JUltkiW
3tftTn51EfkZqsFdf4rmLgIDmAF+fVs+w9aceyfhtoHFP3EyYKc5Vo2/D2h203hTnpOPT00+
pkL+FRdYsYXRG8NG1cYkzDOnG2vqaLQoOZRrMosGN4G50hXsklKSA5idQMDWFFd6wcRSpn8N
DHBIhMgQNXb+nEgb3NVpb0Qg3TMeFXcqZmjdz51YGJQmc1ac38QRBsC00u1gIT3ytbtb7UWF
3NESGvGhN0V8CkNd+ik064bZ0IazzcNuu36wr5PFfqr6H6k02qJGt/wD5uj47aehqvzbDPPB
q/XmiXK2dUabp/rbggm5JYKkFRlgWplMfUiHSdGhjJwZMPxKBH6ORb/JojFx1d8uoL2ebkGv
LluB2qu4xDKqfvXB3kylVoNr68w0f6Ep0FXfGh0kijnaRMCpStPK8TWT6ZlBDJe7AhTq5hzp
UCqAAZ6Xq5/FN/2LDp1TwQrnn2oJ2InZX3OV0Y+LpbHg/yq7mua2bSD6Vzw59aB27MST9uID
RZEyRxQpC1QY56JRZFXROFY8sjXT9NcHuwuABLgLtycn2iUI4WOxAN57Utdr4cqRzJI1B2iG
YKv1F9XZaWCmIbzZfgt2pYq5FLc5D3nTHH/ZnR9+ID6iGwpdyNAJilQdtKW3RTlZZnzfoIwN
n/IRYV6w0h+mkWzAGda5F8gKRdm/fnuTCYlpJQi1rKpiSK5zl7W96UIJ1G57Ph1ef3KbkFl2
L9zVZekKxqve22QKFx4EwkV9c25v7KC2oOqBoxixgk69wyMshW784PMA2HyNEILioEDDe3c7
8Qz4o/u2SQ+4Uqr5zTtIvOGqbfRz87QZwYXb8+E4etn8vdPlHB5Gh+Prbg/N+86Tkfm2OT3s
jhBwu1bvA3oOegE6bL4f/rVnPm66F43Bp4Y41x6OjTBsgKSV4wLvPr5fZjzKKeK/llR9vGcM
tleIYoBCr6jbXbMLwdI6gyiM6OsjSsLmDCR2mN5wiWU4O3oTHCJ6PYhi5eHrCSgypx/n18PR
j2eQvQWrRJCA6batUj0Bcrh8hs5jOAjapcwqwZoXlZUWGRfeKVWqF8MiBvxZpIVj7gSm4OOO
7QC4LNQKW5SFz0ZJ9aY2TYtGWOaX6RXPOobnmqvLScGPQzAXzWotFvuB1wjQlo+8iIO2iAb+
nLwsxvgiifiY8ioPdJH14T1A8nJRu/XzFxAQYkOlgn7oA+7oI8hSQsyc8sVzEHum8ChqrcfO
tPEE9AyljWA0/JwDYc9ahirbcQJ8y+Ho0csk3FXV+aSvyNN/xiP9d2SANilnPpYfFMyE9jMz
djD//Li7fSQENH76fNLx+REv1h6edi/7IXpS/1E15ndTlKNxCgB/ih53qyJrbq4dglcnn8DY
HpRw3dVZrAcFD1Jb/h21InXSs318QdetUWHmVm5CRIESMZ/aGjYq3rvCzS/TsSQLAzrJN1eX
76/9XlggQUjUewPwML4hUdJFOtRPSqxQvlihqFbCDjonk4h440Cck8pWxAeDVGqeSAfRoRPJ
QtdVyZ0hezo5wxeiSu26hWXRoDz5vPW/9mYvG0ymEPfv1ZJTt6O3E01hWKsQdNzPMia7r+f9
PhSZgMGKGkNK2q4EUlB8Yo0qBW0lpB9o1k2p6kraNtFbljUI8cpS1+RVj4H+JyaYpol07DT0
ouBxa4m8gZKulQqwvYHXJ5F/jSGZfIgqOqyFMUSKNyBuyIAiXhERjK4x8PvAZiwvUZSZ+7rW
zJRkuFezRCWVjeRdBKePsQykOfjZWDfsQiZXUgEPhWTrFilTq9sAY2hwvrq8i1Jn4udnmku3
m+Pev02p8yYg8/GRZ0j6ExoajHoHqFcjYFeyTu0dCzboHWfw9e7PEr2Vg1y3Dg4fOLvT3vCM
uPCumr4kB0l/0YAGcbjBAhC0OhQxy7JFMFEp24WLB9ehF7+96O0PYk5GF0/n190/O/0PoJv/
gRR7mz/BcQqWPcXlfHijqrfln+KHKlgGbORic5a5kQlnFAi6RlHFbUtOIHnZLpLwCM0PVq2S
NuvkgLWWgyY52WvKUrf5G2VB80HmZjMi/t34Vj2UUbtOjKTdF42mV/+jw70dt5Gj5F8Nq65u
FhCT1pkqMHpkFJwJ2RTyY+1TRJeMxRt2FVuVLKM41tfpUn+TCn5XYnjUBWLb7OoLKt5IHRa7
CTze7Et0EpsbpcLvFJfv98TAe2E6nBJGkn+9ZNIcu+MwLRTy84VDStjDsz72TMsxqQVRU59b
jk4hydhZp8tkccv7WMo8qzngG5EuzFG/jXlODM9lBhvvkNJMkjJUByKxh6xr8+DcckeNEZ4Q
gmYe6XHgKs9pwMDT4T1+l2pmc3FQYaJV4Q8jCFpN3XxPgKEp5mOYEc2mEw9EAf+PZU+rMSYV
CfxWy5eOpWoHCFi5gYNPIQNef+lQ/4CyMrhngR+oQb5KXyaaOlLnHHmZTBXX5gBF0FnSuFao
JdQI2vHEqYpIliOkoXmDItPy9y1EzJe1ls0qXo5ROV/qk/m8qMO55VXPyBqzy4M9JqhJdnd9
+fkvT2uqZxDEm53HaiLq7DufSuI6pYskcopBDQFkYL58p6u4zv2oZsdS1RYVNIG4E3QeIJPK
n/sHJxG/ACYBUQepaQAA

--hqgslnaev6ppavcw
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--hqgslnaev6ppavcw--

