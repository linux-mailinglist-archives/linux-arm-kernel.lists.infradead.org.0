Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CB217E598
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIV0KRJsjJj6eNpQpK4pQIQ02/dqHwt1EoyOEvQJ0vk=; b=WfMHwAaH68uSHz
	wXvACXiioPPyezeW4kZOWfCM2Q+GszstVs7813ujREwtCzsT7LhrxAxXirhrwVGaQJrqqiUSyI6PS
	CMOz2j4FblCcHCoJKb4W2RPDWkzzU6kQUxC78LSwT7MlmjNOxj2eRWYtX6bVkQpGnFJihBcV/h+lv
	3Nv2Far2/3ZUiPO5dr0Ymb7r9M+OMrwvjh7bq2IJvrsSlR+BU97l+2YbA6OdYSY8fakX5y5sLRuTx
	remgj+1SW5Bsk6qZU88a35nFFaPki6jIxv/SsGlLLMr52ppl1qHPdXHhoJZG+YG2FySIiSYWvMxv8
	5a280euwZmOZUj1aY9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBM50-000596-21; Mon, 09 Mar 2020 17:20:38 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBM4r-000579-Rl; Mon, 09 Mar 2020 17:20:31 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 029HKJhW081517;
 Mon, 9 Mar 2020 12:20:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583774419;
 bh=9tqG8lsZxDbDWkjZmACtivY21dcKdEeq8w0vOUqH4wM=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=VIDlz9gZSFX3vc5gnrDWmH9BzHO1hAaTY7kP7VJhbF0/J6Ei/Hg68fdhKNih8KbF2
 t6pZCiBmY+w9oLRjvEbPESi9UJHewOPo4bddYsBhyo/yDskkNi2wMjF+PnrwaMhCVS
 vv/Kx6Gb4pVV0CT3LCvFcnQpRJ7l2+dr/fON115g=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 029HKJGN068509;
 Mon, 9 Mar 2020 12:20:19 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Mar
 2020 12:20:19 -0500
Received: from localhost.localdomain (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Mar 2020 12:20:19 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 029HKJUl079705;
 Mon, 9 Mar 2020 12:20:19 -0500
Date: Mon, 9 Mar 2020 12:26:07 -0500
From: Bin Liu <b-liu@ti.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH] usb: musb: tusb6010: fix a possible missing data type
 replacement
Message-ID: <20200309172607.GA3839@iaqt7>
Mail-Followup-To: Bin Liu <b-liu@ti.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Min.Guo@mediatek.com, Chunfeng.Yun@mediatek.com,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <1579603670-10970-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579603670-10970-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_102029_989622_90F26C92 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Min.Guo@mediatek.com, Chunfeng.Yun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 06:47:50PM +0800, Macpaul Lin wrote:
> Replace "unsigned" to "u32" for checkpatch fix to tusb_writeb().
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>

Queued for v5.7. Thanks.
-Bin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
