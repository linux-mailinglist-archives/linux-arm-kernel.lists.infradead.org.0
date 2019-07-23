Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B4771733
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUphQl8wtpVdMhVjwbAhPHY6s3SMdmJM995S0+LKEg8=; b=rd1Ch+zWE8p9t1
	ewstC1VpsAChfgFX0b19qz5pgpsGaWIYs3PeTE0zI56L3xorEW8w6JKEHAtdZcRAQr5McPyhyScaA
	kAtfB71bjDhxBNnEvnGeTH666eGa1zokEtjyMH59Pum/H3/AFifB/yqN+gI1uZGMBNFc1FvccTlCe
	6227yTq+YEXCCjhbR8FtjolSUsziLFi3S+VxK0stff2GVjLoAfxxxm3Cg3WTaIluZa2y74+3dx8Kc
	z99JFMR53f/NDre9hcp8q3SRCFV4+hJ834RgP8taeYxP40hfnCoKYjWRsaIaTwyP+4PWxgMTbD0vH
	eyycEBqniMWLKI+5WbbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt5f-0007NG-D2; Tue, 23 Jul 2019 11:36:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpt5S-0007Mr-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:36:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NBa4WK059633;
 Tue, 23 Jul 2019 06:36:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563881764;
 bh=Mdvz9V3F/EJoekC406OcHAGxa1aQ5F1Ei0ziTB4OYVo=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=dwT77SPm4jppVTT+nqJfPQWZ40dGm5Yko8eUleOVPG1+JmXMpHVOBYL31Qe67naIx
 G+JCvjxlKadmWeoQLmu4+T3sWb/p6hSlK6jmhvrurkDdrZcxXiFmj5eVo1tNj1WANL
 FjswM1g307Xb5cFPAi+MRULJY5cpOtWrzDsXLF3Y=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NBa4D7029303
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 06:36:04 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 06:36:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 06:36:03 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NBa35a053381;
 Tue, 23 Jul 2019 06:36:03 -0500
Date: Tue, 23 Jul 2019 06:35:41 -0500
From: Nishanth Menon <nm@ti.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am65-main: Add mailbox cluster
 nodes
Message-ID: <20190723113540.xvhsrlbf66lr5aaq@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722202024.14867-2-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_043606_214298_753D371D 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15:20-20190722, Suman Anna wrote:
> The AM65x Main NavSS block contains a Mailbox IP instance with
> multiple clusters. Each cluster is equivalent to an Mailbox IP
> instance on OMAP platforms.
> 
> Add all the Mailbox clusters as their own nodes under the MAIN
> NavSS cbass_main_navss interconnect node instead of creating an
> almost empty parent node for the new K3 mailbox IP and the clusters
> as its child nodes. All these nodes are marked as disabled, and
> they need to be enabled along with the appropriate child nodes
> on a need basis.
> 
> NOTE:
> The NavSS only has a limited number of interrupts, so all the
> interrupts generated by a Mailbox IP are not added by default.
> Only the needed interrupts that are targeted towards the A53
> GIC will need to be be added later on when some sub-mailbox
> child nodes are added.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 108 +++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 8413e80f9d3a..0b3ea2a871ee 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -419,6 +419,114 @@
>  			reg = <0x00 0x30e00000 0x00 0x1000>;
>  			#hwlock-cells = <1>;
>  		};
> +
> +		mailbox0_cluster0: mailbox@31f80000 {
> +			compatible = "ti,am654-mailbox";
> +			reg = <0x00 0x31f80000 0x00 0x200>;
> +			#mbox-cells = <1>;
> +			ti,mbox-num-users = <4>;
> +			ti,mbox-num-fifos = <16>;
> +			status = "disabled";

We don't use status="disabled" as default so far.


-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
