Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEC222D77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oB4LtgvGAAi1TE36WGwZstdetvy2duCKhT54AHYltNA=; b=Q0HUJK8Z7kQnXb
	WGbG/f2VETlf02vr8K2wC7dZdWMJMz2+LpO0W2geDLZbO+oRHVbX58paSZvAWt7x3uN26hVVj7M7U
	9My7rQwhraU00CbhwsEVjpWj2JEpuJLkQy5a3qgDBHodWFaQjYAcX/SxBV0tx48Op4qZGUt0MDsQp
	T9PS8/tOEPdCEUyGF83ecgqNhDbaks/75vagpS8BZS+6toUVCIkxPCOb/HWk1hGd2bGIoETpHQCA7
	Dy0Jl8p9VVmfJBozZFkErUsuEaR7ZCOaixKVviX60klYsRIdj2fkNw606a1ZpXhqch5SShdwKJmIZ
	doD1c4RvtPcM2LikuGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdAB-0005Mv-CM; Mon, 20 May 2019 07:56:51 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSd9p-000527-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:56:43 +0000
Received: by mail-ed1-f65.google.com with SMTP id p26so22466575edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 00:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jiVgtLJVaSK+kBnj7Ae+LR1x0hOyccWrwqfEKZcrZlk=;
 b=OffikusCD0Yw5KVr/w9xB8CvE6mKDNMNPm8rrv6UXe9AkNyx9KaPd0ZyVI5HdvrGbJ
 x+N1BBr3d7eYID0jtOnECRyVXbMBZOsFymXE4/gkCAGKE7qeVNH5UF5BtY+Ssc6AvG+E
 VykgHgpoBdPQ6JPt8LZrkuU2tUt8sFbW153qCY7A4Vks7eNQeWlzLGu78r6ngKtXWYht
 qNdLKUIZ2gWiK+SFOtdBHBB6aRCuBE/ID20wudG99tnRNgHfNgEatqHa+xTVF5ui0qCc
 i80pp4DP0ee4No7PAppIjZ/aFFGuc5FDBwspkwh0d2CqVLUcL6WZkfCfFQ+MnoqnVpm5
 t3/g==
X-Gm-Message-State: APjAAAW6kjkMZeoItQmD5vYxQPdmv3eQJ4aUSlzXK73ILgvy3wfAwakH
 sIL5HFBU/jlzmv7eAiiR2Q8VWR2QPOc=
X-Google-Smtp-Source: APXvYqwYYDkj0NLfi3SClB4iym9NzZKys4U/6njAv07Nv6kc8OwjhOEmkQMCLf3WzpQBi0ON8cUEUw==
X-Received: by 2002:a17:906:4a45:: with SMTP id
 a5mr35862457ejv.172.1558338985667; 
 Mon, 20 May 2019 00:56:25 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id c38sm5182378edc.22.2019.05.20.00.56.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 00:56:25 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id d9so423691wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 00:56:24 -0700 (PDT)
X-Received: by 2002:adf:dfc4:: with SMTP id q4mr41065855wrn.201.1558338984633; 
 Mon, 20 May 2019 00:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190516154943.239E668B05@newverein.lst.de>
 <20190516155139.E6EE568C65@newverein.lst.de>
In-Reply-To: <20190516155139.E6EE568C65@newverein.lst.de>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 20 May 2019 15:56:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v64xKk1r1iqSVm5pVvHVkyQ175MUFB7JPUkvQX9ecOZDDQ@mail.gmail.com>
Message-ID: <CAGb2v64xKk1r1iqSVm5pVvHVkyQ175MUFB7JPUkvQX9ecOZDDQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: DTS: allwinner: a64: Enable audio on Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_005629_862242_7987BB67 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:52 PM Torsten Duwe <duwe@lst.de> wrote:
>
> From: Harald Geyer <harald@ccbib.org>
>
> The TERES-I has internal speakers (left, right), internal microphone
> and a headset combo jack (headphones + mic), "CTIA" (android) pinout.
>
> The headphone and mic detect lines of the A64 are connected properly,
> but AFAIK currently unsupported by the driver.
>
> Signed-off-by: Harald Geyer <harald@ccbib.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>

Looks good to me.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
