Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BCC1DD287
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6RdWFuMtmWQcJiwQRBaLwYDpjhQ7Q2Bmhg9gG6NtkRg=; b=ctHYH3mM9Fo/wpu32SkX5Jhq0
	jPOo6FksstpWZ6OpITOKaoVrAgxPzmE/LDz7sMzO2IS7dwAZzecO5m6HySlgqnn4VIDI3huv7XcsV
	0Uv/7XlWuOidRVuIJq6N88uecstcSwM3gsqvI0Edg4qVWZokMki/T6Oabo0WjR9dOpYO30X8C1Q2r
	irSiqsB3wcop5U4wga7LQ3kvEhlDo4Y0XPlLajRo8ECTBI033p69zTU3Qas7ldOfwMOn6kbiZ761z
	cvNFZKafLE9lrDvS596t1aPsMc8Zwca5W/acnGYApmTqj3QzpEgWY9XXp5qfVt1/NKoa2L+Q0kgm1
	sIDBnVQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnaI-0003CD-NI; Thu, 21 May 2020 15:58:14 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbna8-0003BA-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:58:05 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LFvp5x127948;
 Thu, 21 May 2020 10:57:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590076671;
 bh=TPMHFbS+iORHTIuCD7Fo5FkOZZ8OumFZy0+SDb9dspA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QW/2/CybTE8Jjh8qBZxRMOCIbCzWYP40rJxi/exOWqqcReAPK0urITescZqq/GBch
 c65r4o0O3Jf4kHwdyLR3Cv026+5/UmPxoe0xDjJKs+h0Y4uJzXU76+8AT3ABPXXz6U
 +tflutwSbx14lwT8ar4X6FZAuAbOP3vc3lAmrCDY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LFvp2R090125
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 10:57:51 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 10:57:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 10:57:50 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFvoli090798;
 Thu, 21 May 2020 10:57:50 -0500
Subject: Re: [PATCH 0/4] Update K3 DSP remoteproc driver for C71x DSPs
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200325204701.16862-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <4691995a-b305-68a2-6637-7a3d9db3f194@ti.com>
Date: Thu, 21 May 2020 10:57:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200325204701.16862-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085804_241976_E8CDDFD4 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/25/20 3:46 PM, Suman Anna wrote:
> Hi All,
> 
> This series adds support for a new next generation 64-bit TI DSP based on
> the TMS320C71x CorePac processor subsystem called the C71x. The support is
> enabled through couple of enhancements to the remoteproc core (primarily to
> support a 64-bit trace resource entry), and does depend on the K3 DSP
> remoteproc driver posted earlier today [1].
> 
> The loading support leveraged the 64-bit ELF loader support code added by
> Clement and already staged on the rproc-next branch. I am posting this
> series separate from the C66x series because of the new 64-bit resource
> type enhancement needs (patches 2 and 3). I have leveraged the existing
> resource types as is by introducing a new version element, and am open to
> ideas if it is desired to just define it as a separate resource type.
> 
> The C71x DSP boots using firmware segments loaded into the DDR with a 2 MB
> aligned address requirement on the boot vectors. There is no support for
> internal memory loading, and all internal memories shall be used as fast
> RAMs/scatchpads by the firmware executing on the DSPs. IPC is through the
> virtio-rpmsg transport. There is no support for Error Recovery, Power
> Management or loading into on-chip SRAMs at present.
> 
> Following is the patch summary:
>   - Patch 1 updates the K3 DSP bindings for C71x cores
>   - Patch 2 introduces a concept of version element into existing resource types
>   - Patch 3 adds support for a new 64-bit trace resource entry
>   - Patch 4 enhances the K3 DSP remoteproc driver for C71x

I have separated out the C71 platform driver pieces (patches 1 & 4) and 
posted a v2 for those.

Appreciate any feedback on the core patches (patches 2 & 3) that add the 
minimal 64-bit trace support, as this also sets the direction for 
resource extensions. I can post the next version for those based on 
feedback.

regards
Suman

> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/cover/11458573/
> 
> Suman Anna (4):
>    dt-bindings: remoteproc: k3-dsp: Update bindings for C71x DSPs
>    remoteproc: introduce version element into resource type field
>    remoteproc: add support for a new 64-bit trace version
>    remoteproc/k3-dsp: Add support for C71x DSPs
> 
>   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 78 ++++++++++++++++---
>   drivers/remoteproc/remoteproc_core.c          | 65 +++++++++++-----
>   drivers/remoteproc/remoteproc_debugfs.c       | 50 ++++++++----
>   drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 17 ++++
>   include/linux/remoteproc.h                    | 34 +++++++-
>   5 files changed, 203 insertions(+), 41 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
