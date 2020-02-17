Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9DF1608FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2ZIs5a7Pt7dWoTZ/b+Qz+L/oaF6Sds1sJ0nAn2PGH0=; b=GQaQ/ctdNAV04z
	exPkoOOO4WUQbf059vQFspYSBHt06SISTQHysiY3bIlGa0sUr3vXNxzuQ4yinnAtpeH9fMPprTrOP
	KrqwHAORZKu510M40nU/HcWDQeNT+SEWNNlONrS9ptmx2N045SARtAY9BuH2qRxeUyAxNQmECbwYB
	SQ/EqYrKCfjBPJ1a98uTqh7YltAv7vZJ0ODhKom8BWfGrwIxW08XHfa9WdsBSRSpw1ezDoh7LlUm3
	7FNHINfrJ7QoxO0IDhLiXxq0IVdaStJBQz6reQUH6oC+vBwnHDAKN/ZRB6qMKqU+tWCAbaczEORos
	zm4+6qYowln1Tz+5JUVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X98-0002zz-Pz; Mon, 17 Feb 2020 03:32:34 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X91-0002zT-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:32:28 +0000
Received: by mail-ed1-f67.google.com with SMTP id p14so10822543edy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:32:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q4CIHpVJIc8tieFYml9JRz0BGCHMsI2BF3krPygp1zU=;
 b=g7OmZLvcvqj0i4PKnn+j9Dh1OkTJ3QbnTyERqXNUW3Weh8hr9/c4K0x7A/R7Tut1y7
 y0qRmy+WzQJCZqv5JfBHzW074F/8fwaCW+R5uhEGHy49CVycODqxyrXHEZ2ipGh9RcFd
 ZArq4BJ+6S4qXIVFJGqUfYA3eCDvg5NP+XJjy2cOCHAeE5kty3n83ubT+TX6ZYtovOE0
 tX4mOtrl2FlYqfjUykNBwZhBA7Q9vnDSw7NViHUNjDyrBbL8uxH8wrSwdWfOX9Aeb3sc
 O475s+81pd+WSHD60/Pv3MlGCnPjhK0S6PPdhV0+sWxQh43oqDAR7TkQN+uyoMWd+caB
 DV7g==
X-Gm-Message-State: APjAAAX+vZJjwJ3JtnTZSyn9mG2ad+C3ZmBI7fR9QSRCM5P6nKiXNTBJ
 eM7jLeBAPYQ22GN3BPVRTa9TamFjKks=
X-Google-Smtp-Source: APXvYqzFh6n/+UU3/1S0T8mDHyeg2QmGVyoqPp2TpnYLcBCfdXomvo3XDQIIx6617Ud+50cA0TM21g==
X-Received: by 2002:a50:f704:: with SMTP id g4mr12960405edn.123.1581910344775; 
 Sun, 16 Feb 2020 19:32:24 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id ay2sm813388ejb.75.2020.02.16.19.32.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 19:32:24 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id a9so16813318wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:32:24 -0800 (PST)
X-Received: by 2002:a1c:7915:: with SMTP id l21mr18520158wme.112.1581910344064; 
 Sun, 16 Feb 2020 19:32:24 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-4-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-4-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 11:32:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v662ugC4R3KDZfP3VJV8WHSWOCqAEveM0R_PLDa69Haffg@mail.gmail.com>
Message-ID: <CAGb2v662ugC4R3KDZfP3VJV8WHSWOCqAEveM0R_PLDa69Haffg@mail.gmail.com>
Subject: Re: [PATCH 3/8] ASoC: sun50i-codec-analog: Group and sort mixer routes
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_193227_156263_95F40994 
X-CRM114-Status: UNSURE (   9.71  )
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
>
> Sort the controls in the same order as the bits in the register. Then
> group the routes by sink, and sort them in the same order as the
> controls. This makes it much easier to verify that all mixer inputs are
> accounted for.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
