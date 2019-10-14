Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727E8D67DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAdoUqn17vANG4YYSX87qncpOBPSdFMbwWbZ7f70SlA=; b=FUSomVRYBCTyGQ
	7ReRPU5o62n0P11G0DvW8mYHOzddN3caw/iFpiJhO3ILWaVyLbS6r5qrdvPq597wVwbnAzF2pSgfE
	JJZac5RxnTUBX3aY7qVyjZoOCCJ1w2lgdsrXLwfcnz+tpm2IaBby+xSwku2zdSdQZWTVgSpXIYenz
	JU5DFJiF7/5TdW60PS7W8sWyXJxRCN/61n6CmSUkkZWWMNN8jVWuEEBbLn8spUjgmr3iWl758dm87
	YIAixueiDUwBsMpdH51Rrpt2EkReZutsyjfyfZHnyk4Ph8XlEriox/Z0PMYxogqFONx8tP2T9dcnr
	m5LnUfJrpN4QRv7k+i5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3gj-00037u-Ac; Mon, 14 Oct 2019 16:59:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3gT-00037L-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:59:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9300E28;
 Mon, 14 Oct 2019 09:59:00 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E22063F718;
 Mon, 14 Oct 2019 09:58:59 -0700 (PDT)
Date: Mon, 14 Oct 2019 17:58:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Subject: Re: [EXT] Re: SCMI & Devfreq
Message-ID: <20191014165832.GA323@bogus>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190916101505.GB6109@bogus>
 <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <BYAPR18MB2438047B622951C6EFE92FABAF8E0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190919152300.GA11801@bogus>
 <BYAPR18MB2438ADA20039CFF8F62DFF11AF9B0@BYAPR18MB2438.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR18MB2438ADA20039CFF8F62DFF11AF9B0@BYAPR18MB2438.namprd18.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_095901_465021_AB0FD20C 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 06:20:40PM +0000, Sujeet Kumar Baranwal wrote:
> Hi Sudeep,
>
> Per SCMI perf protocol, the MAX_OPPS macro which is 16, means that at max
> there could be only 16 OPPs. In my platform implementation, I tried with 16
> OPPs but  when OPPs info came linux perf.c file from SCP, it only showed 12
> OPPs only.
>
> Suspecting the rx buffer size, I increased the size to 256 and now the
> message for all 16 OPPs were reliably received.
>

OK, but is there any reason why firmware can't use num_levels[31:16]
i.e Number of remaining performance levels and [11:00] i.e.Number of
performance levels that are returned by this call to break and send in
2 calls ? The interface was designed to work with minimum shmem size.


> *****************
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 449f713..737d675 100644 (file)
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -612,7 +612,7 @@ int scmi_handle_put(const struct scmi_handle *handle)
>  static const struct scmi_desc scmi_generic_desc = {
>         .max_rx_timeout_ms = 30,        /* We may increase this if required */
>         .max_msg = 20,          /* Limited by MBOX_TX_QUEUE_LEN */
> -       .max_msg_size = 128,
> +       .max_msg_size = 256,

If you need this, I prefer to introduce new compatible for the platform
scmi and add it as platform specific scmi_desc to start with.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
