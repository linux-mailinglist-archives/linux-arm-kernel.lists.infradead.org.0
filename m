Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC1970C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 06:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pn5FriwdpsNNYfdAPG7Y21J01qtH04HvQWoKnMyCFhs=; b=Ha4iZMuMqkIFWF
	+UGmcG63g+AL7IHftJISqgn0fMPZ8JBhTxBnr57kAcL16txVrFnvYV8TqJXm+fGabkV8+C5ZuoF5v
	KdfjNBQZJcYknx0A8+VK/v80lUKHgMZYLckQu/c8dVMuck9P3IAlYuydj/g0hOC9KVW4zcXHzTZzs
	Bpa+NzSUgydERCKwcKAJM6ZpO2iUHGS6vIzOmwocisNypjsBoRje9ZVUR0Rtmf5lf0KH+o1ICsij1
	6YyhoI086mVBaBxGCvOAny+G4WJ+9OUV4vqQhwVXLd33DX6OOwM1E94YDmXxmZRCsqyTMYbi+U+rb
	DhHolF3oPHSElncW9XrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Hut-0007So-S8; Wed, 21 Aug 2019 04:08:12 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Hub-0007RP-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 04:07:54 +0000
Received: by mail-ed1-f68.google.com with SMTP id h13so1246120edq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 21:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2DH+Z8zu5DA8qxbFBSKsglzPr+woO5ZxUEZnrR+PcUs=;
 b=KwYfoOGkmaVuOyY4xUVQTKq9A48yLF4xxuXqS1Bu/GiJ16hYzcJkv3iBo0I1CnS0jl
 SUUR66/QpylCXTpb3E5ACW/b9kgC0uFMyZsDIqLzYhB9WOiNYi7muplk0EFk6Z5cGQcT
 jd2FQ1eMDFI2bHCp1sbVlpVWE71qkc/x7lUL3z4nRbZD/X3/uJpyKWGQc7TJPcsDYv0r
 N1yPaAD1ynfGjkXYB46Uy187/0ZdKgMqI+7zBAw+2Gk/TktoIJ6YJzgMwV/iPIddERKI
 oQjI1ybzgrD/cHfp6Myc1eILwzawNuFtfmt27ZXGWobfwe3Wk/TjK1atdWd4DgzNYcEK
 /ikQ==
X-Gm-Message-State: APjAAAVRBgovpIk4X+FM5E015e6vRUNkWklVXmbaFv81dn3rGprmDe6V
 NCYQbrUob7gtwfjP/r/DzodGqAoONhs=
X-Google-Smtp-Source: APXvYqxAYOrplcv/8JUUH5WddHh8HezV38NWNwPd891hFYmxvcFwbPFA4z/FzeA4Z/RjsbtpOStzIQ==
X-Received: by 2002:a17:906:d9d1:: with SMTP id
 qk17mr29608904ejb.20.1566360470400; 
 Tue, 20 Aug 2019 21:07:50 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id i15sm3859359edq.21.2019.08.20.21.07.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 21:07:50 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id k1so641920wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 21:07:49 -0700 (PDT)
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr3226423wml.25.1566360469671;
 Tue, 20 Aug 2019 21:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-10-codekipper@gmail.com>
In-Reply-To: <20190814060854.26345-10-codekipper@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 21 Aug 2019 12:07:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v65+-OB4zEyW8f7hcWHkL7DtfEB1YK2B1nOKdgNdNqC0kQ@mail.gmail.com>
Message-ID: <CAGb2v65+-OB4zEyW8f7hcWHkL7DtfEB1YK2B1nOKdgNdNqC0kQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S to
 change parent rate
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_210753_231988_C0B57909 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 2:09 PM <codekipper@gmail.com> wrote:
>
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>
> I2S doesn't work if parent rate couldn't be change. Difference between
> wanted and actual rate is too big.
>
> Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

This lacks your SoB. Please reply and I can add it when applying.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
