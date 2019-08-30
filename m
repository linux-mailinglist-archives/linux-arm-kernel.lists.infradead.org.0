Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E41A33AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkn7+UyCvZrsdkcDHSwks/KuVf8thE8yP9Zm7d5wARQ=; b=lITJGecC6WkpQN41A9M5wmeBLA
	qkqoVubBjdMIDKt9O+gfRHEuzwxAGa/sAk1PjVMoXLYST4g5OzFzCU7coLs7pB/D8n3pF2yQisluI
	c9DMosFG1JzvJUMOwIvdc46QGi02PzgsE4jFiQZf2X/AOwlIqbwyK7qhNsgAqzRgStqyCvsgtNMa8
	g+jvh0fl4L7Ze87drawa+ogKg0FFnOOaghsxLItYcl7DT5lOF4K2+j0c1LKlloKYzKtZNpCqOLjqM
	BNfrX2qrsgoaQXELRSC1G/acJjfGfPewku6eCE/92qIlEk3ftqavehGycm4WViJr3o+8NP6pniwEk
	R2xKLrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d5a-0001Vl-Cr; Fri, 30 Aug 2019 09:21:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d4j-0000QL-Ls
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:20:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id w16so4254579pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iZqgNQFAGZFiAL+MaQauEs39+uIHNVqT3urPZ1OfwvY=;
 b=vEEMZErjrqbkE0Yt2O0M3pSZapLdQhKFR6Jz5LV86q7cH0uJZmqmSn4UxyeR201COp
 t3B6qRntiLYgA+1MM5JpQpQnA4+WGVyFeGb+b1QgOLONuEoeviEyzTo4mIlQU93a1cyP
 U7NKYVgViyjNKl6VAWDhM6ToSI2koxMxpXeC1NY4mItJl2YHEEHp0tTJrYrbsgtD6JEE
 2pzRxpKMONBU8+8Vp5/uO59LhyHzyL1cVOIb6hUmdqwFxrrzMUpe0jXUjvi/rel9OMRy
 RLuNThpYJNgLmIKuZd5POYNg07J5G0fODzVn5Oj4u/8XsYVAoYbIStDGTV+la2PeUpD6
 BUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iZqgNQFAGZFiAL+MaQauEs39+uIHNVqT3urPZ1OfwvY=;
 b=D1+2kRHsMr+oBGXRP+haCr5p8TVF5/UBjUhsOt7znJ3bU3W/2Zro72EEyWotEChqIO
 aNCVDVhkEN8iKr1VIlwkw+1OcOhoSW2LaH1SXGmttDRx3wWriKb48WyQbYUQ99P35Xa6
 yMW9H1O6yMLvPSl0YqVWC4gnwcKZd1YH/BCOhquhohraY3xmyVl06E/yCgIzhso11aeM
 +7WQj3ee/JlzygV9JAXJSj0hT4ja3mmkwrypddPRfxtXJGE8daCbGD7pJZEkATnr5rXx
 3PC0hx+i4MK+dJr5evrxr3Bl/XZH7ST1oHChPkMdWD7FKmH+Ak+WmynDLveH4vN0TJT4
 w8aA==
X-Gm-Message-State: APjAAAWvtZHD0kWOmUotu0OyraEJP4T5YcZe7sT1CWKMmjOhr01rXm2D
 SAl+Omg+bBRuooyfQ+IrBLNX
X-Google-Smtp-Source: APXvYqzRFHNDr9oad7voBnS6/n543GjlV3A1iB44aDSh9qfP+WzcmpPz9MGSnjRwedesjP+mvAADmQ==
X-Received: by 2002:a17:90a:ad84:: with SMTP id
 s4mr15052314pjq.32.1567156808627; 
 Fri, 30 Aug 2019 02:20:08 -0700 (PDT)
Received: from localhost.localdomain ([103.59.132.163])
 by smtp.googlemail.com with ESMTPSA id
 g202sm3142676pfb.155.2019.08.30.02.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 02:20:08 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v3 3/3] MAINTAINERS: Add entry for IMX290 CMOS image sensor
 driver
Date: Fri, 30 Aug 2019 14:49:43 +0530
Message-Id: <20190830091943.22646-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_022009_791429_A5204EE1 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Sony IMX290 CMOS image sensor driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f7c84004187d..0ee261fca602 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14962,6 +14962,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx274.c
 F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
 
+SONY IMX290 SENSOR DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx290.c
+F:	Documentation/devicetree/bindings/media/i2c/imx290.txt
+
 SONY IMX319 SENSOR DRIVER
 M:	Bingbu Cao <bingbu.cao@intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
