Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE20F3FC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKMM0yZueQW9l/2ZMJcwJh+4J6ZstpkMQRV5j3EY9To=; b=PlmemKPnlNT/Oa
	o6W85AedOfoP7hvV48LVw57ZD3T6Q/NzOEWOhklw4ZuySI9ynmw8v24LTUFqfhc8vBsSef0mSE18E
	Hh6OfxCBXpZBiNId9K/DIpn01D/F2rMOEkTzS8uyYYmzOSdpPGHp2qS3oTQp2GJAl501zHxLNc9O1
	NDJqINYCmwsvzn8GLmrzJdb9p8D/vMLJ4gND+jl7A3Y1QD5ad0umfjnjDzmIrRwWK69AAaCNXhHRn
	9jzQ3EYY/fq9zX1ZUxc1Llv+o5aGpWWje9J9CzTUG9qhhoqf6lo9vGHUsiatUi9+xSubaSO+0rKZt
	W6MIhDMMY+JPzj3rhBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwjn-0005rE-Ca; Fri, 08 Nov 2019 05:23:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhf-0003oq-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:21:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id k13so3323473pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pGFx+amGu93F2A50py9iOALjdTJpw7/ItloLfCzH0sg=;
 b=FxjdFP0WXWrfIrLD+8gcWy/umEQbWOunx9yjkSz/LLLs4K/VyjyX0EgEYa5CMm5F6w
 SAUoch3awY5CzsHatHgtVRC9h1rmotllGqaN7eQVFoLIwA4Q7Zfr1e8Z2B18dGZ8xAu8
 QoYbA/t5omu9u3U2icdTWcCYwlPbKzMHqD+IgJulOgosUZgxH5W3MHmYQI71tuBjOFFx
 BR8e64XCMSY5iGEB4Z+DLlWTaRinUpFPqPcq4EDdv7x59vVinY1VwRfkEjmIHzX0rDCi
 +62w0PF625kC9XHstmRDdqFR5vEHmEAF85ioDHVJZVjWR+jFhBb7oYGuTP7cAbiCvHCX
 TScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=pGFx+amGu93F2A50py9iOALjdTJpw7/ItloLfCzH0sg=;
 b=eECfZ8cBzGEvWlkMs5WrtQD+lyJWAH89Hm1kxJVOSS5+9QSyHOIRJy38yDbTE9W+iG
 k70y1ywVBcgBYWjR2Gqb3UV3PCcghgx06H5tj5nsQgFXfFZOAUXYtiewLitda1XjWKMT
 8H6pod+5YI69+4tR/T7q6afKibO6yPWxCMZrEbfHdZdR44qLjCgY9IM3LdDXFhKnOrgM
 8dhszf4nAwiIITbR67VlzrC4bwVaR8QoTDpwxv5jMDqVMKiCSsuKRGqmuC27x/vIjm9y
 EWH1k2R+gXnczD/wCetfg2VzJ0seomYlL2b+fx2I+vfIWcF5iKR95Z33dWvlMWTCwgbF
 6ZBQ==
X-Gm-Message-State: APjAAAWX4FHTJCJAi7/YSY1BSXTa0NHKT1Zs78bv21dbnvw9jjFi7dcn
 TXwpT3uaxjjMlUmKjwgf17I=
X-Google-Smtp-Source: APXvYqxciNZfaCcNzGy2TBZD43B3E6OOWrVWrEa5IIAHVWjFI1D487hSYs23XimTIBVclBiUU770SA==
X-Received: by 2002:a63:234c:: with SMTP id u12mr9244517pgm.384.1573190458914; 
 Thu, 07 Nov 2019 21:20:58 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:58 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 11/11] fsi: aspeed: Fix OPB0 byte order register values
Date: Fri,  8 Nov 2019 15:49:45 +1030
Message-Id: <20191108051945.7109-12-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212059_991331_AC8FE53F 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Jeffery <andrew@aj.id.au>

The data byte order selection registers in the APB2OPB primarily expose some
internal plumbing necessary to get correct write accesses onto the OPB.
OPB write cycles require "data mirroring" across the 32-bit data bus to
support variable data width slaves that don't implement "byte enables".
For slaves that do implement byte enables the master can signal which
bytes on the data bus the slave should consider valid.

The data mirroring behaviour is specified by the following table:

    +-----------------+----------+-----------------------------------+
    |                 |          |          32-bit Data Bus          |
    +---------+-------+----------+---------+---------+-------+-------+
    |         |       |          |         |         |       |       |
    |   ABus  | Mn_BE |  Request |   Dbus  |   Dbus  |  Dbus |  Dbus |
    | (30:31) | (0:3) | Transfer |   0:7   |   8:15  | 16:23 | 24:31 |
    |         |       |   Size   |  byte0  |  byte1  | byte2 | byte3 |
    +---------+-------+----------+---------+---------+-------+-------+
    |    00   |  1111 | fullword |  byte0  |  byte1  | byte2 | byte3 |
    +---------+-------+----------+---------+---------+-------+-------+
    |    00   |  1110 | halfword |  byte0  |  byte1  | byte2 |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    01   |  0111 |   byte   | _byte1_ |  byte1  | byte2 | byte3 |
    +---------+-------+----------+---------+---------+-------+-------+
    |    00   |  1100 | halfword |  byte0  |  byte1  |       |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    01   |  0110 |   byte   | _byte1_ |  byte1  | byte2 |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    10   |  0011 | halfword | _byte2_ | _byte3_ | byte2 | byte3 |
    +---------+-------+----------+---------+---------+-------+-------+
    |    00   |  1000 |   byte   |  byte0  |         |       |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    01   |  0100 |   byte   | _byte1_ |  byte1  |       |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    10   |  0010 |   byte   | _byte2_ |         | byte2 |       |
    +---------+-------+----------+---------+---------+-------+-------+
    |    11   |  0001 |   byte   | _byte3_ | _byte3_ |       | byte3 |
    +---------+-------+----------+---------+---------+-------+-------+

Mirrored data values are highlighted by underscores in the Dbus columns.
The values in the ABus and Request Transfer Size columns correspond to
values in the field names listed in the write data order select register
descriptions.

Similar configuration registers are exposed for reads which enables the
secondary purpose of configuring hardware endian conversions. It appears the
data bus byte order is switched around in hardware so set the registers such
that we can access the correct values for all widths. The values were
determined by experimentation on hardware against fixed CFAM register
values to configure the read data order, then in combination with the
table above and the register layout documentation in the AST2600
datasheet performing write/read cycles to configure the write data order
registers.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-master-aspeed.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
index 95e226ac78b9..f49742b310c2 100644
--- a/drivers/fsi/fsi-master-aspeed.c
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -459,11 +459,11 @@ static int fsi_master_aspeed_probe(struct platform_device *pdev)
 	writel(fsi_base, aspeed->base + OPB_FSI_BASE);
 
 	/* Set read data order */
-	writel(0x0011bb1b, aspeed->base + OPB0_READ_ORDER1);
+	writel(0x00030b1b, aspeed->base + OPB0_READ_ORDER1);
 
 	/* Set write data order */
-	writel(0x0011bb1b, aspeed->base + OPB0_WRITE_ORDER1);
-	writel(0xffaa5500, aspeed->base + OPB0_WRITE_ORDER2);
+	writel(0x0011101b, aspeed->base + OPB0_WRITE_ORDER1);
+	writel(0x0c330f3f, aspeed->base + OPB0_WRITE_ORDER2);
 
 	/*
 	 * Select OPB0 for all operations.
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
