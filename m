Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B373C1A6F4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qSVMwNRZtIVt02YcUNYCBFVfgQb4Z7vyloS3dQJND9E=; b=fmBpSSl3BiSTL22d4zGEkGzhOt
	hbteX2eEDGeE9KO05pV1tyAuDS+2S9NokmCHRAKBQeVe03O4izYZFYx81ERFPs9nsi7O3FeTNz+t7
	EbtGBt2qstQEZfVBpnv0ShZhlbvZCgWN3xrVZG5nLOd/xLppX+oGSoUXVIz7RJCafvyfFs0EIJaFR
	C1edsmFpO7lbj4PDp2lTlSibRy6utUxLxn0y5+3rjwqhVjh45sw1+hUMnC9YV3H0//a1HqWHm/qQ7
	wK55QV/zqOMYwhfEJBWj+Z4AG6dVObCeMxScyYKWdP2K0LkK9dmvSmbBeOBBiC5H2KcRzVRiiODGr
	Hn3JP0Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7cS-0007T4-Va; Mon, 13 Apr 2020 22:31:57 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7as-0006Ib-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:30:20 +0000
IronPort-SDR: EsunnLOg8DWl2EkqgohgqSM6gfLTyZz8EMP4wEj6qpra81mbABbl3SLpSc/2AVgYzuz/O4l1Yg
 q0TLfVYRCWlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:30:17 -0700
IronPort-SDR: a9DLrLUPB5LEHN/yIh8etgbMCYe5+mBzqUQHtKnxfofF0OIeyFD6XqVg6rbZ8ztxJoleTvUyA0
 4KIYF6pMT4ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760856"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:30:04 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 5/6] Documentation jtag: Add JTAG core driver ioctl number
Date: Mon, 13 Apr 2020 15:29:19 -0700
Message-Id: <20200413222920.4722-6-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413222920.4722-1-ernesto.corona@intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_153019_087615_EAB181CD 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Randy Dunlap <rdunlap@infradead.org>, Eric Biggers <ebiggers@google.com>,
 Steven Filary <steven.a.filary@intel.com>, Amithash Prasad <amithash@fb.com>,
 Rgrs <rgrs@protonmail.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Patrick Williams <patrickw3@fb.com>, Arnd Bergmann <arnd@arndb.de>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Theodore Ts'o <tytso@mit.edu>, Vadim Pasternak <vadimp@mellanox.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ernesto Corona <ernesto.corona@intel.com>,
 Oleksandr Shamray <oleksandrs@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

JTAG class driver provide infrastructure to support hardware/software
JTAG platform drivers. It provide user layer API interface for flashing
and debugging external devices which equipped with JTAG interface
using standard transactions.

Driver exposes set of IOCTL to user space for:
- XFER:
  SIR (Scan Instruction Register, IEEE 1149.1 Data Register scan);
  SDR (Scan Data Register, IEEE 1149.1 Instruction Register scan);
- GIOCSTATUS read the current TAPC state of the JTAG controller
- SIOCSTATE Forces the JTAG TAPC to go into a particular state.
- SIOCFREQ/GIOCFREQ for setting and reading JTAG frequency.
- IOCBITBANG for low level control of JTAG signals.

Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
Acked-by: Philippe Ombredanne <pombredanne@nexb.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Darrick J. Wong <darrick.wong@oracle.com>
Cc: Bryant G. Ly <bryantly@linux.vnet.ibm.com>
Cc: Eric Sandeen <sandeen@redhat.com>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Tomohiro Kusumi <kusumi.tomohiro@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: "Theodore Ts'o" <tytso@mit.edu>
Cc: Eric Biggers <ebiggers@google.com>
Cc: Steven Filary <steven.a.filary@intel.com>
Cc: Jiri Pirko <jiri@mellanox.com>
Cc: Vadim Pasternak <vadimp@mellanox.com>
Cc: Amithash Prasad <amithash@fb.com>
Cc: Patrick Williams <patrickw3@fb.com>
Cc: Rgrs <rgrs@protonmail.com>

v28->v29
Move ioctl number to userspace-api/ioctl/ioctl-number.rst
---
 Documentation/userspace-api/ioctl/ioctl-number.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/userspace-api/ioctl/ioctl-number.rst b/Documentation/userspace-api/ioctl/ioctl-number.rst
index f759edafd938..7c005fc9a1c2 100644
--- a/Documentation/userspace-api/ioctl/ioctl-number.rst
+++ b/Documentation/userspace-api/ioctl/ioctl-number.rst
@@ -332,6 +332,8 @@ Code  Seq#    Include File                                           Comments
                                                                      <mailto:vgo@ratio.de>
 0xB1  00-1F                                                          PPPoX
                                                                      <mailto:mostrows@styx.uwaterloo.ca>
+0xB2  00-0F  linux/jtag.h                                            JTAG driver
+                                                                     <mailto:oleksandrs@mellanox.com>
 0xB3  00     linux/mmc/ioctl.h
 0xB4  00-0F  linux/gpio.h                                            <mailto:linux-gpio@vger.kernel.org>
 0xB5  00-0F  uapi/linux/rpmsg.h                                      <mailto:linux-remoteproc@vger.kernel.org>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
