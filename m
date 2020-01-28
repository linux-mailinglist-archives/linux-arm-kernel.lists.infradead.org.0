Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326014BB45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 15:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2xZEXpEGLEPjJSVhpHemXgPF/y2IjVapBywmEHylRc=; b=P1IKgCIcR9hrmW
	3eeXKhZdD0854/ubsmr9GBsvDD7zKeWEXPFubCCgzD8zbKAqsu/9YO9VUg/Tk3ZWu2w0nnWfxMQYx
	zxo3qRFc0ya9RuYjb238eNN8hhquvFNXSh3ZIgPVsRYbsUhKOvzD85XaavuoxMte9ND0h/PfSl9RH
	JG/UJw30jROeJxgiQU97HEHEkl3BlFxSwyeU/7HNowBEV8HQKOsZBClgkkK5G/dSN3cZ517wBrCMB
	WH2p7rDVvlK+FY3r1o/X2DDNKQ9peowx67HjapsMkcp9wWoV3E6YSYEU+gBdWxp8NEen2EjmAwKTk
	YLxP2BlLtEwShlvXMd1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwS76-0000J4-GQ; Tue, 28 Jan 2020 14:45:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwS6o-0000IQ-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 14:44:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so16309774wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 06:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9lIGO9oYKE8GChoDkL54V4yje71IS6ZdWhqN7ISd45o=;
 b=eMYuUql/FnPYaJ+EEN56YoZTUOWcP20+UQNDlNe4pSFAQGtuZtp/2G3aQmNvyypUPa
 mXF+9CS70Q2Lm/4prUfWm3AY1yJ9un5TpuOJbaPjrN9hJlMdjJKohNhz5tvRz7sCtNxs
 IVllARx39ZX3Ep86gi+JbPdcuUZjdoz81H9Pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9lIGO9oYKE8GChoDkL54V4yje71IS6ZdWhqN7ISd45o=;
 b=IoyLdxWYFCin8NjzZ9hByTOAwGj6e3Uy4M19vgYUSOg2+IGfryh6Z4PDa1GXiCusU5
 8FpZKWENfbcDriQ1SfY0K7DMVzzotBSAg6370eEbe/RTBYdKWKz/GJ4SoD5vJCYnU+lc
 kY1u3cdLr3zB1R9PDCxXtLA3HIiufbxFE9VOoY5AdV01XqYolLBQiaturpyyhmg8Ocin
 +gQTMHCVdQe32uJWp5EcLxhOvuUbhfy1ySYuVYLyTPpfUUT21udOk7O8LylHSZ1dGFYq
 W7HRFZEMzYHGZp3g9fVMnoCWDFBA7NQFhcVdLyfSWIciOdKCAaWxidsBjJeP4JPuRXvG
 YGFQ==
X-Gm-Message-State: APjAAAWGYIfgWjAlUhqPp/RyAdc3IT67wTm7ipG6nYpzpqC+oFijRElk
 e5PsCaE2GxE6lvdPhlx1LaI3iw==
X-Google-Smtp-Source: APXvYqw7eO11K3WIv7JughSyA68/clD2AyaUv1hHov10zFh0gHcrtvdjNHATexfiGjHilyw+GslxVQ==
X-Received: by 2002:adf:ebc3:: with SMTP id v3mr29849445wrn.280.1580222692349; 
 Tue, 28 Jan 2020 06:44:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d10sm26313774wrw.64.2020.01.28.06.44.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 06:44:50 -0800 (PST)
Date: Tue, 28 Jan 2020 15:44:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 03/10] drm/atmel: plane_state->fb iff plane_state->crtc
Message-ID: <20200128144448.GC43062@phenom.ffwll.local>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
 <20191213172612.1514842-3-daniel.vetter@ffwll.ch>
 <20191213195330.GA28111@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213195330.GA28111@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_064454_311359_5BF3322B 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 08:53:30PM +0100, Sam Ravnborg wrote:
> Hi Daniel.
> 
> On Fri, Dec 13, 2019 at 06:26:05PM +0100, Daniel Vetter wrote:
> > Checking both is one too much, so wrap a WARN_ON around it to stope
> > the copypasta.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> 
> Applied to drm-misc-next.
> Looked through the whole series:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Ok, pulled in the remaining patches, thanks for taking a look.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
