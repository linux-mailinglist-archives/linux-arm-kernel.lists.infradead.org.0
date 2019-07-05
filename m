Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B215FF81
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 04:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXCf1q4YN5I5Ixnz7qL1v0L8/uGTtVUmXnBUFos/sRA=; b=OSSTmzjd7bGI13
	8Xc6r25KCoNHJAEcJXm3a65MVXZcgW8IJszIxiUn+hZ/+zmefkcUyecalRx4+N0FAk88sCFO3KJ+v
	gTiqZzd7UQGY3v/42rWB0O36ZTa91lyKckTmTgtJMRQLPeENsPRw+YqYSmqhZVVRN3nlytEEAsqHz
	zS/l8HP+RANvU5SVUL/HGibfR3+fQcYbVuO6PVzymsKTivpYDGw5xNl2Xvf18Xqx0Hvx7P9spcVlI
	3284qOBXR/wsjdoM7w0t1YbsvRPXHYA3TH8U7uwgp5Crfx0rRHT/4b6Lvml8piYpE66Pp7wBTWNHg
	XFRBnR88xGH32hR90u6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjE7N-0004f0-LO; Fri, 05 Jul 2019 02:38:33 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjE7A-0004ec-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 02:38:21 +0000
Received: by mail-ed1-f67.google.com with SMTP id s49so6914037edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 19:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8WqY7P7z7HvZSik8uVxR3WylUoD8M+JaJvkcH77K5Dg=;
 b=FVqNAJl+PUl2AtW/OP5zmMj6COdn8GRrjGzJWK1qh8edrZveCAbM/DYuKOC8tDz35F
 uPrLA90tmvPacqE0UKNweO6spD2nZzOjEUtyMLegHi6RzZcQolTuffFD6xkkgVPyyRh0
 U8dWLQkNAP7euaAMRdVnAqWdw5tmH841CSmLQyLWYY3MF44gutFuLfH3kJxo+xgx9mzY
 XiJgy1V0sl1gdDjCHSXX/EC3D8BVAWnBhmqHKtFaObkOo+4evQXV2RO+nqZ2delkuiV7
 2A99UVClcoHKabu4lMZiC7vAZgjWHQWdAH1q540fMq3f1W8x+OGX8PMA/bw8U7NMRxlQ
 7Nww==
X-Gm-Message-State: APjAAAWlZYhPTnNs5LnJNWMyq5gHxC/2gSR1OeOMMJml6Uko6M6rwL4C
 91HP8fpgvvY6ypabFozYtRLw/rpsyPc=
X-Google-Smtp-Source: APXvYqyzwXi2YPNveDiM3G6h76RGtyP+uUpkW39QAbCJET0ahaYFXw8UBkRiijNK3XawNLH5M1pTbg==
X-Received: by 2002:a17:906:70e:: with SMTP id
 y14mr1186580ejb.276.1562294297043; 
 Thu, 04 Jul 2019 19:38:17 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id l1sm2191734edr.17.2019.07.04.19.38.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 19:38:16 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id p13so8262022wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 19:38:16 -0700 (PDT)
X-Received: by 2002:adf:f70b:: with SMTP id r11mr1078942wrp.324.1562294296092; 
 Thu, 04 Jul 2019 19:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190703184814.27191-1-luca@z3ntu.xyz>
In-Reply-To: <20190703184814.27191-1-luca@z3ntu.xyz>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 5 Jul 2019 10:38:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v64EL-v5YUuWA4t=KUhuwEqML6Co6iosG607_rZhUQ+OLg@mail.gmail.com>
Message-ID: <CAGb2v64EL-v5YUuWA4t=KUhuwEqML6Co6iosG607_rZhUQ+OLg@mail.gmail.com>
Subject: Re: [PATCH v2] ASoC: sunxi: sun50i-codec-analog: Add earpiece
To: Luca Weiss <luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_193820_059690_5697D5EA 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 ~martijnbraam/pmos-upstream@lists.sr.ht, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 2:49 AM Luca Weiss <luca@z3ntu.xyz> wrote:
>
> This adds the necessary registers and audio routes to play audio using
> the Earpiece, that's supported on the A64.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

LGTM.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
