Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68441CEC64
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 21:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P+MED8+lVeE0pM0gdXsk77hPm15CDsqh9GUFmR1YTEg=; b=SqyxXEHmiHyOHhQDgvf/Sbeg/
	Fz/tah1LaMGYufxa5H0G6I7kgHvqRKS8uoSwwPaqdYUGrMaii8FRsW8Uoeqrx0Ujh0koigs5opaL8
	A2fQDKhhuVteLuX4mDtprHI60HWmHYCRlC48biBelXuNRc+bnXc5ZcK3LmZjFMdhmYbO1NGLkTO/9
	7//c/qFLeEZmkaiAu0ZTv/v9aFez9wCMdRmmqyl1HpBg03NPSnBr5EmjLRwsPrLM+nN9+PxWyoLT/
	0nA/rlQAbT6ZY0sYzMtvX6uDnooYad008HLtdYEwf9U2VXZmt0O4jMF/UhtX5P1N9n8dk0QdAJwQL
	egQal4QdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHYGV-0006wM-B3; Mon, 07 Oct 2019 19:01:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHYFA-0005wD-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 19:00:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97J0K4N123042;
 Mon, 7 Oct 2019 14:00:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570474820;
 bh=0vcs8rJ4wLMMAot/YqVdXrTFHozVQXOKjEGPQggiNtA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=x6uUPj56N0zvOFeyYbLxOa+VcLOYM7KLO1Ih8m9afOoWDqwMxacQLCzQ+8Ru1Iv2g
 5k/iGHUUHlFQnNLC0NBnDu/41EISo6wU72Ws/yvwmT7J20f3t3j4btKIWfS8rsxNZz
 5vWWm+8h4pq6J2q4y3t6jB1mF3s9O48ZSoZeCIRw=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x97J0Kw6063227
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 14:00:20 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 14:00:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 14:00:18 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97J0HRM099832;
 Mon, 7 Oct 2019 14:00:17 -0500
Subject: Re: [PATCH 0/3] bus: ti-sysc: fix reset sequencing
To: Tony Lindgren <tony@atomide.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
 <20191007163807.GU5610@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <32031606-23da-2e0b-6d75-7225a082eb6b@ti.com>
Date: Mon, 7 Oct 2019 22:00:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007163807.GU5610@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_120028_307065_E654BFFF 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/10/2019 19:38, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [191007 12:30]:
>> Hi,
>>
>> These three patches make sure that IOMMU/remoteprocs work across
>> all devices with the latest OMAP PRM series for reset support [1].
>> The last dangling issues were caused by the removal of the hardlink
>> between the reset + clock drivers.
> 
> OK. I presume these are safe to wait for v5.5 since we don't
> have the rstctrl driver yet?

Yeah, they are safe to wait.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
