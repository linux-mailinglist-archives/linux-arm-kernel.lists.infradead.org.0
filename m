Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B651D4567
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 07:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn3jc0iM0P4mdZk5YeltYgX34iJ6Pn5HkW7b+UqX5w8=; b=n6ExWYDepbmp4d
	6/L+O8TPtmo7LgphfqS4NZqZnq4jFFsp82gf4zGZpzchMtoMDAk2R3Q1rE93zkO1EMH6Lz6Yo8aWg
	6bDWqZyXbCAaKE+UXmVmzwnX9EQ1xEW4JFTNx1WW+1CxK2JMDxdeGFE02djcm8Bx4Ge9I8cjgOT1D
	WgreujE+FQhoBJh82PdpC9j76afyqh6JfX+IXZLcd+oYFaNWjD/VcaoTZkt0cjc+OR/l4GZEGzkZN
	Jced/2t0Wz13v57LdHFIRZAQrS5AoXBFixggPXAXweE9bSrJVApo0agmas4FzCcztYLKwGix0n6gU
	dc3lDXhcJzHvwO+y/qUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZTF7-0000hm-Tr; Fri, 15 May 2020 05:50:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZTF0-0000gn-1h
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 05:50:39 +0000
Received: from localhost (unknown [122.178.196.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC26B2054F;
 Fri, 15 May 2020 05:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589521836;
 bh=k015+cPgGFFo+2o33KksJzJrDGM5ILj2xDAoxHV4mb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i1OJ5v0N6OaLPXwDVBVs8urh0fQB0R8M31Bfhz/zCtZfeRnUGyJaMLRCNWwkhntEl
 dQB4LEV+Vev0nNLngYVd9G+IiBFpOpSQ0U4Ozw3tgth6mS/oECLqiPNPjZgQufEl16
 GNIrXmrLyYkakDpYu9L/YDysQmpf5KNDXd60Kbg4=
Date: Fri, 15 May 2020 11:20:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWC?= Hibner <rafal.hibner@secom.com.pl>
Subject: Re: [PATCH V2] dma: zynqmp_dma: Move list_del inside
 zynqmp_dma_free_descriptor.
Message-ID: <20200515055025.GA333670@vkoul-mobl>
References: <MW2PR02MB37705416E18413689BFFC7C3C9A60@MW2PR02MB3770.namprd02.prod.outlook.com>
 <20200506102844.2259-1-rafal.hibner@secom.com.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506102844.2259-1-rafal.hibner@secom.com.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_225038_114016_25F21D5F 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 dmaengine@vger.kernel.org, Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYtMDUtMjAsIDEyOjI4LCBSYWZhxYIgSGlibmVyIHdyb3RlOgo+IExpc3QgZWxlbWVudHMg
YXJlIG5vdCBmb3JtYWxseSByZW1vdmVkIGZyb20gbGlzdCBkdXJpbmcgenlucW1wX2RtYV9yZXNl
dC4KCkFwcGxpZWQgYWZ0ZXIgZml4aW5nIHN1YnN5c3RlbSBuYW1lIHRvIGRtYWVuZ2luZSwgdGhh
bmtzCi0tIAp+Vmlub2QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
