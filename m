Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33380519CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fHFvOOuUt0hNK9WuS3b4IVDhBxYzaBAYflh6lXRa7z0=; b=QxR
	UdoHLysQ9TmaJ7sd3IPdFjuDklVqNfntO6RYerGVCMCsdErB1a1bJJkg2sOU59PEZ9pA+KsjGRiHU
	E91IEDuZwOo92re58UXOSY2TPgA5R8kQIhKF63dYJejjgkOPZqinBLkY6Dlr6rbzJTMPs7ADUa0+n
	d+6JekiI1gyiGO6gKesisdIL+NKYFwZfVjaqcMbs03zhuqcAh4F+AT2a2DqOMb7gGspktvqsYjxi8
	FewETM+yG5Z7qlgj9Kzad862576SHcaq3X392UOPtR/XoDQZaMJT+BxsYoDFOtcGBwpEq5ilsWfrg
	QyAzmLZUe8yRRDKLaFur2OmW30KXtJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSxj-000875-DN; Mon, 24 Jun 2019 17:41:03 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSxN-00081e-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:40:42 +0000
Received: by mail-ed1-x52e.google.com with SMTP id k8so22926654eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YEf44NckoojchV2t803u1KHUvq5MtxaQriFFSpdRzc8=;
 b=oaN9PGk/uGPEzPIKcQE/tKUFOPtzzpCaazbg6IBD1A6C2l1BpibdzGm0N/mUBAO5qV
 7wda1EyVdHlqnsEv2ugqYDYsDcvOt8n2FCGqjeCYkdgELUUgJh97DqV2El7Vz7h151Sa
 CgPiIV6AYhOQC3/tJn+wn+3ny02yAbkLZL+2KPmeD+c6P/OCqCSqfjy2OIT4YtiXeNSk
 34/HRpClj8rrlLMs/z9RlAB6zaAPOB19ZA+Wtw2EkjnlTMKn1DhiR0fM4hBDEgHewf2o
 +5dQvhX8f/KmcKiTtG9FAP08X5MBG0JppLqRclVqt+zfN54cs50PaqGC4GTwmuiKMfsa
 Mh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YEf44NckoojchV2t803u1KHUvq5MtxaQriFFSpdRzc8=;
 b=M1/58G+edE5nvgC7LAs33158riXzoP8rIZPSBS75RHqWDw5jMf9DELhC5oTVUHHzDI
 YVGss8kxzHzNmvEqD4mEL0S4pO873GOhAwfvaO+M08ha5K4/WX+1i6gg1uTPR/DSSIoT
 4J/vKg4UceEovNIIn9BChN1miyFp2Fh0egJxbuodlHsa2qANGiZAZ/gSRqS7kyp763gu
 xgUzEgt1FJr5Pc4nJn1tLt+csGJAK3rRRRzxgyrWoRNtgtBX2p/sOG4q85Z6mxi2TY/Z
 A9xc5bcZ6MOpfzXDg0TccVoRDLTQYA/PgfAaUHCMj/zbKyuQxffoUyvMBzNm1FBNqhDI
 soGQ==
X-Gm-Message-State: APjAAAWHjqpe2SbcUYLamKaBjuiMjVw/LbBZmDOOIYAy1Gbm6hUadVxG
 rx1lwGrWTlgtFoBRli7mnrk=
X-Google-Smtp-Source: APXvYqztEpKwQn+ta3o3Tu+kPfn4EvkAYUI6Xwu0TggpiOoJ9fdGSV3MxncuSSJzGZi6cEYgUjoeSw==
X-Received: by 2002:a50:9846:: with SMTP id h6mr109519938edb.263.1561398038772; 
 Mon, 24 Jun 2019 10:40:38 -0700 (PDT)
Received: from localhost (ip1f10d6e1.dynamic.kabel-deutschland.de.
 [31.16.214.225])
 by smtp.gmail.com with ESMTPSA id d23sm1311595ejj.50.2019.06.24.10.40.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 10:40:37 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: oliver.graute@gmail.com
Subject: [PATCHv4 0/2] Variscite DART-6UL SoM support
Date: Mon, 24 Jun 2019 19:40:11 +0200
Message-Id: <1561398017-10548-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_104041_213226_3F3CAF2E 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Need feedback to the following patches which adds support for a DART-6UL Board

Need feedback howto document propertys and compatible the right way

Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits

Oliver Graute (2):
  ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
  ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard

 arch/arm/boot/dts/Makefile                         |   1 +
 .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 458 +++++++++++++++++++++
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 203 +++++++++
 3 files changed, 662 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
