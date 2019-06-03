Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC89C32ACE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iV0uZbOEW54DylmX/n0Vgi28ETO6NTs9bvow3kK6hhw=; b=pj31EuxTVjvH2/+Kr4aDBqBAt7
	K3U8sZMb5Sk62tNFcvKa7PDDpzTxFtC7Ki69OJtOHKB8bPJajhpLzX+6jwk/XqA35rhQAzLYSukVR
	Lc72dyfJZaVurp5pGzqhkn+8XwJhW2BmNmtaJCbAnUdztmAqPepL6CRs0+wde2kYaq1G6Jr0VKIpL
	hNsDiVwPNqTbf7QoJIWtH4ZZbwe0DM+JPjW2R/+rBI6Ebn5IYTvU74AHNATt1wpXHqinNDO4P71ib
	fwCYUm3rsr1YJfaKWdJPjstDMFSQldgX98vl6+5J38ME5G6uclMupeJ6gT8exig33VJLNrskUJuEe
	xndUJYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiKo-0004fO-2e; Mon, 03 Jun 2019 08:28:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiKV-0004XK-KW
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:28:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C1C8B1A03A4;
 Mon,  3 Jun 2019 10:28:28 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 200A31A03C4;
 Mon,  3 Jun 2019 10:28:22 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DEBEA402DD;
 Mon,  3 Jun 2019 16:28:13 +0800 (SGT)
From: peng.fan@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, jassisinghbrar@gmail.com,
 sudeep.holla@arm.com, f.fainelli@gmail.com
Subject: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC mailbox
Date: Mon,  3 Jun 2019 16:30:04 +0800
Message-Id: <20190603083005.4304-2-peng.fan@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603083005.4304-1-peng.fan@nxp.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_012831_952753_1C9F456F 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 shawnguo@kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, andre.przywara@arm.com, van.freenix@gmail.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The ARM SMC mailbox binding describes a firmware interface to trigger
actions in software layers running in the EL2 or EL3 exception levels.
The term "ARM" here relates to the SMC instruction as part of the ARM
instruction set, not as a standard endorsed by ARM Ltd.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
Introduce interrupts as a property.

V1:
arm,func-ids is still kept as an optional property, because there is no
defined SMC funciton id passed from SCMI. So in my test, I still use
arm,func-ids for ARM SIP service.

 .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
new file mode 100644
index 000000000000..401887118c09
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
@@ -0,0 +1,101 @@
+ARM SMC Mailbox Interface
+=========================
+
+This mailbox uses the ARM smc (secure monitor call) instruction to trigger
+a mailbox-connected activity in firmware, executing on the very same core
+as the caller. By nature this operation is synchronous and this mailbox
+provides no way for asynchronous messages to be delivered the other way
+round, from firmware to the OS, but asynchronous notification could also
+be supported. However the value of r0/w0/x0 the firmware returns after
+the smc call is delivered as a received message to the mailbox framework,
+so a synchronous communication can be established, for a asynchronous
+notification, no value will be returned. The exact meaning of both the
+action the mailbox triggers as well as the return value is defined by
+their users and is not subject to this binding.
+
+One use case of this mailbox is the SCMI interface, which uses shared memory
+to transfer commands and parameters, and a mailbox to trigger a function
+call. This allows SoCs without a separate management processor (or when
+such a processor is not available or used) to use this standardized
+interface anyway.
+
+This binding describes no hardware, but establishes a firmware interface.
+Upon receiving an SMC using one of the described SMC function identifiers,
+the firmware is expected to trigger some mailbox connected functionality.
+The communication follows the ARM SMC calling convention[1].
+Firmware expects an SMC function identifier in r0 or w0. The supported
+identifiers are passed from consumers, or listed in the the arm,func-ids
+properties as described below. The firmware can return one value in
+the first SMC result register, it is expected to be an error value,
+which shall be propagated to the mailbox client.
+
+Any core which supports the SMC or HVC instruction can be used, as long as
+a firmware component running in EL3 or EL2 is handling these calls.
+
+Mailbox Device Node:
+====================
+
+This node is expected to be a child of the /firmware node.
+
+Required properties:
+--------------------
+- compatible:		Shall be "arm,smc-mbox"
+- #mbox-cells		Shall be 1 - the index of the channel needed.
+- arm,num-chans		The number of channels supported.
+- method:		A string, either:
+			"hvc": if the driver shall use an HVC call, or
+			"smc": if the driver shall use an SMC call.
+
+Optional properties:
+- arm,func-ids		An array of 32-bit values specifying the function
+			IDs used by each mailbox channel. Those function IDs
+			follow the ARM SMC calling convention standard [1].
+			There is one identifier per channel and the number
+			of supported channels is determined by the length
+			of this array.
+- interrupts		SPI interrupts may be listed for notification,
+			each channel should use a dedicated interrupt
+			line.
+
+Example:
+--------
+
+	sram@910000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x93f000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0x93f000 0x1000>;
+
+		cpu_scp_lpri: scp-shmem@0 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x0 0x200>;
+		};
+
+		cpu_scp_hpri: scp-shmem@200 {
+			compatible = "arm,scmi-shmem";
+			reg = <0x200 0x200>;
+		};
+	};
+
+	smc_mbox: mailbox {
+		#mbox-cells = <1>;
+		compatible = "arm,smc-mbox";
+		method = "smc";
+		arm,num-chans = <0x2>;
+		/* Optional */
+		arm,func-ids = <0xc20000fe>, <0xc20000ff>;
+	};
+
+	firmware {
+		scmi {
+			compatible = "arm,scmi";
+			mboxes = <&mailbox 0 &mailbox 1>;
+			mbox-names = "tx", "rx";
+			shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+		};
+	};
+
+
+[1]
+http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.den0028a/index.html
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
