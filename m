Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A22661502
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VHkflj4AAfkiNN1GyUv28l2UThs5dBw6d8zzD9DYV+4=; b=Nk6/SeyGl18bJP
	EAiisws2sG6WxYLc0aNpdbOyraaacsjVPptQa9ttcMaugAY4C892fo+O/+MFj9BbtUvREtSsRGyY8
	rjKKy1FltBjIYsXNpHe1pokibUU9T/z/uwIXN1QN2bpFUXuSmkrL5a1+Gp7nx2suh+1CJ7NHEO7Fl
	Dvac0jBad+z0j5PPCHKdzsyVw4umGvRsZVHP/LFilOaUFnq5gV/cSzIkr3l3i4R4u9DsikD1yLe4P
	B+f9F3etMYfppZRNBiSDoTZFHUz9PTP7YvH+dQQD18wQo+c/9Jrijyl25RuNZothsMAIhqHwJMd38
	0DovV4E1xeIeOUE9uVIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk78G-0002MB-LB; Sun, 07 Jul 2019 13:23:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk77z-0002J9-Km
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:22:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so13247240wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5YdWWVMd38nilr4ywfeyrVqnEs8Y0BgotJ6Skyub8PI=;
 b=J+6b/LTAVvdqXojW7zeBtpk69OLCxogsdNUp9jnUJq6k6kSDJEQauhKM1U4ADgbeh1
 NV8NMC6LeUoEwzgNnlfscQBzUo1HXb2TG68ho8ium36/4spyY2EFpI4zx3kFzf8pxk8N
 HG8x07GvcMXyIBaFq0vOnrBo4bqlE7tibzZdaB0SksZNnDiE5MSc6hGZPmHZMIL8nqiP
 zg3m5jqb7J+gjSWL4O0rrkmna9ny81CSX/rrY+hxcwKBJ2AfOHJxvIuaFB5LlUYtwMYm
 4w2TSHt3d8IODany3rYd55tVsVXy5/A33aQfCFNDtImdvfZX7MDGa2JgUZbkteBjVxiT
 fkOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5YdWWVMd38nilr4ywfeyrVqnEs8Y0BgotJ6Skyub8PI=;
 b=b/HnJVs48KxN9vKkdBtiSTkjACD1hGHbAfAeDbixyeuhdPhhAPF/nZK2DK0LMDoiwn
 oVqUfSLGwMNI5o3oHHOloA9F/jseJ6g3rZfziWLt/oGNDSm/zEusmnO8aIua0x/CU0y6
 zRHSNVdJXqG7IYZfehF/JP2/Z/7VKw0eUd46HdTix6boJn+1YR8l/0wcrBEt0fxpajJo
 utZtyQ3fwaIpy/BXPduI8ZykupBNtxrSpjk4vkXpqwJhe6WQmHsEz6/ZucukiZToVnFC
 VS5mm5JtZReBiKX908mRiMQ5VsBlobALSjPZB6e1o5Evpl90OoVrsoEGCXjYuAu+4sM/
 O2Tw==
X-Gm-Message-State: APjAAAU16Ud+5/AC0LmGqn9uGjIkv0wqB6Dn9bZ7XlfJo199mwAOAmOI
 l/G0ZAlLEtTCWpPqupYjyyY=
X-Google-Smtp-Source: APXvYqxx6qMvoMtymoeRIihBuitmB4LqsyyGmlMPLkdcxJv0gLiGOp4htOMFDuwWb7njVO+89J7gnA==
X-Received: by 2002:a1c:9c8a:: with SMTP id f132mr12359795wme.29.1562505769414; 
 Sun, 07 Jul 2019 06:22:49 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id w15sm2850075wrr.59.2019.07.07.06.22.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:22:48 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:22:46 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 1/6] dt-bindings: interrupt-controller: Document RTD129x
Message-ID: <20190707132246.GB13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062251_697235_22322FDE 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding for Realtek RTD129x interrupt controller.

Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
---
 .../realtek,rtd129x-intc.txt                  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
new file mode 100644
index 000000000000..3ebb7c02afe5
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
@@ -0,0 +1,24 @@
+Realtek RTD129x IRQ Interrupt Controller
+=======================================
+
+Required properties:
+
+- compatible           :  Should be one of the following:
+                          - "realtek,rtd129x-intc-misc"
+                          - "realtek,rtd129x-intc-iso"
+- reg                  :  Specifies the address of the ISR, IER and Unmask
+                          register in couples of "address length".
+- interrupts           :  Specifies the interrupt line which is mux'ed.
+- interrupt-controller :  Presence indicates the node as interrupt controller.
+- #interrupt-cells     :  Shall be 1. See common bindings in interrupt.txt.
+
+
+Example:
+
+	interrupt-controller@98007000 {
+		compatible = "realtek,rtd129x-iso-irq-mux";
+		reg = <0x98007000 0x4 0x98007040 0x4 0x98007004 0x4>;
+		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
