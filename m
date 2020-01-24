Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF6148C4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c2cWL6xpO42WNPMKdE/C/A906vfkUd9Kh5efsmVh3fU=; b=H+OhuqSu+VyL6BS10GohZhvoZL
	Rxj6PJe5rvmnHv/Gj+WsiW86yA+siXJ9lLWLxTxwRek0efhGt/r0M6xRm4sZLAnBlIy5n2qJpSOlR
	1Sp6pMOps2rvYyRSQ0v82dpqTdMMYilJeZxI+WIjBTqhWcra8YOwBHnztXamnx5jRLpaC9nSi7k48
	bF79DW1oAn39oFwvMBZ/tJwbCDatim7EgSxn+Pw8X+Tb72/u6GnOM/eXQzgCvklIvC/PSxsHRzOr0
	GBkDZ44hkYC6vT2UJpC1HEL6Iul8NOzkxNo2KWUdR7XRvcXc4xwEDWGdr6emRUmqYTPOtA+JVh3Um
	+fpiiIMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1wa-0000v0-OT; Fri, 24 Jan 2020 16:36:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qj-0002cJ-0a; Fri, 24 Jan 2020 16:30:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so46659wmi.5;
 Fri, 24 Jan 2020 08:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ma8EEHyJQOUo40MQ8HAnhmncQWACdEusOuKxQidJjKI=;
 b=kV6ntgB+pNXteyIG5sQDdsiztdm3UBUUCJyBoyHiHmxkclFVPND0S3W3Vk6VtIjf5J
 XmoZK93FpxIBE+t16nwoSXdf8iEj5II8LtZLoFrtJBk/poXhgEfUVt06lYqC4g5zT4DC
 dGO9DdbcAxTDQYOQb3gv9WroclH0OUq6kFhDNj/m7L03ZIU30FXeAiem8DceUgivY2NV
 JMRgC7XDzZKwOXHZTFkZFcRlhgjFLQfCpzHh2sHkpCYUQsdm4KWzsS89k5J0249uJT8J
 kPP1QgcGvxH9NjtTV0QMpJoIUX62vqavosjYUaEzOHX2HGAzNx4vxcjDaQlaaDv1VHLI
 DfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ma8EEHyJQOUo40MQ8HAnhmncQWACdEusOuKxQidJjKI=;
 b=nNuFFRwxbh5dcOxyWtq5kqWfAPmXi4WfD00cLc+v0I6NPw+rkdmW/mik7SbFPrM8Oq
 oN1ILmrVg8eQjYT4ye0c8k1X31lQa/OaPnicv8AddjMd7EsLxdzJAyNG3B61ZKa2v4k2
 xtitN5S5Hzi1W3PB5iXzY9n8M86PaeV78+o1Mj7yaxE7PSe00WPhQt8IdIhFyOMY5Yu4
 jF9K/pctcbKiqjv165DbMt2N7P0uUT0qhlvxHiEM8trN3qcN/DVrYBERtRJ/QpsT+lUH
 /nRsBoGUw7yp3QQC1x3/gkzadov4B4/PllD8CPF2P4/JlRClFx73tybgzvpQuTgnpOPL
 FypQ==
X-Gm-Message-State: APjAAAWXi3rt1aySKxAU39z8GcwKFvKeuNjrUGmsr7irotdttR+TTCnA
 0xpN9fghRLzpmlPdmhcvxlM=
X-Google-Smtp-Source: APXvYqxRFPMGGtg+KpLSBpXUNcXTEuVXdOJ58XYB81RM8BMMGfpOR7Z3BO/sFZG6zDyKioVd3UJFjQ==
X-Received: by 2002:a1c:1fd0:: with SMTP id f199mr30871wmf.113.1579883422270; 
 Fri, 24 Jan 2020 08:30:22 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:21 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 10/10] ARM: dts: rockchip: rk3066a-mk808: enable nandc
 node
Date: Fri, 24 Jan 2020 17:30:01 +0100
Message-Id: <20200124163001.28910-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083025_115242_EFCC559A 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the nandc node for a MK808 with rk3066 processor.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 365eff621..e33c85699 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -133,6 +133,17 @@
 	status = "okay";
 };
 
+&nandc {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+		nand-is-boot-medium;
+	};
+};
+
 &pinctrl {
 	usb-host {
 		host_drv: host-drv {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
