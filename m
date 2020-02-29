Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED831747DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 17:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YKyK01HtAIt+y451JkWNBTt/qrLcDb9BskosGMe7TN0=; b=tAMxTmZsWC5vdB1GV6NNZy9EB+
	KXGgJCHyO5oAlSggf+6ORmtdBRqCRjTwbtf4nDCaLazpgueEOvZYkj+HqK0fs1cCyG0bwnuv1aYqR
	wU81a/YAWANR8c88NU6KCh3K5z8d49NGI88yq0baZb+iYzP4qCDw7Z/sEaZuvK9lu2m6Hjoj5cGj/
	eomuaRiBXbYsOgPH8gFCEcBrBI52SnMdpCAcNmwSk6TCNJEKt/7S/yWEQOouTggBSDK8w7kyQZ2Ci
	aQAjSXRAuaaxXICE1xsTg/Vkc/f5VRmPYVEt2sJxkdIhxaVQDtyeYwvov9DuNsNhNwJi95lR1jOrv
	tKwFNxtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j84ct-0006en-To; Sat, 29 Feb 2020 16:06:03 +0000
Received: from ms9.eaxlabs.cz ([147.135.177.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j84ci-0006cm-B6
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 16:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=eaxlabs.cz;
 s=mail; 
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=0sL7frbHX+9iov4VRw0n07dyNagmVgH6U/A+xu41NOk=; 
 b=U7FACzCGC/KpiyvYGzuV/ssi7fk91JfFx3sPnZIDuDGZDcVFCc5/dLoE37026ZTSmjgiwKDe1kC7W1Mw7wn1lkqRmS4lynTk0j80KGn67sWnqOgYfSiHTbnBbxunDOAwu4LipcXyTZf1a1qmFClCUKIDkVj2Tjrnilv4aiwc+zg=;
Received: from [82.99.129.6] (helo=localhost.localdomain)
 by ms9.eaxlabs.cz with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <devik@eaxlabs.cz>)
 id 1j84ca-000150-MZ; Sat, 29 Feb 2020 17:05:46 +0100
From: Martin Devera <devik@eaxlabs.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-serial@vger.kernel.org (open list:SERIAL DRIVERS),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE), 
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/2] dt-bindings: serial: Add st,swap to stm32-usart
Date: Sat, 29 Feb 2020 17:05:07 +0100
Message-Id: <20200229160507.31309-2-devik@eaxlabs.cz>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200229160507.31309-1-devik@eaxlabs.cz>
References: <20200229160507.31309-1-devik@eaxlabs.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_080552_548760_C7F45774 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Devera <devik@eaxlabs.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new st,swap property to allow for RX & TX pin swapping.

Signed-off-by: Martin Devera <devik@eaxlabs.cz>
---
 Documentation/devicetree/bindings/serial/st,stm32-usart.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
index 08b499045a38..cbfa1f9f4b17 100644
--- a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
+++ b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
@@ -24,6 +24,7 @@ Optional properties:
 - pinctrl-n: Phandle(s) pointing to pin configuration nodes.
   For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
 - st,hw-flow-ctrl: bool flag to enable hardware flow control.
+- st,swap: bool flag to swap RX and TX pins.
 - rs485-rts-delay, rs485-rx-during-tx, rs485-rts-active-low,
   linux,rs485-enabled-at-boot-time: see rs485.txt.
 - dmas: phandle(s) to DMA controller node(s). Refer to stm32-dma.txt
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
