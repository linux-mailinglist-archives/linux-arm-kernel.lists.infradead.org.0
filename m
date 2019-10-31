Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C93AEB060
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9EzL5L+RK88yN0vzqdnTrmLw2b0uKP2toKL66pzR5A=; b=N+d2RFBapfo//+
	K/Juwr0l/ReiN4x8qtMIyrFo4Xr6lXYkVRCz2lDr9Th5ymm0s/vaeSEN98gzbNJOAHyDGvKErkwId
	Ga+ITl1Up3Vui6QUIkj8XIB1inm55n5WqK/NPH/z79KDrPuMaJwWpF3ynr11qOV+MIabA0vC2JA0I
	36HfxdeR8Ciw7MMcG2txi/VR5NzvzxDCZ4P/mVAoGpsETGrWxEwxw9wMzDlpovKPxlzNMp1+F8yJs
	7bFeAcFXurEaO2QCekrxfiiG0DIuXq7K8r/w1D4a2VhPtRkMJRfDpaTlUP+D7mEpFvqkn9HS29q5E
	KKZsEXi7ZbtCp47ChQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9d3-0008K4-Vy; Thu, 31 Oct 2019 12:32:42 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9cA-0007dj-VR
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:31:48 +0000
Received: by mail-ed1-f67.google.com with SMTP id l25so4624270edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 05:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vls7ZE/ReY4sJGi7uI5GGsGPMcKXRM5Mo/neO76jsVQ=;
 b=IYxFKQd/M8MMc5dSXJhNfNSzCEo9PkHS0zyHP+6Z7m5Ee3g3VeT8pZZiPkgs24z0wd
 woiCtxnFr2nj2TUlYMFmXBzlXWi5m2T7bSBKoTjhgjd+d+HlhfNGQ17X3fpjaInF3aqY
 6+aClAaab2vxQvlDKVgxQNLB03FPXnTdkjvtSI6dzRxpM7mkdMMeQLX6ewK3VHF6RaNi
 J3PO0yCOpDjRknqpRdEe5a5MPWc1QV795dSVs0PUWzusFe0SRqXBHJuNQwIadnvl0OKH
 g80/PGlwi1f0xTrSXmKrUPPv7BpIlBluAbzya5puJAjnLuL4lsKXx21ud5xW4FA1K0Ee
 nqxw==
X-Gm-Message-State: APjAAAXyJUPodZG3/Je6ZjzaXKrpXS7KJWgqdyYupTEcd1SNGd+sp2rs
 Jbbbh43UTBCm0tv1hwpfyRo=
X-Google-Smtp-Source: APXvYqxv+iB25I5NrbvVPiR7XWHGPnqcPx2J39IflRtWXVi/n7ge7s91adZiNxuKFrKu9WoulT7Cdw==
X-Received: by 2002:a05:6402:110c:: with SMTP id
 u12mr5701239edv.127.1572525104909; 
 Thu, 31 Oct 2019 05:31:44 -0700 (PDT)
Received: from pi3 ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id s16sm57296edd.39.2019.10.31.05.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 05:31:44 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:31:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 01/11] ARM: dts: imx6ul-kontron-n6310: Move common SoM
 nodes to a separate file
Message-ID: <20191031123142.GA27967@pi3>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
 <20191029112655.15058-2-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112655.15058-2-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_053147_134584_2B972012 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 11:27:44AM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The Kontron N6311 and N6411 SoMs are very similar to N6310. In
> preparation to add support for them, we move the common nodes to a
> separate file imx6ul-kontron-n6x1x-som-common.dtsi.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +---------------
>  .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 103 ++++++++++++++++++
>  2 files changed, 104 insertions(+), 94 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
