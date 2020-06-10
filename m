Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0819E1F56D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVBfFTBKFQSYA1/Ux9CwoPekQhJeNZ4NEqXTJkL3caU=; b=QM64HD0co8k9P+
	e0QnKK7UhoNKAZwVtJ1spDb/OsB2zzMhZ/6pVBqpFVKGLcaC2u6wg8qguxyB25UnWfPszkHCmtFqU
	rCZf9Qx/x/MVsC10QgoFZbPChwibggt19XL3lWWmMUiX1Wo7i0r9PK7b9TDwCvMcjbB/D4+FXo8ob
	RhgltorcdjWsPieBdfEHQoLSo/JrK0CdLlS5pyu9qO+pdDm/fb1SYq7usD5WOpCYuTUZV0Z+R8cRs
	2+0Fz/5MGHsQOE8KWJBSQvw/JCBygKA/0w4A932mE3yD1zQdP7v7H7JlwqMI+g9FooL9c8264AQjT
	J3Ny2pYyHhDWTXpfiiow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1l6-0001Be-RQ; Wed, 10 Jun 2020 14:31:16 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1ku-00019t-QM
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:31:06 +0000
Received: (qmail 14031 invoked by uid 1000); 10 Jun 2020 10:31:00 -0400
Date: Wed, 10 Jun 2020 10:31:00 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v2] usb/gadget/function: introduce Built-in CDROM support
Message-ID: <20200610143100.GB11727@rowland.harvard.edu>
References: <1591756349-17865-1-git-send-email-macpaul.lin@mediatek.com>
 <1591769718-3287-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591769718-3287-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_073105_003628_DC8A6B89 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Felipe Balbi <balbi@kernel.org>, Hakieyin Hsieh <hakieyin@gmail.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Peter Chen <peter.chen@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Macpaul Lin <macpaul.lin@gmail.com>,
 Justin Hsieh <justinhsieh@google.com>, linux-arm-kernel@lists.infradead.org,
 EJ Hsu <ejh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 02:15:18PM +0800, Macpaul Lin wrote:
> Introduce Built-In CDROM (BICR) support.
> This feature depends on USB_CONFIGFS_MASS_STORAGE option.
> 
> 1. Some settings and new function is introduced for BICR.
> 2. Some work around for adapting Android settings is introduced as well.

You're going to have to give a much better explanation of what this 
does.  For people who don't know what Built-In CDROM support is, what 
you wrote is meaningless.

For example, how is BICR support different from the CDROM support 
already present in the driver?  And what's so special about it that it 
needs its own kconfig setting?

> @@ -369,6 +372,10 @@ static void set_bulk_out_req_length(struct fsg_common *common,
>  	if (rem > 0)
>  		length += common->bulk_out_maxpacket - rem;
>  	bh->outreq->length = length;
> +
> +	/* some USB 2.0 hardware requires this setting */
> +	if (common->bicr)
> +		bh->outreq->short_not_ok = 1;

How is this connected with BICR?  If some USB 2.0 hardware requires this 
setting, shouldn't it always be turned on?

Besides, why does some hardware require this?  What goes wrong if 
short_not_ok is set to 0?  If it causes problems, why didn't we become 
aware of them many years ago?

> @@ -527,7 +534,16 @@ static int fsg_setup(struct usb_function *f,
>  				w_length != 1)
>  			return -EDOM;
>  		VDBG(fsg, "get max LUN\n");
> -		*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
> +		if (IS_ENABLED(USB_CONFIGFS_BICR) && fsg->common->bicr) {
> +			/*
> +			 * When Built-In CDROM is enabled,
> +			 * we share only one LUN.
> +			 */
> +			*(u8 *)req->buf = 0;
> +		} else {
> +			*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
> +		}

This is a very strange way of enforcing a single-LUN restriction.  Why 
do it here?  A much more logical place would be where cfg->nluns is set 
up originally.

> +		INFO(fsg, "get max LUN = %d\n", *(u8 *)req->buf);

This debugging line isn't needed.

>  		/* Respond with data/status */
>  		req->length = min((u16)1, w_length);
> @@ -1329,7 +1345,7 @@ static int do_start_stop(struct fsg_common *common)
>  	}
>  
>  	/* Are we allowed to unload the media? */
> -	if (curlun->prevent_medium_removal) {
> +	if (!curlun->nofua && curlun->prevent_medium_removal) {

How is nofua connected to BICR?  Or to prevent_medium_removal?

>  		LDBG(curlun, "unload attempt prevented\n");
>  		curlun->sense_data = SS_MEDIUM_REMOVAL_PREVENTED;
>  		return -EINVAL;
> @@ -2692,6 +2708,7 @@ int fsg_common_set_cdev(struct fsg_common *common,
>  	common->ep0 = cdev->gadget->ep0;
>  	common->ep0req = cdev->req;
>  	common->cdev = cdev;
> +	common->bicr = 0;
>  
>  	us = usb_gstrings_attach(cdev, fsg_strings_array,
>  				 ARRAY_SIZE(fsg_strings));
> @@ -2895,6 +2912,33 @@ static void fsg_common_release(struct fsg_common *common)
>  		kfree(common);
>  }
>  
> +#ifdef CONFIG_USB_CONFIGFS_BICR
> +ssize_t fsg_bicr_show(struct fsg_common *common, char *buf)
> +{
> +	return sprintf(buf, "%d\n", common->bicr);
> +}
> +
> +ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size)
> +{
> +	int ret;
> +
> +	ret = kstrtou8(buf, 10, &common->bicr);
> +	if (ret)
> +		return -EINVAL;
> +
> +	/* Set Lun[0] is a CDROM when enable bicr.*/
> +	if (!strcmp(buf, "1"))
> +		common->luns[0]->cdrom = 1;
> +	else {
> +		common->luns[0]->cdrom = 0;
> +		common->luns[0]->blkbits = 0;
> +		common->luns[0]->blksize = 0;
> +		common->luns[0]->num_sectors = 0;
> +	}
> +
> +	return size;
> +}

Where do these attributes ever get exported to sysfs?

> +#endif
>  
>  /*-------------------------------------------------------------------------*/
>  
> @@ -3463,6 +3507,7 @@ void fsg_config_from_params(struct fsg_config *cfg,
>  		lun->ro = !!params->ro[i];
>  		lun->cdrom = !!params->cdrom[i];
>  		lun->removable = !!params->removable[i];
> +		lun->nofua = !!params->nofua[i];

Isn't this set already?  If not, it is a bug that has nothing to do with 
BICR.

>  		lun->filename =
>  			params->file_count > i && params->file[i][0]
>  			? params->file[i]
> diff --git a/drivers/usb/gadget/function/f_mass_storage.h b/drivers/usb/gadget/function/f_mass_storage.h
> index 3b8c4ce2a40a..7097e2ea5cc9 100644
> --- a/drivers/usb/gadget/function/f_mass_storage.h
> +++ b/drivers/usb/gadget/function/f_mass_storage.h
> @@ -140,5 +140,8 @@ void fsg_common_set_inquiry_string(struct fsg_common *common, const char *vn,
>  void fsg_config_from_params(struct fsg_config *cfg,
>  			    const struct fsg_module_parameters *params,
>  			    unsigned int fsg_num_buffers);
> -
> +#ifdef CONFIG_USB_CONFIGFS_BICR
> +ssize_t fsg_bicr_show(struct fsg_common *common, char *buf);
> +ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size);
> +#endif
>  #endif /* USB_F_MASS_STORAGE_H */
> diff --git a/drivers/usb/gadget/function/storage_common.c b/drivers/usb/gadget/function/storage_common.c
> index f7e6c42558eb..8fe96eeddf35 100644
> --- a/drivers/usb/gadget/function/storage_common.c
> +++ b/drivers/usb/gadget/function/storage_common.c
> @@ -441,6 +441,29 @@ ssize_t fsg_store_file(struct fsg_lun *curlun, struct rw_semaphore *filesem,
>  		return -EBUSY;				/* "Door is locked" */
>  	}
>  
> +	pr_notice("%s file=%s, count=%d, curlun->cdrom=%d\n",
> +			__func__, buf, (int)count, curlun->cdrom);

Another debugging line that shouldn't be present in the final patch.

> +
> +	/*
> +	 * WORKAROUND for Android:
> +	 *   VOLD would clean the file path after switching to bicr.
> +	 *   So when the lun is being a CD-ROM a.k.a. BICR.
> +	 *   Don't clean the file path to empty.
> +	 */
> +	if (curlun->cdrom == 1 && count == 1)
> +		return count;
> +
> +	/*
> +	 * WORKAROUND: Should be closed the fsg lun for virtual cd-rom,
> +	 * when switch to other usb functions.

That is not a grammatical English sentence.

> +	 * Use the special keyword "off", because the init can
> +	 * not parse the char '\n' in rc file and write into the sysfs.
> +	 */
> +	if (count == 3 &&
> +			buf[0] == 'o' && buf[1] == 'f' && buf[2] == 'f' &&
> +			fsg_lun_is_open(curlun))
> +		((char *) buf)[0] = 0;

This seems like another bug fix that has no connection with BICR.

Alan Stern

> +
>  	/* Remove a trailing newline */
>  	if (count > 0 && buf[count-1] == '\n')
>  		((char *) buf)[count-1] = 0;		/* Ugh! */
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
