Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099FB160BF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfxCHc7vnAKssyZktW/J3FcUkOndNj8AUP8v+ShYmSc=; b=OvzD60jI3wGU+M
	OriwefmShKr70IMp1c0TLduQFR5tOJYfdJJ0hCcx4Ysyhpp15GOzfLDKxCX5PoNl8tipYXW7AnVFf
	BGbRtlZNfY77bnuyIjWjdUH70XdFheQ2Y46TfdD3m7+FYfE2YGV8RJf/nq88IdWzx8Gq4yOtXKRGe
	4twCelAAWLladz9Rit78wGtbdviGBoFCR4MBoquCcMFk2KeIxwDYDso7lGpVlfksTE+VuOvZFpHpv
	lGBZBuPl5WVmT7eWow8jaoayj+lt5lD/vxsQp99ScmMdXMbQFZNN2lnx5duh5Qijlk2pJGSmdD9Oj
	LWYHHjuc0d2HnImPM63Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bGM-0002CI-Ml; Mon, 17 Feb 2020 07:56:18 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bGD-0002Bm-Ou
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:56:11 +0000
Received: by mail-ed1-f67.google.com with SMTP id p3so19586552edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:56:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POZSjnznzGFS7zRQrJFpM+E5CtoyaZYCXz+IRVPYHNw=;
 b=a/JAyE4tB727ucFGWGVwu2YUOHl4lKHeLvMN4AeBCpSP6pImoKr4YaqMZ9hHD/OwnQ
 cqVjXJpDlPQvEqhcYFMJvCkpP7q/MOOefpQ149P1aW5GhPeoobMr4CtEbtlVWlt7SU3G
 MrliH3wudmR5WyolsH6YWCDO4gzO85IlgJIYTiqDOKxZ/v1OKr1S/5GHMEnb6SEkUZeC
 2NIJzayPbzswAH+uqd8o6YeBilpmL4HsdvfJeLYnAbviC4e8O+1PfqgaOL48rWQQSQoz
 SEkLzg9uKOWeQ9BAq9pX7PYgBVAf9SMO9J99E0fOovxoALNSXiWjRpxX9Mbaf7E36YNr
 vJMw==
X-Gm-Message-State: APjAAAXkCTJjMeTUlqhVlfzTm6dFkN2PdMxSWhmaiKBSRsPSfEFKHXpt
 Lz3W6LK3LIRU5zcfxjVl0D28iYyscgU=
X-Google-Smtp-Source: APXvYqzwDa+D4N6AGCxG4HhaY5WoDOJkvJiPYJr9MXZXrv4/UCK3w2aslUGuAjBQYo9GaDaBw7BNUw==
X-Received: by 2002:a17:906:594f:: with SMTP id
 g15mr13981297ejr.122.1581926168245; 
 Sun, 16 Feb 2020 23:56:08 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id e22sm470970edq.75.2020.02.16.23.56.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:56:07 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id y17so18379347wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:56:07 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr20409557wrs.365.1581926167590; 
 Sun, 16 Feb 2020 23:56:07 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-16-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-16-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:55:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ZHb0angmhZwkOA0uvKX1sNW+pERfhp4YiUHVeBB0g3Q@mail.gmail.com>
Message-ID: <CAGb2v65ZHb0angmhZwkOA0uvKX1sNW+pERfhp4YiUHVeBB0g3Q@mail.gmail.com>
Subject: Re: [RFC PATCH 15/34] ASoC: sun8i-codec: Fix ADC_DIG_CTRL field name
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235610_833134_485B87F8 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> This is the enable bit for the "AD"C, no the "DA"C.
>
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
