Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B2591E9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIcJaG0R5+atL7pUTSE0+rbo1mq4reSvxTNv4BQRm5M=; b=jVDtahG04D2Zt3
	taHOz6ksHDGk+czuLyS1amLl4bNKYVqXbXbN2APKaWykK+j8rTj+fPyHKp51qS4ZPyJjYMBWM4uxv
	Lbf4jxjYndZJCi6To+44medH594njfHtvbxIWjNHVTlMA3mQbyshtqoJuXA69a6/AK5M6kf15EROv
	VyIp5cFjyAu+lXBVF14g7c6QcxiXbZSa6xV7xbDVO0ujx94YdE2mL/YRyekcocYkdE9NK+fiyHqxd
	CrJVYbYGAMw3RBmQ/Xq970YCriBBmAETzBS/kJVzIV7zzzqKGgOhYZ5nwXcZhyWg1jXKx/hOd7Vk7
	vVCBK1pDroOnwatLjJpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzclx-0008Fp-Vv; Mon, 19 Aug 2019 08:12:14 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzclj-0008FH-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:12:01 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 01:11:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="182801171"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 01:11:55 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 1C050202FC; Mon, 19 Aug 2019 11:10:55 +0300 (EEST)
Date: Mon, 19 Aug 2019 11:10:55 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues FRUCHET <hugues.fruchet@st.com>
Subject: Re: [PATCH v6 2/4] media: stm32-dcmi: trace the supported
 fourcc/mbus_code
Message-ID: <20190819081054.GB6133@paasikivi.fi.intel.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
 <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
 <20190816081514.GU6133@paasikivi.fi.intel.com>
 <fb02573f-991a-18c5-b780-b5fc100da6a8@st.com>
 <20190819072621.GZ6133@paasikivi.fi.intel.com>
 <ceec05d1-5791-4ba6-e2a8-3a5fd8b89955@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ceec05d1-5791-4ba6-e2a8-3a5fd8b89955@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_011159_967985_8091D8DF 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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

On Mon, Aug 19, 2019 at 07:40:53AM +0000, Hugues FRUCHET wrote:
> Hi Sakari,
> 
> OK, I will change.
> 
> Have you some other remarks on this serie in order that I group changes 
> in the next version ?

No other comments.

Thanks.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
