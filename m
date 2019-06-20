Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD4D4D21F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVkKz2LEyQL8dYte1BmMVLcZm5CzgKtd6dKPXuYJ3RU=; b=O2My+gNoaDCTkV
	bqISuouoFPloxxos3ZOj5tRqu6k8yeKOE0X0HRo6FkfIlLvYIlorMkTqWDyau8gxoRpQipZtdRh9P
	K4dia/9sd+3/Kc0vLg3+pq7wFbIxkU6ZwTfwuGYAyBoOf1qWQHOrIBMog98T3Zzz/YMvvmUcIaD11
	kg6ENf87FKUkklQ7GVPIl1VwjKs4MGQOTRTKG0RbHzr0n+z5yp6X9Zeq/GRTYp2iTqKux/34g4iBQ
	pqRJrihYio++EyotOnraSd1s5pklhA/xh4Vzw15fTjbwxfs8Pp8N4uUINJxwx+d0H3v8hjj0gRW2v
	d3qwFzSC5ngY0Jr7u4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyxx-0002gq-1a; Thu, 20 Jun 2019 15:27:09 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyxg-0002gL-43
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:26:53 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 08:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="311692885"
Received: from waelreed-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.63.228])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2019 08:26:45 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id B5D8D21D88; Thu, 20 Jun 2019 18:26:41 +0300 (EEST)
Date: Thu, 20 Jun 2019 18:26:41 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hugues Fruchet <hugues.fruchet@st.com>
Subject: Re: [PATCH v2 1/3] media: stm32-dcmi: improve sensor subdev naming
Message-ID: <20190620152640.chd4u4u5hd56ausk@kekkonen.localdomain>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-2-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560242912-17138-2-git-send-email-hugues.fruchet@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_082652_212776_0D5B3695 
X-CRM114-Status: GOOD (  10.57  )
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

On Tue, Jun 11, 2019 at 10:48:30AM +0200, Hugues Fruchet wrote:
> Add a new "sensor" field to dcmi struct instead of
> reusing entity->subdev to address sensor subdev.

The purpose of the struct binding image source's async subdev as well as
related information is to allow associating the two. This patch breaks
that. If your device can support a single sensor, it might not be a big
deal. The end result remains somewhat inconsistent as subdev specific
information is spread across struct stm32_dcmi and struct
dcmi_graph_entity.

In general you don't need to know the sensor as you can always find it
using media_entity_remote_pad(). This driver is a little different though
as it could presumably continue to work without MC. Was that the intent?

On a side note: struct dcmi_graph_entity does NOT have struct
v4l2_async_subdev as its first member. Please fix that and prepend the fix
to this set.

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
