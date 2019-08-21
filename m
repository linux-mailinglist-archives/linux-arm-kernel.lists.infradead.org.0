Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEEB97E32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Hmif00GvKExzpI0NSLWzet2dEz2BVbaPzDleitSzag=; b=FJwPogacFAUjpP7G3ulDOVExw
	/PzBlTUeV/jrrc+gd1ZMUM4g4p1PaxYpkx9+81LgdIsrbKdm7Nvazu/ZYufPl5lzc/6nmp+rHpyEQ
	fDdVJIOwD7SOxuB41ZucyId0h6bomN+hUJhPu1tF2yyCaLM0avD18H+iy4cpFnQ3zKxwnVlPFW4As
	BEhqj8r1V/HdIKWrglrqLCo+kfuJmiHBDXi6UcehKLnSIZTi5CzsWY1jajxUwbwtu3lunoKn+CI7I
	nmgwUmlWFHnXpHJga5ZR2QvvG8rVFF/CEiLHg3md7RnAtC774xnFBv+JFaAK63JzYncKNq4L/TX0g
	+5Gp6vk/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SFM-0002un-Ih; Wed, 21 Aug 2019 15:10:00 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SFC-0002uG-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:09:52 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LF2TiT107211
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 11:09:48 -0400
Received: from e31.co.us.ibm.com (e31.co.us.ibm.com [32.97.110.149])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uh64q6txf-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 11:09:48 -0400
Received: from localhost
 by e31.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <anoo@linux.ibm.com>;
 Wed, 21 Aug 2019 16:09:47 +0100
Received: from b03cxnp08026.gho.boulder.ibm.com (9.17.130.18)
 by e31.co.us.ibm.com (192.168.1.131) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 16:09:43 +0100
Received: from b03ledav002.gho.boulder.ibm.com
 (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7LF9gOY61014402
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 15:09:42 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 10780136053;
 Wed, 21 Aug 2019 15:09:42 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C743513604F;
 Wed, 21 Aug 2019 15:09:41 +0000 (GMT)
Received: from ltc.linux.ibm.com (unknown [9.16.170.189])
 by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP;
 Wed, 21 Aug 2019 15:09:41 +0000 (GMT)
MIME-Version: 1.0
Date: Wed, 21 Aug 2019 10:10:06 -0500
From: Adriana Kobylak <anoo@linux.ibm.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: swift: Add eMMC device
In-Reply-To: <20190821045655.21752-1-joel@jms.id.au>
References: <20190821045655.21752-1-joel@jms.id.au>
X-Sender: anoo@linux.ibm.com
User-Agent: Roundcube Webmail/1.0.1
X-TM-AS-GCONF: 00
x-cbid: 19082115-8235-0000-0000-00000EC8D701
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011629; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01250037; UDB=6.00659943; IPR=6.01031592; 
 MB=3.00028261; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-21 15:09:45
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082115-8236-0000-0000-000046E6A6BD
Message-Id: <202dcd112f41044162465d8a724b66d0@linux.vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_080950_873667_A3F29298 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Adriana Kobylak <anoo@us.ibm.com>,
 Linux-aspeed <linux-aspeed-bounces+anoo=linux.ibm.com@lists.ozlabs.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-20 23:56, Joel Stanley wrote:
> Swift contains an eMMC device attached to the second SDHCI controller.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Adriana Kobylak <anoo@us.ibm.com>

> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> index f14f745b34ca..25bc0e1bbced 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
> @@ -963,4 +963,15 @@
>  	status = "okay";
>  };
> 
> +&sdmmc {
> +       status = "okay";
> +};
> +
> +&sdhci1 {
> +       status = "okay";
> +
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_sd2_default>;
> +};
> +
>  #include "ibm-power9-dual.dtsi"


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
