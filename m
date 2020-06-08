Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EB31F1416
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/kUJyKW1I/ckVV2t4mXxOVCAcaPimlbeCRWsXdeMMY=; b=KehwDNgSqf/QL9
	1knLM5UvyDsK4zu0pJzqBh5gLTfdpqomzZWVXmwyanu9oqZOEXBKQ0qFLXSVdYtoRkhnXFsnACieO
	lMurqVTJy3LXzqJLnI6c+OD1+KkRybcR+a+XwHjtidjl9kEtAYcbRwHcWxXIcCoxrroLRVyVrWu+y
	nW1+O6wn+JWnigSrkhXP+f//KWY96QahJsFXgb5WBplP31wOrzYW5IP+I3DddRj1SVBK89vN0CWVw
	ryWflAqmkiY8ZOvtr32YqMRDu+TEzELvEZ7KIjyN/k0wKdheQiyOAjjwjwIqP0wnSQrA5QvvW+O9J
	Fc0qQOgBKFyQufMlQoqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCjr-00026z-BT; Mon, 08 Jun 2020 08:02:35 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCjj-00026C-1Z
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:02:29 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id ED924634C87;
 Mon,  8 Jun 2020 11:00:42 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jiCi3-0004mZ-3R; Mon, 08 Jun 2020 11:00:43 +0300
Date: Mon, 8 Jun 2020 11:00:43 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: Re: [PATCH v3 08/10] media: i2c: imx290: Add support to enumerate
 all frame sizes
Message-ID: <20200608080043.GN9947@valkosipuli.retiisi.org.uk>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-9-andrey.konovalov@linaro.org>
 <20200526091716.GJ8214@valkosipuli.retiisi.org.uk>
 <effee6cc-680f-3234-2e56-2f6b24d107cd@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <effee6cc-680f-3234-2e56-2f6b24d107cd@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_010227_270443_D8B7D88C 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 manivannan.sadhasivam@linaro.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 07:28:56PM +0300, Andrey Konovalov wrote:
> Hi Sakari,
> 
> Thank you for the review!
> 
> On 26.05.2020 12:17, Sakari Ailus wrote:
> > Hi Andrey,
> > 
> > On Sun, May 24, 2020 at 10:25:03PM +0300, Andrey Konovalov wrote:
> > > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > 
> > > Add support to enumerate all frame sizes supported by IMX290. This is
> > > required for using with userspace tools such as libcamera.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> > > ---
> > >   drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
> > >   1 file changed, 20 insertions(+)
> > > 
> > > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > > index 6e70ff22bc5f..88850f3b1427 100644
> > > --- a/drivers/media/i2c/imx290.c
> > > +++ b/drivers/media/i2c/imx290.c
> > > @@ -471,6 +471,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
> > >   	return 0;
> > >   }
> > > +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
> > > +				  struct v4l2_subdev_pad_config *cfg,
> > > +				  struct v4l2_subdev_frame_size_enum *fse)
> > > +{
> > > +	if ((fse->code != imx290_formats[0].code) &&
> > > +	    (fse->code != imx290_formats[1].code))
> > > +		return -EINVAL;
> > 
> > Please skip the modes that do not have the code specified by the user. They
> > should not be enumerated here.
> 
> I've double checked this part of the code, and it doesn't seem to need changes.
> The reason is that for the both codes the set of the modes and the frame sizes is
> exactly the same. And the fse->code check above just guards against the codes not
> supported by the driver at all.

Indeed. Please then ignore the comment.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
