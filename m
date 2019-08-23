Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB19B065
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r8NzZS0hOAuEEJA/eLe/Yd4uqo1IMl1KYFKU6pDVvmI=; b=Q6v
	UZps9kfKKmMlYupEvk0vQvuf/ElozOPnvyqp+7/WR7VmlVKeJdNZFqzF9/rTWi5ioHQ7jK9B8vlz0
	oClbKpdv9TpSjh1t9mqV1ntMzXc7d+ap2PgQzbEP3TDUPjLbAfwZdbgpNJNDNuYvK5mReJE37gPsL
	08WB8jX/PQZBLsoRXiZZyH6DeDxgbjeksnHGDfPw51sae5MFzfXHEpIS7v0PCdMjs+3uCzAO/DGZf
	4zrbgMG/3/oXKvAwBWZV6ahxvSKZ1uy4RlVeKb19seOR49+Q774qTHXTphu4ESiBEiHCSXFzBKmRA
	H7QZN5ShpBD//EMcTnFSdgZJA5OaMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19Jy-00053p-09; Fri, 23 Aug 2019 13:09:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19Jq-000539-FY; Fri, 23 Aug 2019 13:09:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id m125so9055643wmm.3;
 Fri, 23 Aug 2019 06:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LWXkxTKcRZuK292VQyIRV7T1k9jBHkOyzAtwhFmEx4c=;
 b=OI/DuJjkgMGlZXQBPkxHh7TQ1GzMlu1cMrka1NBxb23WtIcK4HizOFzrxuBp5U3D6M
 nfqr4jWlguNXsb8Dx3J7bdrl4fHVXfg2BZl4UR15+FgjLMdyZ8Tm7LxPIHAUMdA/nE/u
 j2FsayR5GXtTklBPxc9aokyalNPzRP5H2nxtXRKrB7Zg3k++0RCcn9A5oYV0TUo/XXT6
 4W5bKkVVYW4CdK7WxFRhEuWsBom+5vDcbCQVmJ/iMp7Jm/0WkAUTcNOCEp6Fqh1vXOEX
 F1QSySyl7FYgsQYzygsu1x2Et5dJFWNhtbWVWJb2YNgz+aeCoZ93p/iMlhQCGqN6yjI3
 uajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LWXkxTKcRZuK292VQyIRV7T1k9jBHkOyzAtwhFmEx4c=;
 b=jWy+e4+yf8+b4APS2pch56yfcKExBcQpgw+BnDcX8C4P4dLh6rlDjy1kZ411Lfaarm
 muEeKr2DCMSh7KmQwzAyJ9lMhNs+8z7tK0y143VQb9/6rMIId90Gg6NfGmeQ3I5s7QUq
 qCPG9f2FjDT6Sl8NZZD0KeSsgQIv1Fnx2z58SQKAycoy7vAXR60ZUCKtDhLI4u0hMm+F
 uu0l+0fIQLR7wjaBPOr19g8BR0gHOWzWCbfSmw95vfAcH0S2OT0roG9zqAXkZs6MVhPZ
 yrvU7u2MEM1G+toiMfm/S10JhVslRLBfAcqVAkoulR9z1XTQ9SrvxZS61w4z756lEK71
 lfcA==
X-Gm-Message-State: APjAAAVlD2q6LqbzopIs55EISE6gc2l56QhB2L2JJSw6640IPLIi6MPr
 cRepGcjRMnFnRFikKiZ4WVk=
X-Google-Smtp-Source: APXvYqwhKpHj0Q8fey8hFsDLLv62Ne9/S5zXf2J1J0WNDTeBqAJTNILW9Bi8PNbYj4YgXgkxnlrKDg==
X-Received: by 2002:a1c:5402:: with SMTP id i2mr5151617wmb.41.1566565768392;
 Fri, 23 Aug 2019 06:09:28 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id m7sm4359854wmi.18.2019.08.23.06.09.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 23 Aug 2019 06:09:27 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Fri, 23 Aug 2019 17:08:34 +0400
Message-Id: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060930_524901_F7EC2FD2 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

Christian Hewitt (1):
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6

chewitt (2):
  dt-bindings: Add vendor prefix for Ugoos
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 567 +++++++++++++++++++++
 4 files changed, 571 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
