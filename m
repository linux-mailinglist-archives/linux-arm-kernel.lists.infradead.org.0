Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D605CA00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pKL6x4xfRyI/gSq2dmwBLqO2YpAy6cMLy4cGU8lIP4=; b=qygL39iR+lU2JY
	BnJmW9RnNnrC7j1kZQ1K3nNF3Rq5oz7TuZiVk30ish4Zqjb4HzbWAfUpkM9+xDBn4wqMvFsAWIL8X
	tkUik2w7CjISDCMrIpjq26kUe3pqbu12eRgJzdHBZBl0tRBJOK98aU2VmQeRb4IVo0qB4iRNaUSts
	ZlG4DGlZMpTW0Hbr3Bc/1L5vabdoVaM4zVxcxM3uI1MWzSftQ+KH1+V+gv8kFIinrQVlsCKVrEaNH
	ZLXbpVX9n/6bDogC8BQoTg9GUCIGOUvj+GFEzQgatyGcOPEFygN/XGnBCRzIH/Rluh6WWsu6u7o22
	5/xFOj2/HLhoAKfmH6BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDKN-0004sI-ST; Tue, 02 Jul 2019 07:35:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDK1-0004rx-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:35:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1hiDJz-0001Yv-CL; Tue, 02 Jul 2019 09:35:23 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1hiDJy-00009W-PR; Tue, 02 Jul 2019 09:35:22 +0200
Date: Tue, 2 Jul 2019 09:35:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
Message-ID: <20190702073522.blujpmxddw7brr7c@pengutronix.de>
References: <20190628032544.8317-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628032544.8317-1-Anson.Huang@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:31:59 up 45 days, 13:50, 49 users,  load average: 0.13, 0.05, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_003525_420182_E336906B 
X-CRM114-Status: GOOD (  18.71  )
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19-06-28 11:25, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add i.MX SCU SoC's UID(unique identifier) support, user
> can read it from sysfs:
> 
> root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> 7B64280B57AC1898
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Improve the comment of skipping SCFW API return value check for getting UID.
> ---
>  drivers/soc/imx/soc-imx-scu.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index 676f612..3eacb54 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -27,6 +27,40 @@ struct imx_sc_msg_misc_get_soc_id {
>  	} data;
>  } __packed;
>  
> +struct imx_sc_msg_misc_get_soc_uid {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 uid_low;
> +	u32 uid_high;
> +} __packed;
> +
> +static ssize_t soc_uid_show(struct device *dev,
> +			    struct device_attribute *attr, char *buf)
> +{
> +	struct imx_sc_msg_misc_get_soc_uid msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	u64 soc_uid;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> +	hdr->size = 1;
> +
> +	/*
> +	 * SCU FW API always returns an error even the
> +	 * function is successfully executed, so skip
> +	 * returned value check.
> +	 */
> +	imx_scu_call_rpc(soc_ipc_handle, &msg, true);

Please can you add a TODO: or FIXME: tag and also provide the firmware
version containing the bug? I know that developers are very busy and
follow-up fixes never reach mainline ;)

Regards,
  Marco

> +
> +	soc_uid = msg.uid_high;
> +	soc_uid <<= 32;
> +	soc_uid |= msg.uid_low;
> +
> +	return sprintf(buf, "%016llX\n", soc_uid);
> +}
> +
> +static DEVICE_ATTR_RO(soc_uid);
> +
>  static int imx_scu_soc_id(void)
>  {
>  	struct imx_sc_msg_misc_get_soc_id msg;
> @@ -102,6 +136,11 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
>  		goto free_revision;
>  	}
>  
> +	ret = device_create_file(soc_device_to_device(soc_dev),
> +				 &dev_attr_soc_uid);
> +	if (ret)
> +		goto free_revision;
> +
>  	return 0;
>  
>  free_revision:
> -- 
> 2.7.4
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
