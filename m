Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A72936BF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 08:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vA2Vt67lgdmnCLLv8J5jWFs8CTbaMbfxBpgmtLm78ac=; b=AbzEYAjgcj2mX2
	239ZvSLD+rrqXm4P5f+TbiYllp4wIunczk34xS/8h6KrkLjQRXNHpq1gcnK6pBoguwnAGq7T6CSF6
	91lsSvxJID/ylFKLRsMsrMX3OFB6T5Uyqvc4MC/JoJPmpdafchcnBVPPJBx/mMJ6X0t+quhQCvH04
	GoZCkibEvKUHFf7069/0mT8E2rDAW9rj8zldg+L9/91TRfL6YOfllX5QniFcWxwcTRWFm5hlAshiv
	6DatmprJaB5+KcYfujU3/ddf2Sl9w5Y68+shj+HTi1G182FdPXuFyeT0RJPdRhkNdgtOskmK21Nl1
	kUIHc05iChJCI939fNhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlSS-00088W-3c; Thu, 06 Jun 2019 06:01:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlSL-000887-3c
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 06:00:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5660oXb078820;
 Thu, 6 Jun 2019 01:00:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559800850;
 bh=FSREGiRABJFq74W4rr6M51W3Yk2CPzgfEKsFWNPJA9I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=B7C/+eYQR/5L3PIF9wwHURouG6GdJIeqKkPllBB4+j4CrEAShfaS6oxx2iecVfiR8
 3xNMh39kzPDq256uL/Vt07rZ27zV7Cf/p94LYqQWInBOi1DR8svnJizB/KNYv/AGqV
 7910peb5NTsaW9IxuikgQ5cAWSX/gF2LRyTfnd64=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5660ont032539
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 01:00:50 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 01:00:50 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 01:00:50 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5660gQS102302;
 Thu, 6 Jun 2019 01:00:44 -0500
Subject: Re: [PATCH 01/16] firmware: ti_sci: Add resource management APIs for
 ringacc, psi-l and udma
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-2-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <f2056b18-3f65-b7ae-90ba-5ebf9ac425bc@ti.com>
Date: Thu, 6 Jun 2019 11:30:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190506123456.6777-2-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_230057_232567_831AD415 
X-CRM114-Status: GOOD (  17.08  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, tony@atomide.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 06/05/19 6:04 PM, Peter Ujfalusi wrote:
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Patch has the following checkpatch warnings and checks which can be fixed:

WARNING: Missing commit description - Add an appropriate one

CHECK: Lines should not end with a '('
#262: FILE: drivers/firmware/ti_sci.c:2286:
+static int ti_sci_cmd_rm_udmap_tx_ch_cfg(

CHECK: Lines should not end with a '('
#323: FILE: drivers/firmware/ti_sci.c:2347:
+static int ti_sci_cmd_rm_udmap_rx_ch_cfg(

CHECK: Lines should not end with a '('
#383: FILE: drivers/firmware/ti_sci.c:2407:
+static int ti_sci_cmd_rm_udmap_rx_flow_cfg1(

CHECK: Lines should not end with a '('
#1414: FILE: include/linux/soc/ti/ti_sci_protocol.h:455:
+	int (*rx_flow_cfg)(

total: 0 errors, 2 warnings, 4 checks, 1399 lines checked



> ---
>  drivers/firmware/ti_sci.c              | 439 +++++++++++++++
>  drivers/firmware/ti_sci.h              | 704 +++++++++++++++++++++++++
>  include/linux/soc/ti/ti_sci_protocol.h | 216 ++++++++
>  3 files changed, 1359 insertions(+)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 64d895b80bc3..af3ebcdeab18 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c

[..snip.]

> +}
> +
> +static int ti_sci_cmd_rm_psil_pair(const struct ti_sci_handle *handle,
> +				   u32 nav_id, u32 src_thread, u32 dst_thread)
> +{

All the psil ops doesn't have the  kernel-doc function comments. Just be
consistent with other functions :)


> +	struct ti_sci_msg_hdr *resp;
> +	struct ti_sci_msg_psil_pair *req;
> +	struct ti_sci_xfer *xfer;
> +	struct ti_sci_info *info;
> +	struct device *dev;
> +	int ret = 0;
> +
> +	if (IS_ERR(handle))
> +		return PTR_ERR(handle);
> +	if (!handle)
> +		return -EINVAL;
> +
> +	info = handle_to_ti_sci_info(handle);
> +	dev = info->dev;
> +
> +	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_PSIL_PAIR,
> +				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> +				   sizeof(*req), sizeof(*resp));
> +	if (IS_ERR(xfer)) {
> +		ret = PTR_ERR(xfer);
> +		dev_err(dev, "RM_PSIL:Message reconfig failed(%d)\n", ret);
> +		return ret;
> +	}
> +	req = (struct ti_sci_msg_psil_pair *)xfer->xfer_buf;
> +	req->nav_id = nav_id;
> +	req->src_thread = src_thread;
> +	req->dst_thread = dst_thread;
> +
> +	ret = ti_sci_do_xfer(info, xfer);
> +	if (ret) {
> +		dev_err(dev, "RM_PSIL:Mbox send fail %d\n", ret);
> +		goto fail;
> +	}
> +
> +	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
> +	ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;
> +
> +fail:
> +	ti_sci_put_one_xfer(&info->minfo, xfer);
> +
> +	return ret;
> +}
> +

[..snip..]

> + */
> +struct ti_sci_msg_rm_ring_cfg_req {
> +	struct ti_sci_msg_hdr hdr;
> +	u32 valid_params;
> +	u16 nav_id;
> +	u16 index;
> +	u32 addr_lo;
> +	u32 addr_hi;
> +	u32 count;
> +	u8 mode;
> +	u8 size;
> +	u8 order_id;
> +} __packed;
> +
> +/**
> + * struct ti_sci_msg_rm_ring_cfg_resp - Response to configuring a ring.
> + *
> + * @hdr:	Generic Header
> + */
> +struct ti_sci_msg_rm_ring_cfg_resp {
> +	struct ti_sci_msg_hdr hdr;
> +} __packed;

If it is a generic ACK, NACK response, just use the header directly.

[..snip..]

> + */
> +struct ti_sci_msg_rm_udmap_rx_ch_cfg_req {
> +	struct ti_sci_msg_hdr hdr;
> +	u32 valid_params;
> +	u16 nav_id;
> +	u16 index;
> +	u16 rx_fetch_size;
> +	u16 rxcq_qnum;
> +	u8 rx_priority;
> +	u8 rx_qos;
> +	u8 rx_orderid;
> +	u8 rx_sched_priority;
> +	u16 flowid_start;
> +	u16 flowid_cnt;
> +	u8 rx_pause_on_err;
> +	u8 rx_atype;
> +	u8 rx_chan_type;
> +	u8 rx_ignore_short;
> +	u8 rx_ignore_long;
> +	u8 rx_burst_size;
> +

extra line?

> +} __packed;
> +
> +/**


Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
