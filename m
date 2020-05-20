Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00421DA852
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9I3Pk6UvcxoMJGP6kyurMLkqTpkvPST93akAHuyzz0=; b=VksG1oRXf05Tqe
	1xRUEQHSaoZmWkT6HYKLoMb3Vyt5+HLABBr0lylzt50bBVsuKnhY8lKa6+47nCojxUxhz2I9dGelh
	Q0N66l1YVxGqWdeZ8XjQt1H/PSCSeFBKhyYwJHJ87FBYQWRMPw2DKnNxnkwf2/a2crQdSEhfmBYia
	mG5cDLnKBJaLw7c0SlGpMK3+UqyB+J1JQZg3OJKmphP+oDELXRQG39Nz69ffwzi2AdW83vLMhErEt
	n9xHC8fAH+lGMi3n4W7M6WsB/EEf8q3vRMkWajSVAcgjR9BuqEbJTP1wVxJWkWg85dQ+zhh3bF/Sz
	9hQvlYi3qMyziL5Ujhww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEvY-0005d9-QT; Wed, 20 May 2020 02:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEvL-0005cV-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:57:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D0F220842;
 Wed, 20 May 2020 02:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589943459;
 bh=wpjWTi9IWHiTI6IlVkaz+MdgzSdiyTPoZEbvWwHe4QE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nmKDjrM7rL860w0rI/ucgoamwlQ5v/haCm9TTD2QdDZNsVxlkDcHKGC8mWJMC+gS+
 xS4zFCX0quziyme6rerUCa3g/slNg9X2yGkG9mTQj37fjbZGjQNmLS4Rxea0NTPJ+y
 ltzFm0le4W8lvxu4NG6dgoBTuQfWsVU9k8EbXtc4=
Date: Wed, 20 May 2020 10:57:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 2/4] ARM: dts: ims53: Group port definitions for the
 dvi-converter
Message-ID: <20200520025732.GX11739@dragon>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
 <20200514143612.2094-3-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514143612.2094-3-ricardo.canuelo@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195739_870487_9D68190C 
X-CRM114-Status: UNSURE (   7.70  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 Laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 04:36:10PM +0200, Ricardo Ca=F1uelo wrote:
> Group the port definitions of the dvi-converter in a 'ports' node to
> make it compliant with the ti,tfp410 binding.
> =

> Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>

s/ims53/imx53-cx9020 in subject.

I fixed it up and applied the patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
