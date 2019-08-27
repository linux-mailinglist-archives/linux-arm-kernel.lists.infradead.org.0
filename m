Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC639F087
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkRDTFo/Q/OL9vW9gEmYmqc9YGP+h7tIrJ3CdoSSNp4=; b=hUvhQUY3UW2bpI
	pDUb/0mXyUoSu/F7SAg2RS1+SL5dzNLcWjodJKP19XD8qne0AmVZ7+pxKB4HibTa77p65/YFKghMF
	2j/Rga3fjGEMdfDsQtwmrMcGMksEuWa42MK+0jnE/AfgNP7keWGH07IYgx9RlC8zxtMoThHTgjuut
	BEw4ifCapzgL14z5R8LXVBz6RCMmbCYTCQ6Aktb4TYsNQHy02spz7UvLpYtFyY8cweYmU6mhKIczF
	sdxyD4D/FtfGvqQ8HUFdjc0B3tgtWM+jkZLwt6lqPB5U62hZWanTe+X9UJJgFu5WLdY+La1CZJq6B
	U5W21qtCJpHTvNl7ugNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ea1-0008A4-Eg; Tue, 27 Aug 2019 16:44:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eZs-00087Q-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:44:17 +0000
Received: by mail-ed1-x542.google.com with SMTP id t50so32230267edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=T4/dJTACRgyspP6PQrEfl3SMkEU0BRTMNnpAOcNAN9k=;
 b=Fzqv4nQ+umzv/2+KsGP2IW6/1O7DBQCIYC2HmBh/Ixkm0qxY1XpDuoKgz+tncImxs7
 N7m7N3ReqRn0EeNNxHDIVftSZ9fXBGgZpadIxuWhZwJwT9VgxqDJeUZWp8QGR+pDw7jL
 MrGOVuuTzL+18NS2EevgZPTFpC6D+ugKy/n7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=T4/dJTACRgyspP6PQrEfl3SMkEU0BRTMNnpAOcNAN9k=;
 b=Ch8iUn3ldMNQ8+W7XXxpvHRf4+SOygX4mfgsxWZKFEa7q9kjIeTbhAy3y5pOqRfDIV
 WFZFbrKikGLyaDByShZ+sY4doZGL+QvbZ7HRZSKpBFje/Y77ZtekHrAe4tNx/4lRAdVt
 3v9Py2sxq8m/xNIbq57PPX+qzImhTkBnIEzmq9sJThyDlpRXrSQpyvkyRnMpFFoK23pv
 ZMsSB4Hrdtyx1WFmv0HQL9fQv9073gM7esBqph0dNLTnJ90SQhWNI8JzMhTbwJH00Y7+
 wIHgSujoghhy3sdYcplTxo8+aue+8QEToYqW+il1vB3O9wF5Uj/Vxh17/Zwp2JRTCJnz
 GsnQ==
X-Gm-Message-State: APjAAAUEwnUd1RcZu8M2evxjqNAFxSk/E6e3UWZfWdqGS3cZgu9eDbwI
 GkI5H3oDSwblCgDXrd+5Ztctuw==
X-Google-Smtp-Source: APXvYqzGZWYGoQY3nS9VufjvpYmxU7hjhjBeufmUT4bsglP7TAQ2Nsm6LWhsAFqb4Pi6mCtsDOWt0g==
X-Received: by 2002:aa7:d813:: with SMTP id v19mr25334216edq.45.1566924253874; 
 Tue, 27 Aug 2019 09:44:13 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id l27sm3498970ejd.31.2019.08.27.09.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:44:13 -0700 (PDT)
Date: Tue, 27 Aug 2019 18:44:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/2] drm/meson: add resume/suspend hooks
Message-ID: <20190827164411.GE2112@phenom.ffwll.local>
Mail-Followup-To: Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel@lists.freedesktop.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
References: <20190827095825.21015-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827095825.21015-1-narmstrong@baylibre.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094416_096989_8751BEC2 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 11:58:23AM +0200, Neil Armstrong wrote:
> This serie adds the resume/suspend hooks in the Amlogic Meson VPU main driver
> and the DW-HDMI Glue driver to correctly save state and disable HW before
> suspend, and succesfully re-init the HW to recover functionnal display
> after resume.
> 
> This serie has been tested on Amlogic G12A based SEI510 board, using
> the newly accepted VRTC driver and the rtcwake utility.

No idea about the hw, but looks all neatly integrated into pm stuff, so on
both patches:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Neil Armstrong (2):
>   drm/meson: dw_hdmi: add resume/suspend hooks
>   drm/meson: add resume/suspend hooks
> 
>  drivers/gpu/drm/meson/meson_drv.c     |  32 ++++++++
>  drivers/gpu/drm/meson/meson_dw_hdmi.c | 110 ++++++++++++++++++--------
>  2 files changed, 108 insertions(+), 34 deletions(-)
> 
> -- 
> 2.22.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
