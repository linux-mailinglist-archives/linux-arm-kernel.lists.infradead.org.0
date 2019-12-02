Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE7B10F36A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UVvJluJhQ7fi+bHoDzKsQ7EA44RMNhOJM2+9eCmez3g=; b=qvS
	Qy6ehTPZUUT1eNTZZGzlQoFlKUdlO/xmXuTuIJETkGjBNxHQdBvoUVqK3SifEktEqT/3glvBJsR1u
	wdz2HRtJbWCui9fjv9AWY8Jn701T/spBDbjNfMMzaQCDQU9sd3yo3g4CELRwrsAXzcQvJlfEGaWvP
	rKf+/WZXC/APZ34VQPxZF+v8ruy9AoISBWjZtujRNrbMT2krbRe5mf85qI8Jt0Y7Sljkk3xPO6QFd
	kO8gLLlEaD8V5jRO03+XMU8eU6UqRrGJ3ZnL2WKIMlxHp9/Z5IQS96kjz/bmFQkLBk71UJYcIQ6Cn
	lhnVxXjmL5sDrTyN5z5E4iphZJ7wFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvAW-00031x-Lm; Mon, 02 Dec 2019 23:31:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvAO-00030x-Po
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 23:31:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so1399647wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 15:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wvx9nyxzMj2Q20ThBsLSisowyvUYXMlYKSukI+zanr8=;
 b=HUmNfilP1bDdVEPDWTiM4TiD+Hvd+V1cLHg2+0zcsq5I2sh/T88JjmtN1WpTMyTTjd
 AAxiM8SzKej+bvhBXJwrrKlx6XL/JDPPskP5loruPQHsnDI9VPti6f3LfI+//Yn+i4Kn
 mRChxHvP/MTFubs2llgvk1HyBNiJ34PzoRTSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wvx9nyxzMj2Q20ThBsLSisowyvUYXMlYKSukI+zanr8=;
 b=ZIPW2Un0zwgSrpwxhY8O+RKRDfGD5H1F2AGnQWTSInFdQqAcXdTwyqLUcJaw842sYp
 fsZa8RPwuRhcYObEfi4QyfoEKlA6B2lr6yxjWolit89MA2bC/z2JN3jwWtJHrzGWVqpu
 WGAO0pM3uhdBxy52mxlE8b/5FwPG6Sfme1NVle7JSQ+nAoIQcNzgfVgVhsP/8G6w0OD2
 6irQgOqdGeM8HTFbDgLU2VUkPj2wC/0ha3Mdxk6h3Gd3prUMiFU14gn3jMciakOyTwSY
 zYjZPMVUAJzIDiKWbYdO3io6Bo1esMc+Fjlwbw1p5fYg0yAoxnXsbHxIvIJxmFr2whLS
 NMdQ==
X-Gm-Message-State: APjAAAXzAR8OmoUjv+/Gfj5LOcRPSANBcoNnt7HNB3nfq9fUaODOJETN
 CbDP2BHBTpUx3zGMUhWEpcAmnQ1N5sMZfA==
X-Google-Smtp-Source: APXvYqzYBJKAapr9QfnXl9kbxsEEShe5XaNo7VxzjPWxTXsbQtt8ZSLATPBsZO+NUaBQajgRBIM8yA==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr1643668wrm.290.1575329502406; 
 Mon, 02 Dec 2019 15:31:42 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id c72sm1066197wmd.11.2019.12.02.15.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:31:41 -0800 (PST)
From: Ray Jui <ray.jui@broadcom.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/2] Add iProc IDM device support
Date: Mon,  2 Dec 2019 15:31:25 -0800
Message-Id: <20191202233127.31160-1-ray.jui@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153144_837726_119E8692 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Broadcom iProc IDM device allows control and monitoring of ASIC internal
bus transactions. Most importantly, it can be configured to detect bus
transaction timeout. In such case, critical information such as transaction
address that caused the error, bus master ID of the transaction that caused
the error, and etc., are made available from the IDM device.

This patch series adds the binding document and driver support for the
iProc IDM devices.

The patch series is based off v5.4 and was tested on Broadcom
Stingray combo SVK board. The patch series is available at:
Repo: https://github.com/Broadcom/arm64-linux.git
Branch: iproc-idm-v1

Ray Jui (2):
  dt-bindings: soc: Add binding doc for iProc IDM device
  soc: bcm: iproc: Add Broadcom iProc IDM driver

 .../bindings/soc/bcm/brcm,iproc-idm.txt       |  44 ++
 drivers/soc/bcm/Kconfig                       |  10 +
 drivers/soc/bcm/Makefile                      |   1 +
 drivers/soc/bcm/iproc/Kconfig                 |   6 +
 drivers/soc/bcm/iproc/Makefile                |   1 +
 drivers/soc/bcm/iproc/iproc-idm.c             | 390 ++++++++++++++++++
 6 files changed, 452 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
 create mode 100644 drivers/soc/bcm/iproc/Kconfig
 create mode 100644 drivers/soc/bcm/iproc/Makefile
 create mode 100644 drivers/soc/bcm/iproc/iproc-idm.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
