Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBD652573
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=caHuyOn7sphvMfNYkq0ngHyNArLdN2i0cvS0dUQORUw=; b=qoRI2772KDRIOjysn0nVlrC7Qp
	J/nZBdvR1fXQYesz3IKzCG3Eg1aBkAovfaKqQTpGOof5aWwrAgKmiAi88G/yR47RRwnJuzP7bmiTP
	tYauhlzAAANJRB4759llpF80ZKvEs1IdhUrGDDhUaC9O68AVWJ7rPO4I9S8F2Gz6thgBKJjVQd38j
	ELZrcgn1q9NgXuutW5oJlb38ZN+n/j67XPnx2P3WNTBFGv1DYkPrJDpQf+kzBEtJJINfLIrwwD1+q
	LBAIUTvIq5u2E7GLL+WBqucJoiWgfiCaxIJ67uRcJibhf2TUYAcGcrgYRDCGPlVQy0AWUjLIRr6x6
	BezgjGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgHh-0007Wg-C4; Tue, 25 Jun 2019 07:54:33 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgGe-000700-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:30 +0000
Received: by mail-vs1-f44.google.com with SMTP id u3so10288114vsh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4A1lTaL81jFVnUZBNm4BGA6ADSA/t4dS2THOnBwrg8U=;
 b=H+l18fErDUTp043+trOdPb+5hofodmp3P2und9NcezHP9TYHmpkAiS9sDrk5Ymjkx9
 q3t/VoGsz8kpjAZb9Afh5n+yNQG6AgI7C3GaTmz+P1agomvmynK+35MqeMulV6XHJ4N/
 0E99uI/5PQoTmRLUD+Br3t6jJaPrPiLW8ACMENSJmL29zf/GAmVmmhnB6qvcUn02hhWy
 iSqE/Wqk01hCftu1vQwZ0edmom+vz5l7gK1skeTQ3zegtV6dY/HwNB0u3HFoGWwj+0+l
 jEgJT0ORwomq1xWTw0BcooUDE866a+Y9Hh60B2zOx1ppqxWeaNKng+k2vgpN8ZoaOklC
 9B9Q==
X-Gm-Message-State: APjAAAWsW9qAqV2FcXZzHbxHBRoIV0bjvGTuA/wr6iGGQppxN6ojxi/U
 FGW9YaHXPnqf8C0Rlv/UNd5ovA==
X-Google-Smtp-Source: APXvYqzYkI54Jp9edpgGmk95swkNFIHW7/aDJFoZsaG9yiV+A4On0tV6bqCNcGfoyxNyct2sBLzmVA==
X-Received: by 2002:a05:6102:3d2:: with SMTP id
 n18mr67610258vsq.123.1561449207518; 
 Tue, 25 Jun 2019 00:53:27 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id w12sm7748885vso.32.2019.06.25.00.53.26
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:27 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 3/7] i.MX DT bindings update for 5.3
Date: Tue, 25 Jun 2019 15:53:01 +0800
Message-Id: <20190625075305.29082-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
References: <20190625075305.29082-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005329_002508_3555FC8E 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.44 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.3

for you to fetch changes up to a10ecf624b7b7c1ec6c263d4562bd6631d380d2f:

  dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35 (2019-06-18 21:39:22 +0800)

----------------------------------------------------------------
i.MX DT bindings for 5.3:
 - Add vendor prefix for Purism SPC.
 - Add bindings for i.MX8MQ EVK Board, Purism Librem5 devkit and i.MX7
   Meerkat96 Board.
 - Add LS1028A specific compatible into qDMA bindings doc.
 - Move Emtrion i.MX6 board bindings to schema.
 - Add missing schemas for i.MX7ULP and i.MX1/31/35 bindings.

----------------------------------------------------------------
Angus Ainslie (Purism) (2):
      dt-bindings: Add an entry for Purism SPC
      dt-bindings: arm: fsl: Add the imx8mq boards

Manivannan Sadhasivam (1):
      dt-bindings: arm: Document 96Boards Meerkat96 devicetree binding

Peng Ma (1):
      dt-bindings: fsl-qdma: Add LS1028A qDMA bindings

Rob Herring (3):
      dt-bindings: arm: Move Emtrion i.MX6 board bindings to schema
      dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
      dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35

 Documentation/devicetree/bindings/arm/emtrion.txt  | 12 ------
 Documentation/devicetree/bindings/arm/fsl.yaml     | 44 ++++++++++++++++++++++
 Documentation/devicetree/bindings/dma/fsl-qdma.txt |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 +
 4 files changed, 47 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/emtrion.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
