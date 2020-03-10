Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38AC17F0F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 08:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAf4fslp8x8qELfC0T5YniUheHmnBSF+MBkL1PFPtkM=; b=qXszM2ZXOCQOOF
	VWkHwTpqKqLnC8a1x79q8np5+6zeXZTH41nXP+TX4yMjPF9OMy1O+VKrss2qVeZP7c54VWgmA1SYp
	xyuQrjcrW1XreqJRS+atXU/Tmssnc/+N4NfQxZfiJWHqrdOZjNjeW1s3DTVTeQijXh/74p6it20Iy
	DiRTVLwYRSxPk1yyl3Oyi9bKSTh/7BQSlgD+n5PTRc86R2w6J7uG7Bh9ZNJCeoFNeWwYggAfxjGeI
	rv0oswurbxox8b/hfnq07WL4gIEEZ0n7DSbf47Dh6D/l3jFssgmixk0OIaK0btFC9MG53NZQKct8U
	aCsWdzVoKX8Sr/MKyAsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBZ1W-0005w4-Nj; Tue, 10 Mar 2020 07:09:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBZ1O-0005va-UJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 07:09:48 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D79824677;
 Tue, 10 Mar 2020 07:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583824186;
 bh=L11SdzzQTyUNNRxclnarGF3ZTYF1cI+qdg4ZV5PcXDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lktXBtD6NO4hhBukLkC1l8I8yzsKD/dc7CaQMdMGMOzA4WGkwh1vxYWNAdBOX6pdL
 rpE4An+4S7gMURXu7b5U8rg3/FeD4IFeAJ2PZQ/I9BXgyGsGrr4HZaIWpekUVEbRsx
 xZOjrneNU3I8yx18lXvfWSMZSbOzyMRkkYLoJEvk=
Date: Tue, 10 Mar 2020 15:09:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: add crypto node
Message-ID: <20200310070939.GD17772@dragon>
References: <20200224125023.29780-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224125023.29780-1-horia.geanta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_000947_001226_96755032 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDI6NTA6MjNQTSArMDIwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBBZGQgbm9kZSBmb3IgQ0FBTSAtIENyeXB0b2dyYXBoaWMgQWNjZWxlcmF0aW9uIGFu
ZCBBc3N1cmFuY2UgTW9kdWxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhv
cmlhLmdlYW50YUBueHAuY29tPgoKQXBwbGllZCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
