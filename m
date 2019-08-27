Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900629F63D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZutRKSX80mk7MNYHLXKXNlGfWCYi2nRKkhGpg2bvb0o=; b=qRMvyxT5WT1pzG
	hMcVyky9NOEpuHUgFAFgstO+mKoI9G0gSL2n9YUynmOArZENIldLzE7KRTbr6KwTJsVnInFCqj4A1
	4x+lSR5oYlQUVAe4JnVvWFSatJHvW/vMWrgYoLBGCNujo9E0QHlrLqckEMeP+bisQiWsgtpX0Alg/
	gd4efYdiDFooD+s7KfaF1kevNfC55axMVzUaxMUnVtGv0XWVDUlbRsdAjvq0qr+i6d/+E4Jkpv3vs
	0xj1J6Cpx+co7GEjbvUd+6JkAmV6uT3eTlG1VcYEg6KxwxQeNpfmKb0GrYEj3Si9Cwiq8/AYnPjdi
	iMCfuI3cPTbrjbo0BljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2k2z-00054N-RM; Tue, 27 Aug 2019 22:34:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2k2n-00053w-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:34:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7RMYSxw104756;
 Tue, 27 Aug 2019 17:34:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566945268;
 bh=iGbHiDwfaJ1ToRRU2etB2TGPOpwBvqEOF0vVDGEktEA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=alUjGY/VxbEymQg7HDaejV+Y66LsmeHipYYYenx6/Pa/mrCsqrFHJdv5NwxQjgRJg
 QDS791obgwVgrOW5J3k/EErytxMQwRytJHlWLxmf4GFlXJWw/iH8dVEBrm6FQuUv2R
 hkKurygFfMxsPfPK5QfHSmB9AjEoBm8L6DSLrj6w=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7RMYSXL092892
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 17:34:28 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 17:34:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 17:34:28 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7RMYSTL125727;
 Tue, 27 Aug 2019 17:34:28 -0500
Subject: Re: [PATCH 0/2] Add HwSpinlock nodes for TI K3 SoCs
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190722190539.27816-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <715d61be-c881-cde8-38f0-451637767909@ti.com>
Date: Tue, 27 Aug 2019 17:34:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190722190539.27816-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_153429_528849_D05B84CD 
X-CRM114-Status: GOOD (  14.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 7/22/19 2:05 PM, Suman Anna wrote:
> Hi Tero,
> 
> The following series adds the HwSpinlock DT nodes for the
> TI K3 AM65x and J721E SoC families. Patches are based on
> v5.3-rc1.

I am not sure if you have already staged these, but if haven't,
can you please pick these and the mailbox nodes for 5.4 merge window?

Thanks,
Suman

> 
> The bindings and driver support for the same have been
> merged in v5.3-rc1.
> 
> regards
> Suman
> 
> Suman Anna (2):
>   arm64: dts: ti: k3-am65-main: Add hwspinlock node
>   arm64: dts: ti: k3-j721e-main: Add hwspinlock node
> 
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 6 ++++++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 6 ++++++
>  2 files changed, 12 insertions(+)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
