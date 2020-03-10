Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8CB17F15A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 08:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aal2xnkRTtSJ3J2+T/14bZ0fz4/KBJXwCq10KvGBYdI=; b=FqDjiM4RxvgtsR
	LXFwlYVgVaQTWz/HnYkwCYLQOucil2URDaTGUyRsDanksbkeSLRfYmdJR6JtViBCYaZWTbjNw0RoA
	YtGQWVjJa6bx+Fv0rDjU7kYJ7ESrGAwJmMgE7ABvSj1vwIr3v/A6VBC3zn0gyzDUBjZyOCRjbzbNS
	iPMTdTnzQeovK/6XMl09p8osMXxn8UGTntTy+HnFbaDAOf5AYfrpGIkwJOZGjsPTBFn52WsQhaMoW
	+Y3f1ZtJAzgQhD/H55BY9afM1EF3RVIWXM6J0y6sHeM1souOQUwn1lUmZmU/sXMh+NmBeDM2AMm/D
	yvl5kbpyjlVSqXbZhn5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBZnS-0007sT-FO; Tue, 10 Mar 2020 07:59:26 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZnI-0007ra-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 07:59:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2CECC27E02D6;
 Tue, 10 Mar 2020 08:59:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id O2aoq_2XElxG; Tue, 10 Mar 2020 08:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8AD8727E03F9;
 Tue, 10 Mar 2020 08:59:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XVsFBbfMBUc3; Tue, 10 Mar 2020 08:59:11 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 68ECA27E02D6;
 Tue, 10 Mar 2020 08:59:11 +0100 (CET)
Date: Tue, 10 Mar 2020 08:59:11 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Message-ID: <1297722115.9030349.1583827151221.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200309195247.GC1399@xps15>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-4-cleger@kalray.eu> <20200309195247.GC1399@xps15>
Subject: Re: [PATCH v5 3/8] remoteproc: Use u64 type for boot_addr
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC75 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: Use u64 type for boot_addr
Thread-Index: ao8uTq+xqlc9Y5G3EfGQfWYIgTgrfg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_005916_783377_DC76B745 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



----- On 9 Mar, 2020, at 20:52, Mathieu Poirier mathieu.poirier@linaro.org wrote:

> On Mon, Mar 02, 2020 at 10:38:57AM +0100, Clement Leger wrote:
>> elf64 entry is defined as a u64. Since boot_addr is used to store the
>> elf entry point, change boot_addr type to u64 to support both elf32
>> and elf64. In the same time, fix users that were using this variable.
>> 
>> Signed-off-by: Clement Leger <cleger@kalray.eu>
>> ---
>>  drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
>>  drivers/remoteproc/remoteproc_internal.h   | 2 +-
>>  drivers/remoteproc/st_remoteproc.c         | 2 +-
>>  include/linux/remoteproc.h                 | 4 ++--
>>  4 files changed, 5 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c
>> b/drivers/remoteproc/remoteproc_elf_loader.c
>> index 606aae166eba..c2a9783cfb9a 100644
>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>> @@ -102,7 +102,7 @@ EXPORT_SYMBOL(rproc_elf_sanity_check);
>>   * Note that the boot address is not a configurable property of all remote
>>   * processors. Some will always boot at a specific hard-coded address.
>>   */
>> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
>> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
>>  {
>>  	struct elf32_hdr *ehdr  = (struct elf32_hdr *)fw->data;
>>  
>> diff --git a/drivers/remoteproc/remoteproc_internal.h
>> b/drivers/remoteproc/remoteproc_internal.h
>> index 58580210575c..0deae5f237b8 100644
>> --- a/drivers/remoteproc/remoteproc_internal.h
>> +++ b/drivers/remoteproc/remoteproc_internal.h
>> @@ -55,7 +55,7 @@ phys_addr_t rproc_va_to_pa(void *cpu_addr);
>>  int rproc_trigger_recovery(struct rproc *rproc);
>>  
>>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>> -u32 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>> +u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
>>  struct resource_table *rproc_elf_find_loaded_rsc_table(struct rproc *rproc,
> 
> The return type of function rproc_get_boot_addr() should also be changed from
> u32 to u64.  Or perhaps this is intentional to make sure rproc->bootaddr never
> occupies more than 32bit?

No, this is a mistake clearly. I haven't been able to test with a 64 bit
boot address since our remote processors always boot in the 32 bits
space. But since the elf64 boot address is on 64 bitsn this was a logical
modification. I will fix that.

> 
>> diff --git a/drivers/remoteproc/st_remoteproc.c
>> b/drivers/remoteproc/st_remoteproc.c
>> index ee13d23b43a9..a3268d95a50e 100644
>> --- a/drivers/remoteproc/st_remoteproc.c
>> +++ b/drivers/remoteproc/st_remoteproc.c
>> @@ -190,7 +190,7 @@ static int st_rproc_start(struct rproc *rproc)
>>  		}
>>  	}
>>  
>> -	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
>> +	dev_info(&rproc->dev, "Started from 0x%llx\n", rproc->bootaddr);
>>  
>>  	return 0;
>>  
>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> index bee559330204..1683d6c386a6 100644
>> --- a/include/linux/remoteproc.h
>> +++ b/include/linux/remoteproc.h
>> @@ -382,7 +382,7 @@ struct rproc_ops {
>>  				struct rproc *rproc, const struct firmware *fw);
>>  	int (*load)(struct rproc *rproc, const struct firmware *fw);
>>  	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
>> -	u32 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
>> +	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
>>  };
>>  
>>  /**
>> @@ -498,7 +498,7 @@ struct rproc {
>>  	int num_traces;
>>  	struct list_head carveouts;
>>  	struct list_head mappings;
>> -	u32 bootaddr;
>> +	u64 bootaddr;
>>  	struct list_head rvdevs;
>>  	struct list_head subdevs;
>>  	struct idr notifyids;
>> --
>> 2.15.0.276.g89ea799

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
