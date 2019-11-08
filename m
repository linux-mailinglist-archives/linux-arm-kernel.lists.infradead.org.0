Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CF6F4015
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:44:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IwkhzNKEub7uuShBGKpM516biyYVlkjCdzRd8FNXnM4=; b=cbD
	ew0CHffjPE3QqcTld1eVlLgqIhN3WkUIDyPvESyKAMNTLeu2vDa7kdwBESgUOh/XqDCXRnyeUladp
	NStgOnDu0cpxsD3kq+NUAqCoL085UCwRddi0wjnro7MBSoYTfYqepd6znrhQqtxXDWI7YQ2PfsH+y
	ECz6JzkgLBWx7LEpyP2xwDes8pQGIyJvfOWM5xyVkb0cCsaPH6HzSFwwlKL2EAyE4FN5utQKRILEH
	/e/uhWi+AcqOYdVdXg9pJDUXm3SQSk5hduQW4SfpWqrlCno/YZsrMZ9EpeKDHQ9qJ/f6sROm8uvsO
	YInSl6f1KSxQpO4vuai5V29LTFY3t2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSx4N-0004m4-U8; Fri, 08 Nov 2019 05:44:27 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSx4E-0004kw-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:44:21 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 21:44:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,280,1569308400"; 
 d="gz'50?scan'50,208,50";a="201268944"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 07 Nov 2019 21:44:14 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iSx49-0005iI-IY; Fri, 08 Nov 2019 13:44:13 +0800
Date: Fri, 8 Nov 2019 13:43:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [arm:zii 8/40] htmldocs: drivers/net/phy/sfp-bus.c:509: warning:
 Function parameter or member 'bus' not described in 'sfp_bus_add_upstream'
Message-ID: <201911081324.wE4u5uAM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vo3cillzslokt65m"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_214418_680780_4DC1C7ED 
X-CRM114-Status: UNSURE (   7.89  )
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--vo3cillzslokt65m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git zii
head:   582cb3400ad9b59b9a79907d5cc14d51a0ca0fb6
commit: 94647cb6b0b8fba85b2697fed5e407cf4a8264e9 [8/40] net: sfp: rework upstream interface
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Function parameter or member 'ih' not described in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:1: warning: 'pp_dpm_sclk pp_dpm_mclk pp_dpm_pcie' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:131: warning: Incorrect use of kernel-doc format:          * @atomic_obj
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:237: warning: Incorrect use of kernel-doc format:          * gpu_info FW provided soc bounding box struct or 0 if not
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'atomic_obj' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'backlight_link' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'backlight_caps' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'freesync_module' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'fw_dmcu' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'dmcu_fw_version' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:242: warning: Function parameter or member 'soc_bounding_box' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_crtc_high_irq' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'register_hpd_handlers' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_pflip_high_irq' not found
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'quotactl' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'quota_on' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_free_mnt_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_eat_lsm_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_kern_mount' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_show_options' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'sb_add_mnt_opt' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'd_instantiate' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'getprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1811: warning: Function parameter or member 'setprocattr' not described in 'security_list_options'
   include/linux/i2c.h:337: warning: Function parameter or member 'init_irq' not described in 'i2c_client'
   include/linux/regulator/machine.h:196: warning: Function parameter or member 'max_uV_step' not described in 'regulation_constraints'
   include/linux/regulator/driver.h:223: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   include/linux/spi/spi.h:190: warning: Function parameter or member 'driver_override' not described in 'spi_device'
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_unregister_driver' not found
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_register_driver' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_register_notifier' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_unregister_notifier' not found
   fs/direct-io.c:258: warning: Excess function parameter 'offset' description in 'dio_complete'
   fs/libfs.c:496: warning: Excess function parameter 'available' description in 'simple_write_end'
   fs/posix_acl.c:647: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   include/linux/input/sparse-keymap.h:43: warning: Function parameter or member 'sw' not described in 'key_entry'
   include/linux/skbuff.h:893: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'skb_mstamp_ns' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member '__pkt_vlan_present_offset' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'vlan_present' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:893: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
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
   include/net/sock.h:2439: warning: Function parameter or member 'tcp_rx_skb_cache_key' not described in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'sk' description in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'skb' description in 'DECLARE_STATIC_KEY_FALSE'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   drivers/net/phy/phylink.c:587: warning: Function parameter or member 'config' not described in 'phylink_create'
   drivers/net/phy/phylink.c:587: warning: Excess function parameter 'ndev' description in 'phylink_create'
>> drivers/net/phy/sfp-bus.c:509: warning: Function parameter or member 'bus' not described in 'sfp_bus_add_upstream'
   drivers/net/phy/sfp-bus.c:509: warning: Excess function parameter 'fwnode' description in 'sfp_bus_add_upstream'
>> drivers/net/phy/sfp-bus.c:509: warning: Function parameter or member 'bus' not described in 'sfp_bus_add_upstream'
   drivers/net/phy/sfp-bus.c:509: warning: Excess function parameter 'fwnode' description in 'sfp_bus_add_upstream'
   mm/util.c:1: warning: 'get_user_pages_fast' not found
   mm/slab.c:4215: warning: Function parameter or member 'objp' not described in '__ksize'
   lib/genalloc.c:1: warning: 'gen_pool_add_virt' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc' not found
   lib/genalloc.c:1: warning: 'gen_pool_free' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc_algo' not found
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_pin' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_unpin' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_res_obj' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_get_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_import_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_vmap' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_vunmap' not described in 'drm_driver'
   include/drm/drm_drv.h:722: warning: Function parameter or member 'gem_prime_mmap' not described in 'drm_driver'
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'prepare_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'cleanup_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_atomic_state_helper.h:1: warning: no structured comments found
   drivers/gpu/drm/mcde/mcde_drv.c:1: warning: 'ST-Ericsson MCDE DRM Driver' not found
   include/net/cfg80211.h:1092: warning: Function parameter or member 'txpwr' not described in 'station_parameters'
   include/net/mac80211.h:4043: warning: Function parameter or member 'sta_set_txpwr' not described in 'ieee80211_ops'
   include/net/mac80211.h:2006: warning: Function parameter or member 'txpwr' not described in 'ieee80211_sta'
   Documentation/admin-guide/xfs.rst:257: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/index.rst:94: WARNING: toctree contains reference to nonexisting document 'virtual/index'
   Documentation/crypto/crypto_engine.rst:2: WARNING: Explicit markup ends without a blank line; unexpected unindent.
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/kbuild/makefiles.rst:1142: WARNING: Inline emphasis start-string without end-string.
   Documentation/kbuild/makefiles.rst:1152: WARNING: Inline emphasis start-string without end-string.
   Documentation/kbuild/makefiles.rst:1154: WARNING: Inline emphasis start-string without end-string.
   include/uapi/linux/firewire-cdev.h:312: WARNING: Inline literal start-string without end-string.
   drivers/firewire/core-transaction.c:606: WARNING: Inline strong start-string without end-string.
   Documentation/trace/kprobetrace.rst:99: WARNING: Explicit markup ends without a blank line; unexpected unindent.
   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:245: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:248: WARNING: Block quote ends without a blank line; unexpected unindent.
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:271: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:282: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:2202: WARNING: Inline emphasis start-string without end-string.
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:2204: WARNING: Inline emphasis start-string without end-string.
   drivers/message/fusion/mptbase.c:5057: WARNING: Definition list ends without a blank line; unexpected unindent.
   drivers/tty/serial/serial_core.c:1964: WARNING: Definition list ends without a blank line; unexpected unindent.
   Documentation/translations/it_IT/process/maintainer-pgp-guide.rst:458: WARNING: Unknown target name: "nitrokey pro".
   include/linux/i2c.h:522: WARNING: Inline strong start-string without end-string.
   include/linux/regulator/driver.h:284: WARNING: Unknown target name: "regulator_regmap_x_voltage".
   include/linux/spi/spi.h:382: WARNING: Unexpected indentation.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/posix_acl.c:636: WARNING: Inline emphasis start-string without end-string.
   fs/debugfs/inode.c:399: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:478: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:510: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:603: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:394: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:400: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:439: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:445: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:484: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:490: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:530: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:536: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:578: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:584: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:845: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:851: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:898: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:904: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1090: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1096: WARNING: Inline literal start-string without end-string.
   drivers/ata/libata-core.c:5945: WARNING: Unknown target name: "hw".
   include/linux/xarray.h:232: WARNING: Unexpected indentation.
   include/linux/netdevice.h:3482: WARNING: Inline emphasis start-string without end-string.
   include/linux/netdevice.h:3482: WARNING: Inline emphasis start-string without end-string.
   drivers/net/phy/sfp-bus.c:462: WARNING: Unexpected indentation.
   drivers/net/phy/sfp-bus.c:502: WARNING: Unexpected indentation.
   net/core/dev.c:5013: WARNING: Unknown target name: "page_is".
   include/drm/drm_connector.h:540: WARNING: Inline interpreted text or phrase reference start-string without end-string.
   include/drm/drm_connector.h:540: WARNING: Inline interpreted text or phrase reference start-string without end-string.
   Documentation/virt/index.rst: WARNING: document isn't included in any toctree
   include/linux/slab.h:500: WARNING: undefined label: memory-allocation (if the link has no caption the label must precede a section header)
   Documentation/gpu/drm-internals.rst:302: WARNING: Could not lex literal_block as "c". Highlighting skipped.
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   Documentation/trace/kprobetrace.rst:68: WARNING: undefined label: user_mem_access (if the link has no caption the label must precede a section header)
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting

vim +509 drivers/net/phy/sfp-bus.c

   487	
   488	/**
   489	 * sfp_register_upstream_node() - parse and register the neighbouring device
   490	 * @fwnode: firmware node for the parent device (MAC or PHY)
   491	 * @upstream: the upstream private data
   492	 * @ops: the upstream's &struct sfp_upstream_ops
   493	 *
   494	 * Add upstream driver for the SFP bus, and if the bus is complete, register
   495	 * the SFP bus using sfp_register_upstream().  This takes a reference on the
   496	 * bus, so it is safe to put the bus after this call.
   497	 *
   498	 * Returns: on success, a pointer to the sfp_bus structure,
   499	 *	    %NULL if no SFP is specified,
   500	 * 	    on failure, an error pointer value:
   501	 * 		corresponding to the errors detailed for
   502	 * 		fwnode_property_get_reference_args().
   503	 * 	        %-ENOMEM if we failed to allocate the bus.
   504	 *		an error from the upstream's connect_phy() method.
   505	 */
   506	int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
   507				 const struct sfp_upstream_ops *ops)
   508	{
 > 509		int ret;
   510	
   511		/* If no bus, return success */
   512		if (!bus)
   513			return 0;
   514	
   515		rtnl_lock();
   516		kref_get(&bus->kref);
   517		bus->upstream_ops = ops;
   518		bus->upstream = upstream;
   519	
   520		if (bus->sfp) {
   521			ret = sfp_register_bus(bus);
   522			if (ret)
   523				sfp_upstream_clear(bus);
   524		} else {
   525			ret = 0;
   526		}
   527		rtnl_unlock();
   528	
   529		if (ret)
   530			sfp_bus_put(bus);
   531	
   532		return ret;
   533	}
   534	EXPORT_SYMBOL_GPL(sfp_bus_add_upstream);
   535	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--vo3cillzslokt65m
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yh8HBNsR/wGEKGEr3GgAAA==

--vo3cillzslokt65m
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--vo3cillzslokt65m--

