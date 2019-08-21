Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F062987FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 01:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OylTrFyzKsGTBvb48XUEW+GlB+XAQfidI40XSelZ9io=; b=ldVDQ2bGoiiQow
	2fKHH5h7Z/aWqt0EBQXK04crlPSMPPS4o70fhnqhm6DbL/vKSz0Ez+ldFns2pmf0oC/JojA0wZPQ6
	KwNTFijpOAMsBsI2cYPNMWixLSGaw7k4e/VOk4SJNmZS4OqDotBOEBYcBYiX+uHd+1/feodBKBtBi
	3NlyT9g+LYc/8YT+/YYV4uw0M9bp6ppXP7/7AuykvOo4IA53dBvH2INP1g40h9ezF5BUihXO5Bbrq
	XU9JJyuLn9bdizMcphtipED6Ks8Ilmclq2q/kkEsRrdwR4IXOkgoYrfQ0AS0hkB/5Xs69CTCU2Yac
	ulivCJGHprhcIxsM+5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aCg-0005iW-7s; Wed, 21 Aug 2019 23:39:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0aCY-0005hD-Ez
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 23:39:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id c81so2505018pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 16:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=RoJLziPgJY9mLs+fRu2lKqTyEaUKSYiiOnVn7t9lzGo=;
 b=znM/oClHkBR6pN7RG6wDMkQnx6pbsRIaoNYQc2ceYPiPEl7hq69Qo14MyokFBCw2Xe
 FQ20sImAG9QaU+NbtIppKgexVWzDXK7u3I2TJkT7ch4fu0lhJyBfxEQnkTfHBDvjMSBK
 SBjbbFjeIO1/Uug6SqmyTdB2c9tIYDcPZZc5y1rgtbC2kpInFxWKmChK9bLwT7GvdFbD
 zXk4Lw6gFtHp+EJz64710+rpjuMARq6Zx3BHACB26ZRCfJoRZD+X+W7tc6iRJTi2dOXi
 K6vTKICEJmVxIQEBRpUEaBsT6/s5TODqCjYQ7Ba0Bc8KTkwktqpTmNnvQe18Qg4JtDPr
 HDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=RoJLziPgJY9mLs+fRu2lKqTyEaUKSYiiOnVn7t9lzGo=;
 b=qN7NAkawDfvSj+G2+GW3HzPnOSoJdgMuDUP/kY/+H49jDGqVyF9WimJ+RkzVE9oXJ0
 Tpsh9BePXXCpwp+niH64DHH+5zycgf/+JbyUJrTsz/DyAnusj7XdJk32vUYDTdWyc0JZ
 k7J7UL7CiJoc9YJ8cJoKT1jadD+UbJfARai/kvO0GM6hH6JF7Qi80VRblKO/ytzYcMtc
 m19MZmIC94dPEOb0pNClRo6nW5BfB/nBHRz/cRB7fKKt8dqXBizetKO1kZ7K6QOMY3gL
 TQJOoCp3GUqjL0daLQijPBftaWrOj5mBCgv3Ifw0bu0lGdARI3MFeXIgxFwdb5GpY5pP
 Dcag==
X-Gm-Message-State: APjAAAXlUhGu5fqFi59wmFDvSlxgPFSZHPZLOVcjzJGJuNUSf274tou8
 hbjlk2brcWA4fN80Jsx20EMkyw==
X-Google-Smtp-Source: APXvYqxbUoVvUvpMfuvIMtOftEIUIVFxHRXscpTOlg7Xd4x9nP3Em83MNj+d7QIroKxxfU76f9qS/w==
X-Received: by 2002:a17:90a:d793:: with SMTP id
 z19mr2480702pju.36.1566430777357; 
 Wed, 21 Aug 2019 16:39:37 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id s5sm24549074pfm.97.2019.08.21.16.39.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 16:39:36 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v4 0/6] Add support of New Amlogic temperature sensor for
 G12 SoCs
In-Reply-To: <20190821222421.30242-1-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
Date: Wed, 21 Aug 2019 16:39:36 -0700
Message-ID: <7hk1b65brb.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_163938_615772_25890C01 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> This patchs series add support of New Amlogic temperature sensor and minimal
> thermal zone for SEI510 and ODROID-N2 boards.
>
> First implementation was doing on IIO[1] but after comments i move on thermal framework.
> Formulas and calibration values come from amlogic.
>
> Changes since v3:
>   - Add cooling map and trip point for hot type
>   - move compatible on g12a instead of g12 to be aligned with others
>   - add all reviewer, sorry for this mistake
>
> Changes since v2:
>   - fix yaml documention
>   - remove unneeded status variable for temperature-sensor node
>   - rework driver after Martin review
>   - add some information in commit message
>
> Changes since v1:
>   - fix enum vs const in documentation
>   - fix error with thermal-sensor-cells value set to 1 instead of 0
>   - add some dependencies needed to add cooling-maps
>
> Dependencies :
> - patch 3,4 & 5: depends on Neil's patch and series :
>               - missing dwc2 phy-names[2]
>               - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]
>
> [1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
> [2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
> [3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
> [4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
> [5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/
>
>
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>

nit: you should put these on the individual patches, since the cover
letter does not get applied to any tree, any tags here get lost.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
