Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EEC1ECB80
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkpiWZyQDAGwu3Q8hNx1TO8CDrk/fv4o0Kye68w5C0c=; b=FzDCmthfWTnYGt
	g3PfcaRWoHTUMfQ9SAP3HKSWS/DAleVRucbq90ff+CEacEf9f5aevN8IMLu65lnq6Ypj1V7l6EQAE
	n6Mko3P8ro2dB52Da0vVU/hk0vxvEH7N91SagKp8do8fYNg3LNrMmpt4eDu3l+QyCMF+XCDXBWXMa
	8gYcddJtrima4hM/68j0HlqJhsNffz5MYYIVaqJKn/d4SgJp608RuQ3EBS99VU15g38MuroWRbEI/
	sKOThCnkdpQPNzA2tbkxNzWD0R80zjSywrufm+sVtUTylZVBbLu9+0Cd3bHO+dvDoc7OJBgIHk2J3
	Iql1dXa8580Klcidi5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOn3-00044r-N2; Wed, 03 Jun 2020 08:30:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOmx-000445-24
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:30:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id r10so1257783pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=Vm2rNwbfPao4e2I5pWY0wiZoJOeGk4AhOiG6Z/5T/cc=;
 b=Vyc2OKuhMNM+m3bEYlhMtN7QYParoLisO2XTS7OXJKQrXcq+BPboim9P6FyY+YoRbA
 sYp2r1vYXikG7w0aowvM3H44/AQ3Vx6koCEgm7kIIXnOjWKXANkm8QvGVmVORe/A4RC3
 RsAc4evczs7WiEQluUzli94TrYErfOP6VHrlf7wfeF9BF5b167vgEwvDvOGzoNXp80A2
 dqZIFLvtbY8xCi8fn/K/KEGohyRHLVs8FBxB76Wpg7MZrdoq5WhvCh8tUnmfn5FDJ4re
 QLLQS0X8QlyAh0z/JKkOVaKz6rnl4vyXhqPNWJLGQIF/dj6pe9vMq+w/EbqkEz2FUpM5
 Wx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=Vm2rNwbfPao4e2I5pWY0wiZoJOeGk4AhOiG6Z/5T/cc=;
 b=Bq2j/DlxIpC5bYp8eCHGVqV9INyiKVnHHttWDuOiLlrCXTShlgjyI8qUEFJ/ZQTiwI
 lYtpC1LJgBYQsHUA8BWEzwZamllDSfAK1IqhUyaJiWlfMMSBdC4kl8Udu2s/9ESZH/nn
 xIKNhfXYIMjl6dC2A/r1+OxRkYQXqTmTq26j19hcVate9XHB88Ww7iAuCwl1UiVQ65Be
 OZtQ27wdzyIi5gqqZ8mY17a0D/YyEeBa67Blj5iRZNck23aKhf6gGyjty40/t8TW48m+
 1OtKG1fxjDjI+d5lGchTa+dj733WQbUGRc7ffpxTxpMEtAxHOYY/g9xSsgdZBMEs7az3
 giCA==
X-Gm-Message-State: AOAM532jHcLCvJKhypqVBJW9BtH1gBxD4vbx96nXB1XZr/9jfftwN5Ig
 +vtmGKo/zGMi/CsqtmJvSj9G
X-Google-Smtp-Source: ABdhPJwtBYv4OfeBBiKv6vChqL7mdmvw08uaaouRRsDP2wtQ+XZeQo9VM+8C3RNZlD4J8wYKP3hEfg==
X-Received: by 2002:a63:7353:: with SMTP id d19mr28852908pgn.239.1591173018031; 
 Wed, 03 Jun 2020 01:30:18 -0700 (PDT)
Received: from ?IPv6:2409:4072:6e19:d568:fc3d:9e72:444d:f928?
 ([2409:4072:6e19:d568:fc3d:9e72:444d:f928])
 by smtp.gmail.com with ESMTPSA id 207sm1240606pfw.190.2020.06.03.01.30.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 01:30:17 -0700 (PDT)
Date: Wed, 03 Jun 2020 14:00:08 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <1591119192-18538-7-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
 <1591119192-18538-7-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v3 06/10] arm64: dts: actions: Add DMA Controller for S700
To: Amit Singh Tomar <amittomer25@gmail.com>, andre.przywara@arm.com,
 afaerber@suse.de, vkoul@kernel.org, robh+dt@kernel.org
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <5B0DBC8E-36C3-4DC9-A5A4-043313C4C7FD@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_013019_111846_B7561A12 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2 June 2020 11:03:08 PM IST, Amit Singh Tomar <amittomer25@gmail.com> wrote:
>This commit adds DAM controller present on Actions S700, it differs

DMA

>from
>S900 in terms of number of dma channels and requests.
>
>Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
>---
>Changes since v2:
>	* added power-domain property as sps
>          is enabled now and DMA needs it.
>Changes since v1:
>        * No Change.
>Changes since RFC:
>        * No Change.
>---
> arch/arm64/boot/dts/actions/s700.dtsi | 15 +++++++++++++++
> 1 file changed, 15 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/actions/s700.dtsi
>b/arch/arm64/boot/dts/actions/s700.dtsi
>index f8eb72bb4125..605594dd7a0e 100644
>--- a/arch/arm64/boot/dts/actions/s700.dtsi
>+++ b/arch/arm64/boot/dts/actions/s700.dtsi
>@@ -6,6 +6,7 @@
> #include <dt-bindings/clock/actions,s700-cmu.h>
> #include <dt-bindings/interrupt-controller/arm-gic.h>
> #include <dt-bindings/reset/actions,s700-reset.h>
>+#include <dt-bindings/power/owl-s700-powergate.h>

Sort this alphabetically. 

Thanks, 
Mani

> 
> / {
> 	compatible = "actions,s700";
>@@ -244,5 +245,19 @@
> 				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
> 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> 		};
>+
>+		dma: dma-controller@e0230000 {
>+			compatible = "actions,s700-dma";
>+			reg = <0x0 0xe0230000 0x0 0x1000>;
>+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
>+			#dma-cells = <1>;
>+			dma-channels = <10>;
>+			dma-requests = <44>;
>+			clocks = <&cmu CLK_DMAC>;
>+			power-domains = <&sps S700_PD_DMA>;
>+		};
> 	};
> };

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
