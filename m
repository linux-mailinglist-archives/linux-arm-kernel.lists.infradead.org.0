Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA0A35036
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 21:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K19aoYav9+Syer3U8c9XuL7IIBGlmQzerWxZ4nR14KU=; b=RlBnRvPHmueVhW
	+DNdLhwFQqTkOec3GMsr4+Gc/OgdIwvmoBZTYBJXB6VcEAdlI3oE958sCxUH3fgvyWKvuJzz3FJ1i
	/olMWXBmZLheCFa7SI1cpLpqBoaTPaDRxTxQbl4D0SyyL7s7Dcn1z6ZfRq64VDMUVXise7cSj9Z1W
	g5cMwCc4jiM49uVVyfMqsLKkfoEo0KZdKAvAzripVDi6xx+kURCZrMn+7JgDlhWk+3gyAPco+asK0
	coM6ILdOuKhkmOxVUARLHOPSBAkrtHX/dSgN6YLOn1CjMEQWX2K/iXXIsRB4F6hUgwCarg6leouYT
	aiTfpAttAFGJNAgQwneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYF2M-0000il-FM; Tue, 04 Jun 2019 19:23:58 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYF2F-0000i4-3D
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 19:23:52 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 12:23:49 -0700
X-ExtLoop1: 1
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2019 12:23:45 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9177E20BEB; Tue,  4 Jun 2019 22:23:44 +0300 (EEST)
Date: Tue, 4 Jun 2019 22:23:44 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Message-ID: <20190604192344.7tycwffjd3yeizxh@paasikivi.fi.intel.com>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-2-git-send-email-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559555971-193235-2-git-send-email-vishal.sagar@xilinx.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_122351_192213_5C804852 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Michal Simek <michals@xilinx.com>, laurent.pinchart@ideasonboard.com,
 Luca Ceresoli <luca@lucaceresoli.net>, hans.verkuil@cisco.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

On Mon, Jun 03, 2019 at 03:29:30PM +0530, Vishal Sagar wrote:

> +Optional properties:
> +--------------------
> +- xlnx,vfb: This is present when Video Format Bridge is enabled.
> +  Without this property the driver won't be loaded as IP won't be able to generate
> +  media bus format compliant stream output.

I think we previously concluded that the format will be just different in
this case. So the description appears incorrect.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
