Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9692A8493E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUTFbrM2/b1bwlydoDPurSszf+rTKjPvn7TouvLDynQ=; b=MCBDqasmCdUtQf
	QmjuYv75PRTlIPUM22IqnTR/9shpgc3GXfyoLz48HfDgVaaZrLWaBzYK/jLf0pzfdMIOVqRvMlC9w
	+/LxArQ2QI/vjUmQKHvaj1eKoJFLLHmYo6ukMwFPOvlua/p/nWtr7F6dYETYDe+w/8xCLDTEKQOBF
	eeGRyND4Thzbl1CV9ZAI8czaJyB3dd7aIVi+fxNPZB4+kMSiNbLrRz5RlnjaJzvwTBac9zEYtzvGL
	c+Yr67VbCQX2n7pn8chpgPFJBySrl2c2ItJ7sofDMbxVqQwt6LXy5FdcaHGoaNJWMnAiH3vjjGlym
	ZrQLEzdxJ91PpJEFMGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIzX-0005jg-Dc; Wed, 07 Aug 2019 10:16:23 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIzI-0005ik-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:16:10 +0000
Received: from [IPv6:2001:983:e9a7:1:9c05:4bbc:890e:7747]
 ([IPv6:2001:983:e9a7:1:9c05:4bbc:890e:7747])
 by smtp-cloud9.xs4all.net with ESMTPA
 id vIz9hkTa7AffAvIzBh7ksg; Wed, 07 Aug 2019 12:16:01 +0200
Subject: Re: [PATCH v4 0/3] DCMI bridge support
To: Hugues Fruchet <hugues.fruchet@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <28a2a9ac-d5b9-a312-616a-620e0385cf66@xs4all.nl>
Date: Wed, 7 Aug 2019 12:15:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCP9LqKEIJwW0pIhFdbw6tGpB9o9mbS/qErOZQWhGe5Bzq7r6mVey37KBsvPv5vRS+rwW4N5qvZSOS4HYAHC9TbGd7KxoLiLiXGiTEb4+kK7x5xBPXQF
 BEKx6sgrIvZ0Uk2csPHS/u6dM4/EZ5RzZJMoc3sSL2Ftnd5D30a8380raWQ37PDsgqgo+XwyUsC8ecezUORYKUaiu8AlQFpK7NcZ2kqkqGNoNRUqkL5lv6/E
 6rGGcxbPLAgjVmhsp7xtoJB/0/1nhlIxo/nNlOLvN8hVjXTEb7mxhtCkYIC4PnrI0k7Uco9RR/DSvYRlVtiOp0g8QbNMcYWGmMKQMmlbdATwpMwb6+o9/PKB
 0f7OS+bm6jQC/JXUbtu66bq5e6dE+yd97Z+6+FMEUJMTDM6wT3RRAIFhkLAiFFivFkidzKEf81ZgWil9qupnniOLQrlviMaJxsrpGfXVuc/yafzDWGVoJxqP
 D3R2drlaxdCqAOIL1KqFuKS83fDDdoqFITo/xflSSwF5DDCAWnMaPTA/NzI97hMd3xRm78K1xATAN3zdgSDiuBna7qJ7k6d/keAn6jL4hVk/lTEMkAb4f45i
 2MTqZy5jWM31PmqA90PGPUrXraELt3plhtT7xGq0dbSWVDd8k3RdHKG0EZyFASMtmNcJXDWCzo/KHUDfoovEGU1MmAHiSUcGg8zzov+mAvBSslhhkZbWLqGt
 AVIwa0VN8r0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_031608_613808_ABD80CB0 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugues,

Can you provide the output of the most recent v4l2-compliance?

Use 'v4l2-compliance -s'.

Also, just to confirm, with this v4 there are no /dev/mediaX or
/dev/v4l-subdevX devices created anymore, right?

This v4 looks good to me, I just want to have these final checks
done.

Regards,

	Hans

On 7/31/19 2:56 PM, Hugues Fruchet wrote:
> This patch serie allows to connect non-parallel camera sensor to
> DCMI thanks to a bridge connected in between such as STMIPID02 [1].
> 
> Media controller support is introduced first, then support of
> several sub-devices within pipeline with dynamic linking
> between them.
> In order to keep backward compatibility with applications
> relying on V4L2 interface only, format set on video node
> is propagated to all sub-devices connected to camera interface.
> 
> [1] https://www.spinics.net/lists/devicetree/msg278002.html
> 
> ===========
> = history =
> ===========
> version 4:
>   - Also drop subdev nodes registry as suggested by Hans:
>     https://www.spinics.net/lists/arm-kernel/msg743375.html
> 
> version 3:
>   - Drop media device registry to not expose media controller
>     interface to userspace as per Laurent' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153417.html
>   - Prefer "source" instead of "sensor" and keep it in 
>     dcmi_graph_entity struct, move asd as first member
>     of struct as per Sakari' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153119.html
>   - Drop dcmi_graph_deinit() as per Sakari' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153417.html
> 
> version 2:
>   - Fix bus_info not consistent between media and V4L:
>     https://www.spinics.net/lists/arm-kernel/msg717676.html
>   - Propagation of format set on video node to the sub-devices
>     chain connected on camera interface
> 
> version 1:
>   - Initial submission
> 
> Hugues Fruchet (3):
>   media: stm32-dcmi: improve sensor subdev naming
>   media: stm32-dcmi: add media controller support
>   media: stm32-dcmi: add support of several sub-devices
> 
>  drivers/media/platform/Kconfig            |   2 +-
>  drivers/media/platform/stm32/stm32-dcmi.c | 283 +++++++++++++++++++++++++-----
>  2 files changed, 236 insertions(+), 49 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
