Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6978E91DD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnIJNU5EVRtUUShxH0vuC2kVGEOm0DFPqq6wrMdpu1g=; b=cj8AMI6Z9Z32+/
	nsso+TiUC1q9Q5znavtykgqcoE5rSz1ciWdIv1z/aCZorJU7ubKos5KnS9hBKC5yzenA3ZxsrXMTN
	4n3giEAIvVKDZORRaahvzt46T4SSBgl25pi9Yhbl3uipqwMeOIyEbuwhdf4hzEI/rRK0yBnfQTQfk
	0GqGZ2eZ5nZznqmmvefepo4VLpNZchQ8jkIi56P+8GZi1uqCfPx/tlB5KQ+j3cNuBv6HTpkELg+4Q
	+b5wvut003jUo2joJHhroJbh/e6O73e/eUg4S/2h5yPaBeY+a1KXVHg2Srd5E2fa/b9odorOxkcN8
	7kKFJb9fiicSQNmHQVEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc6z-0007Ka-0o; Mon, 19 Aug 2019 07:29:53 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc6g-0007Jz-9G
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:29:35 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 00:27:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="177797511"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 00:27:52 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 09D1F202FC; Mon, 19 Aug 2019 10:26:22 +0300 (EEST)
Date: Mon, 19 Aug 2019 10:26:21 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues FRUCHET <hugues.fruchet@st.com>
Subject: Re: [PATCH v6 2/4] media: stm32-dcmi: trace the supported
 fourcc/mbus_code
Message-ID: <20190819072621.GZ6133@paasikivi.fi.intel.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
 <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
 <20190816081514.GU6133@paasikivi.fi.intel.com>
 <fb02573f-991a-18c5-b780-b5fc100da6a8@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb02573f-991a-18c5-b780-b5fc100da6a8@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002934_360617_18E26435 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Yannick FERTRE <yannick.fertre@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugues,

On Mon, Aug 19, 2019 at 07:23:17AM +0000, Hugues FRUCHET wrote:
> Hi Sakari,
> 
> On 8/16/19 10:15 AM, Sakari Ailus wrote:
> > Hi Hugues,
> > 
> > On Wed, Aug 14, 2019 at 03:48:51PM +0200, Hugues Fruchet wrote:
> >> Add a trace of the set of supported fourcc/mbus_code which
> >> intersect between DCMI and source sub-device.
> >>
> >> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
> >> ---
> >>   drivers/media/platform/stm32/stm32-dcmi.c | 12 ++++++++++--
> >>   1 file changed, 10 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> >> index b462f71..18acecf 100644
> >> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> >> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> >> @@ -1447,12 +1447,20 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
> >>   			/* Code supported, have we got this fourcc yet? */
> >>   			for (j = 0; j < num_fmts; j++)
> >>   				if (sd_fmts[j]->fourcc ==
> >> -						dcmi_formats[i].fourcc)
> >> +						dcmi_formats[i].fourcc) {
> >>   					/* Already available */
> >> +					dev_dbg(dcmi->dev, "Skipping fourcc/code: %4.4s/0x%x\n",
> >> +						(char *)&sd_fmts[j]->fourcc,
> >> +						mbus_code.code);
> >>   					break;
> >> -			if (j == num_fmts)
> >> +				}
> >> +			if (j == num_fmts) {
> >>   				/* New */
> >>   				sd_fmts[num_fmts++] = dcmi_formats + i;
> >> +				dev_dbg(dcmi->dev, "Supported fourcc/code: %4.4s/0x%x\n",
> > 
> > Over 80 characters per line.
> > 
> 
> This an exception of the "80 chars" in order to be able to grep in 
> kernel messages:
> https://www.kernel.org/doc/html/v4.10/process/coding-style.html
> "However, never break user-visible strings such as printk messages, 
> because that breaks the ability to grep for them."
> 
> This exception is managed in checkpatch.pl (--strict).

This exception is for cases where wrapping the line in the usual way, e.g.
at argument boundaries, does not prevent it exceeding 80 characters. But it is
not the case here.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
