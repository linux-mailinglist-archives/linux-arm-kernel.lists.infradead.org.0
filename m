Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C56F170C3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+e0rkmgbPbGsXRhA0FCjjWN/r9UWhhBgAxN0xnKZdJQ=; b=py+r1pgWFT9JCKBi+3kpduUcyh
	+I+pyuP5G9tlplaE60Y7w9BhJKGjOSeIbeSD/4Jv9XUUiWycsG7Vs9yC1MD3z+3QMBDtVVI0f6UhZ
	7BtZWozcIkugIlv0WmQAApx2jQnsdoBpLWgWVb7m4eUYCAlwYw1nmoQ4idd1jQlNpEfz99bqnj+W4
	LcvQzg2/c10xYZy69KOQOL18ggojoFiS1YeZynk4FIdkHjklKCWlQw35VLxuBxi6PTl0gy7eeeXsc
	C6BX3A+6vB8TAUuTijWYxIYkyAoXqpxqeP4nqVeAjDFbIk6C+5q+npvNopUBnGTXztpKrGFL/FZxg
	iDWA7tiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75kY-0005GA-Bx; Wed, 26 Feb 2020 23:05:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75ir-0002sw-SS
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:04:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id a6so308208plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d+bBE66toMnZI0qXloRJj6VMGyPFgJVsaJU4ycVPU64=;
 b=QWyxVPh+GD1LDDT6SRxgMhM8owHq1R0CxkEM31q0omdXqtjG3RrJxc0WHgK6rk/MMP
 ttIHaK93ze6IblKQAw4FEvQw9q0UdX9mDb22a+ACFhjTsCe65J7N8TEnKSnrYYkpnKoQ
 zsZpBxZvLAV8/4zNQ6QG5wPgVNF5Z+TKmp9Zv2bWYLHcVQ4tnYSFMbEOD4tFr+AQOewF
 N7h/EA/n3qXZw8+cj03pwIggUWsonWYcIhegU5td6OApxHCkmyUAxIKru9tyZLgb6nZa
 6o2+aXBiK8jD7CzidCFVQkhhD3V06zH2D4dIHpVFYUJmMm7xAE2ydtFwnqBA9PX4B4Ns
 kL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d+bBE66toMnZI0qXloRJj6VMGyPFgJVsaJU4ycVPU64=;
 b=SYnH7mn0k4IBuncKb4vR55U97OdWeSSbTu1cDjnmZYimmBc3YBZ/YTFrWzF27JZSum
 cFqq3+7ksoMBRgyqnZ5ouTjgJQV/2KAa6mytWxyONv1K++EoUKEVb6b6uGDp23snNwdl
 3pz93AvGSnOYDeAQ0oZ+6vxOBYmpz9A36tQpPbw6fma3myZNjM4Ay7Mbcs+OFfg98mTY
 0kznrgfQgj+mMZaQURE7+GAyX7M9yplwKF4A2ZPhZfqkhRwuAfi+M+wxPE1Lq+xi+6Zt
 nbHs3FapcyiE9AFcwAlUqBUUsGYnBwy0Z1cofNLZR56R5Hgnh+8WbJmepfvlyPN/q19f
 /1zg==
X-Gm-Message-State: APjAAAWoh262DBUf/4S3T7+AhqCqZIOmShMNDQbkpgNPJBHD27V1Et4x
 dhEko2Ag75sKbeSPQ/JJlSg=
X-Google-Smtp-Source: APXvYqwW65QAzOMxMHBU9B9LDutGbRm3cSxix5+RauaRaxCzui4CM12rCFWbLrzg/6Aiok32X6FXHQ==
X-Received: by 2002:a17:90a:d103:: with SMTP id
 l3mr1597711pju.116.1582758248654; 
 Wed, 26 Feb 2020 15:04:08 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::7:5ebf])
 by smtp.gmail.com with ESMTPSA id 3sm3912621pjg.27.2020.02.26.15.04.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:04:08 -0800 (PST)
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
Subject: [PATCH v4 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Wed, 26 Feb 2020 15:03:44 -0800
Message-Id: <20200226230346.672-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226230346.672-1-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150410_007874_27D421E6 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
