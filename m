Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE8CD2A08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 14:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dlyplBpciGNReaL2bNvElKTiB8lprnH8p8aUu+ynYZg=; b=E0M
	9cPt/PyXLfVBm36iN3Jn3QHVXwrmFJDTpaHHKq03HjHigVhw9Ps8xEoKl2taTZkuREu5Kno5gYwT1
	8sN5M8UvY3vTEbwLA9IIRnSAut5oyLuuvKJuJYOwIgQ+g3QKU9ZcqtwRBNXdmiS+wO4DrgWQdbsgv
	MI7J8eC33txWlvybgdxC7wDKONUdmMGsNspY925RUzI2FNjKtLTu37OSmOXAGKTgFwCAPQQT0HgZI
	4w6NJ7K7ZDSuCRFwIZgr/S9Rc3ulJTbe/nCsKxQQtZ8JzsEEC0ze3dLH0Q+YloSI8kPzw3eGfXTi5
	zymlm4HkPUWAJwq8PMYfgzaB6aRciKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXwa-0007Mj-1o; Thu, 10 Oct 2019 12:53:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXwQ-0007Lt-1M
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 12:53:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id u40so8459005qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 05:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JMYmki5RrHaRjwCnP7sjw/u2+b2BMXwErKQd+XayPPA=;
 b=MZBZ+Glrhv/z0bBi9aYJVdliZo9p4vYaHGNmR2AtE3UfrGqOrmyfKBfvGwaHMfAV6B
 1mGQDdmiIKumbmqRadusJbxDGvy0/vOdwPfnYoTxSG6u55Nv0S52ONr2JlbWVHg4lXP1
 nvkMvts10yi9eJGlmUcg9ylevVwPDMGwCBIXh5P3QppVvrJBhEuGX2pYm38ZJK47yB09
 6ZiRw5Ms7C+7kbQqLK8WU5TevdWW7K42gc8EoSW1ieBcfsoSgVCd3ZBcmtuDX23TTc3U
 oALXiO0PaX1DUOo0yUBvd6Yt6mPzgaWOhNnKIAIVM5SlKcW2UXZgkPgsDsJS6wuLJiU8
 gHhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JMYmki5RrHaRjwCnP7sjw/u2+b2BMXwErKQd+XayPPA=;
 b=IZ+AqfW8OCHtS4ZX0kvfkbXAb7Y6c/W6xKPXEoZFhkXdzrxczbhZTuOOB2JCsxHec4
 6a2mIX50c+hC7AoO5zRffz1TwzJZoEGHBx36W5vkK93QLxsNKmwaLdq4nZ90Wg/XgyIM
 a7BCYdRlcOqMd+2qP2a79mQdtEB4GUEaagbNWovnUOZzM+wPs8kq0Xfm9bT+LB4QKr5l
 94yeNWRWOOVhieMF7brGlZqaf3zevC0iAUc96dr/YLIVdFeT2Y8eeTVZIl+OzV9+KbYt
 pP7E3LhYTbjgQEUD5QOR1+nYu249pUmo+TlmcaBMu9Nqrtd3VVQTUspXJfZyEVYJsi78
 OmHA==
X-Gm-Message-State: APjAAAXOFoSOw8Q7u/2Vq96+u7qyGpaGtAO27CEvYnL4RZEXDfEmywQB
 D0seiMDV21eOKDbLVgT1ka4=
X-Google-Smtp-Source: APXvYqwjhlloFxq4aLh0t3TGN6/3AK1eYkZaeWtSpKekdpuuUkovgZgv0RXaddkN+s47hVrfnkhzlw==
X-Received: by 2002:ac8:4749:: with SMTP id k9mr9944519qtp.257.1570711989702; 
 Thu, 10 Oct 2019 05:53:09 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id t32sm3398509qtb.64.2019.10.10.05.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 05:53:08 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer interrupt-names
Date: Thu, 10 Oct 2019 09:53:00 -0300
Message-Id: <20191010125300.2822-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_055314_107280_648261FD 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew.smirnov@gmail.com, Fabio Estevam <festevam@gmail.com>,
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Documentation/devicetree/bindings/iio/accel/mma8452.txt,
the correct interrupt-names are "INT1" and "INT2", so fix them
accordingly.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Hi Lucas/Andrey,

I don't have access to this board, so please test it if you
have a chance.

I realized this after debugging a mma8451 issue on sabreauto board
and looking at other dts with mma8451 support.

Thanks

 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 93be00a60c88..6fc7494931b9 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -358,7 +358,7 @@
 		compatible = "fsl,mma8451";
 		reg = <0x1c>;
 		interrupt-parent = <&gpio1>;
-		interrupt-names = "int1", "int2";
+		interrupt-names = "INT1", "INT2";
 		interrupts = <18 IRQ_TYPE_LEVEL_LOW>, <20 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
