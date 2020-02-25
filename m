Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C516BD28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:19:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKXzHEy2Dm4Zn/vqeoGZjOa+0F6WmcXRoGtJsL65M2g=; b=E970ViTBWyQMLM
	HA7do6zd1KlsunvSkwGLwX7XrVT68m2cAQ92DrHvMfR2Epe0OtZQoyzcKKdIWYtH6cF0Bqp3ORhEg
	GD7u/UCdn4dz76W3GCKTqV3yjFuJL66ecmgI+cGvVYudShGoCfzSV6/s/811v/mcS+lAV2QaRBhP8
	qOFzgv2fklxgEQcR6Pvrs9EndjCdKJJqpgOj5/vnhEfSLCig9LlbLG8J631DxTWydiEBIWNVne0ND
	trC5OmP2GUzYYDd33PkF92Ed+kbprxF7ZZ5d7kV7PrrEF1o9uNwKrVlmk8rzOLB3b0z1Gf+BwmS1l
	1bNyalFLQXiDBH0uh1bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WMu-0004gd-HQ; Tue, 25 Feb 2020 09:19:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WMk-0004gB-Ez
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:18:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so2313270wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 01:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zhzQt0v4AKydtv7tO0DiTIl7lsQ5dKu2Jl12PT3jBCs=;
 b=YKjocvhq/JnPNg/hrU12NGFQsRbbx7F9fqnV7iEKGczlPz+xGVDSI1H7+/DYyEXYVL
 lyHCEqTmK4supfVMUGuWZ1Vk2Zbi9GlkxybRlucE0owRgxWc6DKkOHPbiQCrbYE9cf9k
 +FftO2Bl5//6vKIztfTIKgnqWq35ipFj8C+yafT3e91VPDEAzS+hGgaPUBNR8vBdy3hd
 2tuDdsobqNoBwnsNE6fDlKUBV2WFJL6PerFZJvn1zAxcL1WeLOaiGK4FqW2S0FAFBHyY
 QRhPiclu2MOHbBDc/CzPL0588YYJhyVIdB+WFlzdezZT6rDcddRuScv/mn5cKepB0FrK
 2hTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zhzQt0v4AKydtv7tO0DiTIl7lsQ5dKu2Jl12PT3jBCs=;
 b=GGZ7KMzOwIub4CXaV6AKbbaTkcdiSDJRP5q/I4AbAJY9I8qyy86Y7DYKd6XqHD+Qdr
 NdwZzA5nHZ+BkGYK4Ca+4sTjU1GGOcMLs8SStydtCbUU1VF9TJC6+7+QLN/CoiC+hxlK
 lwhguGRmDpBUN8ethcID927EXA/Gjl0NYIZv+B4pGUwXkQG0kDq1jxwTua+HUOiUUzsH
 qZ8ftQmInxIbwKwq++G7EbBPgL1DZyrD1UqC1fxXBWiwZrmxoTEYOF6uCMtCl9+UcNUD
 r2Ns1Ic28XQpMdY+53bZ5Ox1eXrC/Aknz+G9ZPxOwDZkUGjCFrLzujyAJhFnBwWiMEIo
 r3Ag==
X-Gm-Message-State: APjAAAVfLhPpcYJcHhulangPPjHQPCdoCpmpBtZkWEeGO70IH4fX0HIU
 zxMA43X8hv02c7Zu+tCAcfw=
X-Google-Smtp-Source: APXvYqxoTOz26NdCMff5T3MAlktiniBZ3mI/36yXLv7IUZvGJmyvjDRu/tlExPeR3EkpU4HpBpM+fg==
X-Received: by 2002:a1c:451:: with SMTP id 78mr3980607wme.125.1582622336447;
 Tue, 25 Feb 2020 01:18:56 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id p12sm23271786wrx.10.2020.02.25.01.18.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Feb 2020 01:18:55 -0800 (PST)
Date: Tue, 25 Feb 2020 10:07:55 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH RESEND v3 14/15] arm64: dts: imx: add imx8qm mek support
Message-ID: <20200225090755.GA17799@optiplex>
References: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
 <1573994635-14479-15-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573994635-14479-15-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_011858_522554_F9ED1E6A 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, sboyd@kernel.org, mturquette@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/11/19, Dong Aisheng wrote:
> The i.MX8QuadMax is a Dual (2x) Cortex-A72 and Quad (4x) Cortex-A53
> proccessor with powerful graphic and multimedia features.
> This patch adds i.MX8QuadMax MEK board support.
> 
> Note that MX8QM needs a special workaround for TLB flush due to a SoC
> errata, otherwise there may be random crash if enable both clusters of
> A72 and A53. As the errata workaround is still not in mainline, so we
> disable A72 cluster first for MX8QM MEK.

can you point me to the errata workaround patch for the MMU/TLB Coherency
issue? I observe the same issue here with another imx8qm board.

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
