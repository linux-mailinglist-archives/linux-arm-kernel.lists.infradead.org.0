Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A3176F5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hjj6smcGhG9Kdxwc+n04FseRY1Hauabs5uenXEG4JE0=; b=c/9TBpKOCI6uwgU4bA+JVw9i7S
	AoOsXU5eoHPSrhegf5txIUikrkR4u1YxTMLu3faFGQbE8OSPD9F4RbT/Maa+H9bLX2Cn13LUjJ2i0
	fw6zUlyDDHVm6X3Pqdi0LSgHAfguhPBrS0qSc41L+7XXeKl9iZ7VGyR9gHwbXbumsavTR+SqzANMs
	dKgfvVx9Nro7J+Ae6/AQHuOU5EhwpwW+oSJzPaPOw1XWNpjs8gx8ei0ZYtR5lL4We4b4gN/g+iSkL
	+AQznyTkSmaEvczddPPcdkpxWMDDBDpE5kK/8/2h1aNVzrZdpZHs7xkLkkxul+FXLxadoI7NLDGox
	zZnaWZnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90zq-0003wB-Li; Tue, 03 Mar 2020 06:25:38 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90y9-0001C7-ML
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:55 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a18so877015pjs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AJWVhyWnEHa+16Vui1urxy6sASoDRCYbuAsm+q77gXs=;
 b=APn8RafPWLC33RJLX6TCTiGRb/43wtYEQOud3T6k/8l5hLjc08tRx5C2qRpMKAeAnA
 ZPB2XlcQcSz9uRgyvmkWsVWp0jwp1wCNBPnad6vFVDVgsCX7qWcBNGDtydlsYjgG13Q+
 JPV+xK6HbibTroJ3PMREqbZCjC2J3dM2lgB5dIEzYSPexKJsny6YxFQDl4qg4QY8BST3
 rHz4Oc+wu/2kDQkW2NZYRd2BfOC2YUuymHLrN3DmnonUFyvtJXl59/oS/JHfUjlQE7xS
 mNtZFeAbRKyTFr7R2IqrYDyjfq/sqh8R3AhV/pFlCnjw23rnbfifPejKh/05DDLnH7v+
 WkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AJWVhyWnEHa+16Vui1urxy6sASoDRCYbuAsm+q77gXs=;
 b=e8+ub9TmQ94WGe15tUUAR549KszG86xapB3LLsu7Ne/N8qXUuJkCNvQwfTcsrIVpo4
 4BfeOcDiTBiJ2XOKl1YIQFM3zeQ0Wi6KkhTadqteYcnFKhoKDgIcGU78HEK5u/vQFJVc
 mYlnXg2LJsofjbOlF/1aMVD5zaAbJL5uG7giZUC4B+1QeTLI7Z4ODeGNip/9YlLeaMWK
 k3Q6eUue/nzIdCbfGIeg1DKogHB4pWEdqRgQK9wQ/JMhEo+QWU9U7PIBv0t85znI0V7o
 SUKXkanBN8AT2eSnWcN7iZW/wHfnvHR8r9+5dmIoqwZVqyJDkhuDU40uMAM3UM9+1JyL
 rM2A==
X-Gm-Message-State: ANhLgQ0B6qHVMNw3ycjiPDpo41EtMgS20vZuOMuHwP1KllA7+Ez5ADy6
 1d7aZIpEl89cO7XD4bmjcRA=
X-Google-Smtp-Source: ADFU+vu9XHZAPJ11uio30zd0ulJFBhMoXCNmPsvqw6amAMfXgqEAt3txRdMXOBF/hDXaXINhU1En/w==
X-Received: by 2002:a17:90a:fb4d:: with SMTP id
 iq13mr2332424pjb.165.1583216632735; 
 Mon, 02 Mar 2020 22:23:52 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:52 -0800 (PST)
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
Subject: [PATCH v7 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Mon,  2 Mar 2020 22:23:34 -0800
Message-Id: <20200303062336.7361-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303062336.7361-1-rentao.bupt@gmail.com>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222353_783065_8ED70C9C 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v2/v3/v4/v5/v6/v7.
   - It's given v7 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index ebec0fa8baa7..f12ec04d3cbc 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -195,6 +195,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2ad_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
