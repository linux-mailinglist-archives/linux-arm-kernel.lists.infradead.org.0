Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D07117C1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 01:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/1hKcsOxzm6pdGA1YShNUQ2qNIJBnsrcJ5ol/BNISU=; b=jaMgv+fSv3BxTM
	bAaV9/bVWffYOEFnFjOs2MyxRrTzjs0UvpuwPeRfOFEBfGqziFYqkJk85wy7O3XdXuNDytc3sVEnH
	eGveRUP92ofn1iVjm7t+A7WUNsjSbsOREUh8LE0bMoEYHupwvIa2203tSPeRPxGfu9VizSP6a0I+8
	tU2Aj1H2qy0Zf5rPiTly2fUqk6qVMIGxOeLEJBACCfF1VRlRpFiwsNp5fNRaJUssjQVUf0saA+6Zi
	gj6kAgOkmJUPfAyhu9DZIOIsoTAif2/zvH+5SSO1rIHMYf76ZSSJUQZQ2Hvt9Dd9upCQdf27AGzgo
	ml9W7mpE1YGVrQxNsOkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieT38-0001Qg-Q5; Tue, 10 Dec 2019 00:06:46 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieT32-0001QI-9u
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 00:06:41 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3DB0D2304C;
 Tue, 10 Dec 2019 01:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575936398;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SQSB7aaTDeosGfScfkElLltHtjKOhiB3ySxyA9Xk4pM=;
 b=LUb2ArSKFj734DrOu29xTCX5VFhRmcC3RSuas9H1v/tSYzhwBSW1kMjgdhtDLqHIG7dFAn
 PyiSvI3s+28kf1XW5HIv9jMMMn+s9bFSG8hOBc1DXqRC2K75rCMD/hLVHIOTqeSQEOeKhh
 2YmXlEbmCsCeHfJKLa1JCJZEBJLbIxU=
From: Michael Walle <michael@walle.cc>
To: yinbo.zhu@nxp.com
Subject: Re: [PATCH v1 3/4] arm64: dts: ls1028a: fix little-big endian issue
 for dcfg
Date: Tue, 10 Dec 2019 01:06:23 +0100
Message-Id: <20191210000623.22321-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814072649.8237-3-yinbo.zhu@nxp.com>
References: <20190814072649.8237-3-yinbo.zhu@nxp.com>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 3DB0D2304C
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[21]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.685]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_160640_494707_EC5B736C 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amit.jain_1@nxp.com,
 linux-kernel@vger.kernel.org, rajesh.bhagat@nxp.com, alison.wang@nxp.com,
 alexandru.marginean@nxp.com, catalin.horghidan@nxp.com, Ashish.Kumar@nxp.com,
 xiaobo.xie@nxp.com, claudiu.manoil@nxp.com, robh+dt@kernel.org,
 rajat.srivastava@nxp.com, vabhav.sharma@nxp.com, yangbo.lu@nxp.com,
 jiafei.pan@nxp.com, leoyang.li@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Michael Walle <michael@walle.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> dcfg use little endian that SoC register value will be correct
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This patch is still missing. Any news?

Tested-by: Michael Walle <michael@walle.cc>

> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b0d4f8916ede..5538e8e354b2 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -162,7 +162,7 @@
>  		dcfg: syscon@1e00000 {
>  			compatible = "fsl,ls1028a-dcfg", "syscon";
>  			reg = <0x0 0x1e00000 0x0 0x10000>;
> -			big-endian;
> +			little-endian;
>  		};
>  
>  		scfg: syscon@1fc0000 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
