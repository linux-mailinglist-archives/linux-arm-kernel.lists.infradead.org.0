Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC00F8886
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8xXJxNS5IkuT//LbrGgqrSk0tIUlVWqS6xlDwhEkcs=; b=FLTjEIh04m6GFz
	gHJ2mow+onVPqrEsdKYetxoF7jt2+bTdGKbgHAfA/4pzaLSXG8L99dPyl9XgK/mWGwr8UwkHYhsRN
	F+8rHFsJtVIOT03hHYp+WESgSiPxQX/p2z1BNipFjNArOgQx3yjdJqdOXFt+Fcwt0hYVwQ7z3f2p/
	eRkCaV94ESU2e3xG/WD/gTcw9eRZN7haQpWLULrtjD0eWJ77lKjVwNSOnuLSzN5ZN5b8v8HEYKv9Y
	CwIwKZyo33N9hxASeh5RhpPr1qZoFsCaKgknHCGSz6G/JHl6XcRhhAm/+js4UEDETRg59qzYvUQa5
	pPEthChuv0ghvSxB3cBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPgM-0000xo-HC; Tue, 12 Nov 2019 06:29:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPft-0000p4-4t
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id w8so8957558plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tqvyiXnH8UkGAdNwTCxS5w810LeQOP2gbMH2CyilQ6I=;
 b=sNg7r9w1gjY/yePcTrErLI70UhMrPHWOT7T7vwywmSulnjSxVUhPqT4V6uNO60mJ3e
 vAqPUK86J7LpHWSSAec1Aj7oHxSQND4x85+2HKWOSsbcDXHsJeCRJ/+SwvJh9ApE0/2R
 oqosqKgHP4Y+SJNuS/SJDByOKQObbHkgA2Z35Ivgi12N+lHAxF7BXFaS47UX1n9uP1A/
 6t+l+FTDRe0E6JvR+sLSYn3w+mkgxmB53tcUVm7NWgh0soKWFsnKymybUfw87pgC63et
 0zUQ+WbEA4kxKQswnUMXNeAkS/Exa1oXrtSA2i7NDK/yApogDwgzZI8jiVlO1U4Im+WM
 JseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=tqvyiXnH8UkGAdNwTCxS5w810LeQOP2gbMH2CyilQ6I=;
 b=pW/gqt7JE/y9cxl3MTunW62V8GoZd6XnIEt8JZ0/fKRcMWeuTO0d3kzwUb9mo5evQ9
 jJ50nnsTB7dfTps1gaV9IKntRVHTZ51YvKHhbem9dR55BRb+HKQP9Xk0S4R4fnD1Mwoq
 AEisKkOcGw0N199fFDxdryKETTazNi5aKBdSVXCDThimKpQ7+lxA8QGgn3qv8PEgXdeJ
 gkR1/1rGHIuEwCslE9sh255nYjC/dKTzCwOxuFTgc9IDwtXUj40X3uFCl8yWmJoEZtw1
 gKsQC0V2N6T7hZ4Z7kSY53gHLl8elBb1df9+m08nMIaejRB8jqMsr9taYQj2jJhHco2h
 1BhQ==
X-Gm-Message-State: APjAAAUudHjMUOAR9o8rPfmqKY/rPpOUniTMzxUuKtmbcPVnZ/RIOj3H
 k8HBmun+bkjOCfAcSxC5f/I=
X-Google-Smtp-Source: APXvYqyoe7rJ2+5VdBzuA8NOl1+uIGJMl8T9jnyZ98v4unhW9BZhkXMF/83oVCBX4zEwp/Hfk7TOfA==
X-Received: by 2002:a17:902:b584:: with SMTP id
 a4mr18470219pls.246.1573540149128; 
 Mon, 11 Nov 2019 22:29:09 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:08 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 1/5] ARM: config: aspeed-g5: Enable 8250_DW quirks
Date: Tue, 12 Nov 2019 16:58:53 +1030
Message-Id: <20191112062857.32638-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222913_229351_5663E8BC 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver option is used by the AST2600 A0 boards to work around a
hardware issue.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 597536cc9573..b87508c7056c 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -139,6 +139,7 @@ CONFIG_SERIAL_8250_RUNTIME_UARTS=6
 CONFIG_SERIAL_8250_EXTENDED=y
 CONFIG_SERIAL_8250_ASPEED_VUART=y
 CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_8250_DW=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_ASPEED_KCS_IPMI_BMC=y
 CONFIG_ASPEED_BT_IPMI_BMC=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
