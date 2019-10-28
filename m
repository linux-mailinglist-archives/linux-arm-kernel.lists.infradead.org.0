Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA17E6F39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ewq0i+F5tt61k9EbWY2XGUoyrLn3ofvOUrCLOhIoPdQ=; b=tLBPhjD3RRLb2k
	bD4BP3zyjKK+NLVXCHovxUGxMESCCRfenD7K1BuxFQC7o+z3lmH9pp+Vx7r9+vXvRpgk//5MyBk38
	xWFXeu4O1BW/frhXx0vhNUvc73Lc2zeOXSaAxBn5DZnpYwosH1YWRNbgdl7pgy0CWwWvS307mgYFm
	KeSwEcmqKVs6hTfofUIMCjWRVUeiI4mOcpz6muLQH0MpNF3DFvnCno78y/MLfNIGMH8PEjlJyd03n
	jX2sXBTa+/XHtJ1QjMp3iEb9yyZrnqYtk8VW8nIYVc1E0yzr8Y7GDVoltgZ9uo3sqO9zBFoqLrw6n
	NBep1IA69ppoGfm+cz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1TJ-0005Ve-51; Mon, 28 Oct 2019 09:37:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1T0-0005Uq-Se
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:37:40 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9S9bYrl098528;
 Mon, 28 Oct 2019 04:37:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572255454;
 bh=YtAxq8vmDcqPRQcPeoAHayL8HjbCgszHi2svGRDTwkQ=;
 h=From:To:CC:Subject:Date;
 b=YfYP3vu+opbSnCR66ZodwrSr10hn5NL3woXvfMV8lX+x8iRQK6t8KiFWw9rfMaGoM
 FcvqD2LxLuKWA9WwjjQAyOXbVK/qbro/lz5p0nnESr9FWMszqAYOUiIu2Rr9R/dIjs
 T5iuBKxJ9PikyVV3N9sI8S6Up8HLnIeUPOpy3YMo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9S9bYkK005857
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 28 Oct 2019 04:37:34 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 28
 Oct 2019 04:37:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 28 Oct 2019 04:37:22 -0500
Received: from lta0400828a.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9S9bW4g027237;
 Mon, 28 Oct 2019 04:37:32 -0500
From: Roger Quadros <rogerq@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>
Subject: [PATCH 0/2] [PATCH 0/2] arm64: dts: ti: k3-j721e: Add USB ports
Date: Mon, 28 Oct 2019 11:37:28 +0200
Message-ID: <20191028093730.23094-1-rogerq@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_023739_009869_3E95CBF9 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series enables USB 2.0 support on j721e-common-proc-board.

The USB0 is available as a type-C port. Although it is super-speed
capable, we limit it to high-speed for now till SERDES PHY
support is added.

USB1 is routed via on-board USB2.0 hub to 2 type-A ports. USB1
is used as high-speed host.

Controller side DT binding is approved [1]. Driver [2] is yet to be
in USB tree. This series is safe to be picked for -next.

[1] https://lkml.org/lkml/2019/10/25/1036
[2] https://lkml.org/lkml/2019/10/24/371

Series is based on top of Tero's ti-k3-next branch.

cheers,
-roger

Roger Quadros (2):
  arm64: dts: ti: k3-j721e-main: add USB controller nodes
  arm64: dts: ti: k3-j721e-common-proc-board: Add USB ports

 .../dts/ti/k3-j721e-common-proc-board.dts     | 35 +++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 60 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  2 +
 3 files changed, 97 insertions(+)

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
