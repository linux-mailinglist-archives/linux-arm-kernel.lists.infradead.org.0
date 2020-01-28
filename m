Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E4114BEA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYzv5oxBuYjEN9fznCXXo0Hgen3BAWfP1M2lXx+HzsU=; b=t4/BgHb2oytAt6
	a1O+e5wq1uFYYyHAHXn6376qQmgMeXJiO/rw67odjD3QLJVXdtAY92dwz5aVC5qNJocxOMTXr3dcs
	gSZxvwRM4L3UtYTQyOZrkE8LIfgITFr3DXE/ESfTNDgnMbK3uxEyrP1GcS9ltmF3K1iU48WQTiR0n
	Ul7/smwRE2HRy5p54Scxesh5yCH1ZSdJlYLY1ZhojHw8CLEMTwdJMF8gEa+LTAiW4Md3RpjlKuazc
	KpEyyPxU1Ze44/kEU8ljrlJR5XxYtmLOHccfKqimQIj9+MGMrFB5b0eHVPZ6uUyJS94kqDzxa/gnI
	EO0H10PyifFMsCg42a1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUm2-000699-Rs; Tue, 28 Jan 2020 17:35:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUlu-00068S-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:35:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7DB7328;
 Tue, 28 Jan 2020 09:35:27 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97E773F52E;
 Tue, 28 Jan 2020 09:35:26 -0800 (PST)
Date: Tue, 28 Jan 2020 17:35:24 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V5] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200128173524.GB36496@bogus>
References: <f170b33989b426ac095952634fcd1bf45b86a7a3.1580208329.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f170b33989b426ac095952634fcd1bf45b86a7a3.1580208329.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_093530_205508_250B16C2 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 04:24:19PM +0530, Viresh Kumar wrote:
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent on the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>
> We can now implement more transport protocols to transport SCMI
> messages.
>
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
> @Sudeep: Please help getting this tested as well :)
>

I did a quick test and it just works fine ;)

> diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
> index df35358ff324..805482c41ab4 100644
> --- a/drivers/firmware/arm_scmi/common.h
> +++ b/drivers/firmware/arm_scmi/common.h
> @@ -13,6 +13,7 @@
>  #include <linux/errno.h>
>  #include <linux/kernel.h>
>  #include <linux/scmi_protocol.h>
> +#include <linux/stddef.h>

May be not needed anymore ? IIUC you had added it for offset and friends.

>  #include <linux/types.h>
>
>  #include <asm/unaligned.h>
> @@ -33,8 +34,8 @@ enum scmi_common_cmd {
>  /**
>   * struct scmi_msg_resp_prot_version - Response for a message
>   *
> - * @major_version: Major version of the ABI that firmware supports
>   * @minor_version: Minor version of the ABI that firmware supports
> + * @major_version: Major version of the ABI that firmware supports
>   *
>   * In general, ABI version changes follow the rule that minor version increments
>   * are backward compatible. Major revision changes in ABI may not be
> @@ -47,6 +48,19 @@ struct scmi_msg_resp_prot_version {
>  	__le16 major_version;
>  };
>
> +#define MSG_ID_MASK		GENMASK(7, 0)
> +#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
> +#define MSG_TYPE_MASK		GENMASK(9, 8)
> +#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
> +#define MSG_TYPE_COMMAND	0
> +#define MSG_TYPE_DELAYED_RESP	2
> +#define MSG_TYPE_NOTIFICATION	3
> +#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
> +#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
> +#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
> +#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
> +#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
> +
>  /**
>   * struct scmi_msg_hdr - Message(Tx/Rx) header
>   *
> @@ -67,6 +81,33 @@ struct scmi_msg_hdr {
>  	bool poll_completion;
>  };
>
> +/**
> + * pack_scmi_header() - packs and returns 32-bit header
> + *
> + * @hdr: pointer to header containing all the information on message id,
> + *	protocol id and sequence id.
> + *
> + * Return: 32-bit packed message header to be sent to the platform.
> + */
> +static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
> +{
> +	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
> +		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
> +		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
> +}
> +
> +/**
> + * unpack_scmi_header() - unpacks and records message and protocol id
> + *
> + * @msg_hdr: 32-bit packed message header sent from the platform
> + * @hdr: pointer to header to fetch message and protocol id.
> + */
> +static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
> +{
> +	hdr->id = MSG_XTRACT_ID(msg_hdr);
> +	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
> +}
> +

I prefer this moving of the above code to header as separate patch,
just to keep it easy for bisection in case we break anything with new
transport layer. There's nothing I see, but to be safer. You can also
claim no functionality change with that patch then ;)

>  /**
>   * struct scmi_info - Structure representing a SCMI instance
>   *
>   * @dev: Device pointer
>   * @desc: SoC description for this instance
> - * @handle: Instance of SCMI handle to send to clients
>   * @version: SCMI revision information containing protocol version,
>   *	implementation version and (sub-)vendor identification.
> + * @handle: Instance of SCMI handle to send to clients

I saw this and couple other doc changes that are not related to this patch
but are fixed to existing code ? Can be separate patch again if I am not
wrong.

Otherwise looks good. Since we are not adding module support, I am fine
even if we have to make changes to transport ops bit later if required
and realised when adding new transport. Let us see if Peter has any major
objections.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
