Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C592C341EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dR0Ilhp80pk3xDI10mB+V6PmcWkV5qqRNPm5zO8bgU=; b=Dxvf2YqJ25jJfb
	WGM2VsGQvd2AokV8mqgyLZn2tubRjZWRi9vEKi121AOze+gd7rHtFPdrY1RnzxChL1YL7Csy2jYxV
	NOr+/tW/afZwKZU6od9iQxHILAbApZkcXVaY6HdTzQ87FGkzwLZu750IprAGH2fETN1aLv/hvraLQ
	Hr8Hpn2rjcqKw++0JDuOEYYGp1roZK7r8iUTW6ypymMTZbOlFXalFEYkAe2s7uki++p57X4lHZjM8
	RXd7tCLq9uPzGEmzjnoQ3XOtFmfFpNedDxycxqLPeq2CIZ6PEkbAio6mhEZ4NOb14LFNIsLnbAHPS
	sTshCSaMA11aqbGj64Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4ts-0002J0-NV; Tue, 04 Jun 2019 08:34:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4tm-0002IV-BV; Tue, 04 Jun 2019 08:34:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 843A228527C;
 Tue,  4 Jun 2019 09:34:24 +0100 (BST)
Date: Tue, 4 Jun 2019 10:34:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v4 1/5] drm/rockchip: fix fb references in async update
Message-ID: <20190604103422.63a61f46@collabora.com>
In-Reply-To: <aecadca2-f67b-5d9d-550e-f90cbca5fd3f@collabora.com>
References: <20190603165610.24614-1-helen.koike@collabora.com>
 <20190603165610.24614-2-helen.koike@collabora.com>
 <aecadca2-f67b-5d9d-550e-f90cbca5fd3f@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_013426_521254_BC09531C 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: andrey.grodzovsky@amd.com,
 =?UTF-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@google.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 daniel.vetter@ffwll.ch, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@collabora.com, harry.wentland@amd.com,
 nicholas.kazlauskas@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 17:13:34 -0300
Helen Koike <helen.koike@collabora.com> wrote:

> On 6/3/19 1:56 PM, Helen Koike wrote:
> > In the case of async update, modifications are done in place, i.e. in the
> > current plane state, so the new_state is prepared and the new_state is
> > cleaned up (instead of the old_state, unlike what happens in a
> > normal sync update).
> > To cleanup the old_fb properly, it needs to be placed in the new_state
> > in the end of async_update, so cleanup call will unreference the old_fb
> > correctly.
> > 
> > Also, the previous code had a:
> > 
> > 	plane_state = plane->funcs->atomic_duplicate_state(plane);
> > 	...
> > 	swap(plane_state, plane->state);
> > 
> > 	if (plane->state->fb && plane->state->fb != new_state->fb) {
> > 	...
> > 	}
> > 
> > Which was wrong, as the fb were just assigned to be equal, so this if
> > statement nevers evaluates to true.
> > 
> > Another details is that the function drm_crtc_vblank_get() can only be
> > called when vop->is_enabled is true, otherwise it has no effect and
> > trows a WARN_ON().
> > 
> > Calling drm_atomic_set_fb_for_plane() (which get a referent of the new
> > fb and pus the old fb) is not required, as it is taken care by
> > drm_mode_cursor_universal() when calling
> > drm_atomic_helper_update_plane().
> > 
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>  
> 
> Cc: <stable@vger.kernel.org> # v4.20+
> Fixes: 15609559a834 ("drm/rockchip: update cursors asynchronously
> through atomic.")

One comment for next time you have to add such tags after the fact:
please try to keep lines unwrapped, otherwise patchwork only gets what's
on the first line.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
