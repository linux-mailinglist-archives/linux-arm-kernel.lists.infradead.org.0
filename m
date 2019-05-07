Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA951656F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUUaa2RpWCsul6I6Fk9n8E1dCE526zzhT3tlvO1Dojw=; b=PZJd1xX5aDwk1Y
	d61G24sN+wOgrmNqEihRKrOpjR/JMxXDahvx/KVEUwP8D8NyM4mKkZyUOSbnpUMUfSSRLgnzLa8Hc
	5q2KLF/CrsyEpNdlHs8ltzUE6KIqePWyHIQvuddfP/h8mbkg40T5opDBx17dtetkDBCeLaTF0ACES
	B3Rmtzf9/wfULq5F6RYYJjxo7BiMK8qwhK4aLu2I1DiQBdvGxoA1tB69UcfQSoX9ko/UNoY+l31J2
	bCb3skXrWgC51zFgrC0yh984YdWfFznBP+Lm0dYcGWucmYGXSvkKmAokPbma4Asy6bFb8SsWN/GTH
	AfAzfgIiGVxx4lyCkYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0qQ-0002yF-UN; Tue, 07 May 2019 14:13:22 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0qH-0002wy-Dj; Tue, 07 May 2019 14:13:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 07:13:10 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 07 May 2019 07:13:06 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 07 May 2019 17:13:05 +0300
Date: Tue, 7 May 2019 17:13:05 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [v2 PATCH] dt-binding: usb: add usb-role-switch property
Message-ID: <20190507141305.GA19816@kuha.fi.intel.com>
References: <38ff51264e971d5c58940c8435b9d8d274662d50.1557195204.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38ff51264e971d5c58940c8435b9d8d274662d50.1557195204.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_071314_333159_C90C7C30 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 10:22:58AM +0800, Chunfeng Yun wrote:
> diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> index 0a74ab8dfdc2..f5a6ad053ecc 100644
> --- a/Documentation/devicetree/bindings/usb/generic.txt
> +++ b/Documentation/devicetree/bindings/usb/generic.txt
> @@ -30,6 +30,11 @@ Optional properties:
>  			optional for OTG device.
>   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
>  			optional for OTG device.
> + - usb-role-switch: tells Dual-Role USB controllers we want to handle the role
> +			switch between host and device according to the state
> +			detected by the USB connector, typically for Type-C,
> +			Type-B(micro).
> +			see connector/usb-connector.txt.

That does not look correct to me. Firstly, USB role switches are not
always dual-role USB controllers. Secondly, stating what determines
the role irrelevant IMO.

Since this is a boolean property, the description for it should simply
explain what does it tell about the capabilities of the device that
has it. The description should not make any assumptions about the
users of the property, and since the property is a "generic" USB
property, I'm not sure it should make any assumptions about the type
of the device that has the property either. Also, I would really like
the description to show the type of the property.

Why not just say something like this:

"Boolean property informing that the device is capable of assigning
the USB data role (USB host or USB device) for a given USB connector."


thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
