Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D887035CA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u4dz+CYbK16HvzI9FJWvKC5LRN8b5SBkv5he+fKSUwU=; b=UlBZueMY8W5Ur52/yUPNGaxGOd
	9jKuXLmGBbgg+KCLNR+M/N7hYEuMw20Uuc1TrbWrC/Sim3Vd/VYEVLUX4zFe958zloaRaR7urxcIg
	/9Bw3N/RCMV27XYvDcfyvWJvkhAcnMh1ZE+R2X5wc0be+9a5GHhPY23gjQpH4IK+iNu6OM0eKQEe3
	gKq2GzVivilZSBbtyQa4lErtaVfCrTKQxZptwtr91vaa42rz9gtn90QSxzdNAKPJ0DLJl/A2KGX3G
	kKofwuei2JRPKYLf27FVtrKbQV4fAgvmGgHxGTJfu/c9H2L1VgEY0o/jlw/0IUZngGbV0/JCRn/4c
	xGphg5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUwz-000154-98; Wed, 05 Jun 2019 12:23:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUwO-0000VF-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:22:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id 20so12312980pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 05:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZMegKM8wWW12mRi+MHt1/qZvnpSW4OXC3WMf+x5ezYU=;
 b=nHh7huEudBGHGSGsoXcJZWNCEG8sqqMdqOdx41G7EdAa1ie0yElYinI077yIzI9dWj
 4nZq+6q6gMF9c6AevrkPCj4qo4vjl33pfqBSZ4rUzIoprPImkUmSOipVtndz9+7m3fQc
 Anv2Q6CEl6x1Jkp2E6vVLzIODq7Y2kg+/buXTcNGE+nwKBtFbUOjSCfEnUOEvsjKo1pl
 jpNoY/LMoUqm2DrkVPLjkM3jFTDN29Uu2AjVqmfTpzsdtvomdcxEt6o/hhs6fdMZU3mn
 rJ/Cjoo8nL2xpmztsLzyg9gbh9tTjEphlOwP1k/4dtYJdz2izUI6b9ZFef4Oy6BAB1jF
 bfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZMegKM8wWW12mRi+MHt1/qZvnpSW4OXC3WMf+x5ezYU=;
 b=BkNdZEMp4Gkwuehi7o/lwbuTjJPf8YQ5O8dgJ9KqP2kGrnZlIiXYMhJN72r30EG2nA
 siFjsVg4fKQy3RSS4E3Tiy/jXfUkM08ZUO0E/l9MUvo+DHjmpFg/glxCVIIFpR7nsm8W
 fkeuy/b6MFdVgnF2Lb3m6xjN20AQgE7qSmx2cHgsjjiuD7Z2AFlBqpjy/0aOzFewwdA+
 kUGh7F5BklYkdsB6JyN3Px/whh8qrv77OiGapEyqsLK5oRjSWObHy7lLCAikzvrD0rVa
 TfeNBHnRrQOlEf0W0wl1pjdMCh0QSyJQcOd+8Ah7Qc8DsKAaaFtUWu3/rJv1TOhJCwKh
 CI3Q==
X-Gm-Message-State: APjAAAX5hBc59raYMYQnON+5tn5VjnHfxlz9PweatpOvpB/3VmNPNrQh
 RkMJUsdpHL4X8cvB+H+wAfk=
X-Google-Smtp-Source: APXvYqx3JLlETUC7Lz0qh6z/ky5aPPycE+3p8YvXay93Ps9ocB1UGX+LAEPMGJu4m+nDEZ9WaQLYUA==
X-Received: by 2002:a17:90a:2ec3:: with SMTP id
 h3mr43937862pjs.101.1559737371398; 
 Wed, 05 Jun 2019 05:22:51 -0700 (PDT)
Received: from Pilot130.192.168.0.22 (211-20-114-70.HINET-IP.hinet.net.
 [211.20.114.70])
 by smtp.googlemail.com with ESMTPSA id q22sm3322094pff.63.2019.06.05.05.22.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 05:22:51 -0700 (PDT)
From: "sudheer.v" <open.sudheer@gmail.com>
To: gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, jslaby@suse.com,
 joel@jms.id.au, andrew@aj.id.au, benh@kernel.crashing.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 shivahshankar.shankarnarayanrao@aspeedtech.com,
 sudheer.veliseti@aspeedtech.com
Subject: [patch 5/5] Documentation: DT bindings AST2500 DMA UART driver
Date: Wed,  5 Jun 2019 17:53:15 +0530
Message-Id: <1559737395-28542-6-git-send-email-open.sudheer@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
References: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052252_924717_4AF14CAE 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (open.sudheer[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudheer Kumar veliseti <sudheer.open@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: sudheer Kumar veliseti <sudheer.open@gmail.com>

Signed-off-by: sudheer veliseti <sudheer.open@gmail.com>
---
 .../bindings/serial/ast2500-dma-uart.txt      | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/ast2500-dma-uart.txt

diff --git a/Documentation/devicetree/bindings/serial/ast2500-dma-uart.txt b/Documentation/devicetree/bindings/serial/ast2500-dma-uart.txt
new file mode 100644
index 000000000000..ff9bb6146bd6
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/ast2500-dma-uart.txt
@@ -0,0 +1,40 @@
+
+node for DMA controller:
+                       ast_uart_sdma: uart_sdma@1e79e000 {
+                               compatible = "aspeed,ast-uart-sdma";
+                               reg = <0x1e79e000 0x400>;
+                               interrupts = <50>;
+                               status = "disabled";
+                       };
+this node  doesn't binds with any driver.
+DMA controller is handled as a separate SW layer,and is included in the same driver.
+This DMA controller node is included in DT just for Register and interrupt details
+
+
+
+node for DMA-UART :
+
+
+Required properties:
+
+- compatible: "aspeed,ast-sdma-uart"
+- reg: The base address of the UART register bank
+- interrupts: should contain interrupt specifier.
+- clocks: Clock driving the hardware;
+- pinctrl-0 : list of pinconfigurations
+- dma-channel: channel of DMA-controller which is used
+
+Example:
+
+                 dma_uart1: dma_uart1@1e783000{
+                          compatible = "aspeed,ast-sdma-uart";
+                          reg = <0x1e783000 0x1000>;
+                          reg-shift = <2>;
+                          interrupts = <9>;
+                          clocks = <&syscon ASPEED_CLK_GATE_UART1CLK>;
+                          dma-channel = <0>;
+                          no-loopback-test;
+                          pinctrl-names = "default";
+                          pinctrl-0 = <&pinctrl_txd1_default &pinctrl_rxd1_default>;
+                          status = "disabled";
+                       };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
