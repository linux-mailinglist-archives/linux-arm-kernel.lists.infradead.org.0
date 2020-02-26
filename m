Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A296170C3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ue4G5pnWJqun/Fg2MvjZYiDn4XDII6k2YmBWbvxw0SU=; b=C1dj78xsIPlFSnWU1eIW6xpdLt
	SacMKBvy9+x9htk3ufgEo+8nYPatiU/epeBlPg0wB9uIhuQtZroDrxW89z+KezIfI8bU33TVDmERe
	mOIY4TZUrHKngwmLP6QRS+BkaarkIHmmF7nEY5id+/LVr3tQcCyFTm9+TJ2E6aKeg888CxNhB+LzM
	TCwWfrUe6Pc8ysnuvkNMHoZLmS8iAwKnyOYmiqJjUMGwAUvGtiJ5zwxSwyRD70ilGhGQgd/y0AAM5
	yDePFQOI8DjCNdKx8jAVD1FQMkXh5HOMzoNfF/TCc1r9w/ienQ6Xhxs0cjP2dyIkf1+EeEkF/5s8F
	QEzx8R+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75kf-0005Wh-4Y; Wed, 26 Feb 2020 23:06:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75it-0002ua-7x
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:04:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id j9so538180pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9+yo/IkGPp1qDak3+DSJKS9yrgwDO9MzyJ8Z/QdBbKU=;
 b=UsV2z0nLsIGEbKk+qJuR2AIBGe0jT686xaOz+Cdvr2brfJy3XufK6vafPNeTlqEdDl
 jQXw2AmzgODnhKY0gRDpSTptStvAi+JcsBoxZkWq5Cp5rvx2Cyw7811czn9lgPCXbPFr
 l+alMpaOh/okFgZ7gLwQv6l26KL/gowRdHaagnpBbBdHWLebr2mJeo5CBncYNgKg/YAw
 L1mFBx6WmF7goijaPGuUM3HEn4g2hGUT95JK1Szpov+Mq8r0xndMzl2W8rBpJV/R8D6U
 EYaC8FaSPglTWvv1uwucNOhFn/YiXahwfghkgOMgLRA8N/NfaixNngtZZGA6LFOVryUu
 BDBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9+yo/IkGPp1qDak3+DSJKS9yrgwDO9MzyJ8Z/QdBbKU=;
 b=r1xjAfso1Z107ai+IBryxEwCS4TV9eHaRO3r87sMskomtHsh4aLzn1bgXdJ9xlWAEr
 IjvLkmUkU4ofFsK2PlI5GNoD52m9ADaFuXMNzGQY9NNPKpb0HE1enR+FWBDn0+ooAbL2
 TQQpGJ8MAToGS0zNHrOM8GVxm/dHAZxvOlaj3KaH2OqTaehU1HE4ezlNaoe8SJWwkt01
 vbOE+7PDgQ1zsSsQCIDCyMlU7g+mlQMubVD3fkmlyhp5L8+bL+/nYOi+v2wYRPOLL9h6
 F4Id2GUf0mF5Jy6/u/ypu6csW/njGJVkFt8oipoSqkShFLzQoxj/uPGPxkUln05ZQHdU
 6ygQ==
X-Gm-Message-State: APjAAAV2ZbLx+rVIOC4rafNGvhBVbJoKA39IRoytvG92r6GMRY5Je1yH
 6ihWYuuTOJaD8kg00K6XXdo=
X-Google-Smtp-Source: APXvYqwtmuVHJUmsqUiAmU2eGpc2/nC9gueRZYlpT1/CdgW1IuN3362bQTc2e9PKgoTMIdnagaO9kw==
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr1028547pfi.131.1582758250273; 
 Wed, 26 Feb 2020 15:04:10 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::7:5ebf])
 by smtp.gmail.com with ESMTPSA id 3sm3912621pjg.27.2020.02.26.15.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:04:09 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v4 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Wed, 26 Feb 2020 15:03:45 -0800
Message-Id: <20200226230346.672-7-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226230346.672-1-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150411_358629_D5EC846E 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-endpoints"
properties to describe supported number of vhub ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2/v3/v4.
   - It's given v4 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g4.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 807a0fc20670..8e04303e8514 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -164,6 +164,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2d_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
