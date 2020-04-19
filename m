Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120141AF758
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mxXldA+j85jui4kb+PVJ5GNnFvD3p8thpcRdfSMeVH8=; b=oPn
	SoI5DkMfG9o9OecOCWBVNzsou8uS0yAjkll851I113YaDvWOQIVJMWmwYVZnqCWCklynOjt+RJgkI
	HNSbtJINNHddod3W3QXKQ8fRMYl+nTa0iKDFPUbxD7pFIG/TqNshjIyFcVLmBeNICPLy1Kwy2TJno
	aiSmGHPWJHOaLukJR8bK0PtUBE1bm+31+mTUnBZsyIzNc8P0Ms5NpDgRsUtXJV9vvWru4QjHVzuCO
	iQCcYMENI9t7hkRGc5APTLvCXyf11R8tggBVfEHbMLdSGc5EskD8+APvN0C1/fnw5/ubJXgw5lAym
	i7oywSBBKauXV2qbVRlScUP3gGRAxPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2tf-0000ax-UT; Sun, 19 Apr 2020 05:53:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2tV-0000a0-0V; Sun, 19 Apr 2020 05:53:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id w145so5219333lff.3;
 Sat, 18 Apr 2020 22:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1qrRdfAfZTNG8C2xZODPVLiP1lsHDHNtbAuMSlM5XWs=;
 b=kUNF53epSMt9B8o64l0Q9iBjt6Sdx5q1Y4jifHIiotiq9kw49rYLkGnyR7cnEF2EJM
 l1wKyyN8e93Sl3Bf9IjqsTFh6vYCDFsSZ/jVY/n5TYNxn8ccDZyQMlgxlVN6UKKM7sMZ
 tojuZIFdK3+plJitSDgcGUaB48HdnEbMEMSCv9m0CayAKVMRdYSdM77UFJq5724WYQx/
 mb2UZI5fs8jdxmYyK3e8ALtiZ8vw0JL72AmNYgeDhepigNlO/N5rHDLRFM2uqIiU/b2a
 E2fzlcSywc8eRowTkw+coLBPAPsPuwFtXzXiPEsLKcWG31fXphbg4FyEP6JwxZCXbuIi
 LHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1qrRdfAfZTNG8C2xZODPVLiP1lsHDHNtbAuMSlM5XWs=;
 b=SuMeg3hB+kxJrKiMJK521lr2L1QJIvfclFjvu+zAQH7BijPBFKoiwFH/9b4LOXaEXC
 24y3EvvKdoY7pyFJ5s9bWr6c81QO+Pj1CLxPWjNXf9Iz8mIcUmWNdfAhOJeXXKAAOHEi
 vm0MzYcnjWupE80thLzV0anpaU6du1fVl+D9Exfx6/afTZXTDBWJsYsdeuDw6FSuR22s
 WH0fzN8ZHnVCGZRvEtnDvVK9fTVLKYSa/Ug2a97OdYKfSr5k5akbIT56zGIZSff2zZhL
 7/ui1r3+z+GV9ngdEvf4xEJlDBRy8dkkc36nYWJ0d/RfZKbgDRWNe1mnUWU4EtlBQpDR
 2cAg==
X-Gm-Message-State: AGi0PubxyIWEpCnmdKcykD5RPmPqM9/b0chQkvUdE2leXGsDZiyw7qt9
 t1gbSkkMxU98htF5OCZUPhw=
X-Google-Smtp-Source: APiQypJC5Bac5Q6fvsZfuKKznBhjkUaBzG+YWW1BYq0fxHBBjVZMQ2V4BovjT+WZs5Ex1F2va6ByjA==
X-Received: by 2002:ac2:5f92:: with SMTP id r18mr6916190lfe.154.1587275606868; 
 Sat, 18 Apr 2020 22:53:26 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id h7sm3366247ljg.37.2020.04.18.22.53.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:53:26 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: meson: add GT-King and GT-King Pro devices
Date: Sun, 19 Apr 2020 05:53:18 +0000
Message-Id: <20200419055322.16138-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_225329_076007_AE98A325 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for the Beelink GT-King and GT-King Pro devices
which are based on the Amlogic W400 reference design. The series depends
on the common W400 and new audio dtsi created in [1]. It supersedes a
previous attempt to upstream support [2] which was refused due to the
duplication of dts content.

[1] https://patchwork.kernel.org/project/linux-amlogic/list/?series=273479
[2] https://patchwork.kernel.org/project/linux-amlogic/list/?series=249421

Christian Hewitt (4):
  dt-bindings: arm: amlogic: add support for the Beelink GT-King
  arm64: dts: meson-g12b-gtking: add initial device-tree
  dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro
  arm64: dts: meson-g12b-gtking-pro: add initial device-tree

 .../devicetree/bindings/arm/amlogic.yaml      |  2 +
 arch/arm64/boot/dts/amlogic/Makefile          |  2 +
 .../dts/amlogic/meson-g12b-gtking-pro.dts     | 39 +++++++++++++++++++
 .../boot/dts/amlogic/meson-g12b-gtking.dts    | 16 ++++++++
 4 files changed, 59 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
