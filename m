Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6152112E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 02:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v3qg9uO2w3oEkl5IbWC+KfnxWuAeSFJ1CExGBO/JgPE=; b=WQKk+w29fLPj8e
	dwZtEZAov7JssobZpyzT8hoqy4EC6DCBWV85GXhLEcq8bg+Z/IupjUZPKZZRTHn+uwrZKgPdoMPmg
	y3ZJtaBQODC4oJ+yg4NrmPscajxFaDLwxv5YAtC96ogcMAbqVsPjVdl13j5q0Vp3cYnesWEOqjvf/
	zj9U/l0RQuz/G7g4iekwvkwXg08NiWlPZpoo3LaTNEjDom30Kl6qrfSy/RE4q9ce/vJqYIttth5wS
	2ax4aJSs1tQvk1ZL1AlH726KXswowWlFlppedzYSXG1qSNlvJfabnRW8UVaAJuF+TaQgaTHpju/hL
	C1kchFDwp5MHNx6eNVxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQYo-0003mw-CD; Fri, 17 May 2019 00:17:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRQYi-0003bx-9E
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 00:17:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so5080894wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 17:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ipIKhR3rDzzU4Pwyzqtz4w/CerKS+j5J4VgKcV7Ejgc=;
 b=rGqHYerEzNXsacWv2Lo+XQn9yV+U3F761T7FsVEUn4aYHnKj43QsN0cH7sSvB872bX
 5ZEBr92ZrfOVcT3Iwt0zLgOzYwwfDXUsH9bvNwfohdDR2oFV4ahlQ2e6ZVQHBjazDT6C
 i6IYiEgxry3a3kquD1I0nIJ00OculvmSUMPxWCafamyRfBzTOqH2nkyre0rA2XCjyFsF
 qd4Wz5K19WuYLxFSCTjGv7GwNKXNklNFEicrUtrMOd+CE0E2LdEppRkrMzzoVqxma8H+
 HJTl+Azv5Uc9TKIJhxN1R+hNcfYrx1CFIf/8LYmXWU3dakyiqQlkoOMfmxj9COdkq4PM
 Ebtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ipIKhR3rDzzU4Pwyzqtz4w/CerKS+j5J4VgKcV7Ejgc=;
 b=HHDfa1vNzpb5YLOM4f7hK2MwyXWkJbx7L6wEGZ17Q/nN1io62Vk8fXC+wOAhgRCs9k
 i2wgYrnjqFEtuQWp4MyA8v4E+85zjn4PrCKv5+3VT57pju8eUPNrwtJEDitczv3yPzJl
 yXOweJQ1zE8RCosLPJ/gGJZX93+Ul48W5f3761rcON8xilvBBg/c1fPGsMOg9EjI8cAq
 sGpc7kZIrBy18u6u62MTZUYKuIMqLNuPBuyX1uiresDH/qRBwo3EhVimF7y/Ru3Vrgb5
 ijMdPI1uaKZolzBjL8r4lSgKlKnueRezIYonTKkRhs0XTS/udIGQw87NSBp6c05SRnvB
 89DA==
X-Gm-Message-State: APjAAAVmVp28u6RRTGHJb4u3UiFqYogJsx1qj6W/o/MUWr/Fb2fO4Cja
 dDATqoniWPkXp2DIQ88H/Vo=
X-Google-Smtp-Source: APXvYqxGk15stT720ZglD+H2zzXTUFTpu9/FuRCZZJrybgL9PD0jYXWScfpXQy7Mpc1xgWUzlCT9sg==
X-Received: by 2002:a1c:c004:: with SMTP id q4mr39942wmf.131.1558052226695;
 Thu, 16 May 2019 17:17:06 -0700 (PDT)
Received: from ash-clevo (111.104.199.146.dyn.plus.net. [146.199.104.111])
 by smtp.gmail.com with ESMTPSA id j46sm13223807wre.54.2019.05.16.17.17.05
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 17:17:06 -0700 (PDT)
Date: Fri, 17 May 2019 01:17:05 +0100
From: Ash Hughes <sehguh.hsa@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: armada: netgear-rn104: Add LCD to RN104 dts.
Message-ID: <20190517001705.GA5451@ash-clevo.lan>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_171712_349617_BE72B45B 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sehguh.hsa[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds the LCD on the rn104 to its dts file.

Signed-off-by: Ash Hughes <sehguh.hsa@gmail.com>
---
 arch/arm/boot/dts/armada-370-netgear-rn104.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/armada-370-netgear-rn104.dts b/arch/arm/boot/dts/armada-370-netgear-rn104.dts
index 9fd1cb9f4992..85e2e9e27a9f 100644
--- a/arch/arm/boot/dts/armada-370-netgear-rn104.dts
+++ b/arch/arm/boot/dts/armada-370-netgear-rn104.dts
@@ -143,6 +143,20 @@
 		};
 	};
 
+	auxdisplay {
+		compatible = "hit,hd44780";
+		data-gpios = <&gpio1 25 GPIO_ACTIVE_HIGH>,
+				<&gpio1 26 GPIO_ACTIVE_HIGH>,
+				<&gpio1 27 GPIO_ACTIVE_HIGH>,
+				<&gpio1 29 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio1 24 GPIO_ACTIVE_HIGH>;
+		rs-gpios = <&gpio1 22 GPIO_ACTIVE_HIGH>;
+		rw-gpios = <&gpio1 23 GPIO_ACTIVE_HIGH>;
+		backlight-gpios = <&gpio1 21 GPIO_ACTIVE_LOW>;
+		display-height-chars = <2>;
+		display-width-chars = <16>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&backup_button_pin
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
