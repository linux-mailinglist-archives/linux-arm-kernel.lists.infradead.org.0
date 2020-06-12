Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3918A1F7281
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 05:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCzYlCc5wzZXMyx74lQoC2f0NSIqJ+8ItroCVyWkEyI=; b=Ie0XEb78vFuK6o
	IJl1z33KGc610v/m5jcEXAV7LePQT5PHUxg6cENFpm3u4rGZoLZRRHhR1RZWBidOmIKOVFK0OgWS/
	vkHLFgjabq15jzZ4eaNgzB6cZlwDmo+kHio/n4aHtj887yt0ScsEkIfOS+wVmdRYfFG/oRMIjGfFo
	24uhXpfG3IbDa9P5mkfWld2Q2DL9Eaaj+yRH48VYrXgxaZ97EA01oley9XorzCrZd9zWScKAY5f7S
	/wrUQguGN08vJ8JPVlkvrw2ZV71dEdfEcUGknHmkMvqebsMoNIHqVJg5MRsJEkvJeyYZ3XyYqXfPP
	Y12ZJu1EGeVLvCefTGZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjaXD-0007NK-U7; Fri, 12 Jun 2020 03:39:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjaX7-0007Mi-5G; Fri, 12 Jun 2020 03:39:11 +0000
X-UUID: 89b5270884fc4c9bb9dcb06bfe50e7b6-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2vt1fP2Pv2sBuK3kCBi7QAIK77QfXBuuHgboplad8oc=; 
 b=NjwK7zLTVflom0KTM61+KvD6VkOn1KKdeVOy3P+EQU1T5Xn0zs18Cv9pK6LT5cmzPFVaru4lMntgE4S+wyevBDwy2Vc+a1ckDg+yxqeeReS73hmjQ66612vRnZcRNErh7lg3CrUFMwWLYTsAb7yqBFARPW17F5DbOkdfi6q+oSw=;
X-UUID: 89b5270884fc4c9bb9dcb06bfe50e7b6-20200611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 363178259; Thu, 11 Jun 2020 19:39:01 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 20:38:52 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 11:38:45 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 11:38:44 +0800
Message-ID: <1591933130.15994.23.camel@mtkswgap22>
Subject: Re: [PATCH v2] usb/gadget/function: introduce Built-in CDROM support
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Fri, 12 Jun 2020 11:38:50 +0800
In-Reply-To: <20200610143100.GB11727@rowland.harvard.edu>
References: <1591756349-17865-1-git-send-email-macpaul.lin@mediatek.com>
 <1591769718-3287-1-git-send-email-macpaul.lin@mediatek.com>
 <20200610143100.GB11727@rowland.harvard.edu>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_203909_211183_E10D9E4D 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, Justin
 Hsieh <justinhsieh@google.com>, linux-arm-kernel@lists.infradead.org,
 EJ Hsu <ejh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-10 at 10:31 -0400, Alan Stern wrote:
> On Wed, Jun 10, 2020 at 02:15:18PM +0800, Macpaul Lin wrote:
> > Introduce Built-In CDROM (BICR) support.
> > This feature depends on USB_CONFIGFS_MASS_STORAGE option.
> > 
> > 1. Some settings and new function is introduced for BICR.
> > 2. Some work around for adapting Android settings is introduced as well.
> 
> You're going to have to give a much better explanation of what this 
> does.  For people who don't know what Built-In CDROM support is, what 
> you wrote is meaningless.
> 
> For example, how is BICR support different from the CDROM support 
> already present in the driver?  And what's so special about it that it 
> needs its own kconfig setting?
> 
> > @@ -369,6 +372,10 @@ static void set_bulk_out_req_length(struct fsg_common *common,
> >  	if (rem > 0)
> >  		length += common->bulk_out_maxpacket - rem;
> >  	bh->outreq->length = length;
> > +
> > +	/* some USB 2.0 hardware requires this setting */
> > +	if (common->bicr)
> > +		bh->outreq->short_not_ok = 1;
> 
> How is this connected with BICR?  If some USB 2.0 hardware requires this 
> setting, shouldn't it always be turned on?
> 
> Besides, why does some hardware require this?  What goes wrong if 
> short_not_ok is set to 0?  If it causes problems, why didn't we become 
> aware of them many years ago?

Thanks for Alan and Greg's suggestion, we will check these issues and
see if a better solution could be work out.

> > @@ -527,7 +534,16 @@ static int fsg_setup(struct usb_function *f,
> >  				w_length != 1)
> >  			return -EDOM;
> >  		VDBG(fsg, "get max LUN\n");
> > -		*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
> > +		if (IS_ENABLED(USB_CONFIGFS_BICR) && fsg->common->bicr) {
> > +			/*
> > +			 * When Built-In CDROM is enabled,
> > +			 * we share only one LUN.
> > +			 */
> > +			*(u8 *)req->buf = 0;
> > +		} else {
> > +			*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
> > +		}
> 
> This is a very strange way of enforcing a single-LUN restriction.  Why 
> do it here?  A much more logical place would be where cfg->nluns is set 
> up originally.
> 
> > +		INFO(fsg, "get max LUN = %d\n", *(u8 *)req->buf);
> 
> This debugging line isn't needed.
> 
> >  		/* Respond with data/status */
> >  		req->length = min((u16)1, w_length);
> > @@ -1329,7 +1345,7 @@ static int do_start_stop(struct fsg_common *common)
> >  	}
> >  
> >  	/* Are we allowed to unload the media? */
> > -	if (curlun->prevent_medium_removal) {
> > +	if (!curlun->nofua && curlun->prevent_medium_removal) {
> 
> How is nofua connected to BICR?  Or to prevent_medium_removal?
> 
> >  		LDBG(curlun, "unload attempt prevented\n");
> >  		curlun->sense_data = SS_MEDIUM_REMOVAL_PREVENTED;
> >  		return -EINVAL;
> > @@ -2692,6 +2708,7 @@ int fsg_common_set_cdev(struct fsg_common *common,
> >  	common->ep0 = cdev->gadget->ep0;
> >  	common->ep0req = cdev->req;
> >  	common->cdev = cdev;
> > +	common->bicr = 0;
> >  
> >  	us = usb_gstrings_attach(cdev, fsg_strings_array,
> >  				 ARRAY_SIZE(fsg_strings));
> > @@ -2895,6 +2912,33 @@ static void fsg_common_release(struct fsg_common *common)
> >  		kfree(common);
> >  }
> >  
> > +#ifdef CONFIG_USB_CONFIGFS_BICR
> > +ssize_t fsg_bicr_show(struct fsg_common *common, char *buf)
> > +{
> > +	return sprintf(buf, "%d\n", common->bicr);
> > +}
> > +
> > +ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size)
> > +{
> > +	int ret;
> > +
> > +	ret = kstrtou8(buf, 10, &common->bicr);
> > +	if (ret)
> > +		return -EINVAL;
> > +
> > +	/* Set Lun[0] is a CDROM when enable bicr.*/
> > +	if (!strcmp(buf, "1"))
> > +		common->luns[0]->cdrom = 1;
> > +	else {
> > +		common->luns[0]->cdrom = 0;
> > +		common->luns[0]->blkbits = 0;
> > +		common->luns[0]->blksize = 0;
> > +		common->luns[0]->num_sectors = 0;
> > +	}
> > +
> > +	return size;
> > +}
> 
> Where do these attributes ever get exported to sysfs?
> 
> > +#endif
> >  
> >  /*-------------------------------------------------------------------------*/
> >  
> > @@ -3463,6 +3507,7 @@ void fsg_config_from_params(struct fsg_config *cfg,
> >  		lun->ro = !!params->ro[i];
> >  		lun->cdrom = !!params->cdrom[i];
> >  		lun->removable = !!params->removable[i];
> > +		lun->nofua = !!params->nofua[i];
> 
> Isn't this set already?  If not, it is a bug that has nothing to do with 
> BICR.
> 
> >  		lun->filename =
> >  			params->file_count > i && params->file[i][0]
> >  			? params->file[i]
> > diff --git a/drivers/usb/gadget/function/f_mass_storage.h b/drivers/usb/gadget/function/f_mass_storage.h
> > index 3b8c4ce2a40a..7097e2ea5cc9 100644
> > --- a/drivers/usb/gadget/function/f_mass_storage.h
> > +++ b/drivers/usb/gadget/function/f_mass_storage.h
> > @@ -140,5 +140,8 @@ void fsg_common_set_inquiry_string(struct fsg_common *common, const char *vn,
> >  void fsg_config_from_params(struct fsg_config *cfg,
> >  			    const struct fsg_module_parameters *params,
> >  			    unsigned int fsg_num_buffers);
> > -
> > +#ifdef CONFIG_USB_CONFIGFS_BICR
> > +ssize_t fsg_bicr_show(struct fsg_common *common, char *buf);
> > +ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size);
> > +#endif
> >  #endif /* USB_F_MASS_STORAGE_H */
> > diff --git a/drivers/usb/gadget/function/storage_common.c b/drivers/usb/gadget/function/storage_common.c
> > index f7e6c42558eb..8fe96eeddf35 100644
> > --- a/drivers/usb/gadget/function/storage_common.c
> > +++ b/drivers/usb/gadget/function/storage_common.c
> > @@ -441,6 +441,29 @@ ssize_t fsg_store_file(struct fsg_lun *curlun, struct rw_semaphore *filesem,
> >  		return -EBUSY;				/* "Door is locked" */
> >  	}
> >  
> > +	pr_notice("%s file=%s, count=%d, curlun->cdrom=%d\n",
> > +			__func__, buf, (int)count, curlun->cdrom);
> 
> Another debugging line that shouldn't be present in the final patch.
> 
> > +
> > +	/*
> > +	 * WORKAROUND for Android:
> > +	 *   VOLD would clean the file path after switching to bicr.
> > +	 *   So when the lun is being a CD-ROM a.k.a. BICR.
> > +	 *   Don't clean the file path to empty.
> > +	 */
> > +	if (curlun->cdrom == 1 && count == 1)
> > +		return count;
> > +
> > +	/*
> > +	 * WORKAROUND: Should be closed the fsg lun for virtual cd-rom,
> > +	 * when switch to other usb functions.
> 
> That is not a grammatical English sentence.
> 
> > +	 * Use the special keyword "off", because the init can
> > +	 * not parse the char '\n' in rc file and write into the sysfs.
> > +	 */
> > +	if (count == 3 &&
> > +			buf[0] == 'o' && buf[1] == 'f' && buf[2] == 'f' &&
> > +			fsg_lun_is_open(curlun))
> > +		((char *) buf)[0] = 0;
> 
> This seems like another bug fix that has no connection with BICR.
> 
> Alan Stern
> 
> > +
> >  	/* Remove a trailing newline */
> >  	if (count > 0 && buf[count-1] == '\n')
> >  		((char *) buf)[count-1] = 0;		/* Ugh! */
> > -- 
> > 2.18.0

Thanks!
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
