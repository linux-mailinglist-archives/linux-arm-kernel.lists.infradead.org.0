Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DE6CDA50
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 03:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gyKvBG24ecP+k+MFwlA3+8tcxYouFSK8U9lPdcbLfk=; b=ribPAlrJSsKiMW
	Der7bcXCC6lDs6eGB/l18jz1hH83wZEg5TkGqbUl85F/vlQ9WGJ3Ti4eA7+GeWV850MfRnM9iHGLJ
	n8cTvOLjxUR0+l8fdStM/lw+KG4A7S77Hnmmky+FErIUX34QwgPKoaPi0eJshVnzMooX2Lr53Dro1
	7zaD27+2i8pkpto2h1msM0DpWyC1HfyOMUnjzgOM3QsBJGYG61kBJEVAVYosHGD0eGOSjwWocGt82
	06ywDsTB6A4gKah0SCskjwACAGNFfczPxV4SuAb/SMxR5m7D3K6oFYu6bid6GENizT95FmfSJqVkt
	GJqQxykuehoP+Q2ZC4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHIE4-00089g-FS; Mon, 07 Oct 2019 01:54:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHIDw-000893-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 01:54:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9ACBDAC8E;
 Mon,  7 Oct 2019 01:54:03 +0000 (UTC)
Date: Mon, 07 Oct 2019 03:54:03 +0200
Message-ID: <s5h4l0ljp6s.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Subject: Re: [RESEND TRIVIAL] sound: Fix Kconfig indentation
In-Reply-To: <20191004144931.3851-1-krzk@kernel.org>
References: <20191004144931.3851-1-krzk@kernel.org>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_185408_619329_00DF3E66 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, Jiri Kosina <trivial@kernel.org>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 04 Oct 2019 16:49:31 +0200,
Krzysztof Kozlowski wrote:
> 
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Mark Brown <broonie@kernel.org>

Applied now.  Sorry for the late reaction, as I've been (still)
traveling.

Thanks.


Takashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
