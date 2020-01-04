Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFCF130460
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 21:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jflhV0s8jvOOyNEHp2oyDp+JZqTd6CFV/gUi5HlIEiY=; b=nhgWdGwdyrIUYK
	OvWBz2KAd7eqZpVyjwm2ta0R3txr2zr4ouGGdRxqptKlsVtrAGbowb0r6wra+kjxKyQLBelL8uKva
	fxt4AxyMYs9aoI654y8EESNPNO3Zq0aa3NHZOTT+Q+bEkcwi//N/olOTHSl4tiB5GTMF+pihx6bTP
	f06DWX+F+lDCeLhtqwk4pFTAFA8KTfauIgxbZHhd6TbjZZq87W2gVa8souPBhGY4AnWv8VzEpOlog
	7gmi417++e0SYL/XOu+RevykusPR9YjdqjvW4jIDzzNN8xLD/bYSRpWfuAQK2rJBotiaoU+68Tzs5
	QXBZ1b4rxgPidvnZeXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inq1T-00083E-CF; Sat, 04 Jan 2020 20:27:47 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inq19-0007vU-5X; Sat, 04 Jan 2020 20:27:28 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l35so6090195pje.3;
 Sat, 04 Jan 2020 12:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=HJy76YM2N1yba8mg4BtiDuoyJEAWWP/jvJI+Qk0+uxM=;
 b=FyINPNLtVkKrjh7/mSLbipyFuu2xRsx3wcavrG2eiIBagNyG2pc3AV6qBli37V8k9q
 Ed+em6X3XZ7LryZ3RkdHz6YocGp0mQipUvBHR+W/UrrJ9IXL80pfaTBscpEJrz8fxo8N
 shx/GwU7INXWjnqwmn1VdbYA7IOgZ1n9Ve4QFXgVw8P8K7Hoq7EEVRYlkXIY3HAeAKRh
 TH6drKlnjByEPV2Xaat65wZ4p9JBYDErE0sHoJgnYqIqA7tK6oRWFMq7F8KPyjtLS2if
 UJBVnuWZK67VIVd9Zba8uayJYaiXxFM+CvISVpEeYQogrFgvc0f2x1nawL/dqmrufkUn
 dGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HJy76YM2N1yba8mg4BtiDuoyJEAWWP/jvJI+Qk0+uxM=;
 b=paDJfhMEi4cAaHja5bTKEwPCKjuE3At7d+ljxktqYlXTLpoaeul9TPDQ4rmkmiPYCY
 o58iCiWe5417txBxpNLsQnghEeT6DgkcgYQbBC8AOf8LEQgku7LC70A38ds/L6VFO+L9
 ptqLmohKPGjzWLZN/wxHJ1KFCDShyaS6sW8wam8nuKfSg/0rQlTSkcykodVwIsQwUsK/
 QNbYfhGSHFA+6fVR9l/r+1dcCQ/vJytPykRN10zvB8k+rxtXIKGJTjpLm65w6a/RmME5
 Q/CjWhkzIRaGbavUXcXxDJ4QKsTOfii1eHHlvQ3v6G95d+pQQsB3qR5ufjd6531p1hpP
 dWig==
X-Gm-Message-State: APjAAAUulxNKKJDnkl+2G7fnXT0KDfLxweggL6GRDQhSFMXMwEAO+N9/
 ryQs9EHVRMZcO5SBFG+8rFw=
X-Google-Smtp-Source: APXvYqxErlcQTXI8HcFMFVttuRqN/byY/mQ5n+QNJgPB0Qv/3EkHLfd0FjMxSDXrLS2U7Fp8QkPi3Q==
X-Received: by 2002:a17:90a:7781:: with SMTP id
 v1mr34763654pjk.57.1578169646381; 
 Sat, 04 Jan 2020 12:27:26 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id q8sm68850329pgg.92.2020.01.04.12.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 12:27:26 -0800 (PST)
Date: Sat, 4 Jan 2020 12:27:23 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2] mtd: rawnand: atmel: switch to using
 devm_fwnode_gpiod_get()
Message-ID: <20200104202723.GA16116@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_122727_214418_15406631 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_fwnode_get_index_gpiod_from_child() is going away as the name is
too unwieldy, let's switch to using the new devm_fwnode_gpiod_get().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---

V2: fixed a typo notices by Alexandre Belloni

 drivers/mtd/nand/raw/atmel/nand-controller.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 8d6be90a6fe8a..3ba17a98df4dd 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1578,9 +1578,8 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 
 	nand->numcs = numcs;
 
-	gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "det", 0,
-						      &np->fwnode, GPIOD_IN,
-						      "nand-det");
+	gpio = devm_fwnode_gpiod_get(nc->dev, of_fwnode_handle(np),
+				     "det", GPIOD_IN, "nand-det");
 	if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
 		dev_err(nc->dev,
 			"Failed to get detect gpio (err = %ld)\n",
@@ -1624,9 +1623,10 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 			nand->cs[i].rb.type = ATMEL_NAND_NATIVE_RB;
 			nand->cs[i].rb.id = val;
 		} else {
-			gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev,
-							"rb", i, &np->fwnode,
-							GPIOD_IN, "nand-rb");
+			gpio = devm_fwnode_gpiod_get_index(nc->dev,
+							   of_fwnode_handle(np),
+							   "rb", i, GPIOD_IN,
+							   "nand-rb");
 			if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
 				dev_err(nc->dev,
 					"Failed to get R/B gpio (err = %ld)\n",
@@ -1640,10 +1640,10 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 			}
 		}
 
-		gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "cs",
-							      i, &np->fwnode,
-							      GPIOD_OUT_HIGH,
-							      "nand-cs");
+		gpio = devm_fwnode_gpiod_get_index(nc->dev,
+						   of_fwnode_handle(np),
+						   "cs", i, GPIOD_OUT_HIGH,
+						   "nand-cs");
 		if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
 			dev_err(nc->dev,
 				"Failed to get CS gpio (err = %ld)\n",
-- 
2.24.1.735.g03f4e72817-goog


-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
