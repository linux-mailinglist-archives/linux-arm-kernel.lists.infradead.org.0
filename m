Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CAB647DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RIeYlzLb22u6yZs2qAnhQsIgmqiDxkFkVGXDhiS3Fg=; b=YbtRwqLFq9CvLe
	P02eFNopREOzb8bykvaTQ8nm9IdYn1pkBZM/AdjPnDY23qAJE24tnoTkC1uDyYc75UTJFx9EUmnQZ
	i2eW+kjZ0Ol/eCRE88a5cIni4TFcitr3pzLWo3Qe6cY9ENRbZ8v9aPds0GqnPHPpeF9OWxAm4vdKA
	13Vd8TI46yHhl2ZYoETFNAOr2ncpsWsSL4xSH3jIRT4r90hPbUil7InDzP88vGkEUHCw+yIBnJkP7
	JeL6PIKeugqec04hU8SZFIvTjXxF71GoLsBQeVYJ8c12yT55Kjsnjh2bwwo4dlmva9qWnd0eN6eMf
	1HmPr2kW1uyrc8s5ALnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDMH-0006Yw-KJ; Wed, 10 Jul 2019 14:14:09 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDLm-0006Lp-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:13:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CF2FA21E90;
 Wed, 10 Jul 2019 10:13:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:13:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=hDCc+1B/fxMD3
 q+Aooe1cCSSiOOVd979O3SjKxe+eqc=; b=DJHF3jnfwrDLGRoAOxBtdH+ISOvzN
 LtFGsjxbuR62itA/K+/CHnM9P1yrE2HiRQnPNHJ+e1t2BHVxQhGLuODss69UTooz
 tTbWj7DknJt+onihjFeZWFYYHVqgxaVtAXoF/vUWZwaAGKJk2Sr/KuX5H9lpfPx3
 IWWostGX0jGPnWskBEgdl1Wz9Qjw3fBJZ5xuyIOJ/1rq+UHLAVcIqnb9buwp9S5/
 QT2VlcuH8AqF1VycXIqglbFIvJO3iRu7QXBqFyFYijeOtYJ9odL4Sh8umxOf6/3Z
 PRcKfmKf60DpNiMH3ePd59iI+YGyAVrV8okZrIZEYAGISoqMo4fsGEz+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=hDCc+1B/fxMD3q+Aooe1cCSSiOOVd979O3SjKxe+eqc=; b=QPsSNazK
 NGqI9lDFyzjZF0qDcERrQvjxltVuvc0ZLBk1yKcX0GltvN3w/YBEn69TBS4niauk
 MRJAConv2iR8qSeGn7ajL/SxJujan7Z1IFXbf2GKW05ngGiUlmL1XNF+RrsPYFKr
 Ec7zx18gcLiG6NUI3i7MhTibZLYOH9gnBuQR4KwpOEIhjEEN6T32AWsSLqxDF1ws
 WD309tChQhHdEArTp06qUJW5OLTNZD/yHgalCBh+56q8CLGbMCHbHCR2uVQ+KU+O
 +9VLuhEq184FuEeyBDL6kOCZ7n+eSiPa8cUBi4zgVFan5XoOObw00Sb8yY2qXhdC
 GK7zBb1DnCtZfA==
X-ME-Sender: <xms:kfIlXY7TEhb9AuA3PH-xihyNo5yGdzrh1tWoYXUuyZz1wnhrFTRhCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:kfIlXeKcIhzJeYGEpggymKcGKf2wxH3EQk0gnmVX0BW3tX22mUbC-Q>
 <xmx:kfIlXSfFsnHzaTuHc5gtHaVNHdg_lXNT_j59vhW4yAzfbtfQaP0onQ>
 <xmx:kfIlXRcFMqcNwcPzVvquVymUV35STPjNc_iSW9tk7tqOVMGyZeJY1g>
 <xmx:kfIlXWKSnme4ttiwmlfJ1rg5gbeqBqLvHOjEMX7AXkzsqOdzjR99XA>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id CC4EB380076;
 Wed, 10 Jul 2019 10:13:34 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 1/3] ARM: config: aspeed-g5: Refresh on 5.2
Date: Wed, 10 Jul 2019 23:43:23 +0930
Message-Id: <20190710141325.20888-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141325.20888-1-andrew@aj.id.au>
References: <20190710141325.20888-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071338_674627_D31D6C65 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Andrew Jeffery <andrew@aj.id.au>, ryanchen.aspeed@gmail.com, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

$ make aspeed_g5_defconfig &&
         make savedefconfig &&
         mv defconfig arch/arm/configs/aspeed_g5_defconfig

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 54 ++++++++++++----------------
 1 file changed, 22 insertions(+), 32 deletions(-)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 407ffb7655a8..249eeeb55d59 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -20,29 +20,28 @@ CONFIG_PERF_EVENTS=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_SLAB=y
 CONFIG_SLAB_FREELIST_RANDOM=y
-CONFIG_JUMP_LABEL=y
-CONFIG_STRICT_KERNEL_RWX=y
-CONFIG_GCC_PLUGINS=y
-# CONFIG_BLK_DEV_BSG is not set
-# CONFIG_BLK_DEBUG_FS is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_MQ_IOSCHED_DEADLINE is not set
-# CONFIG_MQ_IOSCHED_KYBER is not set
 CONFIG_ARCH_MULTI_V6=y
 # CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_ASPEED=y
 CONFIG_MACH_ASPEED_G5=y
 # CONFIG_CACHE_L2X0 is not set
 CONFIG_VMSPLIT_2G=y
-# CONFIG_COMPACTION is not set
 CONFIG_UACCESS_WITH_MEMCPY=y
 CONFIG_SECCOMP=y
 # CONFIG_ATAGS is not set
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_KEXEC=y
-# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 # CONFIG_SUSPEND is not set
+CONFIG_FIRMWARE_MEMMAP=y
+CONFIG_JUMP_LABEL=y
+CONFIG_STRICT_KERNEL_RWX=y
+# CONFIG_BLK_DEV_BSG is not set
+# CONFIG_BLK_DEBUG_FS is not set
+# CONFIG_MQ_IOSCHED_DEADLINE is not set
+# CONFIG_MQ_IOSCHED_KYBER is not set
+# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
+# CONFIG_COMPACTION is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_PACKET_DIAG=y
@@ -51,20 +50,12 @@ CONFIG_UNIX_DIAG=y
 CONFIG_INET=y
 CONFIG_IP_MULTICAST=y
 CONFIG_SYN_COOKIES=y
-# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET_XFRM_MODE_BEET is not set
 # CONFIG_INET_DIAG is not set
-# CONFIG_INET6_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET6_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET6_XFRM_MODE_BEET is not set
 CONFIG_NETFILTER=y
 # CONFIG_NETFILTER_ADVANCED is not set
 CONFIG_VLAN_8021Q=y
 CONFIG_NET_NCSI=y
-CONFIG_BPF_STREAM_PARSER=y
 # CONFIG_WIRELESS is not set
-CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_PREVENT_FIRMWARE_BUILD is not set
@@ -78,8 +69,6 @@ CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
 CONFIG_MTD_UBI_BLOCK=y
 CONFIG_BLK_DEV_LOOP=y
-CONFIG_ASPEED_LPC_CTRL=y
-CONFIG_ASPEED_LPC_SNOOP=y
 CONFIG_EEPROM_AT24=y
 CONFIG_NETDEVICES=y
 CONFIG_NETCONSOLE=y
@@ -209,6 +198,8 @@ CONFIG_RTC_DRV_PCF8523=y
 CONFIG_RTC_DRV_RV8803=y
 # CONFIG_VIRTIO_MENU is not set
 # CONFIG_IOMMU_SUPPORT is not set
+CONFIG_ASPEED_LPC_CTRL=y
+CONFIG_ASPEED_LPC_SNOOP=y
 CONFIG_IIO=y
 CONFIG_ASPEED_ADC=y
 CONFIG_MAX1363=y
@@ -219,7 +210,6 @@ CONFIG_FSI_MASTER_HUB=y
 CONFIG_FSI_MASTER_AST_CF=y
 CONFIG_FSI_SCOM=y
 CONFIG_FSI_SBEFIFO=y
-CONFIG_FIRMWARE_MEMMAP=y
 CONFIG_FANOTIFY=y
 CONFIG_OVERLAY_FS=y
 CONFIG_TMPFS=y
@@ -232,6 +222,17 @@ CONFIG_SQUASHFS=y
 CONFIG_SQUASHFS_XZ=y
 CONFIG_SQUASHFS_ZSTD=y
 # CONFIG_NETWORK_FILESYSTEMS is not set
+CONFIG_HARDENED_USERCOPY=y
+CONFIG_FORTIFY_SOURCE=y
+# CONFIG_CRYPTO_ECHAINIV is not set
+CONFIG_CRYPTO_HMAC=y
+CONFIG_CRYPTO_SHA256=y
+CONFIG_CRYPTO_USER_API_HASH=y
+# CONFIG_CRYPTO_HW is not set
+# CONFIG_XZ_DEC_X86 is not set
+# CONFIG_XZ_DEC_POWERPC is not set
+# CONFIG_XZ_DEC_IA64 is not set
+# CONFIG_XZ_DEC_SPARC is not set
 CONFIG_PRINTK_TIME=y
 CONFIG_DYNAMIC_DEBUG=y
 CONFIG_DEBUG_INFO=y
@@ -250,14 +251,3 @@ CONFIG_FUNCTION_TRACER=y
 # CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_DEBUG_WX=y
 CONFIG_DEBUG_USER=y
-CONFIG_HARDENED_USERCOPY=y
-CONFIG_FORTIFY_SOURCE=y
-# CONFIG_CRYPTO_ECHAINIV is not set
-CONFIG_CRYPTO_HMAC=y
-CONFIG_CRYPTO_SHA256=y
-CONFIG_CRYPTO_USER_API_HASH=y
-# CONFIG_CRYPTO_HW is not set
-# CONFIG_XZ_DEC_X86 is not set
-# CONFIG_XZ_DEC_POWERPC is not set
-# CONFIG_XZ_DEC_IA64 is not set
-# CONFIG_XZ_DEC_SPARC is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
