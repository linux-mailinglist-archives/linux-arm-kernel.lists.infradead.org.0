Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4274D1E20D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC+tl5B+H51HWZVk6Norc5Q+HlsLmemDEQ9XNluVdPs=; b=FBQpBJPZeBznnl
	WcEY2HaDidDHA4d1SwFD405baLl72DP/b4qCezYWCAZyp7Anl5wycunF1hlsMx8FFsuto4e0wJGAw
	38u7FgDm/w8ivuYsSYn/3Hq+sHQ0adOB1q/1EcTGfnjzpzSTDPU5jLDZqqAgteI9f955pnQ2nr9Za
	EkimovUIus4l7lUmY9uK97drbOj0Ap4/o33M1pi3/kXXv0mYkt5Is/gh7aG0OwUBZ9t6UCDIDa8Xp
	2EHF8s8f5nAZY+QMwq57A+eaQf3q6/Imn+8qihY2oYskPC5GudWyRKjRKxZGWgPocSy8DDK+2mcUo
	I1mvhcVDuNpQ2cb9Sz+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXfR-0001kP-3d; Tue, 26 May 2020 11:22:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXfC-0001jj-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:22:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id a25so12356962ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zJxI8q9GaxwusSxiN1TRl1t50DLCSayUphT+bXOuVqA=;
 b=M/bNMMikN5rlMrwQqf4wuwwbofYB2P7B1TVibatvt8DV12qC0t3WfTLDIKYPPVaVAr
 A/f3VdlkZ0uoLoIgysMyIpfF1UG/ANS6qt1mUuG29T5Cl6mAeNoOyvzUKOdJJ8uA7giL
 qD7sfjXYbwg4iSJN5ZIRmUBWa2wlbl+Ugvxjeg5ss11qHAsmn25CwI7z6ncTNoh9NJiX
 0sxAbxzSMgfnDrVk5m4SNa5jHt3jgGyiccSWLvURNhA4j4SyZORWhck4vjMgfFGv2a5b
 rPWOMAmALGAVvuNt8rbuXWXGHACZGW4c1S+jz+mgm5NHSXQm2562P12Dnu85ptTxZS39
 9eag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zJxI8q9GaxwusSxiN1TRl1t50DLCSayUphT+bXOuVqA=;
 b=iuii7HE3GRO+lN27sTze5Cv6jYsT0L+KVSu0nOdg5MQICqvQkwMEgVkJDLJE3eb7Vo
 hnwpJK2t2N6XrJLx8yV0k8OmTBbTehc+Jx0cX5v26wZCbc9O82r7FIERjzQGdeJ/Cewi
 UNlsIPCM07PpnUzpXkId/XKHP6JuliOw2SJWMD2gUd8w3vkiOgREvNwP5lMM/98jl2yF
 vSFLNOcxbJ1o0SjI/1abD1idLD/gIMwLtD+CFMcr2F+cVdPycARXRGs+6FprvyM4+vfn
 YV1yD6C58XFVdx++Tg2FCJQk67GACcp2yKr79cTStYoZT3MUKQUBNdrlb+wisOAN6S8s
 SQ9w==
X-Gm-Message-State: AOAM532xL4fygXhB+oBiN39ufmtKSkWvrgSky7R+Y7I5miXUexiu10IR
 oPI7+9WXMfz6sKMd8oeNEGPCXFyPjO7QQhy3Yx3QIA==
X-Google-Smtp-Source: ABdhPJzdhwywLZUu1iioOyV4RjM5M1Epk+nZBmMIV652Jit18mFH9boEqTDc5xdPxLb/F7xuG/+hRyaxUu9GK3c0+oc=
X-Received: by 2002:a2e:711c:: with SMTP id m28mr384158ljc.104.1590492148520; 
 Tue, 26 May 2020 04:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-3-megous@megous.com>
In-Reply-To: <20200513212451.1919013-3-megous@megous.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 May 2020 13:22:17 +0200
Message-ID: <CACRpkdbb0Y32EG=tEx208eUh_CJndvnQGQvAnF_mG29Hd9-2Jg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: panel: Add binding for Xingbangda
 XBD599 panel
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_042230_784475_87FBCAB6 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 David Airlie <airlied@linux.ie>, Bhushan Shah <bshah@kde.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Martijn Braam <martijn@brixit.nl>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Luca Weiss <luca@z3ntu.xyz>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:24 PM Ondrej Jirman <megous@megous.com> wrote:

> From: Icenowy Zheng <icenowy@aosc.io>
>
> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel. It is based on
> Sitronix ST7703 LCD controller.
>
> Add its device tree binding.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
