Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AFC132CEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JE2Zl8+QyGWhxEjqBdc5Kd658RHhGFWwUcoA38rkd0I=; b=sxBOM4Z4r9LJj4
	hul/8ZO2tJhG0bO0wJZNMa45NXIUtqDoYGvM+RjK7np07QkdAMsIfx5pTd3CXCa43RiG7L/m39mKd
	mRQeNu/2J1cRa+dRL/XsvVhOgnv92/e1Uxx7tk+b7VhCNM9/rlkEvkhHmG66//bflZRTAviqNkeb6
	r4SogvMVQfpCgdus56uuiRx9RcI26gGI6WefL26Tz624H1ht3uFCeL21n7UTfYMjmJ21YgdmPgty7
	zVCUY4jcxBBk2YcSXm9eVmyhlOwN54iMEUUKvwNfBfOxaj7qE/WNjufiy78I+sHPymRzRtz8KyUT7
	QkSC42cliQreXRKVuErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosbT-0006MH-PT; Tue, 07 Jan 2020 17:25:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosbK-0005iF-Td; Tue, 07 Jan 2020 17:25:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 12A84AAF1;
 Tue,  7 Jan 2020 17:25:05 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: wahrenst@gmx.net, f.fainelli@gmail.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC] ARM: add bcm2711_defconfig
Date: Tue,  7 Jan 2020 18:24:59 +0100
Message-Id: <20200107172459.28444-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_092507_273854_D6713EC9 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mbrugger@suse.com, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Raspberry Pi 4 depends on LPAE in order to use its PCIe port, which
is essential, as it ultimately provides USB2/3 connectivity. As this
setup doesn't fit any generic purpose configuration this adds
bcm2711_defconfig which is based on the current Raspberry Pi foundation
config file[1] with as little changes as possible

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

[1] https://github.com/raspberrypi/linux/blob/rpi-5.5.y/arch/arm/configs/bcm2711_defconfig

---

For the ones that followed my previous attempts to enable the Raspberry
Pi 4 on arm32, my initial intention was to integrate dma-direct/switlb
as the default dma-ops on arm32 in order to benefit from the
bufferbouncing needed to DMA from most of RPi's peripherals. After
preparing a series implementing this, I realised it's not good enough
for PCI as its outbound window is mapped into the
0x6_00000000-0x6_04000000 range, which AFAIK is impossible to represent
in arm32 without LPAE. So I ultimately figured this is the only solution
left.

Note that this is built on top of the latest RPi4 PCIe and thermal
patches.

 arch/arm/configs/bcm2711_defconfig | 1375 ++++++++++++++++++++++++++++
 1 file changed, 1375 insertions(+)
 create mode 100644 arch/arm/configs/bcm2711_defconfig

diff --git a/arch/arm/configs/bcm2711_defconfig b/arch/arm/configs/bcm2711_defconfig
new file mode 100644
index 000000000000..add6c09c5886
--- /dev/null
+++ b/arch/arm/configs/bcm2711_defconfig
@@ -0,0 +1,1375 @@
+CONFIG_SYSVIPC=y
+CONFIG_POSIX_MQUEUE=y
+CONFIG_GENERIC_IRQ_DEBUGFS=y
+CONFIG_NO_HZ=y
+CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT_VOLUNTARY=y
+CONFIG_BSD_PROCESS_ACCT=y
+CONFIG_BSD_PROCESS_ACCT_V3=y
+CONFIG_TASKSTATS=y
+CONFIG_TASK_DELAY_ACCT=y
+CONFIG_TASK_XACCT=y
+CONFIG_TASK_IO_ACCOUNTING=y
+CONFIG_IKCONFIG=m
+CONFIG_IKCONFIG_PROC=y
+CONFIG_MEMCG=y
+CONFIG_BLK_CGROUP=y
+CONFIG_CGROUP_PIDS=y
+CONFIG_CGROUP_FREEZER=y
+CONFIG_CPUSETS=y
+CONFIG_CGROUP_DEVICE=y
+CONFIG_CGROUP_CPUACCT=y
+CONFIG_CGROUP_BPF=y
+CONFIG_NAMESPACES=y
+CONFIG_USER_NS=y
+CONFIG_SCHED_AUTOGROUP=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_BPF_SYSCALL=y
+CONFIG_EMBEDDED=y
+# CONFIG_COMPAT_BRK is not set
+CONFIG_PROFILING=y
+CONFIG_ARCH_BCM=y
+CONFIG_ARCH_BCM2835=y
+CONFIG_ARM_LPAE=y
+# CONFIG_CACHE_L2X0 is not set
+CONFIG_SMP=y
+CONFIG_HIGHMEM=y
+CONFIG_UACCESS_WITH_MEMCPY=y
+CONFIG_SECCOMP=y
+# CONFIG_ATAGS is not set
+CONFIG_ZBOOT_ROM_TEXT=0x0
+CONFIG_ZBOOT_ROM_BSS=0x0
+CONFIG_CPU_FREQ=y
+CONFIG_CPU_FREQ_STAT=y
+CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE=y
+CONFIG_CPU_FREQ_GOV_POWERSAVE=y
+CONFIG_CPU_FREQ_GOV_USERSPACE=y
+CONFIG_CPU_FREQ_GOV_ONDEMAND=y
+CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
+CONFIG_CPUFREQ_DT=y
+CONFIG_ARM_RASPBERRYPI_CPUFREQ=y
+CONFIG_VFP=y
+CONFIG_NEON=y
+CONFIG_KERNEL_MODE_NEON=y
+# CONFIG_SUSPEND is not set
+CONFIG_PM=y
+CONFIG_RASPBERRYPI_FIRMWARE=y
+CONFIG_ARM_CRYPTO=y
+CONFIG_CRYPTO_SHA1_ARM_NEON=m
+CONFIG_CRYPTO_AES_ARM=m
+CONFIG_CRYPTO_AES_ARM_BS=m
+CONFIG_OPROFILE=m
+CONFIG_KPROBES=y
+CONFIG_JUMP_LABEL=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_MODULE_SRCVERSION_ALL=y
+CONFIG_BLK_DEV_THROTTLING=y
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_MAC_PARTITION=y
+CONFIG_BINFMT_MISC=m
+CONFIG_CLEANCACHE=y
+CONFIG_FRONTSWAP=y
+CONFIG_CMA=y
+CONFIG_ZSMALLOC=m
+CONFIG_PGTABLE_MAPPING=y
+CONFIG_NET=y
+CONFIG_PACKET=y
+CONFIG_UNIX=y
+CONFIG_XFRM_USER=y
+CONFIG_NET_KEY=m
+CONFIG_INET=y
+CONFIG_IP_MULTICAST=y
+CONFIG_IP_ADVANCED_ROUTER=y
+CONFIG_IP_MULTIPLE_TABLES=y
+CONFIG_IP_ROUTE_MULTIPATH=y
+CONFIG_IP_ROUTE_VERBOSE=y
+CONFIG_IP_PNP=y
+CONFIG_IP_PNP_DHCP=y
+CONFIG_IP_PNP_RARP=y
+CONFIG_NET_IPIP=m
+CONFIG_NET_IPGRE_DEMUX=m
+CONFIG_NET_IPGRE=m
+CONFIG_IP_MROUTE=y
+CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
+CONFIG_IP_PIMSM_V1=y
+CONFIG_IP_PIMSM_V2=y
+CONFIG_SYN_COOKIES=y
+CONFIG_NET_IPVTI=m
+CONFIG_INET_AH=m
+CONFIG_INET_ESP=m
+CONFIG_INET_IPCOMP=m
+CONFIG_INET_DIAG=m
+CONFIG_TCP_CONG_ADVANCED=y
+CONFIG_TCP_CONG_BBR=m
+CONFIG_IPV6=m
+CONFIG_IPV6_ROUTER_PREF=y
+CONFIG_IPV6_ROUTE_INFO=y
+CONFIG_INET6_AH=m
+CONFIG_INET6_ESP=m
+CONFIG_INET6_IPCOMP=m
+CONFIG_IPV6_SIT_6RD=y
+CONFIG_IPV6_TUNNEL=m
+CONFIG_IPV6_MULTIPLE_TABLES=y
+CONFIG_IPV6_SUBTREES=y
+CONFIG_IPV6_MROUTE=y
+CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=y
+CONFIG_IPV6_PIMSM_V2=y
+CONFIG_NETFILTER=y
+CONFIG_NF_CONNTRACK=m
+CONFIG_NF_CONNTRACK_ZONES=y
+CONFIG_NF_CONNTRACK_EVENTS=y
+CONFIG_NF_CONNTRACK_TIMESTAMP=y
+CONFIG_NF_CONNTRACK_AMANDA=m
+CONFIG_NF_CONNTRACK_FTP=m
+CONFIG_NF_CONNTRACK_H323=m
+CONFIG_NF_CONNTRACK_IRC=m
+CONFIG_NF_CONNTRACK_NETBIOS_NS=m
+CONFIG_NF_CONNTRACK_SNMP=m
+CONFIG_NF_CONNTRACK_PPTP=m
+CONFIG_NF_CONNTRACK_SANE=m
+CONFIG_NF_CONNTRACK_SIP=m
+CONFIG_NF_CONNTRACK_TFTP=m
+CONFIG_NF_CT_NETLINK=m
+CONFIG_NETFILTER_XT_SET=m
+CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
+CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
+CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
+CONFIG_NETFILTER_XT_TARGET_DSCP=m
+CONFIG_NETFILTER_XT_TARGET_HMARK=m
+CONFIG_NETFILTER_XT_TARGET_IDLETIMER=m
+CONFIG_NETFILTER_XT_TARGET_LED=m
+CONFIG_NETFILTER_XT_TARGET_LOG=m
+CONFIG_NETFILTER_XT_TARGET_MARK=m
+CONFIG_NETFILTER_XT_TARGET_NFLOG=m
+CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
+CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
+CONFIG_NETFILTER_XT_TARGET_TEE=m
+CONFIG_NETFILTER_XT_TARGET_TPROXY=m
+CONFIG_NETFILTER_XT_TARGET_TRACE=m
+CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
+CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=m
+CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
+CONFIG_NETFILTER_XT_MATCH_BPF=m
+CONFIG_NETFILTER_XT_MATCH_CLUSTER=m
+CONFIG_NETFILTER_XT_MATCH_COMMENT=m
+CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
+CONFIG_NETFILTER_XT_MATCH_CONNLABEL=m
+CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
+CONFIG_NETFILTER_XT_MATCH_CONNMARK=m
+CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
+CONFIG_NETFILTER_XT_MATCH_CPU=m
+CONFIG_NETFILTER_XT_MATCH_DCCP=m
+CONFIG_NETFILTER_XT_MATCH_DEVGROUP=m
+CONFIG_NETFILTER_XT_MATCH_DSCP=m
+CONFIG_NETFILTER_XT_MATCH_ESP=m
+CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
+CONFIG_NETFILTER_XT_MATCH_HELPER=m
+CONFIG_NETFILTER_XT_MATCH_IPRANGE=m
+CONFIG_NETFILTER_XT_MATCH_IPVS=m
+CONFIG_NETFILTER_XT_MATCH_LENGTH=m
+CONFIG_NETFILTER_XT_MATCH_LIMIT=m
+CONFIG_NETFILTER_XT_MATCH_MAC=m
+CONFIG_NETFILTER_XT_MATCH_MARK=m
+CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
+CONFIG_NETFILTER_XT_MATCH_NFACCT=m
+CONFIG_NETFILTER_XT_MATCH_OSF=m
+CONFIG_NETFILTER_XT_MATCH_OWNER=m
+CONFIG_NETFILTER_XT_MATCH_POLICY=m
+CONFIG_NETFILTER_XT_MATCH_PHYSDEV=m
+CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
+CONFIG_NETFILTER_XT_MATCH_QUOTA=m
+CONFIG_NETFILTER_XT_MATCH_RATEEST=m
+CONFIG_NETFILTER_XT_MATCH_REALM=m
+CONFIG_NETFILTER_XT_MATCH_RECENT=m
+CONFIG_NETFILTER_XT_MATCH_SOCKET=m
+CONFIG_NETFILTER_XT_MATCH_STATE=m
+CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
+CONFIG_NETFILTER_XT_MATCH_STRING=m
+CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
+CONFIG_NETFILTER_XT_MATCH_TIME=m
+CONFIG_NETFILTER_XT_MATCH_U32=m
+CONFIG_IP_SET=m
+CONFIG_IP_SET_BITMAP_IP=m
+CONFIG_IP_SET_BITMAP_IPMAC=m
+CONFIG_IP_SET_BITMAP_PORT=m
+CONFIG_IP_SET_HASH_IP=m
+CONFIG_IP_SET_HASH_IPPORT=m
+CONFIG_IP_SET_HASH_IPPORTIP=m
+CONFIG_IP_SET_HASH_IPPORTNET=m
+CONFIG_IP_SET_HASH_NET=m
+CONFIG_IP_SET_HASH_NETPORT=m
+CONFIG_IP_SET_HASH_NETIFACE=m
+CONFIG_IP_SET_LIST_SET=m
+CONFIG_IP_VS=m
+CONFIG_IP_VS_PROTO_TCP=y
+CONFIG_IP_VS_PROTO_UDP=y
+CONFIG_IP_VS_PROTO_ESP=y
+CONFIG_IP_VS_PROTO_AH=y
+CONFIG_IP_VS_PROTO_SCTP=y
+CONFIG_IP_VS_RR=m
+CONFIG_IP_VS_WRR=m
+CONFIG_IP_VS_LC=m
+CONFIG_IP_VS_WLC=m
+CONFIG_IP_VS_LBLC=m
+CONFIG_IP_VS_LBLCR=m
+CONFIG_IP_VS_DH=m
+CONFIG_IP_VS_SH=m
+CONFIG_IP_VS_SED=m
+CONFIG_IP_VS_NQ=m
+CONFIG_IP_VS_FTP=m
+CONFIG_IP_VS_PE_SIP=m
+CONFIG_IP_NF_IPTABLES=m
+CONFIG_IP_NF_MATCH_AH=m
+CONFIG_IP_NF_MATCH_ECN=m
+CONFIG_IP_NF_MATCH_RPFILTER=m
+CONFIG_IP_NF_MATCH_TTL=m
+CONFIG_IP_NF_FILTER=m
+CONFIG_IP_NF_TARGET_REJECT=m
+CONFIG_IP_NF_NAT=m
+CONFIG_IP_NF_TARGET_MASQUERADE=m
+CONFIG_IP_NF_TARGET_NETMAP=m
+CONFIG_IP_NF_TARGET_REDIRECT=m
+CONFIG_IP_NF_MANGLE=m
+CONFIG_IP_NF_TARGET_CLUSTERIP=m
+CONFIG_IP_NF_TARGET_ECN=m
+CONFIG_IP_NF_TARGET_TTL=m
+CONFIG_IP_NF_RAW=m
+CONFIG_IP_NF_ARPTABLES=m
+CONFIG_IP_NF_ARPFILTER=m
+CONFIG_IP_NF_ARP_MANGLE=m
+CONFIG_IP6_NF_IPTABLES=m
+CONFIG_IP6_NF_MATCH_AH=m
+CONFIG_IP6_NF_MATCH_EUI64=m
+CONFIG_IP6_NF_MATCH_FRAG=m
+CONFIG_IP6_NF_MATCH_OPTS=m
+CONFIG_IP6_NF_MATCH_HL=m
+CONFIG_IP6_NF_MATCH_IPV6HEADER=m
+CONFIG_IP6_NF_MATCH_MH=m
+CONFIG_IP6_NF_MATCH_RPFILTER=m
+CONFIG_IP6_NF_MATCH_RT=m
+CONFIG_IP6_NF_TARGET_HL=m
+CONFIG_IP6_NF_FILTER=m
+CONFIG_IP6_NF_TARGET_REJECT=m
+CONFIG_IP6_NF_MANGLE=m
+CONFIG_IP6_NF_RAW=m
+CONFIG_IP6_NF_NAT=m
+CONFIG_IP6_NF_TARGET_MASQUERADE=m
+CONFIG_IP6_NF_TARGET_NPT=m
+CONFIG_BRIDGE_NF_EBTABLES=m
+CONFIG_BRIDGE_EBT_BROUTE=m
+CONFIG_BRIDGE_EBT_T_FILTER=m
+CONFIG_BRIDGE_EBT_T_NAT=m
+CONFIG_BRIDGE_EBT_802_3=m
+CONFIG_BRIDGE_EBT_AMONG=m
+CONFIG_BRIDGE_EBT_ARP=m
+CONFIG_BRIDGE_EBT_IP=m
+CONFIG_BRIDGE_EBT_IP6=m
+CONFIG_BRIDGE_EBT_LIMIT=m
+CONFIG_BRIDGE_EBT_MARK=m
+CONFIG_BRIDGE_EBT_PKTTYPE=m
+CONFIG_BRIDGE_EBT_STP=m
+CONFIG_BRIDGE_EBT_VLAN=m
+CONFIG_BRIDGE_EBT_ARPREPLY=m
+CONFIG_BRIDGE_EBT_DNAT=m
+CONFIG_BRIDGE_EBT_MARK_T=m
+CONFIG_BRIDGE_EBT_REDIRECT=m
+CONFIG_BRIDGE_EBT_SNAT=m
+CONFIG_BRIDGE_EBT_LOG=m
+CONFIG_BRIDGE_EBT_NFLOG=m
+CONFIG_SCTP_COOKIE_HMAC_SHA1=y
+CONFIG_ATM=m
+CONFIG_L2TP=m
+CONFIG_L2TP_V3=y
+CONFIG_L2TP_IP=m
+CONFIG_L2TP_ETH=m
+CONFIG_BRIDGE=m
+CONFIG_VLAN_8021Q=m
+CONFIG_VLAN_8021Q_GVRP=y
+CONFIG_ATALK=m
+CONFIG_6LOWPAN=m
+CONFIG_IEEE802154=m
+CONFIG_IEEE802154_6LOWPAN=m
+CONFIG_MAC802154=m
+CONFIG_NET_SCHED=y
+CONFIG_NET_SCH_CBQ=m
+CONFIG_NET_SCH_HTB=m
+CONFIG_NET_SCH_HFSC=m
+CONFIG_NET_SCH_ATM=m
+CONFIG_NET_SCH_PRIO=m
+CONFIG_NET_SCH_MULTIQ=m
+CONFIG_NET_SCH_RED=m
+CONFIG_NET_SCH_SFB=m
+CONFIG_NET_SCH_SFQ=m
+CONFIG_NET_SCH_TEQL=m
+CONFIG_NET_SCH_TBF=m
+CONFIG_NET_SCH_GRED=m
+CONFIG_NET_SCH_DSMARK=m
+CONFIG_NET_SCH_NETEM=m
+CONFIG_NET_SCH_DRR=m
+CONFIG_NET_SCH_MQPRIO=m
+CONFIG_NET_SCH_CHOKE=m
+CONFIG_NET_SCH_QFQ=m
+CONFIG_NET_SCH_CODEL=m
+CONFIG_NET_SCH_FQ_CODEL=m
+CONFIG_NET_SCH_FQ=m
+CONFIG_NET_SCH_HHF=m
+CONFIG_NET_SCH_PIE=m
+CONFIG_NET_SCH_INGRESS=m
+CONFIG_NET_SCH_PLUG=m
+CONFIG_NET_CLS_BASIC=m
+CONFIG_NET_CLS_TCINDEX=m
+CONFIG_NET_CLS_ROUTE4=m
+CONFIG_NET_CLS_FW=m
+CONFIG_NET_CLS_U32=m
+CONFIG_CLS_U32_MARK=y
+CONFIG_NET_CLS_RSVP=m
+CONFIG_NET_CLS_RSVP6=m
+CONFIG_NET_CLS_FLOW=m
+CONFIG_NET_CLS_CGROUP=m
+CONFIG_NET_EMATCH=y
+CONFIG_NET_EMATCH_CMP=m
+CONFIG_NET_EMATCH_NBYTE=m
+CONFIG_NET_EMATCH_U32=m
+CONFIG_NET_EMATCH_META=m
+CONFIG_NET_EMATCH_TEXT=m
+CONFIG_NET_EMATCH_IPSET=m
+CONFIG_NET_CLS_ACT=y
+CONFIG_NET_ACT_POLICE=m
+CONFIG_NET_ACT_GACT=m
+CONFIG_GACT_PROB=y
+CONFIG_NET_ACT_MIRRED=m
+CONFIG_NET_ACT_IPT=m
+CONFIG_NET_ACT_NAT=m
+CONFIG_NET_ACT_PEDIT=m
+CONFIG_NET_ACT_SIMP=m
+CONFIG_NET_ACT_SKBEDIT=m
+CONFIG_NET_ACT_CSUM=m
+CONFIG_BATMAN_ADV=m
+CONFIG_OPENVSWITCH=m
+CONFIG_NET_PKTGEN=m
+CONFIG_HAMRADIO=y
+CONFIG_AX25=m
+CONFIG_NETROM=m
+CONFIG_ROSE=m
+CONFIG_MKISS=m
+CONFIG_6PACK=m
+CONFIG_BPQETHER=m
+CONFIG_BAYCOM_SER_FDX=m
+CONFIG_BAYCOM_SER_HDX=m
+CONFIG_YAM=m
+CONFIG_CAN=m
+CONFIG_CAN_VCAN=m
+CONFIG_CAN_SLCAN=m
+CONFIG_CAN_MCP251X=m
+CONFIG_CAN_GS_USB=m
+CONFIG_BT=m
+CONFIG_BT_RFCOMM=m
+CONFIG_BT_RFCOMM_TTY=y
+CONFIG_BT_BNEP=m
+CONFIG_BT_BNEP_MC_FILTER=y
+CONFIG_BT_BNEP_PROTO_FILTER=y
+CONFIG_BT_HIDP=m
+CONFIG_BT_6LOWPAN=m
+CONFIG_BT_HCIBTUSB=m
+CONFIG_BT_HCIUART=m
+CONFIG_BT_HCIUART_3WIRE=y
+CONFIG_BT_HCIUART_BCM=y
+CONFIG_BT_HCIBCM203X=m
+CONFIG_BT_HCIBPA10X=m
+CONFIG_BT_HCIBFUSB=m
+CONFIG_BT_HCIVHCI=m
+CONFIG_BT_MRVL=m
+CONFIG_BT_MRVL_SDIO=m
+CONFIG_BT_ATH3K=m
+CONFIG_CFG80211=m
+CONFIG_MAC80211=m
+CONFIG_MAC80211_MESH=y
+CONFIG_WIMAX=m
+CONFIG_RFKILL=m
+CONFIG_RFKILL_INPUT=y
+CONFIG_NET_9P=m
+CONFIG_NFC=m
+CONFIG_PCI=y
+CONFIG_PCIEPORTBUS=y
+# CONFIG_PCIEASPM is not set
+CONFIG_PCI_MSI=y
+CONFIG_PCIE_BRCMSTB=y
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+CONFIG_MTD=m
+CONFIG_MTD_BLOCK=m
+CONFIG_MTD_BLOCK2MTD=m
+CONFIG_MTD_SPI_NOR=m
+CONFIG_MTD_UBI=m
+CONFIG_ZRAM=m
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_CRYPTOLOOP=m
+CONFIG_BLK_DEV_DRBD=m
+CONFIG_BLK_DEV_NBD=m
+CONFIG_BLK_DEV_RAM=y
+CONFIG_CDROM_PKTCDVD=m
+CONFIG_ATA_OVER_ETH=m
+CONFIG_EEPROM_AT24=m
+CONFIG_TI_ST=m
+CONFIG_SCSI=y
+# CONFIG_SCSI_PROC_FS is not set
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_ST=m
+CONFIG_BLK_DEV_SR=m
+CONFIG_CHR_DEV_SG=m
+CONFIG_SCSI_ISCSI_ATTRS=y
+CONFIG_ISCSI_TCP=m
+CONFIG_ISCSI_BOOT_SYSFS=m
+CONFIG_MD=y
+CONFIG_MD_LINEAR=m
+CONFIG_BLK_DEV_DM=m
+CONFIG_DM_CRYPT=m
+CONFIG_DM_SNAPSHOT=m
+CONFIG_DM_THIN_PROVISIONING=m
+CONFIG_DM_CACHE=m
+CONFIG_DM_MIRROR=m
+CONFIG_DM_LOG_USERSPACE=m
+CONFIG_DM_RAID=m
+CONFIG_DM_ZERO=m
+CONFIG_DM_DELAY=m
+CONFIG_NETDEVICES=y
+CONFIG_BONDING=m
+CONFIG_DUMMY=m
+CONFIG_IFB=m
+CONFIG_MACVLAN=m
+CONFIG_IPVLAN=m
+CONFIG_VXLAN=m
+CONFIG_NETCONSOLE=m
+CONFIG_TUN=m
+CONFIG_VETH=m
+CONFIG_NET_VRF=m
+CONFIG_BCMGENET=y
+CONFIG_ENC28J60=m
+CONFIG_QCA7000_SPI=m
+CONFIG_WIZNET_W5100=m
+CONFIG_WIZNET_W5100_SPI=m
+CONFIG_MDIO_BITBANG=m
+CONFIG_BROADCOM_PHY=y
+CONFIG_PPP=m
+CONFIG_PPP_BSDCOMP=m
+CONFIG_PPP_DEFLATE=m
+CONFIG_PPP_FILTER=y
+CONFIG_PPP_MPPE=m
+CONFIG_PPP_MULTILINK=y
+CONFIG_PPPOATM=m
+CONFIG_PPPOE=m
+CONFIG_PPPOL2TP=m
+CONFIG_PPP_ASYNC=m
+CONFIG_PPP_SYNC_TTY=m
+CONFIG_SLIP=m
+CONFIG_SLIP_COMPRESSED=y
+CONFIG_SLIP_SMART=y
+CONFIG_USB_CATC=m
+CONFIG_USB_KAWETH=m
+CONFIG_USB_PEGASUS=m
+CONFIG_USB_RTL8150=m
+CONFIG_USB_RTL8152=y
+CONFIG_USB_LAN78XX=y
+CONFIG_USB_USBNET=y
+CONFIG_USB_NET_AX8817X=m
+CONFIG_USB_NET_AX88179_178A=m
+CONFIG_USB_NET_CDCETHER=m
+CONFIG_USB_NET_CDC_EEM=m
+CONFIG_USB_NET_CDC_NCM=m
+CONFIG_USB_NET_HUAWEI_CDC_NCM=m
+CONFIG_USB_NET_CDC_MBIM=m
+CONFIG_USB_NET_DM9601=m
+CONFIG_USB_NET_SR9700=m
+CONFIG_USB_NET_SR9800=m
+CONFIG_USB_NET_SMSC75XX=m
+CONFIG_USB_NET_SMSC95XX=y
+CONFIG_USB_NET_GL620A=m
+CONFIG_USB_NET_NET1080=m
+CONFIG_USB_NET_PLUSB=m
+CONFIG_USB_NET_MCS7830=m
+CONFIG_USB_NET_CDC_SUBSET=m
+CONFIG_USB_ALI_M5632=y
+CONFIG_USB_AN2720=y
+CONFIG_USB_EPSON2888=y
+CONFIG_USB_KC2190=y
+CONFIG_USB_NET_ZAURUS=m
+CONFIG_USB_NET_CX82310_ETH=m
+CONFIG_USB_NET_KALMIA=m
+CONFIG_USB_NET_QMI_WWAN=m
+CONFIG_USB_HSO=m
+CONFIG_USB_NET_INT51X1=m
+CONFIG_USB_IPHETH=m
+CONFIG_USB_SIERRA_NET=m
+CONFIG_USB_VL600=m
+CONFIG_ATH9K=m
+CONFIG_ATH9K_HTC=m
+CONFIG_CARL9170=m
+CONFIG_ATH6KL=m
+CONFIG_ATH6KL_USB=m
+CONFIG_AR5523=m
+CONFIG_AT76C50X_USB=m
+CONFIG_B43=m
+# CONFIG_B43_PHY_N is not set
+CONFIG_B43LEGACY=m
+CONFIG_BRCMFMAC=m
+CONFIG_BRCMFMAC_USB=y
+CONFIG_BRCMDBG=y
+CONFIG_HOSTAP=m
+CONFIG_P54_COMMON=m
+CONFIG_P54_USB=m
+CONFIG_LIBERTAS=m
+CONFIG_LIBERTAS_USB=m
+CONFIG_LIBERTAS_SDIO=m
+CONFIG_LIBERTAS_THINFIRM=m
+CONFIG_LIBERTAS_THINFIRM_USB=m
+CONFIG_MWIFIEX=m
+CONFIG_MWIFIEX_SDIO=m
+CONFIG_MT7601U=m
+CONFIG_MT76x0U=m
+CONFIG_MT76x2U=m
+CONFIG_RT2X00=m
+CONFIG_RT2500USB=m
+CONFIG_RT73USB=m
+CONFIG_RT2800USB=m
+CONFIG_RT2800USB_RT3573=y
+CONFIG_RT2800USB_RT53XX=y
+CONFIG_RT2800USB_RT55XX=y
+CONFIG_RT2800USB_UNKNOWN=y
+CONFIG_RTL8187=m
+CONFIG_RTL8192CU=m
+CONFIG_RTL8XXXU=m
+CONFIG_USB_ZD1201=m
+CONFIG_ZD1211RW=m
+CONFIG_MAC80211_HWSIM=m
+CONFIG_USB_NET_RNDIS_WLAN=m
+CONFIG_WIMAX_I2400M_USB=m
+CONFIG_IEEE802154_AT86RF230=m
+CONFIG_IEEE802154_MRF24J40=m
+CONFIG_IEEE802154_CC2520=m
+CONFIG_INPUT_MOUSEDEV=y
+CONFIG_INPUT_JOYDEV=m
+CONFIG_INPUT_EVDEV=m
+# CONFIG_KEYBOARD_ATKBD is not set
+CONFIG_KEYBOARD_GPIO=m
+CONFIG_KEYBOARD_MATRIX=m
+# CONFIG_INPUT_MOUSE is not set
+CONFIG_INPUT_JOYSTICK=y
+CONFIG_JOYSTICK_IFORCE=m
+CONFIG_JOYSTICK_IFORCE_USB=m
+CONFIG_JOYSTICK_XPAD=m
+CONFIG_JOYSTICK_XPAD_FF=y
+CONFIG_JOYSTICK_XPAD_LEDS=y
+CONFIG_JOYSTICK_PSXPAD_SPI=m
+CONFIG_JOYSTICK_PSXPAD_SPI_FF=y
+CONFIG_INPUT_TOUCHSCREEN=y
+CONFIG_TOUCHSCREEN_ADS7846=m
+CONFIG_TOUCHSCREEN_EGALAX=m
+CONFIG_TOUCHSCREEN_EXC3000=m
+CONFIG_TOUCHSCREEN_GOODIX=m
+CONFIG_TOUCHSCREEN_ILI210X=m
+CONFIG_TOUCHSCREEN_EDT_FT5X06=m
+CONFIG_TOUCHSCREEN_RASPBERRYPI_FW=m
+CONFIG_TOUCHSCREEN_USB_COMPOSITE=m
+CONFIG_TOUCHSCREEN_STMPE=m
+CONFIG_INPUT_MISC=y
+CONFIG_INPUT_AD714X=m
+CONFIG_INPUT_ATI_REMOTE2=m
+CONFIG_INPUT_KEYSPAN_REMOTE=m
+CONFIG_INPUT_POWERMATE=m
+CONFIG_INPUT_YEALINK=m
+CONFIG_INPUT_CM109=m
+CONFIG_INPUT_UINPUT=m
+CONFIG_INPUT_GPIO_ROTARY_ENCODER=m
+CONFIG_INPUT_ADXL34X=m
+CONFIG_INPUT_CMA3000=m
+CONFIG_SERIO=m
+CONFIG_SERIO_RAW=m
+CONFIG_GAMEPORT=m
+CONFIG_GAMEPORT_NS558=m
+CONFIG_GAMEPORT_L4=m
+# CONFIG_LEGACY_PTYS is not set
+CONFIG_SERIAL_8250=y
+# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
+CONFIG_SERIAL_8250_CONSOLE=y
+# CONFIG_SERIAL_8250_DMA is not set
+CONFIG_SERIAL_8250_NR_UARTS=1
+CONFIG_SERIAL_8250_RUNTIME_UARTS=0
+CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_8250_BCM2835AUX=y
+CONFIG_SERIAL_OF_PLATFORM=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
+CONFIG_SERIAL_SC16IS7XX=m
+CONFIG_SERIAL_SC16IS7XX_SPI=y
+CONFIG_SERIAL_DEV_BUS=m
+CONFIG_TTY_PRINTK=y
+CONFIG_HW_RANDOM=y
+CONFIG_RAW_DRIVER=y
+CONFIG_TCG_TPM=m
+CONFIG_TCG_TIS_SPI=m
+CONFIG_I2C=y
+CONFIG_I2C_CHARDEV=m
+CONFIG_I2C_MUX=m
+CONFIG_I2C_MUX_GPMUX=m
+CONFIG_I2C_MUX_PCA954x=m
+CONFIG_I2C_BCM2835=m
+CONFIG_I2C_GPIO=m
+CONFIG_I2C_ROBOTFUZZ_OSIF=m
+CONFIG_I2C_TINY_USB=m
+CONFIG_SPI=y
+CONFIG_SPI_BCM2835=m
+CONFIG_SPI_BCM2835AUX=m
+CONFIG_SPI_GPIO=m
+CONFIG_SPI_SPIDEV=m
+CONFIG_SPI_SLAVE=y
+CONFIG_PPS=m
+CONFIG_PPS_CLIENT_LDISC=m
+CONFIG_PPS_CLIENT_GPIO=m
+CONFIG_PINCTRL_MCP23S08=m
+CONFIG_GPIO_PCA953X=m
+CONFIG_GPIO_PCF857X=m
+CONFIG_GPIO_ARIZONA=m
+CONFIG_GPIO_STMPE=y
+CONFIG_GPIO_MOCKUP=m
+CONFIG_W1=m
+CONFIG_W1_MASTER_DS2490=m
+CONFIG_W1_MASTER_DS2482=m
+CONFIG_W1_MASTER_DS1WM=m
+CONFIG_W1_MASTER_GPIO=m
+CONFIG_W1_SLAVE_THERM=m
+CONFIG_W1_SLAVE_SMEM=m
+CONFIG_W1_SLAVE_DS2408=m
+CONFIG_W1_SLAVE_DS2413=m
+CONFIG_W1_SLAVE_DS2406=m
+CONFIG_W1_SLAVE_DS2423=m
+CONFIG_W1_SLAVE_DS2431=m
+CONFIG_W1_SLAVE_DS2433=m
+CONFIG_W1_SLAVE_DS2438=m
+CONFIG_W1_SLAVE_DS2780=m
+CONFIG_W1_SLAVE_DS2781=m
+CONFIG_W1_SLAVE_DS28E04=m
+CONFIG_W1_SLAVE_DS28E17=m
+CONFIG_POWER_RESET=y
+CONFIG_POWER_RESET_GPIO=y
+CONFIG_BATTERY_DS2760=m
+CONFIG_BATTERY_MAX17040=m
+CONFIG_BATTERY_GAUGE_LTC2941=m
+CONFIG_HWMON=m
+CONFIG_SENSORS_DS1621=m
+CONFIG_SENSORS_GPIO_FAN=m
+CONFIG_SENSORS_JC42=m
+CONFIG_SENSORS_LM75=m
+CONFIG_SENSORS_RASPBERRYPI_HWMON=m
+CONFIG_SENSORS_SHT21=m
+CONFIG_SENSORS_SHT3x=m
+CONFIG_SENSORS_SHTC1=m
+CONFIG_SENSORS_INA2XX=m
+CONFIG_SENSORS_TMP102=m
+CONFIG_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
+CONFIG_BCM2835_THERMAL=y
+CONFIG_WATCHDOG=y
+CONFIG_GPIO_WATCHDOG=m
+CONFIG_BCM2835_WDT=y
+CONFIG_MFD_STMPE=y
+CONFIG_STMPE_SPI=y
+CONFIG_MFD_SYSCON=y
+CONFIG_MFD_ARIZONA_I2C=m
+CONFIG_MFD_ARIZONA_SPI=m
+CONFIG_MFD_WM5102=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED_VOLTAGE=m
+CONFIG_REGULATOR_ARIZONA_LDO1=m
+CONFIG_REGULATOR_ARIZONA_MICSUPP=m
+CONFIG_REGULATOR_GPIO=y
+CONFIG_RC_CORE=y
+CONFIG_LIRC=y
+CONFIG_RC_DECODERS=y
+CONFIG_IR_NEC_DECODER=m
+CONFIG_IR_RC5_DECODER=m
+CONFIG_IR_RC6_DECODER=m
+CONFIG_IR_JVC_DECODER=m
+CONFIG_IR_SONY_DECODER=m
+CONFIG_IR_SANYO_DECODER=m
+CONFIG_IR_SHARP_DECODER=m
+CONFIG_IR_MCE_KBD_DECODER=m
+CONFIG_IR_XMP_DECODER=m
+CONFIG_IR_IMON_DECODER=m
+CONFIG_RC_DEVICES=y
+CONFIG_RC_ATI_REMOTE=m
+CONFIG_IR_IMON=m
+CONFIG_IR_MCEUSB=m
+CONFIG_IR_REDRAT3=m
+CONFIG_IR_STREAMZAP=m
+CONFIG_IR_IGUANA=m
+CONFIG_IR_TTUSBIR=m
+CONFIG_RC_LOOPBACK=m
+CONFIG_IR_GPIO_CIR=m
+CONFIG_IR_GPIO_TX=m
+CONFIG_IR_PWM_TX=m
+CONFIG_MEDIA_SUPPORT=m
+CONFIG_MEDIA_CAMERA_SUPPORT=y
+CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
+CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
+CONFIG_MEDIA_RADIO_SUPPORT=y
+CONFIG_VIDEO_V4L2_SUBDEV_API=y
+CONFIG_MEDIA_USB_SUPPORT=y
+CONFIG_USB_VIDEO_CLASS=m
+CONFIG_USB_M5602=m
+CONFIG_USB_STV06XX=m
+CONFIG_USB_GL860=m
+CONFIG_USB_GSPCA_BENQ=m
+CONFIG_USB_GSPCA_CONEX=m
+CONFIG_USB_GSPCA_CPIA1=m
+CONFIG_USB_GSPCA_DTCS033=m
+CONFIG_USB_GSPCA_ETOMS=m
+CONFIG_USB_GSPCA_FINEPIX=m
+CONFIG_USB_GSPCA_JEILINJ=m
+CONFIG_USB_GSPCA_JL2005BCD=m
+CONFIG_USB_GSPCA_KINECT=m
+CONFIG_USB_GSPCA_KONICA=m
+CONFIG_USB_GSPCA_MARS=m
+CONFIG_USB_GSPCA_MR97310A=m
+CONFIG_USB_GSPCA_NW80X=m
+CONFIG_USB_GSPCA_OV519=m
+CONFIG_USB_GSPCA_OV534=m
+CONFIG_USB_GSPCA_OV534_9=m
+CONFIG_USB_GSPCA_PAC207=m
+CONFIG_USB_GSPCA_PAC7302=m
+CONFIG_USB_GSPCA_PAC7311=m
+CONFIG_USB_GSPCA_SE401=m
+CONFIG_USB_GSPCA_SN9C2028=m
+CONFIG_USB_GSPCA_SN9C20X=m
+CONFIG_USB_GSPCA_SONIXB=m
+CONFIG_USB_GSPCA_SONIXJ=m
+CONFIG_USB_GSPCA_SPCA500=m
+CONFIG_USB_GSPCA_SPCA501=m
+CONFIG_USB_GSPCA_SPCA505=m
+CONFIG_USB_GSPCA_SPCA506=m
+CONFIG_USB_GSPCA_SPCA508=m
+CONFIG_USB_GSPCA_SPCA561=m
+CONFIG_USB_GSPCA_SPCA1528=m
+CONFIG_USB_GSPCA_SQ905=m
+CONFIG_USB_GSPCA_SQ905C=m
+CONFIG_USB_GSPCA_SQ930X=m
+CONFIG_USB_GSPCA_STK014=m
+CONFIG_USB_GSPCA_STK1135=m
+CONFIG_USB_GSPCA_STV0680=m
+CONFIG_USB_GSPCA_SUNPLUS=m
+CONFIG_USB_GSPCA_T613=m
+CONFIG_USB_GSPCA_TOPRO=m
+CONFIG_USB_GSPCA_TV8532=m
+CONFIG_USB_GSPCA_VC032X=m
+CONFIG_USB_GSPCA_VICAM=m
+CONFIG_USB_GSPCA_XIRLINK_CIT=m
+CONFIG_USB_GSPCA_ZC3XX=m
+CONFIG_USB_PWC=m
+CONFIG_VIDEO_CPIA2=m
+CONFIG_USB_ZR364XX=m
+CONFIG_USB_STKWEBCAM=m
+CONFIG_USB_S2255=m
+CONFIG_VIDEO_USBTV=m
+CONFIG_VIDEO_PVRUSB2=m
+CONFIG_VIDEO_HDPVR=m
+CONFIG_VIDEO_USBVISION=m
+CONFIG_VIDEO_STK1160_COMMON=m
+CONFIG_VIDEO_GO7007=m
+CONFIG_VIDEO_GO7007_USB=m
+CONFIG_VIDEO_GO7007_USB_S2250_BOARD=m
+CONFIG_VIDEO_AU0828=m
+CONFIG_VIDEO_AU0828_RC=y
+CONFIG_VIDEO_CX231XX=m
+CONFIG_VIDEO_CX231XX_ALSA=m
+CONFIG_VIDEO_CX231XX_DVB=m
+CONFIG_VIDEO_TM6000=m
+CONFIG_VIDEO_TM6000_ALSA=m
+CONFIG_VIDEO_TM6000_DVB=m
+CONFIG_DVB_USB=m
+CONFIG_DVB_USB_A800=m
+CONFIG_DVB_USB_DIBUSB_MB=m
+CONFIG_DVB_USB_DIBUSB_MB_FAULTY=y
+CONFIG_DVB_USB_DIBUSB_MC=m
+CONFIG_DVB_USB_DIB0700=m
+CONFIG_DVB_USB_UMT_010=m
+CONFIG_DVB_USB_CXUSB=m
+CONFIG_DVB_USB_M920X=m
+CONFIG_DVB_USB_DIGITV=m
+CONFIG_DVB_USB_VP7045=m
+CONFIG_DVB_USB_VP702X=m
+CONFIG_DVB_USB_GP8PSK=m
+CONFIG_DVB_USB_NOVA_T_USB2=m
+CONFIG_DVB_USB_TTUSB2=m
+CONFIG_DVB_USB_DTT200U=m
+CONFIG_DVB_USB_OPERA1=m
+CONFIG_DVB_USB_AF9005=m
+CONFIG_DVB_USB_AF9005_REMOTE=m
+CONFIG_DVB_USB_PCTV452E=m
+CONFIG_DVB_USB_DW2102=m
+CONFIG_DVB_USB_CINERGY_T2=m
+CONFIG_DVB_USB_DTV5100=m
+CONFIG_DVB_USB_AZ6027=m
+CONFIG_DVB_USB_TECHNISAT_USB2=m
+CONFIG_DVB_USB_V2=m
+CONFIG_DVB_USB_AF9015=m
+CONFIG_DVB_USB_AF9035=m
+CONFIG_DVB_USB_ANYSEE=m
+CONFIG_DVB_USB_AU6610=m
+CONFIG_DVB_USB_AZ6007=m
+CONFIG_DVB_USB_CE6230=m
+CONFIG_DVB_USB_EC168=m
+CONFIG_DVB_USB_GL861=m
+CONFIG_DVB_USB_LME2510=m
+CONFIG_DVB_USB_MXL111SF=m
+CONFIG_DVB_USB_RTL28XXU=m
+CONFIG_DVB_USB_DVBSKY=m
+CONFIG_SMS_USB_DRV=m
+CONFIG_DVB_B2C2_FLEXCOP_USB=m
+CONFIG_DVB_AS102=m
+CONFIG_VIDEO_EM28XX=m
+CONFIG_VIDEO_EM28XX_V4L2=m
+CONFIG_VIDEO_EM28XX_ALSA=m
+CONFIG_VIDEO_EM28XX_DVB=m
+CONFIG_V4L_PLATFORM_DRIVERS=y
+CONFIG_RADIO_SI470X=m
+CONFIG_USB_SI470X=m
+CONFIG_I2C_SI470X=m
+CONFIG_RADIO_SI4713=m
+CONFIG_I2C_SI4713=m
+CONFIG_USB_MR800=m
+CONFIG_USB_DSBR=m
+CONFIG_RADIO_SHARK=m
+CONFIG_RADIO_SHARK2=m
+CONFIG_USB_KEENE=m
+CONFIG_USB_MA901=m
+CONFIG_RADIO_TEA5764=m
+CONFIG_RADIO_SAA7706H=m
+CONFIG_RADIO_TEF6862=m
+CONFIG_RADIO_WL1273=m
+CONFIG_RADIO_WL128X=m
+CONFIG_VIDEO_UDA1342=m
+CONFIG_VIDEO_SONY_BTF_MPX=m
+CONFIG_VIDEO_ADV7180=m
+CONFIG_VIDEO_TC358743=m
+CONFIG_VIDEO_TVP5150=m
+CONFIG_VIDEO_TW2804=m
+CONFIG_VIDEO_TW9903=m
+CONFIG_VIDEO_TW9906=m
+CONFIG_VIDEO_OV5647=m
+CONFIG_VIDEO_OV7640=m
+CONFIG_VIDEO_MT9V011=m
+CONFIG_DRM=m
+CONFIG_DRM_LOAD_EDID_FIRMWARE=y
+CONFIG_DRM_UDL=m
+CONFIG_DRM_PANEL_SIMPLE=m
+CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN=m
+CONFIG_DRM_V3D=m
+CONFIG_DRM_VC4=m
+CONFIG_TINYDRM_ILI9225=m
+CONFIG_TINYDRM_ILI9341=m
+CONFIG_TINYDRM_MI0283QT=m
+CONFIG_TINYDRM_REPAPER=m
+CONFIG_TINYDRM_ST7586=m
+CONFIG_TINYDRM_ST7735R=m
+CONFIG_FB=y
+CONFIG_FB_UDL=m
+CONFIG_FB_SIMPLE=y
+CONFIG_FB_SSD1307=m
+# CONFIG_BACKLIGHT_GENERIC is not set
+CONFIG_BACKLIGHT_GPIO=m
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
+CONFIG_LOGO=y
+# CONFIG_LOGO_LINUX_MONO is not set
+# CONFIG_LOGO_LINUX_VGA16 is not set
+CONFIG_SOUND=y
+CONFIG_SND=m
+CONFIG_SND_HRTIMER=m
+CONFIG_SND_SEQUENCER=m
+CONFIG_SND_SEQ_DUMMY=m
+CONFIG_SND_DUMMY=m
+CONFIG_SND_ALOOP=m
+CONFIG_SND_VIRMIDI=m
+CONFIG_SND_MTPAV=m
+CONFIG_SND_SERIAL_U16550=m
+CONFIG_SND_MPU401=m
+CONFIG_SND_USB_AUDIO=m
+CONFIG_SND_USB_UA101=m
+CONFIG_SND_USB_CAIAQ=m
+CONFIG_SND_USB_CAIAQ_INPUT=y
+CONFIG_SND_USB_6FIRE=m
+CONFIG_SND_USB_HIFACE=m
+CONFIG_SND_SOC=m
+CONFIG_SND_BCM2835_SOC_I2S=m
+CONFIG_SND_SOC_ADAU1701=m
+CONFIG_SND_SOC_ADAU7002=m
+CONFIG_SND_SOC_AK4554=m
+CONFIG_SND_SOC_CS4265=m
+CONFIG_SND_SOC_CS4271_I2C=m
+CONFIG_SND_SOC_SPDIF=m
+CONFIG_SND_SOC_WM8804_I2C=m
+CONFIG_SND_SIMPLE_CARD=m
+CONFIG_HID_BATTERY_STRENGTH=y
+CONFIG_HIDRAW=y
+CONFIG_UHID=m
+CONFIG_HID_A4TECH=m
+CONFIG_HID_ACRUX=m
+CONFIG_HID_APPLE=m
+CONFIG_HID_ASUS=m
+CONFIG_HID_BELKIN=m
+CONFIG_HID_BETOP_FF=m
+CONFIG_HID_BIGBEN_FF=m
+CONFIG_HID_CHERRY=m
+CONFIG_HID_CHICONY=m
+CONFIG_HID_CYPRESS=m
+CONFIG_HID_DRAGONRISE=m
+CONFIG_HID_EMS_FF=m
+CONFIG_HID_ELECOM=m
+CONFIG_HID_ELO=m
+CONFIG_HID_EZKEY=m
+CONFIG_HID_GEMBIRD=m
+CONFIG_HID_HOLTEK=m
+CONFIG_HID_KEYTOUCH=m
+CONFIG_HID_KYE=m
+CONFIG_HID_UCLOGIC=m
+CONFIG_HID_WALTOP=m
+CONFIG_HID_GYRATION=m
+CONFIG_HID_TWINHAN=m
+CONFIG_HID_KENSINGTON=m
+CONFIG_HID_LCPOWER=m
+CONFIG_HID_LOGITECH=m
+CONFIG_HID_LOGITECH_DJ=m
+CONFIG_LOGITECH_FF=y
+CONFIG_LOGIRUMBLEPAD2_FF=y
+CONFIG_LOGIG940_FF=y
+CONFIG_HID_MAGICMOUSE=m
+CONFIG_HID_MICROSOFT=m
+CONFIG_HID_MONTEREY=m
+CONFIG_HID_MULTITOUCH=m
+CONFIG_HID_NTRIG=m
+CONFIG_HID_ORTEK=m
+CONFIG_HID_PANTHERLORD=m
+CONFIG_HID_PETALYNX=m
+CONFIG_HID_PICOLCD=m
+CONFIG_HID_ROCCAT=m
+CONFIG_HID_SAMSUNG=m
+CONFIG_HID_SONY=m
+CONFIG_SONY_FF=y
+CONFIG_HID_SPEEDLINK=m
+CONFIG_HID_SUNPLUS=m
+CONFIG_HID_GREENASIA=m
+CONFIG_HID_SMARTJOYPLUS=m
+CONFIG_HID_TOPSEED=m
+CONFIG_HID_THINGM=m
+CONFIG_HID_THRUSTMASTER=m
+CONFIG_HID_WACOM=m
+CONFIG_HID_WIIMOTE=m
+CONFIG_HID_XINMO=m
+CONFIG_HID_ZEROPLUS=m
+CONFIG_HID_ZYDACRON=m
+CONFIG_HID_PID=y
+CONFIG_USB_HIDDEV=y
+CONFIG_USB=y
+CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
+CONFIG_USB_MON=m
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_PLATFORM=y
+CONFIG_USB_PRINTER=m
+CONFIG_USB_TMC=m
+CONFIG_USB_STORAGE=y
+CONFIG_USB_STORAGE_REALTEK=m
+CONFIG_USB_STORAGE_DATAFAB=m
+CONFIG_USB_STORAGE_FREECOM=m
+CONFIG_USB_STORAGE_ISD200=m
+CONFIG_USB_STORAGE_USBAT=m
+CONFIG_USB_STORAGE_SDDR09=m
+CONFIG_USB_STORAGE_SDDR55=m
+CONFIG_USB_STORAGE_JUMPSHOT=m
+CONFIG_USB_STORAGE_ALAUDA=m
+CONFIG_USB_STORAGE_ONETOUCH=m
+CONFIG_USB_STORAGE_KARMA=m
+CONFIG_USB_STORAGE_CYPRESS_ATACB=m
+CONFIG_USB_STORAGE_ENE_UB6250=m
+CONFIG_USB_UAS=y
+CONFIG_USB_MDC800=m
+CONFIG_USB_MICROTEK=m
+CONFIG_USBIP_CORE=m
+CONFIG_USBIP_VHCI_HCD=m
+CONFIG_USBIP_HOST=m
+CONFIG_USBIP_VUDC=m
+CONFIG_USB_DWC2=m
+CONFIG_USB_SERIAL=m
+CONFIG_USB_SERIAL_GENERIC=y
+CONFIG_USB_SERIAL_AIRCABLE=m
+CONFIG_USB_SERIAL_ARK3116=m
+CONFIG_USB_SERIAL_BELKIN=m
+CONFIG_USB_SERIAL_CH341=m
+CONFIG_USB_SERIAL_WHITEHEAT=m
+CONFIG_USB_SERIAL_DIGI_ACCELEPORT=m
+CONFIG_USB_SERIAL_CP210X=m
+CONFIG_USB_SERIAL_CYPRESS_M8=m
+CONFIG_USB_SERIAL_EMPEG=m
+CONFIG_USB_SERIAL_FTDI_SIO=m
+CONFIG_USB_SERIAL_VISOR=m
+CONFIG_USB_SERIAL_IPAQ=m
+CONFIG_USB_SERIAL_IR=m
+CONFIG_USB_SERIAL_EDGEPORT=m
+CONFIG_USB_SERIAL_EDGEPORT_TI=m
+CONFIG_USB_SERIAL_F81232=m
+CONFIG_USB_SERIAL_GARMIN=m
+CONFIG_USB_SERIAL_IPW=m
+CONFIG_USB_SERIAL_IUU=m
+CONFIG_USB_SERIAL_KEYSPAN_PDA=m
+CONFIG_USB_SERIAL_KEYSPAN=m
+CONFIG_USB_SERIAL_KLSI=m
+CONFIG_USB_SERIAL_KOBIL_SCT=m
+CONFIG_USB_SERIAL_MCT_U232=m
+CONFIG_USB_SERIAL_METRO=m
+CONFIG_USB_SERIAL_MOS7720=m
+CONFIG_USB_SERIAL_MOS7840=m
+CONFIG_USB_SERIAL_NAVMAN=m
+CONFIG_USB_SERIAL_PL2303=m
+CONFIG_USB_SERIAL_OTI6858=m
+CONFIG_USB_SERIAL_QCAUX=m
+CONFIG_USB_SERIAL_QUALCOMM=m
+CONFIG_USB_SERIAL_SPCP8X5=m
+CONFIG_USB_SERIAL_SAFE=m
+CONFIG_USB_SERIAL_SIERRAWIRELESS=m
+CONFIG_USB_SERIAL_SYMBOL=m
+CONFIG_USB_SERIAL_TI=m
+CONFIG_USB_SERIAL_CYBERJACK=m
+CONFIG_USB_SERIAL_XIRCOM=m
+CONFIG_USB_SERIAL_OPTION=m
+CONFIG_USB_SERIAL_OMNINET=m
+CONFIG_USB_SERIAL_OPTICON=m
+CONFIG_USB_SERIAL_XSENS_MT=m
+CONFIG_USB_SERIAL_WISHBONE=m
+CONFIG_USB_SERIAL_SSU100=m
+CONFIG_USB_SERIAL_QT2=m
+CONFIG_USB_SERIAL_DEBUG=m
+CONFIG_USB_EMI62=m
+CONFIG_USB_EMI26=m
+CONFIG_USB_ADUTUX=m
+CONFIG_USB_SEVSEG=m
+CONFIG_USB_LEGOTOWER=m
+CONFIG_USB_LCD=m
+CONFIG_USB_CYPRESS_CY7C63=m
+CONFIG_USB_CYTHERM=m
+CONFIG_USB_IDMOUSE=m
+CONFIG_USB_FTDI_ELAN=m
+CONFIG_USB_APPLEDISPLAY=m
+CONFIG_USB_LD=m
+CONFIG_USB_TRANCEVIBRATOR=m
+CONFIG_USB_IOWARRIOR=m
+CONFIG_USB_TEST=m
+CONFIG_USB_ISIGHTFW=m
+CONFIG_USB_YUREX=m
+CONFIG_USB_ATM=m
+CONFIG_USB_SPEEDTOUCH=m
+CONFIG_USB_CXACRU=m
+CONFIG_USB_UEAGLEATM=m
+CONFIG_USB_XUSBATM=m
+CONFIG_USB_GADGET=m
+CONFIG_USB_CONFIGFS=m
+CONFIG_USB_CONFIGFS_SERIAL=y
+CONFIG_USB_CONFIGFS_ACM=y
+CONFIG_USB_CONFIGFS_OBEX=y
+CONFIG_USB_CONFIGFS_NCM=y
+CONFIG_USB_CONFIGFS_ECM=y
+CONFIG_USB_CONFIGFS_ECM_SUBSET=y
+CONFIG_USB_CONFIGFS_RNDIS=y
+CONFIG_USB_CONFIGFS_EEM=y
+CONFIG_USB_CONFIGFS_MASS_STORAGE=y
+CONFIG_USB_CONFIGFS_F_LB_SS=y
+CONFIG_USB_CONFIGFS_F_FS=y
+CONFIG_USB_CONFIGFS_F_UAC1=y
+CONFIG_USB_CONFIGFS_F_UAC2=y
+CONFIG_USB_CONFIGFS_F_MIDI=y
+CONFIG_USB_CONFIGFS_F_HID=y
+CONFIG_USB_CONFIGFS_F_UVC=y
+CONFIG_USB_CONFIGFS_F_PRINTER=y
+CONFIG_USB_ZERO=m
+CONFIG_USB_AUDIO=m
+CONFIG_USB_ETH=m
+CONFIG_USB_GADGETFS=m
+CONFIG_USB_MASS_STORAGE=m
+CONFIG_USB_G_SERIAL=m
+CONFIG_USB_MIDI_GADGET=m
+CONFIG_USB_G_PRINTER=m
+CONFIG_USB_CDC_COMPOSITE=m
+CONFIG_USB_G_ACM_MS=m
+CONFIG_USB_G_MULTI=m
+CONFIG_USB_G_HID=m
+CONFIG_USB_G_WEBCAM=m
+CONFIG_MMC=y
+CONFIG_MMC_BLOCK_MINORS=32
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_IPROC=y
+CONFIG_MMC_SPI=m
+CONFIG_MMC_BCM2835=m
+CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_PCA9532=m
+CONFIG_LEDS_GPIO=y
+CONFIG_LEDS_PCA955X=m
+CONFIG_LEDS_PCA963X=m
+CONFIG_LEDS_IS31FL32XX=m
+CONFIG_LEDS_TRIGGER_TIMER=y
+CONFIG_LEDS_TRIGGER_ONESHOT=y
+CONFIG_LEDS_TRIGGER_HEARTBEAT=y
+CONFIG_LEDS_TRIGGER_BACKLIGHT=y
+CONFIG_LEDS_TRIGGER_CPU=y
+CONFIG_LEDS_TRIGGER_GPIO=y
+CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
+CONFIG_LEDS_TRIGGER_TRANSIENT=m
+CONFIG_LEDS_TRIGGER_CAMERA=m
+CONFIG_LEDS_TRIGGER_PANIC=y
+CONFIG_LEDS_TRIGGER_NETDEV=m
+CONFIG_RTC_CLASS=y
+# CONFIG_RTC_HCTOSYS is not set
+CONFIG_RTC_DRV_ABX80X=m
+CONFIG_RTC_DRV_DS1307=m
+CONFIG_RTC_DRV_DS1374=m
+CONFIG_RTC_DRV_DS1672=m
+CONFIG_RTC_DRV_MAX6900=m
+CONFIG_RTC_DRV_RS5C372=m
+CONFIG_RTC_DRV_ISL1208=m
+CONFIG_RTC_DRV_ISL12022=m
+CONFIG_RTC_DRV_X1205=m
+CONFIG_RTC_DRV_PCF8523=m
+CONFIG_RTC_DRV_PCF8563=m
+CONFIG_RTC_DRV_PCF8583=m
+CONFIG_RTC_DRV_M41T80=m
+CONFIG_RTC_DRV_BQ32K=m
+CONFIG_RTC_DRV_S35390A=m
+CONFIG_RTC_DRV_FM3130=m
+CONFIG_RTC_DRV_RX8581=m
+CONFIG_RTC_DRV_RX8025=m
+CONFIG_RTC_DRV_EM3027=m
+CONFIG_RTC_DRV_RV3028=m
+CONFIG_RTC_DRV_M41T93=m
+CONFIG_RTC_DRV_M41T94=m
+CONFIG_RTC_DRV_DS1302=m
+CONFIG_RTC_DRV_DS1305=m
+CONFIG_RTC_DRV_DS1390=m
+CONFIG_RTC_DRV_R9701=m
+CONFIG_RTC_DRV_RX4581=m
+CONFIG_RTC_DRV_RS5C348=m
+CONFIG_RTC_DRV_MAX6902=m
+CONFIG_RTC_DRV_PCF2123=m
+CONFIG_RTC_DRV_DS3232=m
+CONFIG_RTC_DRV_PCF2127=m
+CONFIG_RTC_DRV_RV3029C2=m
+CONFIG_DMADEVICES=y
+CONFIG_DMA_BCM2835=y
+CONFIG_AUXDISPLAY=y
+CONFIG_HD44780=m
+CONFIG_UIO=m
+CONFIG_UIO_PDRV_GENIRQ=m
+CONFIG_STAGING=y
+CONFIG_PRISM2_USB=m
+CONFIG_R8712U=m
+CONFIG_R8188EU=m
+CONFIG_VT6656=m
+CONFIG_SPEAKUP=m
+CONFIG_SPEAKUP_SYNTH_SOFT=m
+CONFIG_STAGING_MEDIA=y
+CONFIG_FB_TFT=m
+CONFIG_FB_TFT_AGM1264K_FL=m
+CONFIG_FB_TFT_BD663474=m
+CONFIG_FB_TFT_HX8340BN=m
+CONFIG_FB_TFT_HX8347D=m
+CONFIG_FB_TFT_HX8353D=m
+CONFIG_FB_TFT_HX8357D=m
+CONFIG_FB_TFT_ILI9163=m
+CONFIG_FB_TFT_ILI9320=m
+CONFIG_FB_TFT_ILI9325=m
+CONFIG_FB_TFT_ILI9340=m
+CONFIG_FB_TFT_ILI9341=m
+CONFIG_FB_TFT_ILI9481=m
+CONFIG_FB_TFT_ILI9486=m
+CONFIG_FB_TFT_PCD8544=m
+CONFIG_FB_TFT_RA8875=m
+CONFIG_FB_TFT_S6D02A1=m
+CONFIG_FB_TFT_S6D1121=m
+CONFIG_FB_TFT_SH1106=m
+CONFIG_FB_TFT_SSD1289=m
+CONFIG_FB_TFT_SSD1306=m
+CONFIG_FB_TFT_SSD1331=m
+CONFIG_FB_TFT_SSD1351=m
+CONFIG_FB_TFT_ST7735R=m
+CONFIG_FB_TFT_ST7789V=m
+CONFIG_FB_TFT_TINYLCD=m
+CONFIG_FB_TFT_TLS8204=m
+CONFIG_FB_TFT_UC1701=m
+CONFIG_FB_TFT_UPD161704=m
+CONFIG_FB_TFT_WATTEROTT=m
+CONFIG_BCM2835_VCHIQ=y
+CONFIG_SND_BCM2835=m
+CONFIG_VIDEO_BCM2835=m
+CONFIG_CLK_RASPBERRYPI=y
+CONFIG_MAILBOX=y
+CONFIG_BCM2835_MBOX=y
+# CONFIG_IOMMU_SUPPORT is not set
+CONFIG_RASPBERRYPI_POWER=y
+CONFIG_EXTCON=m
+CONFIG_EXTCON_ARIZONA=m
+CONFIG_IIO=m
+CONFIG_IIO_BUFFER_CB=m
+CONFIG_MCP320X=m
+CONFIG_MCP3422=m
+CONFIG_TI_ADS1015=m
+CONFIG_DHT11=m
+CONFIG_HDC100X=m
+CONFIG_HTU21=m
+CONFIG_INV_MPU6050_I2C=m
+CONFIG_TSL4531=m
+CONFIG_VEML6070=m
+CONFIG_BMP280=m
+CONFIG_PWM_BCM2835=m
+CONFIG_PWM_PCA9685=m
+CONFIG_GENERIC_PHY=y
+CONFIG_EXT4_FS=y
+CONFIG_EXT4_FS_POSIX_ACL=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_REISERFS_FS=m
+CONFIG_REISERFS_FS_XATTR=y
+CONFIG_REISERFS_FS_POSIX_ACL=y
+CONFIG_REISERFS_FS_SECURITY=y
+CONFIG_JFS_FS=m
+CONFIG_JFS_POSIX_ACL=y
+CONFIG_JFS_SECURITY=y
+CONFIG_JFS_STATISTICS=y
+CONFIG_XFS_FS=m
+CONFIG_XFS_QUOTA=y
+CONFIG_XFS_POSIX_ACL=y
+CONFIG_XFS_RT=y
+CONFIG_GFS2_FS=m
+CONFIG_OCFS2_FS=m
+CONFIG_BTRFS_FS=m
+CONFIG_BTRFS_FS_POSIX_ACL=y
+CONFIG_NILFS2_FS=m
+CONFIG_F2FS_FS=y
+CONFIG_FANOTIFY=y
+CONFIG_QFMT_V1=m
+CONFIG_QFMT_V2=m
+CONFIG_AUTOFS4_FS=y
+CONFIG_FUSE_FS=m
+CONFIG_CUSE=m
+CONFIG_OVERLAY_FS=m
+CONFIG_FSCACHE=y
+CONFIG_FSCACHE_STATS=y
+CONFIG_FSCACHE_HISTOGRAM=y
+CONFIG_CACHEFILES=y
+CONFIG_ISO9660_FS=m
+CONFIG_JOLIET=y
+CONFIG_ZISOFS=y
+CONFIG_UDF_FS=m
+CONFIG_MSDOS_FS=y
+CONFIG_VFAT_FS=y
+CONFIG_FAT_DEFAULT_IOCHARSET="ascii"
+CONFIG_NTFS_FS=m
+CONFIG_NTFS_RW=y
+CONFIG_TMPFS=y
+CONFIG_TMPFS_POSIX_ACL=y
+CONFIG_ECRYPT_FS=m
+CONFIG_HFS_FS=m
+CONFIG_HFSPLUS_FS=m
+CONFIG_JFFS2_FS=m
+CONFIG_JFFS2_SUMMARY=y
+CONFIG_UBIFS_FS=m
+CONFIG_SQUASHFS=m
+CONFIG_SQUASHFS_XATTR=y
+CONFIG_SQUASHFS_LZO=y
+CONFIG_SQUASHFS_XZ=y
+CONFIG_NFS_FS=y
+CONFIG_NFS_V3_ACL=y
+CONFIG_NFS_V4=y
+CONFIG_NFS_SWAP=y
+CONFIG_NFS_V4_1=y
+CONFIG_ROOT_NFS=y
+CONFIG_NFS_FSCACHE=y
+CONFIG_NFSD=m
+CONFIG_NFSD_V3_ACL=y
+CONFIG_NFSD_V4=y
+CONFIG_CIFS=m
+CONFIG_CIFS_WEAK_PW_HASH=y
+CONFIG_CIFS_UPCALL=y
+CONFIG_CIFS_XATTR=y
+CONFIG_CIFS_POSIX=y
+CONFIG_CIFS_DFS_UPCALL=y
+CONFIG_CIFS_FSCACHE=y
+CONFIG_9P_FS=m
+CONFIG_9P_FS_POSIX_ACL=y
+CONFIG_NLS_DEFAULT="utf8"
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_CODEPAGE_737=m
+CONFIG_NLS_CODEPAGE_775=m
+CONFIG_NLS_CODEPAGE_850=m
+CONFIG_NLS_CODEPAGE_852=m
+CONFIG_NLS_CODEPAGE_855=m
+CONFIG_NLS_CODEPAGE_857=m
+CONFIG_NLS_CODEPAGE_860=m
+CONFIG_NLS_CODEPAGE_861=m
+CONFIG_NLS_CODEPAGE_862=m
+CONFIG_NLS_CODEPAGE_863=m
+CONFIG_NLS_CODEPAGE_864=m
+CONFIG_NLS_CODEPAGE_865=m
+CONFIG_NLS_CODEPAGE_866=m
+CONFIG_NLS_CODEPAGE_869=m
+CONFIG_NLS_CODEPAGE_936=m
+CONFIG_NLS_CODEPAGE_950=m
+CONFIG_NLS_CODEPAGE_932=m
+CONFIG_NLS_CODEPAGE_949=m
+CONFIG_NLS_CODEPAGE_874=m
+CONFIG_NLS_ISO8859_8=m
+CONFIG_NLS_CODEPAGE_1250=m
+CONFIG_NLS_CODEPAGE_1251=m
+CONFIG_NLS_ASCII=y
+CONFIG_NLS_ISO8859_1=m
+CONFIG_NLS_ISO8859_2=m
+CONFIG_NLS_ISO8859_3=m
+CONFIG_NLS_ISO8859_4=m
+CONFIG_NLS_ISO8859_5=m
+CONFIG_NLS_ISO8859_6=m
+CONFIG_NLS_ISO8859_7=m
+CONFIG_NLS_ISO8859_9=m
+CONFIG_NLS_ISO8859_13=m
+CONFIG_NLS_ISO8859_14=m
+CONFIG_NLS_ISO8859_15=m
+CONFIG_NLS_KOI8_R=m
+CONFIG_NLS_KOI8_U=m
+CONFIG_DLM=m
+CONFIG_CRYPTO_USER=m
+CONFIG_CRYPTO_CBC=y
+CONFIG_CRYPTO_CTS=m
+CONFIG_CRYPTO_XTS=m
+CONFIG_CRYPTO_XCBC=m
+CONFIG_CRYPTO_TGR192=m
+CONFIG_CRYPTO_WP512=m
+CONFIG_CRYPTO_CAST5=m
+CONFIG_CRYPTO_DES=y
+CONFIG_CRYPTO_LZ4=m
+CONFIG_CRYPTO_USER_API_SKCIPHER=m
+# CONFIG_CRYPTO_HW is not set
+CONFIG_CRC_ITU_T=y
+CONFIG_LIBCRC32C=y
+CONFIG_DMA_CMA=y
+CONFIG_CMA_SIZE_MBYTES=5
+CONFIG_PRINTK_TIME=y
+CONFIG_BOOT_PRINTK_DELAY=y
+CONFIG_KGDB=y
+CONFIG_KGDB_KDB=y
+CONFIG_KDB_KEYBOARD=y
+CONFIG_DEBUG_MEMORY_INIT=y
+CONFIG_DETECT_HUNG_TASK=y
+# CONFIG_RCU_TRACE is not set
+CONFIG_LATENCYTOP=y
+CONFIG_IRQSOFF_TRACER=y
+CONFIG_SCHED_TRACER=y
+CONFIG_STACK_TRACER=y
+CONFIG_BLK_DEV_IO_TRACE=y
+# CONFIG_UPROBE_EVENTS is not set
+CONFIG_FUNCTION_PROFILER=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
