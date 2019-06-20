Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF3B4C9DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uZj1sNce3DxWIDyi+coBMAU6RuAkjjU75AkC3t2G2I=; b=Mg3m8g5i0Zaivn
	h8VtNkOZo/tyIkhPnbkbpe6qTAQoSAyw4ZEWiNfxMpeIAjtpIzHd0p+PT9akfe0NOeiRk0ztICs5O
	M6GOSFSBSk9lZpOu0Bkh0XIjliLg8h7Sow0RUZTfndIsYYkRLOpahj317z3vcBF2CMNTEkstY4nNT
	nY6GO4bLy6I+aCngvLpcGSfHC6EidCjCA1B8ouMbuPBYqYvG9Sw9Ez7Vo/oMvywjGK9+TTtiBHsol
	8eJvPNGGIKmJ/ryEGOYuyQAvfTHXXdZUWrlywZe3XEVGiUkGesCBXfh4G0DrIzFE31uNntux/4Jze
	V/MFiyDxGLJwzNclAYZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsmz-00062r-JK; Thu, 20 Jun 2019 08:51:25 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsmj-000611-2v; Thu, 20 Jun 2019 08:51:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 01:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="243567007"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga001.jf.intel.com with ESMTP; 20 Jun 2019 01:51:04 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH] usb: dwc3: remove unused @lock member of dwc3_ep struct
In-Reply-To: <1561019039.19385.0.camel@mhfsdcap03>
References: <342af01a252a9ef9457a6a6ec653a40698058fbc.1561018149.git.chunfeng.yun@mediatek.com>
 <87pnn8brej.fsf@linux.intel.com> <1561019039.19385.0.camel@mhfsdcap03>
Date: Thu, 20 Jun 2019 11:51:04 +0300
Message-ID: <87muicbpxj.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015109_175789_14845EC9 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Chunfeng Yun <chunfeng.yun@mediatek.com> writes:

> Hi,
> On Thu, 2019-06-20 at 11:19 +0300, Felipe Balbi wrote:
>> Hi,
>> 
>> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
>> 
>> > The member @lock of dwc2_ep struct is only initialized,
>> > and not used elsewhere, so remove it.
> Sorry, I need send v2 to fix typo of dwc2_ep

I fixed when applying ;-)

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
