Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5314ACC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27CSGlikGsaAUK9dJyQ3CJxD3r0CQy9ZC1MLOxKSyYA=; b=inD4QNiUUeoPQF
	vjAy7bZJTivoywCVCW+zs3SwVXeynm9f4dNCqQT0od41z9WmXZyel2XjeK4cnfHHxsJOHl1Y8jpF+
	Ai8VxE7GgIPSSVn7iVPWcw0oXruwdpN787MODxVlPqAIlY6j1APftcvEgylpHxFL5J1+lG+ENP35Z
	EXHgedgb+mpJ8sWM8F1bmD6chnIGAK/8wr+d0bjqbeO11f494QzZUbRvyk/Jx1ub8WUfI9LdTiCZW
	f7YcFqHgAj2+XHrDU8QM71lV66/+xoIVUnFqaMm0UZ0Ug95MvbE1s2OejF2w3axUqbmo6nEV2kN1a
	pMoiXr0p8SmdS6yDbUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEDx-0006OS-Hl; Mon, 27 Jan 2020 23:55:21 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDO-0006Al-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:54:47 +0000
Received: by mail-pg1-x54a.google.com with SMTP id d129so7485276pgc.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 15:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=LtaIREjg0GbBNJyJVnqCp3W9hRUEU+wNigeViXWJb/o=;
 b=QJWVurVz83htEHzzAukWZOjRvkslLJAt6RkcCPRQgUwcrrqnp2W42ISvpNSlJqhLYI
 HDzfPU81B/8MhLW3/BOHOTSm3GJr/tMW4jJ1uZjzTbJHZI7r00deF2uuiZE1jDlE3Ujn
 MIMSuULUgAiE5dl8Nrbk0b8EeQoezOApOBHVkrgqe0dU+IightjL6OUCro+mwIxTLbFb
 t2pFhrqSSkm11dR+u1q94/yUiey4cwHOn48bYfK20V0lZ9Glrn/woVo38KYoMyo6/pXm
 Ki9LI1z6JOEkTJvqF9Ngr3gnj3PxZwspaCM9AexVBTeEbEa6NoLses4XF2PhfQahE7g1
 UGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=LtaIREjg0GbBNJyJVnqCp3W9hRUEU+wNigeViXWJb/o=;
 b=odVEDzVFoEVk4cVFl87Zwqe7ZZzpmCiXgKnuEs/3UfkbF+CxJ/6sBF9Wex+BfkRQq8
 OfVBAzgZfRBJ2P1s2pt5AGTvSAlN26GZz6an2My7BCaN29OrHipmK1ePSiRO19vMFbGD
 CiIMKeNlWEVbn29q+Bzd++bVfeeEIbaqj7k831yJF1qMaylJ/afuPnuOML5KohScyXch
 QfSnYEWcJE3iguOo7usUd2UTxIn5wfbC8ud2JiI6oe8OhHn+vGVSwfdRKWjp8GmYtaoJ
 u+y2/5wnddAwjuNOIQh+Wh2u5Tvd1jTg1kLQqkVqh9CUFM9sXGx1LIGKceEqwmzcrWYq
 2sng==
X-Gm-Message-State: APjAAAUBEUWjoYuCjjb2Q2LES1VThnO05+oh+CG5G8CRpCbkG8iBYAVK
 2EccagH3CTWuRXOWds6BY4SjiHci/hLU+S4hBYz3XQ==
X-Google-Smtp-Source: APXvYqweRQ8m5hhu1HXuRMedVPc2bAFe5tdPFCvhiapDMmB+s6KJgSZdl7ge+tHS5zEbJYelkAeAJQhRjXaIFteOOxWnoQ==
X-Received: by 2002:a63:234f:: with SMTP id u15mr21895366pgm.88.1580169284558; 
 Mon, 27 Jan 2020 15:54:44 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:52 -0800
In-Reply-To: <20200127235356.122031-1-brendanhiggins@google.com>
Message-Id: <20200127235356.122031-2-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200127235356.122031-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 1/5] net: axienet: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 "David S . Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, 
 Andrew Lunn <andrew@lunn.ch>, Robert Hancock <hancock@sedsystems.ca>, 
 Esben Haabendal <esben@geanix.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155446_124725_7AFA1CA1 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: heidifahim@google.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 linux-um@lists.infradead.org, davidgow@google.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CONFIG_XILINX_AXI_EMAC=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.o: in function `axienet_probe':
drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1680: undefined reference to `devm_ioremap_resource'
/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1779: undefined reference to `devm_ioremap_resource'
/usr/bin/ld: drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1789: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/net/ethernet/xilinx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
index 6304ebd8b5c69..b1a285e693756 100644
--- a/drivers/net/ethernet/xilinx/Kconfig
+++ b/drivers/net/ethernet/xilinx/Kconfig
@@ -25,6 +25,7 @@ config XILINX_EMACLITE
 
 config XILINX_AXI_EMAC
 	tristate "Xilinx 10/100/1000 AXI Ethernet support"
+	depends on HAS_IOMEM
 	select PHYLINK
 	---help---
 	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
