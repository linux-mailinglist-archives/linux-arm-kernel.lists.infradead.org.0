Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E5B1F9CED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jn8eNk+LHmZ1DBp23QtDJlDFmSPW1q/JPp39Me/rKVw=; b=rIS6JAog0ACuSP
	hIMo+6/S6Xr5NSthmvuEcJEeEQnatYYCpYX7VCL2Q7vOoxtvLUY7FjuBpUwvJEkuf1BiVX385v2UQ
	Yc8HD/3LmzM/CgZzY9AfaasJr/eEDuZ1uUnjs02lNBuJbVWK8JFrY6nGuzzD2F2Qv0tQO87GZHP/s
	7IU8shYbB4IUx6CUvJkc8T5e+qRjIGOjUpDAD8x+hQzi6idnXz/QM40UAeRjj184y103tmgHPxQ4D
	0SmmT3EUmtuRhsXCgdEJ/yd5X82yip9B6NIZZ8DHSwt0bEHGNYkIThPAoehGiVx/UmuuwHp0WQA05
	p88Mv7+sMzEYAk1rkQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrne-0000eT-0d; Mon, 15 Jun 2020 16:17:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrmX-0008Mz-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:16:26 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05FGErYJ010869; Mon, 15 Jun 2020 18:15:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=bZLdngu1T79B9CrirZEYQHkjEj22wNJY7PUv6kBJrmQ=;
 b=NQIobxBr+rX5VTLmyc7vPLHNgD3LW8Pb5hHYFgsZU9bIOm3wJ7mtTY7nG0ADsWidmAZz
 cyOykLhl35Y6R+kzqh3uioxLQTDj3bGvUOMZ+6jh06Wt+RUzCbGUbqCJrhjzveVq8n6H
 ln5d6knEOJXKn1CyMttgX0LcEL9XA1KvlDJHAWQR7KYk6NJGkNlMEZM7tG3OHz1cGTop
 bfiYMS+XddAzUl3+NpFXQ7mPsxSePA/ESi3vKt3xhl/yebjNJZlhVX+OKycYVnnzScjY
 jFJ20LrnH9eHZINBGRZStfoWxBpq+0ZN7CaZm1c4eRUXZ7Qh+JjGxyPKSLwHUmrQrqos 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvthhr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 18:15:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 241B410002A;
 Mon, 15 Jun 2020 18:15:47 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 02B062C5AD8;
 Mon, 15 Jun 2020 18:15:47 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun 2020 18:15:46
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Russell King
 <linux@armlinux.org.uk>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [PATCH 0/6] Add STUSB160x Type-C port controller support
Date: Mon, 15 Jun 2020 18:15:06 +0200
Message-ID: <20200615161512.19150-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_06:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_091622_187262_AAE680E7 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for STMicroelectronics STUSB160x Type-C port
controllers [1].
STUSB160x driver requires to get power operation mode via device tree,
that's why this series also adds the optional DT property power-opmode
for usb-c-connector to select the power operation mode capability and
a function to convert the power operation mode string into power
operation mode value.
This driver has been tested on stm32mp157c-dk2 [2], which has a Type-C
connector managed by STUSB1600, and connected to USB OTG controller. 

[1] https://www.st.com/en/interfaces-and-transceivers/usb-type-c-and-power-delivery-controllers.html
[2] https://www.st.com/en/evaluation-tools/stm32mp157c-dk2.html

Amelie Delaunay (6):
  dt-bindings: connector: add power-opmode optional property to
    usb-connector
  usb: typec: add typec_find_pwr_opmode
  dt-bindings: usb: Add DT bindings for STUSB160x Type-C controller
  usb: typec: add support for STUSB160x Type-C controller family
  ARM: dts: stm32: add STUSB1600 Type-C using I2C4 on stm32mp15xx-dkx
  ARM: multi_v7_defconfig: enable STUSB160X Type-C port controller
    support

 .../bindings/connector/usb-connector.yaml     |  11 +
 .../devicetree/bindings/usb/st,stusb160x.yaml |  85 ++
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi      |   7 +
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi        |  38 +
 arch/arm/configs/multi_v7_defconfig           |   2 +
 drivers/usb/typec/Kconfig                     |  12 +
 drivers/usb/typec/Makefile                    |   1 +
 drivers/usb/typec/class.c                     |  15 +
 drivers/usb/typec/stusb160x.c                 | 875 ++++++++++++++++++
 include/linux/usb/typec.h                     |   1 +
 10 files changed, 1047 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/st,stusb160x.yaml
 create mode 100644 drivers/usb/typec/stusb160x.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
