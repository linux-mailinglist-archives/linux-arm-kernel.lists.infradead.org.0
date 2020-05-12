Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127AA1CFCBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 20:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3C7U/xGHtml0p47sBkOFp187udXeXhtZai1n4n4eoS0=; b=RNXo7nHUZ7x9K3
	uYfuNQUAJf0+gJp+ScXOFnY79CJyuCyRlx5bdIr7/UgOlFNlNcNN5Dy5iwZJeGzhmUYyzZQdap4ln
	HkOmPhy9U+gR4rd3dG+qAInQ26pgqQhfE56Y4Q7T9Htt6nEylIqmdMM+IXfs5hdP/Nk5VcAjyegPO
	bHv4Mj0U4DOBLTsD28rHXrSjRHk5yCMB+k6yfNkBdGDvtbMIHaPwwIp+u34NHVekskuDlfSQdT5ye
	HUOy6YLhaVWC+m5lrxxPZv0EapZPaIUCSIoFsR/72uLw+cynz3yZWCvVclK9o4UTrM9Ll31hXt9Ot
	9PzRXOLX6+uTdESwgSPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZCw-0008Bp-J1; Tue, 12 May 2020 18:00:46 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZCo-0008Ah-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 18:00:39 +0000
Received: by mail-il1-x144.google.com with SMTP id b18so5171745ilf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 11:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cLEAYLVD6JreucQil+ujhm8FErflJCkoe7KXXK012mc=;
 b=JpAw+cFGmfHBajujn/xovuM0dYlazaSRxJ4KOtDR8DxkxTDdhtE1+ux/9NOdXlkDvb
 Yj5I98DG6givG6zWx5FND6O4IbR9RmMma41huxQDdrAFggw14jKpQ6A8aCQjY5lNRLaJ
 TtOlnoUqEuX2PFLxUBkT45aJ2ipRGUiirEJKSQ8+dIFJ57Bmx6oE6c8Vhs02VfxbT7mR
 JfL9SB7n3gHK8JbOhQmkzLxnr/v0qljAoDLqHHpHq57tY72JlfgJJ3aykj1tLeQtIDDf
 OOfoPyKWJWz1awCXqduOmpzQDGDJriVLYqiGyOEOK2s0Ek0MioR+r97kcvvl5CTgCUBu
 BnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cLEAYLVD6JreucQil+ujhm8FErflJCkoe7KXXK012mc=;
 b=s0Kh1Xiai7fWKUUpjk4wdVFOgeOmNQua49ydbc+T3gIB77KKimM3Un8AeQqV0zZ+Qg
 9Ouz1QZw/hnVBjQfTCWxkcBMyimFc2S/zA52XD34RG1uUnT2Yul+vOTVmiud7t0Co7ME
 mdt5cLc04wEdtX0MGNrn60opQ3P9cjH0+7PxbLGSkGJUrrdr6puoTo/fMmj/Ja/7zGHJ
 VbQSpSDmygbfa2kyp4ZWCcCIMS6Wjk9fKUiNkIeyjrKHxRXJSIKTzBZXUhHhREnEB0YE
 rpl5QjBzOyahn4pIAo282WgXgaDEwj+68OaIL5EkutGcH5H2wVBWEwnvg+rQwL3okPFW
 8MpQ==
X-Gm-Message-State: AGi0PuZXnnMeHIJKebHzzHRuKRyokQK9+7PGBSYZN1S9MlDZiAnhMCIs
 Loi9s1X5Yy+54VkKwiZVNEoF+b1ATVMMUBzV4Unjvw==
X-Google-Smtp-Source: APiQypImINfWk/azU+gh8VqSVBC+bjXOzMV58x6QAkL+twgu0FTJCnw6HhztAFigezzRtYkv2vWuAeZSEaiXI9PcO8g=
X-Received: by 2002:a92:390f:: with SMTP id g15mr1559060ila.72.1589306432104; 
 Tue, 12 May 2020 11:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200507053547.13707-1-calvin.johnson@oss.nxp.com>
In-Reply-To: <20200507053547.13707-1-calvin.johnson@oss.nxp.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 12 May 2020 12:00:21 -0600
Message-ID: <CANLsYkzeHpZygbQtz8Ed7dEaVMz362ftHQJ50DrBYR=+72NpJQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: remove incorrect NULL return check
To: Calvin Johnson <calvin.johnson@oss.nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_110038_179544_968AC4F2 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux.cj@gmail.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Wed, 6 May 2020 at 23:36, Calvin Johnson <calvin.johnson@oss.nxp.com> wrote:
>
> fwnode_find_reference() doesn't return NULL and hence that check
> should be avoided.
>
> Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

I just noticed you were not CC'ed on the original conversation Calvin
and I had and as such you probably don't know what to do with this
patch.  Please see if you can pick it up as a fix for 5.7.  If that is
not possible I will queue it up for inclusion in the 5.8 cycle.

Thanks,
Mathieu

> ---
>
>  drivers/hwtracing/coresight/coresight-cti-platform.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
> index b44d83142b62..2fdaeec80ee5 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
> @@ -120,7 +120,7 @@ static int cti_plat_create_v8_etm_connection(struct device *dev,
>
>         /* Can optionally have an etm node - return if not  */
>         cs_fwnode = fwnode_find_reference(root_fwnode, CTI_DT_CSDEV_ASSOC, 0);
> -       if (IS_ERR_OR_NULL(cs_fwnode))
> +       if (IS_ERR(cs_fwnode))
>                 return 0;
>
>         /* allocate memory */
> @@ -393,7 +393,7 @@ static int cti_plat_create_connection(struct device *dev,
>                 /* associated device ? */
>                 cs_fwnode = fwnode_find_reference(fwnode,
>                                                   CTI_DT_CSDEV_ASSOC, 0);
> -               if (!IS_ERR_OR_NULL(cs_fwnode)) {
> +               if (!IS_ERR(cs_fwnode)) {
>                         assoc_name = cti_plat_get_csdev_or_node_name(cs_fwnode,
>                                                                      &csdev);
>                         fwnode_handle_put(cs_fwnode);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
