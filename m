Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C3B1747C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 16:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5NRgPCAl4OyjknmFuSKew/W2+2IvV0sAXoaNrCfTcc0=; b=mkm
	0rl++j2qi2mUDbrPgXgbsvap63acdMn+D1DRj9u0ugb9rqNJCOsi8AlbrdbhMVUVv4fxxl/oBn6OB
	jwK+zomuB9LEn7LhVcOmdV9gUTe4tzcl9c71qKMqQslUed/7WxtPxOWqmOu36YDQ3cYJD7rOSpY4X
	73MOESxPgo60+UYBuIzeJ4y9Wg2cQCV0aZ6b+ZzY6hzcwxmgPwPjkmIRlCKrbFoWMp5R06DSFNA9V
	28Kg2KXYmpy0MZS1xzAC9mrrcp2n2Bat9PCeCVKKzSQBHR63yL80iEJA0GFRlurym4ENSd7m396mG
	LhKBCN466rOPNUksbrxXO90cYBmexJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j84LS-0007Df-04; Sat, 29 Feb 2020 15:48:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j84LE-0007Cv-IQ; Sat, 29 Feb 2020 15:47:49 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so6759535ljh.5;
 Sat, 29 Feb 2020 07:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qKnesHmoBmkag7afF4T2hMq9e7zOlVqqvlQY6asutgI=;
 b=ZYgnTIshFA3SA6KepwgRqr5oUtuUCbz4B2COy7r5yyka2yYxbVu79xdN7YKFTKHiPn
 XHTG0Tr8/akQ1CXsX9zbIvuNoFX617SS6bvk5OlsYRbsu82HqnO8EJKcoALaSk5hmx4Z
 tZZpSJhqWyfxzVkIyIhTU3xTbccdiYy0F+RCgoYGye+XiCxwZJI2h0UdRnhmDUEReIN5
 EBHO4JjUxwCKzrAAx1VJnSzfY1hFS5W7uXiiTmuXkth3aqwoe2Bh7GgJpfLQlWQWwaJX
 rMJq8GsUv7X0Cadle9ZGosMQFdxSZfkSU8s6WXZ2++pdhKMjrdDxH64zPhGUDCfOIjjE
 yMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qKnesHmoBmkag7afF4T2hMq9e7zOlVqqvlQY6asutgI=;
 b=h5WKsexgdxt/xE18vS9nCPAv9nBihb2PI1a1szWDNQ8Dv/DRK6rna0co7qAjjA1zcc
 CQg++DbgBdf71tvcG8uQ0iU7JxttW3u2oO0XPFzLmFOPhONfgA166qjeDllJADdS6Kd/
 onk1rAUNTX6uN2kYc5paUumlRTCen0yCihyZ/QmlaMx4A1L3+bjo8B0LDH25JBCzae3y
 l0ApBMQ09cFdlmhwHyrDAkcey4vFO8hKkb1l7+YdmO8ilCW0LTx3cIw7a7lr625zYUqe
 J54y8rC5r4gZJZ4xkmg5mC9EyFK07El057nkcNpQvYH2ZJFuGj1msZlcaPC5o2tVKKnd
 X8mg==
X-Gm-Message-State: ANhLgQ02ptytDZc6ABpnMcNBMCOlouHqTXL6JH5GgZg3AFDfpzwKQSjn
 nWwsr9v8+K2kMhwLhJhcGnI=
X-Google-Smtp-Source: ADFU+vuJeGLV4/eo3/0Y4eK+BpBa3yvD+ui50MRir/6gj1Ss+eZRs556UDZ9Tud5nszjviVxLu4l0g==
X-Received: by 2002:a05:651c:39b:: with SMTP id
 e27mr4981749ljp.99.1582991264652; 
 Sat, 29 Feb 2020 07:47:44 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id g20sm7294786lfb.33.2020.02.29.07.47.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 07:47:44 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: add dts/bindings for Tanix TX5 Max
Date: Sat, 29 Feb 2020 19:46:52 +0400
Message-Id: <1582991214-85209-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_074748_609750_BBCD5767 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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

This series adds new bindings and a device-tree file for the Tanix TX5 Max
set-top box.

Christian Hewitt (2):
  dt-bindings: arm: amlogic: add support for the Tanix TX5 Max
  arm64: dts: meson-g12a-tanix-tx5max: add initial device tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12a-tanix-tx5max.dts   | 481 +++++++++++++++++++++
 3 files changed, 483 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-tanix-tx5max.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
