Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C4911790D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPW1f++Ak5QkeDAvaSMftL945CoqdfBXYRXbhK1fhrE=; b=s/5cfauDQbSOAx
	ozhXP5MJrd90DspWmeb+tHVCnJhdJ/1wNL+RB7MMnsJdp1+bXoOdIlx0/3D7cvL50f/BZx9Ep2Fqx
	zPtkb91NKgILLdpGky58L8YiTxe0jmyDCTU3GkmvVorMse75BDquXAIIgXG/pPqp/3+gZugam11I1
	6K7yMOKlqn5HO8VOFAV34bKms3dXnjm4CfmX2YkMzehOJ2lJ7Vlswrl8+EufouQs+zDPkr7QJs/Xa
	ZnJp3y6F8iVAIsIJXQ7CQsMit++Nta9PpR4BPSma1nwa/POvXfaW2yWvcaLYtiOjsQlptod5ApAUB
	ZDgfjIHkV5YPyk/26V7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRCC-0004eW-6d; Mon, 09 Dec 2019 22:08:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRC5-0004cx-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:07:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id o9so6370141plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=XV8tPDcRTX7RtlSDootkVo/0R7BkBqzFzuFusm8kdK8=;
 b=mCUG2mkefXUTSWgvB3xbkzIgqLcBXpg6xtwMaVhJcJn3hsuIc/8+Aptv75kjetgmYE
 sPhCvJmw3tdGhyPHcHphJ7WIGYzMB7HQtXa14FTFA4law3xUy2s6fHqDuQmuTGwAQjd/
 kYqm38zCX6wKpg0cAqIfQ1xvtT2jv/81RdI13YWhFixxkX+4WhTKkItSY/POk1qgKoJD
 YvEaxEMQJjFi0RyiKcGb+g/CUDY5dDAqWOIHMUtZS2uOqtxnKt6XwNlPDgZ6URWC4oWA
 fl0cuWe+Tk9i7biEczXXxbcRdo3WxA+mYfuxj6CUInFjbgFrHPp44atsS1kh3GEmTK4l
 x+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=XV8tPDcRTX7RtlSDootkVo/0R7BkBqzFzuFusm8kdK8=;
 b=UZBv0v+ey3ePqU+XN/PyNxneJjhbzLrFxf0D1GF5WTjGFTvUhxPq6g4zg5EktFRGtg
 5NxNYpHFf5KtEOaakUILQEy5mF3gVGZNMYLiBCXnCTIvBLsuzb3QN9A5t/UoxdE2L+VL
 azpJCHhKrSXzEIR/h2AD2whJ6O9wo1xyoJh3G6ygnO+l8aLwgx7cOKZMjq6ltrKj6Fvn
 7Xltdd3nym5/nfGii5T5KrEohSbk2blfiwDbRFAx3h7CuAyz18bZ6wlvqtdmw9rYwo6X
 xEQDK4iNmzT/s55wkK2TidRNxR/wDW1lI6RnpHRT1nFult135sQnu+cfDMjTrExFhkzF
 GbnA==
X-Gm-Message-State: APjAAAW8lZJqp8IMml3FQTkp3n3OnsVmt/bfy94taNIhGoU303+a1d+X
 jUWX9GLc3UILeHIFisd3+6b4W8z524Kn0g==
X-Google-Smtp-Source: APXvYqzyU6Xr2TUx9phu+0FjC0f8dtT+zfBB23R48rlsA4j6FU2F18WTjQ2d+qhgny05GK+RGN86MQ==
X-Received: by 2002:a17:902:bcc8:: with SMTP id
 o8mr31506662pls.81.1575929272543; 
 Mon, 09 Dec 2019 14:07:52 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a10sm456847pfc.35.2019.12.09.14.07.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:07:51 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 8/9] drm/meson: hold 32 lines after vsync to give time
 for AFBC start
In-Reply-To: <20191021091509.3864-9-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
 <20191021091509.3864-9-narmstrong@baylibre.com>
Date: Mon, 09 Dec 2019 14:07:51 -0800
Message-ID: <7hmuc1rw3s.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_140753_473080_F3D3E17C 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, ayan.halder@arm.com,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> When using an AFBC encoded frame, the AFBC Decoder must be resetted,

minor grammar nit: s/resetted/reset/

> configured and enabled at each vsync IRQ.
>
> To leave time for that, use the maximum lines hold time to give time
> for AFBC setup and avoid visual glitches.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

otherwise...

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
