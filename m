Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D264DCD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+0xdzScns5NaN6PNKeEr+AWwkM9muoePaL34hbpm3k=; b=fGEC3tZZfPr3Kh
	0dyllFfpq6b/cd8Wp7/hUmeCExXNsILahYGZLAXF6lM+HH8/zp0L1/MTEC+BfIO5jP0evNed0zVQ/
	qWa/380ZsLzuv4w83XMlpDf+6NZj7iMEPE6GVYJHmP+KMVyYkR6mGidZU+sl/h6oUGA9a3egBTalB
	kS9mcnHzT1/dSUq7H76tb4QIfrHd1AScHwz0dytS2P2M2eA8fT93PAQ/KXPHnQ58KsVHyQ/VQ6Fuk
	44BOHpCPfsTxT9C66FTEzR3rfCJCFh2mCGY1IZFxI78C/hvYn7Hf1wR4sM7LBBH9ZwcrcEjLpfTb1
	eGpiogNGCs2RVGUZCX9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4mW-0003Qk-4K; Thu, 20 Jun 2019 21:39:44 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4ly-0003Ex-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:39:15 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so487948iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eTRUUPmiMamYKCB7Iqq3svN/bcQUQ7UKOx9BoMFQ/BI=;
 b=wmw20NOUs4dukGCTnFfaW9eZPX10WLGF6jWY5I+nZ8UVJSEsugt3NpVYe1lfSwN5AC
 73x9KQIl9xF9nS2ITvXoHHAz33kvccTg0Nfqb3fJ9Ghjzs+66pH8+TzF8gsTesua6JHu
 NIO3JQmOe3Z5g2zGf1qxCDVpEASp+7Ki4RQlFFoipZGZvMiutSdffHbBp5d6XP2ro2zq
 VfcaVER4yWS8mwAjClFxCHtarhg0MNhcD2SPTYBP2wpvRY15NP9wa4QF9d3JVZ2eKkf8
 wo5OSwgN8vxT2cK7ayrNoE4FRBga+7Z3LfVuUjxbAbxaSYGiNW6+TQSAw0ykrFUNU76B
 QXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eTRUUPmiMamYKCB7Iqq3svN/bcQUQ7UKOx9BoMFQ/BI=;
 b=jLdDeMF0wLnSnurWTPIFv1s2oBaemq0gAZxyTE0lyH6/nufKW9exqj+Ji5OiMIE11F
 Owb/3cbqWzq5XEvgQnQHYCSTtua449MiGRxaCNugZcPmEPfi5WxY5cyv7sq4kPNLHhLG
 XFYP/QTDid7o++lOJskmEw4ikF9Et7jAI/06EN2UcAkdnHixiqyk6vA6JT33YQinGkRK
 7L7i5aXiMcIVfWep+sVv3uRLqmiiPZ1uxJmDV2vRKoEb6Rb10H8rbebqq3q4QPmPSS/s
 zLxXDtfFdTvQyDi/IvomaEiRjnvdSpV1xF05BVHzbMzuYYfNpae/pOD2IiC+i45w4yfs
 5yeg==
X-Gm-Message-State: APjAAAUYLBpZP8kQsHpP+IIufJEpgxHM1OuTuZPfH0/LnqIkVVm0lGWe
 1qkexNbkhRnx5fICrzGdgLLt5O+jy182RtmdSmoxEQ==
X-Google-Smtp-Source: APXvYqzj0H/p7uf2R4X1y+LiGl7Vb1u3TaIPnTnUXDYOktMfCEIEqBo80owudjp304zkvqzFxjPoH8s2uuJW3AEFf0M=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr21801931ioo.237.1561066749368; 
 Thu, 20 Jun 2019 14:39:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-26-mathieu.poirier@linaro.org>
 <20190620060459.GF26319@kroah.com>
In-Reply-To: <20190620060459.GF26319@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 15:38:58 -0600
Message-ID: <CANLsYkwny4=AmSEf8sog+qOp3VyzXnb_tFFuqMqHX7ee7eU0tQ@mail.gmail.com>
Subject: Re: [PATCH 25/28] coresight: etm3x: Smatch: Fix potential NULL
 pointer dereference
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143910_935793_F4AB6C50 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 00:05, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 19, 2019 at 01:53:15PM -0600, Mathieu Poirier wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > Based on the following report from  Smatch tool, make sure we have a
> > valid drvdata before we dereference it to find the real dev.
> >
> > The patch 21d26b905c05: "coresight: etm: Clean up device specific
> > data" from May 22, 2019, leads to the following Smatch complaint:
> >
> >     ./drivers/hwtracing/coresight/coresight-etm3x.c:460 etm_get_trace_id()
> >     warn: variable dereferenced before check 'drvdata' (see line 458)
> >
> > ./drivers/hwtracing/coresight/coresight-etm3x.c
> >    457                int trace_id = -1;
> >    458                struct device *etm_dev = drvdata->csdev->dev.parent;
> >                                          ^^^^^^^^^
> > New dereference
> >
> >    459
> >    460                if (!drvdata)
> >                     ^^^^^^^^
> > Checked too late.  Delete the check?
> >
> >    461                        goto out;
> >    462
> >
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-etm3x.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> > index bed729140718..225c2982e4fe 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> > @@ -455,11 +455,12 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
> >  {
> >       unsigned long flags;
> >       int trace_id = -1;
> > -     struct device *etm_dev = drvdata->csdev->dev.parent;
> > +     struct device *etm_dev;
> >
> >       if (!drvdata)
> >               goto out;
> >
> > +     etm_dev = drvdata->csdev->dev.parent;
> >       if (!local_read(&drvdata->mode))
> >               return drvdata->traceid;
> >
> > --
> > 2.17.1
> >
>
> Looks like 5.2 and possibly stable material, right?

This patch is fixing code that was introduced by patch 12/45 [1] of
the original set - it should really be applied on top you
char-misc-next for the 5.3 merge window.

[1]. https://www.spinics.net/lists/arm-kernel/msg736150.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
