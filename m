Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3A297581
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGoFbeS4qjAyP2VHHS/SFlQJxhkpE54MFP0zzn1bbsg=; b=WhDIVNt6slW4FS
	srwchV+XiFfKqjF2KWqhFdcfGaBQwllyF7sCzrlm3OtiAesoNAzPyz2upyWz3k8ePqKIM3dKlf9Jw
	BQAZno96GOWjeU50maBwFzRj3fJ6yhsOWRO18PuudoO/1iaw8Ae9EHbAjZqD3WRLiNrWk6Pimyl/S
	CgWLdcXbarclmxxlg619APZuE3VVbohdwByAsJhD6/5u7iYEEZY/aVhNCIud75szvTIbRZ22O/U7l
	C0Q2pTdiPprgStxzNnMw2m1DoDh6C1RJtZP1Y/WZZFZaaHZDvMoXzCJApy0tl/0epmRX/jEQQEEtA
	8/U3zLodZvkcVx0wTsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MUS-0004Rg-6L; Wed, 21 Aug 2019 09:01:12 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MTz-0004RI-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:00:44 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 2CC8325B7C3;
 Wed, 21 Aug 2019 19:00:42 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 162BF9405AE; Wed, 21 Aug 2019 11:00:40 +0200 (CEST)
Date: Wed, 21 Aug 2019 11:00:40 +0200
From: Simon Horman <horms@verge.net.au>
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77970: sort nodes
Message-ID: <20190821090039.w7ih27pyup6ijjyl@verge.net.au>
References: <1566219393-23169-1-git-send-email-ykaneko0929@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566219393-23169-1-git-send-email-ykaneko0929@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_020043_288917_FFD9554B 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:56:33PM +0900, Yoshihiro Kaneko wrote:
> Sort nodes.
> 
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
> 
> This should not have any run-time effect.
> 
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
> 
> This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
> tree.
> 
>  arch/arm64/boot/dts/renesas/r8a77970.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77970.dtsi b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> index 5b6164d..0cd3b37 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> @@ -1181,6 +1181,9 @@
>  			polling-delay = <1000>;
>  			thermal-sensors = <&thermal>;
>  
> +			cooling-maps {
> +			};
> +
>  			trips {
>  				cpu-crit {
>  					temperature = <120000>;
> @@ -1188,9 +1191,6 @@
>  					type = "critical";
>  				};
>  			};
> -
> -			cooling-maps {
> -			};
>  		};
>  	};
>  
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
