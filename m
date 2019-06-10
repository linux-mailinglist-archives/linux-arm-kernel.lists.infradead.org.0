Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDC03B255
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeE/jJCp+Y6TWmmogEoThI6flMmnBkCLGCpRjl09Qg4=; b=YbFvDo1PmMDJ/r
	WhfZmrXsMFE3k7Kz7JiepMShmoGzXR0f6w6DlWIQtIJBj1vncKerhKDfMaOboLW9jZKTbAXTYFsWk
	GHmSMfPCyh/1GW3sKLDwRUaNn6WbEsgXzztXwBM0Op3EtsRyS6zeSFyBW/DwvdvLDL7rTKEdl7226
	gDAXPBQEU01rvOLa1MzsNNJ83aMYZnwYL15eSrjB24WO0f/EiH1tN7ZluCvImMhMHwAVYzR+96vyD
	r5dP+R+qyL999mSTp82TaX8La7wVbWm7UTCfHm0rpXsjDJpvPKkW1aFSL8PnmpBpD06Bn3nApAoTK
	zSb53z/xBJiqjPGyoX4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGpR-000791-Rg; Mon, 10 Jun 2019 09:43:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGpD-00077v-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:42:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5A9gaKj000807;
 Mon, 10 Jun 2019 04:42:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560159757;
 bh=2oO3Xg8fMHPjnwmVSMmpy0PpqsvBXBoMDQCicgKTfPk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UwE6KsIJ1ugdmhMf4suETeKqxQlhSDaB1wwqcC739zqPIx258ODERDvuCt9ZXYacN
 /+yAxJdgvZNMfKhaqjRcVOCoIytn30L32AfZq+EuuyOqvxGKquX4Z6SrdhlfKCf+tg
 Y7/MCKLvymzo6iXJRJvQaahrTT6RybKMvHULjqjI=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5A9gaIB000883
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 Jun 2019 04:42:36 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 10
 Jun 2019 04:42:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 10 Jun 2019 04:42:36 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5A9gWMT067517;
 Mon, 10 Jun 2019 04:42:33 -0500
Subject: Re: [PATCH v1.1] firmware: ti_sci: Add resource management APIs for
 ringacc, psi-l and udma
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20190506123456.6777-2-peter.ujfalusi@ti.com>
 <20190610091856.25502-1-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <636f599a-cefa-ce70-d0ae-b5244edf14b2@ti.com>
Date: Mon, 10 Jun 2019 15:11:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610091856.25502-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_024247_303655_B7D15B33 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: grygorii.strashko@ti.com, tony@atomide.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/06/19 2:48 PM, Peter Ujfalusi wrote:
> Configuration of NAVSS resource, like rings, UDMAP channels, flows
> and PSI-L thread management need to be done via TISCI.
> 
> Add the needed structures and functions for NAVSS resource configuration of
> the following:
> Rings from Ring Accelerator
> PSI-L thread management
> UDMAP tchan, rchan and rflow configuration.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
