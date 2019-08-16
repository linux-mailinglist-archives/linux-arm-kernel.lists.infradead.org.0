Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9D08FD8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS9kif/tirZRLwqq7F+pEoytbxU91dVUCq1tQY1jiNY=; b=b2569drHoqUbme
	Lys2LcwoSTmdmmY3rRk2BNp2ezEjVmraAaAcdiZIdh9e9Vw/0zkiIg75gulmIvX3pHQgXWIue+5yK
	apU52ifnz1LpPYe0gyJBU8laj4GizSvEFzWQ/xfmLlqloUfo1J9fCctjrwQHkuPItD6bWKq99gGq9
	8rcHEchXPVaCxNgK/zpI4wecYBc+dQ6haiOVDlm05KnxVJSuBq7KNV7sG0lCHHVga1U1HK1u4KNXi
	7uh6nWHwYXf62OjFwI6EjQCCRYwWJvdpvEoohK+wCDs2lNW7r+E9HTFK/FUmCfmODc91RyNO4YU8l
	VWpUVXykRvQYAzvkVtAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXPy-0000Jr-0v; Fri, 16 Aug 2019 08:17:02 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXPK-0008V7-U9
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:16:24 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:16:22 -0700
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="167990821"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:16:19 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 7606820ABC; Fri, 16 Aug 2019 11:15:14 +0300 (EEST)
Date: Fri, 16 Aug 2019 11:15:14 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues Fruchet <hugues.fruchet@st.com>
Subject: Re: [PATCH v6 2/4] media: stm32-dcmi: trace the supported
 fourcc/mbus_code
Message-ID: <20190816081514.GU6133@paasikivi.fi.intel.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
 <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_011622_994741_A630CBAD 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Yannick Fertre <yannick.fertre@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugues,

On Wed, Aug 14, 2019 at 03:48:51PM +0200, Hugues Fruchet wrote:
> Add a trace of the set of supported fourcc/mbus_code which
> intersect between DCMI and source sub-device.
> 
> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
> ---
>  drivers/media/platform/stm32/stm32-dcmi.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b462f71..18acecf 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -1447,12 +1447,20 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
>  			/* Code supported, have we got this fourcc yet? */
>  			for (j = 0; j < num_fmts; j++)
>  				if (sd_fmts[j]->fourcc ==
> -						dcmi_formats[i].fourcc)
> +						dcmi_formats[i].fourcc) {
>  					/* Already available */
> +					dev_dbg(dcmi->dev, "Skipping fourcc/code: %4.4s/0x%x\n",
> +						(char *)&sd_fmts[j]->fourcc,
> +						mbus_code.code);
>  					break;
> -			if (j == num_fmts)
> +				}
> +			if (j == num_fmts) {
>  				/* New */
>  				sd_fmts[num_fmts++] = dcmi_formats + i;
> +				dev_dbg(dcmi->dev, "Supported fourcc/code: %4.4s/0x%x\n",

Over 80 characters per line.

> +					(char *)&sd_fmts[num_fmts - 1]->fourcc,
> +					sd_fmts[num_fmts - 1]->mbus_code);
> +			}
>  		}
>  		mbus_code.index++;
>  	}

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
