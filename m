Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A334EC1CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B6m2WLf08IS1VoVHQSf0tCfF2KsntOixYevXzuz8XP0=; b=gm9FFgM7rjLkWb
	RVVENiAB1J0GB48PzccvaTkrLIX4cg4soMrjZjJ8d+DyRQxRhf9zWJsywbyGOBKZON4D+Bi4P/HYC
	jfvD5uweC0NEBGJDztRg56bgktfRweK5yfSiI9gNzL2FllpFi7XDpeelWfgWDo6rv8lCgoxlXdMDA
	SjOchZ4MC4WAHmaHF7JIFy0QRQkRGzAwcQxkV672fThCBCJrz8WBhjPu1GtrWSi5Izzdzmj1skPw0
	gEiRyaSSHHTOE1EBHxPeHs+2+hFrF1XtDTV31Un5cs2DfHWOGWtK/QnaY7eTZb9As3Jpddbpd3lQA
	NEn2aH2NSYgm5H9AtpLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV7T-000652-BQ; Fri, 01 Nov 2019 11:29:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV7L-00064g-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:29:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id p13so4237503pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 04:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p92cuEtTAdh8z1EKgYqkMpcFAcAlUy1RHEnLPK1F3r0=;
 b=Va7OvWaQ1IylgPzGcUGiDESB5xY58kdQRN8v53RjXuvDXnYtSCL1/7dNTInpMCVX28
 1IIbwv+T67P6dzmTFQJvgF7wJDosKVQ+Pt7yXcQgevTRkMT1PO7UmrD4bKbY1WNDcRpO
 hgLM0xgFesm/JaWIH4XcMhoUWpM5i0qYQT99pUwRYPXrgyijVVjiDB6IIa9Ue/7TL5as
 ao2DNvHFCvEM6G4ZpmmgEzGiKyMXWmc4LcFAEupmJ66ZRrnzcUfRLAlEnMNxawMI+hXm
 ccu6XPjBUDd/VxJQJfnuF0s/Z3DaJYRHJNTnNoLaw4P7ORFKmSfFaJdDQrjRqSqKl5W4
 d+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=p92cuEtTAdh8z1EKgYqkMpcFAcAlUy1RHEnLPK1F3r0=;
 b=G1GAX8+hh1w6ggjHrJPVANyVa2M8SvAO8e58emV/ARTUtsaQwgf/r9xx3ASf3XXNEm
 6jKxcnGFqFoywuvd5gKRiPcMf7XAU6zaXlGXa8n30RQ8tt7ZzVZA8UdC2CIuhmFMIvs0
 Bs7GBOekUetLcZe4eQWpTXDUTG8TtGPbz/NWY2SCT5gtzgmJ84/+b/TZU15Y18BRczqN
 R52sorxlpDWv+p49MWFlfx2+vS4uZcybjHVrQPUy3LfsWwEjYcp9M9c90Ki+dq+AhOfo
 isCm06mURDWfK1NTVBmPhZV5kwboERaAbxHUfTFJI/QrQg0dt+08SA7MzA1aoESJHTw6
 pGIQ==
X-Gm-Message-State: APjAAAXLtzTJwglfVS6eslv3YsuRhveeY+tzPX+Q1v12oPxQ0ZNKLSo/
 CjYsyz7VujpHYynYLzthaqw=
X-Google-Smtp-Source: APXvYqzD2S2s1L4Dbn422eCSxcqqNHgSDNJBIeH2OqJKCkhIoP6wcn9tFc6ywCEM9akDLmZBDSOVxQ==
X-Received: by 2002:a17:902:9b93:: with SMTP id
 y19mr11607207plp.96.1572607762144; 
 Fri, 01 Nov 2019 04:29:22 -0700 (PDT)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id w12sm1369427pfn.105.2019.11.01.04.29.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 04:29:21 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 0/3] fsi: Add AST2600 FSI master
Date: Fri,  1 Nov 2019 21:59:01 +1030
Message-Id: <20191101112905.7282-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042923_275241_E06A20F6 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

(It doesn't include Andrew's endian fix from today, those will be merged as
follow ups)

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
