Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4993564D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 07:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+qfvF48+kcjCe4XsI8ZSCRiAoxHzfp+QPehDJ8zc2M=; b=VaJWkhXFAN1Vqo
	9AM0CfEuIpH824lrk04HIQIYWrnDJzzbWlxsS7B9cAYsfnEs3YtOZWfgCfTvI5L82E22SEEU53vfM
	vMVFkOhbYxUss+r7U/bEWDhSMEx44waG4use396JbJKrCepyzuLkhEDab15vzNsfusTH4iZOUgVc8
	SgS6Od1GPqybdx+tyqM1zFphqa9xbVX+uE0ZZR65p7EbDosi/lB9wA+reQOCwon5zyCH2JxagB9zv
	HG935xLMYfhA4PfCW/qftlvxeqAOT5YyadOhh8Z4N54nEvHcd2+kcHiZA6Y8lnGWVm1TvkDGd39O2
	EYSenp3idSC8DxL97hxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYOjV-0002cP-Lm; Wed, 05 Jun 2019 05:45:09 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYOjN-0002HF-Ly
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 05:45:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x555iw0g130550;
 Wed, 5 Jun 2019 00:44:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559713498;
 bh=mvC8ysoD2td/BeQzG9ByBP2PgmFd/m8oI3Fmb8eMEpo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rY4/PaDL5ijzjDIV/ORQwTNMjRADSarhGxBuRWiYH06xRqjebD3ncS3CKZ8tocHh5
 +QURX0y2G6FdEourW/7MMkevjk/3RFm50yj4fTFVZ0N3k0z9ZrIoj3cw9QySKJDQ1N
 +cdBQen0XT+mG/gWT7ImdZ5QvR2yDa+IeRYEp5Yc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x555iwdV038153
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 00:44:58 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 00:44:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 00:44:57 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x555itoY125799;
 Wed, 5 Jun 2019 00:44:56 -0500
Subject: Re: [PATCH v3 3/5] soc: ti: ti_sci_pm_domains: Add support for
 exclusive and shared access
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190410053728.17374-1-lokeshvutla@ti.com>
 <20190410053728.17374-4-lokeshvutla@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <b6f005da-3c0a-ce73-79f0-eaa19c7da92c@ti.com>
Date: Wed, 5 Jun 2019 11:14:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190410053728.17374-4-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_224501_843621_B12BA89E 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Santosh,

On 10/04/19 11:07 AM, Lokesh Vutla wrote:
> TISCI protocol supports for enabling the device either with exclusive
> permissions for the requesting host or with sharing across the hosts.
> There are certain devices which are exclusive to Linux context and
> there are certain devices that are shared across different host contexts.
> So add support for getting this information from DT by increasing
> the power-domain cells to 2.
> 
> For keeping the DT backward compatibility intact, defaulting the
> device permissions to set the exclusive flag set. In this case the
> power-domain-cells is 1.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Any chance you can pick this patch? Tero is waiting for you to pick it up so
that dts changes can be pulled. Or can you ack it so that Tero can pick the
entire series?

Thanks and regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
