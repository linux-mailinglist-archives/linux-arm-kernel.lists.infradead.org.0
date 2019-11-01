Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF80EC1D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+/pyoIPRwZNuqq78cud2JaCfzJnYggAf2DN61X/WnQ=; b=Tnjywn/dGNKNSq
	d6R0EuQX5Kj5kNWV2RsxIxDpMu5HxIyp+wZmV8axqa9R8efeLTobDUkgBe3xXkv1yS2P+kevFAU0N
	hOo58SiTW5HDMNArh+tsI0yXAzlUk+CLO6u0evqgvMhN2WBcDNHY5bjUypqTBFfuzRQZIN4F7nPQ+
	PSTfvwVQ2gkqzpIBZ+YLXozOt4lpxHep9/hjCKnuBSdxOlbo3yFtrWbnSa6IasMtmLrbSY1MqDcpH
	IOUs4R8n1nuRPPiwmq1PrDyU5rlyX8rZyii4N7pvVuqf45EEvJAESwO+HaaqYmf9VQKwsN+79EmRi
	lmZfoAuyXXxG/Ow6j3fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV7g-0006Cb-Rv; Fri, 01 Nov 2019 11:29:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV7Q-00066e-Lj
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:29:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id x6so4234402pln.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 04:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A8jyKNCvhqIlTF0nOXjRHhr0IkGR523dr7Xptd4WjeU=;
 b=VZuTw0liEBDgNPWag7s9u3rT605jQW0C+J9kOxrKuQW2SxAoWVtJY5L7HTRc+O6ivd
 JcUwmNKYhJGe4hwcuUhbggHM9ZzSmDCgPXuGZMQKsfTFZmNraNHLn1MZWh3IJuypD08b
 38q5aqZkn3caQVxCkWi6mWT4UCcw5oJnmwhrI4vUJmpuHy7Po0SbAN7mc0jtMMFtK9Go
 UcSY2zIHqIzy7obLnZGpgy09SeNyVmRfxMSV2T944ka0fwMlKHO9SObLixReJaExUA7C
 Cwh87oW/fZ0vGDOr4IqKzY7Xqi4CcWF2Adxhn63hmg/cExGR4N7AMfT7bwW1a2Mq/0ls
 Rdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=A8jyKNCvhqIlTF0nOXjRHhr0IkGR523dr7Xptd4WjeU=;
 b=RgTYgX3LJCravHtFHC9l9f4DwpzBwmoEOeGaQ8ruNyDFOeOo5f/qL8Jj1j6L3FETUZ
 Kw9Pzh1XvhdcNGmYNH7el831bW5Rivq53lMJRs6QMYIdw8NUgaWFe2pZViR+GwOQOejZ
 bCkcIYFxBbslOuLBrTTbDWZgfb2rEgS/LQVbCYBeJbQUaF+Dh7RmqkJ3ovx5/b7O6L8u
 DyAfoy4RWT4M6rZMKW1MnYAe4l2PrtEhExgkYEBlOtp36HRmKNg5kzx9DeOT2o0tXaGn
 Nd2Tf3lTgZtnFgNc3Xl129k4czERuU27s3OI8Himfr7wn1LPb5ud/nuSFFcAq6uwNF/5
 zifQ==
X-Gm-Message-State: APjAAAUdSOhBi/4TmKIYCI7aO64harme7xdwVBQ/7WHQMLtU7bG1p4BE
 mz7MOiWkgGi5Otn+Beeu5Ic=
X-Google-Smtp-Source: APXvYqycVMxkU+yInakKmu4Soq8iUpqZIlFuQ9dRzFPGLmsXP4Q7kIBEThFumlZYy0ruVHJaor6kwg==
X-Received: by 2002:a17:902:bb8b:: with SMTP id
 m11mr12169747pls.235.1572607767843; 
 Fri, 01 Nov 2019 04:29:27 -0700 (PDT)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id w12sm1369427pfn.105.2019.11.01.04.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 04:29:27 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 0/3] fsi: Add AST2600 FSI master
Date: Fri,  1 Nov 2019 21:59:02 +1030
Message-Id: <20191101112905.7282-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191101112905.7282-1-joel@jms.id.au>
References: <20191101112905.7282-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042928_721429_94835225 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-fsi@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the FSI master included in the ASPEED AST2600 BMC
SoC.

The driver has been tested on hardware for most operations. Future
enhancements include robust error recovery, DMA support and interrupt
support.

This patch doesn't include Andrew's endian fix from today, but we can
merge that as a follow up.

Please review!

Joel Stanley (3):
  dt-bindings: fsi: Add description of FSI master
  fsi: Add ast2600 master driver
  fsi: aspeed: Add trace points

 .../bindings/fsi/fsi-master-aspeed.txt        |  24 +
 drivers/fsi/Kconfig                           |   6 +
 drivers/fsi/Makefile                          |   1 +
 drivers/fsi/fsi-master-aspeed.c               | 550 ++++++++++++++++++
 include/trace/events/fsi_master_aspeed.h      |  77 +++
 5 files changed, 658 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
 create mode 100644 drivers/fsi/fsi-master-aspeed.c
 create mode 100644 include/trace/events/fsi_master_aspeed.h

-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
