Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF91326A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:To:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sWubIGcfeILnuXT6z2B7ThK1Upq9Oc4Jb1czeiAWm/U=; b=qz1S1y0Gk/gLog7Aid6v7zQXW
	SSr/rZrVlTHq4DI/TGfeoZomij1civQ7i8uP82idud7Zq1SbqJgjgZGCM9tswyPiqE20VDV1K3D+6
	4og12AbzWguaLqScoUkwY01uiCTTgXTMSZzKgUUaq2VwBEdQkoth734yoaygyRhXpix0FeWgU/Wt1
	mh9g/yTs+UZKxwpZ3uRI0Gi14uvlAc3Sz+tobSGUxCrZ1RHLcGQ8KDu/K5bf65XyjHRKSngSE0tJa
	UdBhmmDBTTTQioApizVb9v040CkxmaOlVfaeikUPj2DaAWPfiXarQisTdKeZ1NMPs5e2HUgsCcWjB
	rNmibMgRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iooFS-00045y-RY; Tue, 07 Jan 2020 12:46:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iooFL-000456-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:46:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id q10so14828323wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 04:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=pLuEHRJGyuYZ21es9PhlN9IhZbnDG1epHKk/DRLbj4E=;
 b=YaNRA9k08R1pyZK09tCeQxl8Arnavxri5xC0gsDRXbAiUxyVOQpGXRc3FHRxwn3Zpd
 LF4sv6GM/30QdDCv4c2Ihhv9wglO6/HC/llT+fc1pm6YIPkPQiwzEza3gmF2MwLk+HGo
 5TuTsH/VANEjPnN+bza3IAP4zU61ZQvj0oi2BBIEXCmSWN91PD0yscxKl2ddi/I3G2pw
 rzBC7E6AhBBDrU7ZVUJAtNt2VCB/PXmwiEWpMmgelzxepQrck9ng+CHO5Xc+3XajxkE5
 pBEZD+JQCrau8mRQU/zEA38MfzgjTYE+FUm0DwHSnlnxYFkQSCE+WawTGb0uP4co3A0Q
 Cokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:in-reply-to
 :message-id:references:user-agent:mime-version;
 bh=pLuEHRJGyuYZ21es9PhlN9IhZbnDG1epHKk/DRLbj4E=;
 b=PvwF8zSXBN4I0Yk5XX0QK7WOaAc16VIkAfFzzBPdweAIu9VrsO8VnfakB95Wk7D3tf
 1TPZ9hq7NAisKxLmJGgR9E1JBGDBeMcyacrsEKDcORzGnHk/oYKtA7OWa1J6UmEzJx9W
 AfQyxBZKgsW2kEO33XfI9OL4q/PbyJ2sffOG0Jkgg0i99xxmnnue4cC+e4mdJ0cRsvct
 VWdv+Z3diB7f8cCRbtMLAzf4q+4daaH9A/uT4FMD9A7qg8CwQBoJsMFgLgbzCT6dsvfN
 go39eZFcPjxgInHO4GeFrO4vnFQmgFjjauWAENVRLinVOyz+9WtBBJVNwjyBAKk9JJix
 FyVw==
X-Gm-Message-State: APjAAAWtgBXtApm6iZ77XbcquzsUvVnYQGFelde/W1EnlI2TW6t6f2Df
 UtmhRSsacFZqCrr3Koc6u/c=
X-Google-Smtp-Source: APXvYqzXnMjxG69Kfig7l7SnYmCyuET+NmyKxhHkb2al/g3bEBoEPhgKL3QN9Mtg5f9bOgNyUbNtKg==
X-Received: by 2002:a05:6000:11c5:: with SMTP id
 i5mr106966437wrx.102.1578401163499; 
 Tue, 07 Jan 2020 04:46:03 -0800 (PST)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id u8sm26702237wmm.15.2020.01.07.04.46.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 04:46:02 -0800 (PST)
From: Wambui Karuga <wambui@karuga.xyz>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Jan 2020 15:45:55 +0300 (EAT)
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] drm/sun4i: use PTR_ERR_OR_ZERO macro.
In-Reply-To: <20200107115737.ybaxsjyvfaledfje@gilmour>
Message-ID: <alpine.LNX.2.21.99999.375.2001071545160.6077@wambui>
References: <20200106140052.30747-1-wambui.karugax@gmail.com>
 <20200107115737.ybaxsjyvfaledfje@gilmour>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_044607_302311_22DE8B97 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.1 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 7 Jan 2020, Maxime Ripard wrote:

> Hi,
>
> On Mon, Jan 06, 2020 at 05:00:52PM +0300, Wambui Karuga wrote:
>> Replace the use of IS_ERR and PTR_ZERO macros by returning the
>> PTR_ERR_OR_ZERO macro.
>> Changes suggested by coccinelle.
>>
>> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
>
> Unfortunately, that patch came up a number of time and shouldn't have
> been a coccinelle script in the first place.
>
> I've sent a patch to remove that script:
> https://lore.kernel.org/lkml/20200107073629.325249-1-maxime@cerno.tech/
>
Okay, thanks for the review.
> Maxime
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
