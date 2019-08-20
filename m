Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888CE95F2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOpLsT/FVtpGA3+dy+4r+DKkppUTBKQf3zsNo/Kkr2w=; b=A7Z8LLMGuoUDQU
	9pKimzjn3RDUCajMNMhtNCGOHsNoiyjZOBAd0LTGsAp5Ovow8lmWD1mvTmdy+ZGJAeIvNATcmdqil
	8zW5miNfuOaNtA2RGy85ykH/F80lJieL/NfPhcn7bQGFHH3PNaoX2Fp5y+aiQq4maHEPyVyHd8sNj
	GrVu+2SdGijPPxd1aWhbyCflEUNJYpT+Sgd3Ytbc7tt5SY29cHFWACtG9FzfTj4t75Ag+tIePXa/A
	fYwqodpFM4SdY5HiIKkXaeJKyVc2Tcpd/zenT45M4QBGCvt497BngL0W2RPbVyhMOt38ZAbis3hRh
	p4TifQZOKMQakyc4vQ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03at-0006Sp-IW; Tue, 20 Aug 2019 12:50:35 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03aY-0006SN-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:50:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KCoDYo090597;
 Tue, 20 Aug 2019 07:50:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566305413;
 bh=TTUbTTO8Oz2gmPpNVFF7lRenTwYKzmiJumlpetD3DdA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Fy9I3tMThgHqk/HibtGCr+QgW0XF5pVHyST++0k5sCn4rXKBm4Ou/gKHzkEbRz/lk
 aB2t4+ef8+aBx7pTJC/ZdneCMggApA86BHuI5rtFX0/07X3SuI9/eu6Nyqv/GbDYq3
 JYKY5vS5W6jKmOP8bjWgbcpKEuAuy0303SY0kB6M=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KCoDhY103456
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 07:50:13 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 07:50:13 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 07:50:13 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KCo9Mn111307;
 Tue, 20 Aug 2019 07:50:10 -0500
Subject: Re: [PATCH 0/6] arm64: dts: ti: k3-j721e: Add gpio nodes
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
 <linus.walleij@linaro.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <65efe3c5-8551-546f-5de6-0d9038cea757@ti.com>
Date: Tue, 20 Aug 2019 18:19:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190809082947.30590-1-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_055015_095418_F5D00587 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keerthy <j-keerthy@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tero,

On 09/08/19 1:59 PM, Lokesh Vutla wrote:
> This series adds gpio nodes for J721E SoC and enable gpio keys
> in J72E common process board.
> 
> Tested Boot log: https://pastebin.ubuntu.com/p/P6QqmZYtSC/
> 
> This series depends on Power-domain cells update series:
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=15210
Can you merge the patches 2-6?

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
