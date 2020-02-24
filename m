Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9290A16A0AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HYkkbLdsU7AmGVBmNQcVjF6xhVGWYCoa9P673S1J2f4=; b=uZd92osmDxJQMiCmQqPWlRLy+
	4Cw21OnGqqFmmSRSwN62fWXift5lEIZ7ljDE6n1MO8v5px1X3CTAk4Ik3CSGes++ODiLZA8lJt8lI
	XZHkxdHdq3zfiRM/bkqejapYUJQTqVz++fbossxRYYoTCJnpIkYSdis/K/gQrwWXVcUmt+rjbgtxp
	U2YFN1cDsj6Ap6eDeJANEH9Iofrejj89CaYUHtn171Ba+F8gSHqnzLVpEK/sFvrFtoAmh9t9vFn5k
	hJUQOb9QHVgMIQbdV5saOkARqkU7q89EGGqG0PfD6aszwsCuvMVHzf2jyDcvAzihafHt2UCGXJDw0
	QfczjTvUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69X2-0001mW-Lz; Mon, 24 Feb 2020 08:56:04 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69Ug-00077U-Kc
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 08:53:40 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B794923059;
 Mon, 24 Feb 2020 09:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582534414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yGHRW3l5rCA287QCNNdGXSdyqq9QPHkLJ+IpgLfP+T0=;
 b=Ta29z0+G9GOKfOY5pEnNbXDdYrHts1jhuNXUK+UU5pGYZYKRousrquA57hOniFUq4neRJv
 CWF0Ds23phwNWukPNrMpGKwE0OE5mmUIhqM0t2PymJhANWOk8Jh/P/Ff1ecxm+VF0nYmBQ
 +xZno6FiY9P/UzW4OQIkZlENAnPp3wU=
MIME-Version: 1.0
Date: Mon, 24 Feb 2020 09:53:34 +0100
From: Michael Walle <michael@walle.cc>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
In-Reply-To: <20200224084307.GD27688@dragon>
References: <20190902034319.14026-2-xiaowei.bao@nxp.com>
 <20200224081105.13878-1-michael@walle.cc> <20200224084307.GD27688@dragon>
Message-ID: <a3aeabddc82ca86e3dca9c26081a0077@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: B794923059
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 NEURAL_HAM(-0.00)[-0.572]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005338_858496_E97E4DAD 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 xiaowei.bao@nxp.com, roy.zang@nxp.com, linux-pci@vger.kernel.org,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 minghuan.Lian@nxp.com, robh+dt@kernel.org, mingkai.hu@nxp.com,
 bhelgaas@google.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn, all,

Am 2020-02-24 09:43, schrieb Shawn Guo:
> On Mon, Feb 24, 2020 at 09:11:05AM +0100, Michael Walle wrote:
>> Hi Xiaowei, Hi Shawn,
>> 
>> > LS1028a implements 2 PCIe 3.0 controllers.
>> 
>> Patch 1/3 and 3/3 are in Linus' tree but nobody seems to care about 
>> this patch
>> anymore :(
>> 
>> This doesn't work well with the IOMMU, because the iommu-map property 
>> is
>> missing. The bootloader needs the &smmu phandle to fixup the entry. 
>> See
>> below.
>> 
>> Shawn, will you add this patch to your tree once its fixed, 
>> considering it
>> just adds the device tree node for the LS1028A?
> 
> The patch/thread is a bit aged.  You may want to send an updated patch
> for discussion.

So should I just pick up the patch add my two fixes and send it again? 
What about
the Signed-off-by tags? Leave them? Replace them? Add mine?

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
