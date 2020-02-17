Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94A0160D23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EQ+BNQr7pLUigWZNsQg0eIIsFEv/GbJMUAX8ocRxns=; b=blR6ElQa7DmQOD
	jJo8LhOfRpKI8MPf6idzueNdQhm5Lx7TW8tiipkioNwDn/k+6H59N7RCboX/QX0b4uU/jnCq7h/3n
	HAH2KMXVxgtj/wkgyrSAq2LWcslcg7JrKLliVv+cNxDkccpM/pmusxO75nNOiavZLiaamraA00jA9
	ZtlILIMPnGAkaWTbTC6LAiEY5To+fWYzKn7k3BIr/FC0q70+/At+qjPnhFoj7cRK2akTfObWlETAk
	zLV9ZGqVTJeSJvKgKj7/6nNgo/BRA1Rbudqb3GpTImOmyfRVH9d9di06uilL3jtsbHHm8cMrEyXOR
	z+oeXRF3ZAjzqyeBRB6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bh2-0000sF-Lk; Mon, 17 Feb 2020 08:23:52 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bgu-0000rt-O0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:23:45 +0000
Received: by mail-ed1-f66.google.com with SMTP id j17so19680901edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:23:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RCvgYdsJcfvOF7DNGv6F0fWsfl3RWpjn9MSCG6l5nng=;
 b=LaQ1J3AAtOzHQcGxw7sn4APC9+6lR4d2pwcYtXpAgWWROaxSZTUXeiGHfMGoV3pIzB
 Xn7BAA1DCJbxtmxF7O/R+WVUhc3ustyUWl3d3SNkuAqYVg8HLKmX0Zuxyr860g9uc4fh
 ig2GkRCBTb6I3ZENzRnM4P+3D+SB4N+PFtvCR4ibhhokXSDh5jcCvEVf4h9ZBq2mTV4j
 bmrw0jfX6RlUmhed96UWQ7IHHsCqT/qQ/hpFPXQRMGTxceV7OEzOJE1xnx9HACfvQFMI
 Nx+sA2RiWx+XVtJU9neyM5PA9sN9IZ1fg95TIwF0GYwZvnurg5FW+1D0VrpfU/rXnO/A
 c+pQ==
X-Gm-Message-State: APjAAAVl9qTjvZG1peY2x/ZvbDAwzGK0U8XaOUD8vuPseYdXGGqy48Mw
 aidkc+Vnjrg+wjvrOhEMBlpI/eWndas=
X-Google-Smtp-Source: APXvYqwBBHzAfr2JH4dWa3J738q6b+R8UKsM5PSC/uKzq0ugPm7/eUAMO+you/mingMs3lw5ibE6sg==
X-Received: by 2002:aa7:cd52:: with SMTP id v18mr12609882edw.205.1581927823045; 
 Mon, 17 Feb 2020 00:23:43 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id s11sm864299ejx.90.2020.02.17.00.23.42
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 00:23:42 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id z7so18456978wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:23:42 -0800 (PST)
X-Received: by 2002:a5d:6805:: with SMTP id w5mr21282613wru.64.1581927822372; 
 Mon, 17 Feb 2020 00:23:42 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-7-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-7-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 16:23:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v65pow6ufaz=6f8rWMXkmknLL2toYgUj-wM9sqns9Xy-ow@mail.gmail.com>
Message-ID: <CAGb2v65pow6ufaz=6f8rWMXkmknLL2toYgUj-wM9sqns9Xy-ow@mail.gmail.com>
Subject: Re: [RFC PATCH 06/34] ASoC: sun8i-codec: Fix setting DAI data format
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_002344_781037_BAB00A37 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
 Maxime Ripard <mripard@kernel.org>, stable@kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> Use the correct mask for this two-bit field. This fixes setting the DAI
> data format to RIGHT_J or DSP_A.
>
> Cc: stable@kernel.org
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
