Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9F5113A01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCIdkLjXx8lwcztPW2xl1Nlb99AvUb8zp09lI4YvOLQ=; b=bq8lF8uBwWj7EX
	Hp/vxb9KX0dMgHtooO7fxPwrLK3Mf/NrWX31++M0bqgQbU5B+3J1nkuUh5Hn47lRFc1lQEohHy2iK
	zH2RLZg+n26s/oMPNZiuEUZf9eYwEfAh2ZR99xBIVSrOuneG9NPQ8zp+qnFmSMGJG/Sc2+95d+azc
	A/IuUell27TcEMH4POwf4Mn2FcWCA/XCUGqhCAu5lbBFt03hcXUjpTjgArzBpvkMF2YHrjei2E67f
	t7afLf2c7hOROmftRviAKqmaEsrn6/VBbixL5/Yty6Kdd56B0gOJU9G6BtCRm5q2dgWeKeOhO4H6U
	TLRf3OrVnTE6xXG9M5rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ich32-00008C-Vu; Thu, 05 Dec 2019 02:39:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ich2r-00006f-1e
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:39:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so835371pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=27jaH0vN7Z1055mM7vLy7qQTaIl7MlRb9ifdmBrbZDM=;
 b=2AEXe14iZdFWfADVPMho1nGLswqsSNlAEnAUgFieMyEajydA5UtIA2BcOw3cvQHdZO
 +7SSE0yQn7fq3n4nHsbvSjKepiS29Gm5WR9rq8NTOvdFdi1YqxhsWZNbYk8a14XIStKF
 hb74QE/F9ENthSZE3yzn0ZQDkHdLNmssNPXh/EW0qy0yWmB7IFhwbQ7Hy2WVvJXW05oI
 H1C0sUhnHCdN0aF6ajXMtxjjgQBm0bYucIo02eLqXp6IojHQsBo24gGBGz9ZhVJZDdLp
 4LhMKEeYfNiw1x190FxFAVW9rFhpjJNh7tIG1Cx/l25+RJ0xiWa5+IVfaItxv51z2fvq
 fu0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=27jaH0vN7Z1055mM7vLy7qQTaIl7MlRb9ifdmBrbZDM=;
 b=tpnTTLZmSjztAh5k/Nox62rb89IOyBY+PvsFJ7daJIdKf44InTtFqyvxNIR0AZuQIa
 /WRfjUo8nOdeQeq6t98C8XcXezvsuAAtY5znNgQbq/6AUF4H62qVhYMSkGsQ/jsxukJe
 Rfjj03vxulWQ4opW81Cl2DpRqQ9x6070JoQI9VIOh6G4xetQUz3NbSL9+HGWhk+U5ac9
 yPfdsWLzOasyoE5v2ktJ8RV5LUB68r0amZi9JQsmjHAbK4Pc1TA+DghTLL8A3AkuKToa
 LLz5S8tk26EF5muwLPZbPeycdmL+w3vx6GFjy6Xt+ZbMV0rSciImaJC5fmH/y+56S8Pm
 CNng==
X-Gm-Message-State: APjAAAVfoHXcKm2SiFWTS5Iy5Ynv+0UJ1fQ3oI2ESnn2+qctkqGs6fca
 NQXEva3fpaT8YgOc/TZD0Sao1A==
X-Google-Smtp-Source: APXvYqyArhAsoFW/09BUx58Mqa57A85qEfp9wqhmY84drnrMDAvAJYGziHESSDaQZke2fKs6Z2jx+w==
X-Received: by 2002:a62:6884:: with SMTP id d126mr6446169pfc.109.1575513548166; 
 Wed, 04 Dec 2019 18:39:08 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:18db:9496:e12f:2012])
 by smtp.gmail.com with ESMTPSA id k21sm8765676pgt.22.2019.12.04.18.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:39:07 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Colin King <colin.king@canonical.com>,
 Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-amlogic@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
In-Reply-To: <20191204141159.1432387-1-colin.king@canonical.com>
References: <20191204141159.1432387-1-colin.king@canonical.com>
Date: Wed, 04 Dec 2019 18:39:06 -0800
Message-ID: <m2a7877ayd.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_183909_220521_FB446374 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Colin King <colin.king@canonical.com> writes:

> From: Colin Ian King <colin.king@canonical.com>
>
> Currently if the allocation of new_buf fails then a null pointer
> dereference occurs when assiging new_buf->vb. Avoid this by returning
> early on a memory allocation failure as there is not much more can
> be done at this point.
>
> Addresses-Coverity: ("Dereference null return")
> Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
