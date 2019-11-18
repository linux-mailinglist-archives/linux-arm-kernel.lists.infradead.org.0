Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03305100B79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RHrQ8ifJ26K2nzMbCTft6t0iX4FOH7Jzui+FXZC/dM8=; b=L4l
	tjF2/G0kNQLIwB4RXcFlpCTyqH+HyBn1CwdGEbxQTu5AOW5aMd3yZfOWLjxi4g9BKGefIOgBKv5Ab
	ssRoO8ffw16QejRoW7qGTCxWux7QwhgmedXWciUsAX6bIyKY/yjgHNFbrKZdwjEHi2ENPMpLQ41dL
	OtKfh+LWf187vFdYH0Sx1t7wwtWWEZxJHVOzkuL0C0SWpQseZSeyQ3+x1cKrwsrhJNFqMO1i7lZEf
	RBIkVMKV5rVa+OoE2YxDpk0/ME82cy4o0OODmTg08XiaZxUhWG0mWRfOTsCu5W9x64pIgSYRwtUvv
	mOG6VgPKUwMsZsG8MZhN/1SfSxVHeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlmZ-0001ME-Sk; Mon, 18 Nov 2019 18:29:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlmQ-0001Lk-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:29:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id z10so20701413wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 10:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=viLr7uGl71lV4XaqX6a2OkltOjHJiyDdoDqmjwm23wo=;
 b=F2MH0jBQisn26f3dpC80AWOS4A0NOAmWKweXzwtZtOzHHCylRcqQ5zPjeEfqcgIZmh
 FIebfaONOBCjM4ifQlW9cXRpPeyk3kHYTxXvgvCbQub3u0f8X4S/5lKJQnPHBYKD6TGG
 NlLgjluymZiw8YwqDzVMUo5KAU8h6x2FzLDyt/1k7orgh+qJXhNGbCYLaH68bEPcYEFj
 cvEZQurgxY1Imhn0Tenhp0KSL2LXI6Bufaad306X+GN0tcyS7WxF22elK7E0CuX0O12v
 Tn/R8e7wUmHd//1jLbX3XXv37Scgf3DseJSn47dWSLbyj1qdPztF7uNxFd5C/oQro161
 AUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=viLr7uGl71lV4XaqX6a2OkltOjHJiyDdoDqmjwm23wo=;
 b=kjZ/18DdlRosbcBZJyp6eoB/arRCVpMCliJrD36FDW7zMwYzLBAauJjf/JDUm4N5PS
 l8hMikIVp/MREC8CXPsbNW+puUr1a07ip+KZDKKfRgxzUhBTNP2DgaWbulmOOo725ZiH
 NAhEFbAmp31OxhAeN1ZJUCE5Fgp0i81HRqD6Y/VNFN3b+RK+pg+CizIDRilnqa2P64fF
 KxpnoJ3+go0P65edC319fmz6FHG6PSaNArDCaFKnFkn6OgLUTPK37ihnfgDI0f2iSDxa
 5TsVv0iDcy9OHgUU9V7L/dMIwTCEZhA/ktqBJlhPTl9RmYNzI+7C8zCH7fgQ46E8T1mU
 2xYQ==
X-Gm-Message-State: APjAAAV4Wi7SIHjYkVZe5HGT+yHHUypvzBJT3nKpafB7Q/tcu99A8QjR
 ALjyHW/x8xrn50VU/DrXoEQ=
X-Google-Smtp-Source: APXvYqyQFJtMglNdyl0+6rWNHFVvXqeBO35xLx0RggKzUUhY/qwhUTOT8++uMX0MLspom77eEan+sg==
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr8526505wru.321.1574101777735; 
 Mon, 18 Nov 2019 10:29:37 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c15sm23986764wrx.78.2019.11.18.10.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 10:29:36 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL] Broadcom devicetree changes for 5.5 (part 2)
Date: Mon, 18 Nov 2019 10:29:31 -0800
Message-Id: <20191118182931.11884-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_102942_437981_3EBC9BF6 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 4c365e231bd1d3bbe2bdbc2a0c4e413ffb365b20:

  ARM: dts: bcm: HR2: add label to sp805 watchdog (2019-10-23 10:42:23 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/devicetree-part2

for you to fetch changes up to be8af7a9e3cce3cc4b7abbc8211dd06f8e72b976:

  ARM: dts: bcm2711-rpi-4: Enable GENET support (2019-11-14 12:35:58 -0800)

----------------------------------------------------------------
This pull request contains the second batch of changes for Broadcom
ARM-based SoCs, please pull the following:

- Nicolas declares a CMA area within the first 1GB of DRAM in order for
  it to be guaranteed to reside there, otherwise ARM64's memory
  initialization will pick up a CMA area within ZONE_DMA32

- Stefan adds the Device Tree node for the built-in Ethernet controller
  (GENET) on the Raspberry Pi 4 model B board

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: force CMA into first GB of memory

Stefan Wahren (1):
      ARM: dts: bcm2711-rpi-4: Enable GENET support

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 17 +++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi        | 46 +++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
