Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D873707
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kppNa12lRCA0OJe0rQePJDfYlQW3XyPvqi6fl+Kz/eI=; b=cJB8xe1uxmUfjK
	lhcgZIp9YdjkNJV1dQps2aUkAoeBUS2x7aI6OISz5+WaPwEcfDFCowQMzpt9nHO9OmxbHvnlwKuyJ
	v2qZR0B1lNI5Q6Fws3DXNqfOvj96k/1oyPt4K1tQyaTh5RmWARPvtWHcuxpAKbNPZ17rvfsu0UPcN
	kRKjOg04SNEirgD3KpnBnATnpk6Z7CtUU9F7+nswUZPbH11avkLn8kC2l08YnBfz6Zz+57uxWWbjm
	6O+oLbpW/u+qmNq6bMdNiXxvehMmgC7fSBRsoULj6kSDTkqNTajlK8REIDteotPGUlHH39wSoJyBD
	PZ9ZX981IcowotysLj1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMOm-0006cj-4b; Wed, 24 Jul 2019 18:54:00 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMOK-0006Rk-NW
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:53:34 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 8DB608061A;
 Wed, 24 Jul 2019 20:53:30 +0200 (CEST)
Date: Wed, 24 Jul 2019 20:53:29 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
Message-ID: <20190724185329.GB22640@ravnborg.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-3-linus.walleij@linaro.org>
 <20190723175445.GA23588@ravnborg.org>
 <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=jZMA-zlA99eSfViNHAoA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115333_007852_84357EF7 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.

On Wed, Jul 24, 2019 at 03:58:40PM +0200, Linus Walleij wrote:
> Hi Sam,
> 
> fixed most things, one question remain:
> 
> On Tue, Jul 23, 2019 at 7:54 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> 
> > Furthermore I did not see any bindings for the panels.
> > If they indeed are missing, then please provide bindings in the yaml
> > format.
> 
> IIUC we do not create binding documents for the simple panels,
> but I can do this of course, just vaguely remember that the DT
> people didn't want to see bindings that all look the same
> but instead rely on panel-common.txt

My understanding is that the bindings for th panels should list what is
required/optional, but with reference to panel-common (which IIRC has a
new name in the yaml world).
If you look in bindings/display/panels you can see a lot of simple
panels listed.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
