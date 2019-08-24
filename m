Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDBF9BF75
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA7GSUmgDbakq44QZCU3F1iPMfErYVjXWVBdjOySIP4=; b=CR8xLOkmozAFeu
	YDmZ49PDGTSM6FYfgTsJI+kBBAlf0PVzASOBCCOgeMz0Kzqrq0qRUDjrQaofuJaab+nAAxJ8KzNxB
	zHQtp59EuFjFcpkY3EHF3ha9a4gbRKZw6frhUaymlNSowZ/kdaB+aXL59FA6xzcPTGg8wqbrhkdyY
	gjssqthHW9RQNTrGiosQOLTEFKMuKhHFoarCtmAklBv4Xest5PCUhSTa6lSZS6XPWhasdFN0zkwmG
	37FBDTmJzy5aJxgF53lMYm/WjE6X6X1ghFrLEB3J4UF7Z2seb+ZMPjBr/Ja21G8nwynV4h9MwTqkJ
	dqLCRNA1CO8YXL8aHxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1b7m-0006kp-1D; Sat, 24 Aug 2019 18:50:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1b6x-00059o-EW; Sat, 24 Aug 2019 18:50:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id p3so7826367pgb.9;
 Sat, 24 Aug 2019 11:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=59/Yioac1wmSGF4aiy48Eg48b+I3Gv7gnDjIai6g49Y=;
 b=ipXG6/TXo7XnZaslR75QIXazjXxOUONMAWDmIoQ129EfXrDYNXtxlS0J/PJQn1TcI6
 I9aE3mJj890EHfJbVk6Rbh46lWAEMTYNhQXjxQfhYDbeR48aFBfQhj8l7EcTCIosHjYp
 QXyzQGYwnLMQm7S7syQYzHxkoaaNJ1eA5tosPuG6DmROMVaGjCZalT/l9UrTxO9njdqJ
 O0gUIbJd0wZQ3qA23u6uSuQ/iGutG9V4p4/qAS/pC9ebgTA6lZA4VUBy9ZPA74pk454z
 PEqa81NDZ0q7lgRxgHg08yKxA2kca98dT7sq4UEXSBlNuOqdZFqaX0MaZ89UBYW8DV1p
 iCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=59/Yioac1wmSGF4aiy48Eg48b+I3Gv7gnDjIai6g49Y=;
 b=pmvvaIHdugjGJ+SyhA7txF9Ja1Y4wlHGNNPGmSbxyId31Nut8xIevk7D4Nh3kzWEvp
 ficu7UgKd+VljuF1xwIuEBHIO3QardTlbHi1CTRdbBrAB6cMYA7dxt/Rb4UoyCCbBhvz
 OezGwBYlBUFylX5ARFdYox8dzmPwR9iU6vZ8NXcBXjp2eILZQm92AcGP1dHDSKL3/i+H
 KVxZafh9xqp39CucGzMhhssTFhemcjYUm+SmlbokEP5atBit4tEialh8b+FRI6+XMP3w
 KGmZyh6Ledcq5MwxllhYFJE+eygRS7/djUrosUleVAwSrbDfaC6yDVz+C8+vIfRSzyNr
 uPbQ==
X-Gm-Message-State: APjAAAX+XYGGdmbdvB6MIIFAHPoSLdabWDN9GM/PUOVm2zxOB4e6guAk
 3W/Ri+ciO3DIzNf6Z/xBLrwWRipl
X-Google-Smtp-Source: APXvYqxD0b9/MKWjv3XWuEArcK6klsnRM4NKwXYG3QRizaFX2Yjqe7JhKZVz6nOidZWPC/0TWsAlPQ==
X-Received: by 2002:a62:5501:: with SMTP id j1mr11680577pfb.166.1566672602535; 
 Sat, 24 Aug 2019 11:50:02 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id t8sm5519292pji.24.2019.08.24.11.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 11:50:02 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4 3/3] arm64: dts: meson: odroid-c2: Disable usb_otg bus to
 avoid power failed warning
Date: Sat, 24 Aug 2019 18:49:12 +0000
Message-Id: <20190824184912.795-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190824184912.795-1-linux.amoon@gmail.com>
References: <20190824184912.795-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_115003_563513_39C93F5D 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

usb_otg bus needs to get initialize from the u-boot to be configured
to used as power source to SBC or usb otg port will get configured
as host device. Right now this support is missing in the u-boot and
phy driver so to avoid power failed warning, we would disable this
feature  until proper fix is found.

[    2.716048] phy phy-c0000000.phy.0: USB ID detect failed!
[    2.720186] phy phy-c0000000.phy.0: phy poweron failed --> -22
[    2.726001] ------------[ cut here ]------------
[    2.730583] WARNING: CPU: 0 PID: 12 at drivers/regulator/core.c:2039 _regulator_put+0x3c/0xe8
[    2.738983] Modules linked in:
[    2.742005] CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.2.9-1-ARCH #1
[    2.748643] Hardware name: Hardkernel ODROID-C2 (DT)
[    2.753566] Workqueue: events deferred_probe_work_func
[    2.758649] pstate: 60000005 (nZCv daif -PAN -UAO)
[    2.763394] pc : _regulator_put+0x3c/0xe8
[    2.767361] lr : _regulator_put+0x3c/0xe8
[    2.771326] sp : ffff000011aa3a50
[    2.774604] x29: ffff000011aa3a50 x28: ffff80007ed1b600
[    2.779865] x27: ffff80007f7036a8 x26: ffff80007f7036a8
[    2.785126] x25: 0000000000000000 x24: ffff000011a44458
[    2.790387] x23: ffff000011344218 x22: 0000000000000009
[    2.795649] x21: ffff000011aa3b68 x20: ffff80007ed1b500
[    2.800910] x19: ffff80007ed1b500 x18: 0000000000000010
[    2.806171] x17: 000000005be5943c x16: 00000000f1c73b29
[    2.811432] x15: ffffffffffffffff x14: ffff0000117396c8
[    2.816694] x13: ffff000091aa37a7 x12: ffff000011aa37af
[    2.821955] x11: ffff000011763000 x10: ffff000011aa3730
[    2.827216] x9 : 00000000ffffffd0 x8 : ffff000010871760
[    2.832477] x7 : 00000000000000d0 x6 : ffff0000119d151b
[    2.837739] x5 : 000000000000000f x4 : 0000000000000000
[    2.843000] x3 : 0000000000000000 x2 : 38104b2678c20100
[    2.848261] x1 : 0000000000000000 x0 : 0000000000000024
[    2.853523] Call trace:
[    2.855940]  _regulator_put+0x3c/0xe8
[    2.859562]  regulator_put+0x34/0x48
[    2.863098]  regulator_bulk_free+0x40/0x58
[    2.867153]  devm_regulator_bulk_release+0x24/0x30
[    2.871896]  release_nodes+0x1f0/0x2e0
[    2.875604]  devres_release_all+0x64/0xa4
[    2.879571]  really_probe+0x1c8/0x3e0
[    2.883194]  driver_probe_device+0xe4/0x138
[    2.887334]  __device_attach_driver+0x90/0x110
[    2.891733]  bus_for_each_drv+0x8c/0xd8
[    2.895527]  __device_attach+0xdc/0x160
[    2.899322]  device_initial_probe+0x24/0x30
[    2.903463]  bus_probe_device+0x9c/0xa8
[    2.907258]  deferred_probe_work_func+0xa0/0xf0
[    2.911745]  process_one_work+0x1b4/0x408
[    2.915711]  worker_thread+0x54/0x4b8
[    2.919334]  kthread+0x12c/0x130
[    2.922526]  ret_from_fork+0x10/0x1c
[    2.926060] ---[ end trace 51a68f4c0035d6c0 ]---
[    2.930691] ------------[ cut here ]------------
[    2.935242] WARNING: CPU: 0 PID: 12 at drivers/regulator/core.c:2039 _regulator_put+0x3c/0xe8
[    2.943653] Modules linked in:
[    2.946675] CPU: 0 PID: 12 Comm: kworker/0:1 Tainted: G        W         5.2.9-1-ARCH #1
[    2.954694] Hardware name: Hardkernel ODROID-C2 (DT)
[    2.959613] Workqueue: events deferred_probe_work_func
[    2.964700] pstate: 60000005 (nZCv daif -PAN -UAO)
[    2.969445] pc : _regulator_put+0x3c/0xe8
[    2.973412] lr : _regulator_put+0x3c/0xe8
[    2.977377] sp : ffff000011aa3a50
[    2.980655] x29: ffff000011aa3a50 x28: ffff80007ed1b600
[    2.985916] x27: ffff80007f7036a8 x26: ffff80007f7036a8
[    2.991177] x25: 0000000000000000 x24: ffff000011a44458
[    2.996439] x23: ffff000011344218 x22: 0000000000000009
[    3.001700] x21: ffff000011aa3b68 x20: ffff80007ed1bd00
[    3.006961] x19: ffff80007ed1bd00 x18: 0000000000000010
[    3.012222] x17: 000000005be5943c x16: 00000000f1c73b29
[    3.017484] x15: ffffffffffffffff x14: ffff0000117396c8
[    3.022745] x13: ffff000091aa37a7 x12: ffff000011aa37af
[    3.028006] x11: ffff000011763000 x10: ffff000011aa3730
[    3.033267] x9 : 00000000ffffffd0 x8 : ffff000010871760
[    3.038528] x7 : 00000000000000fd x6 : ffff0000119d151b
[    3.043790] x5 : 000000000000000f x4 : 0000000000000000
[    3.049051] x3 : 0000000000000000 x2 : 38104b2678c20100
[    3.054312] x1 : 0000000000000000 x0 : 0000000000000024
[    3.059574] Call trace:
[    3.061991]  _regulator_put+0x3c/0xe8
[    3.065613]  regulator_put+0x34/0x48
[    3.069149]  regulator_bulk_free+0x40/0x58
[    3.073203]  devm_regulator_bulk_release+0x24/0x30
[    3.077947]  release_nodes+0x1f0/0x2e0
[    3.081655]  devres_release_all+0x64/0xa4
[    3.085622]  really_probe+0x1c8/0x3e0
[    3.089245]  driver_probe_device+0xe4/0x138
[    3.093385]  __device_attach_driver+0x90/0x110
[    3.097784]  bus_for_each_drv+0x8c/0xd8
[    3.101578]  __device_attach+0xdc/0x160
[    3.105373]  device_initial_probe+0x24/0x30
[    3.109514]  bus_probe_device+0x9c/0xa8
[    3.113309]  deferred_probe_work_func+0xa0/0xf0
[    3.117796]  process_one_work+0x1b4/0x408
[    3.121762]  worker_thread+0x54/0x4b8
[    3.125384]  kthread+0x12c/0x130
[    3.128575]  ret_from_fork+0x10/0x1c
[    3.132110] ---[ end trace 51a68f4c0035d6c1 ]---
[    3.136753] dwc2: probe of c9000000.usb failed with error -22

Fixes: 5a0803bd5ae2 ("ARM64: dts: meson-gxbb-odroidc2: Enable USB Nodes")
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---

[0] https://patchwork.kernel.org/patch/10757569/
Earlier my approach to initialize the usb0 bus was limited, some more
phy tuning is required both at driver and u-boot to get this feature
working. So for now just disable this.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index f3dcabf97c63..792698a60a12 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -312,7 +312,7 @@
 };
 
 &usb0_phy {
-	status = "okay";
+	status = "disabled";
 	phy-supply = <&usb_otg_pwr>;
 };
 
@@ -322,7 +322,7 @@
 };
 
 &usb0 {
-	status = "okay";
+	status = "disabled";
 };
 
 &usb1 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
