Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0961327D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQSwhHvDbdUaPs5+sq3xvzrn5qQ6EZY9UKBYeIzHACs=; b=t/7e5twn5ifi+C
	9MpN5eNNrAh3i5+7y3NE5Bxp07cFNqsH//+1PWUdTcn0Hd+8zGYJm8NNfUbSQbSYE5xBBxooDS1PP
	lSdPatMLz6SpQL+7wvfLwDNJLCiolOYsZUgjcp87fVFUCWgOiTFHi22xLakkVBEQfUVFs00MTDb8b
	q3kxFN31x/kH5Ry/UI049b/vrQaDN//m8H2Ul/6Xlm4Yw1gYKu0gwXc4xOEkM2eBvHCvqfzywig/U
	NIVIQbtayalYIUdLi9ML7cJVeEq9JTUQbHjhswhyB80iv2p8K3gn9gg/p3gxHug8TBGssJBoSsgeV
	TOMiA9r5OUpkkwjKXwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iop3r-0005SL-Ld; Tue, 07 Jan 2020 13:38:19 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iop3l-0005Rr-AU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:38:14 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so6806634edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 05:38:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Ogr0kICtWAKUCwX8COeBVH7wt+URVAc4vJxZdPJDTg=;
 b=ce0sCtJql4ZYrMioY6p+BuyBZ5mMmCEV6II6dU/N9K0FWj4+sXZiOc9qA1JjHotR7F
 nvO9B0FogjJTam+wch6SOv5MUyTmyeYh8+ESat25knBiYG9IFQFtt0Kjp/LgrzOg7ozw
 yBZV1d24+lUAgVBBVValG05IRhkBh7KxWInSkK9oaCUQ1BOECp6DtNGg7kj19qLM4GOL
 qnDYngdmWHe/0EVq4AN49myRlpMqL4PDH1a91hlBtSNXxUA6OflvN+H7BrCssvd1GiRG
 1M3a9FQAQ3Gh0slb0KtWWtmWNLZCve2MyXHtsgMtp7oywmLtgF1y7DgQ4Ufwje9b9f+f
 PeHQ==
X-Gm-Message-State: APjAAAWN8LZIWxSKyZTsIaeSXSPiphKKhVIwERn7xUtCH4hIpGml5rXi
 hAfMJS+4Cad5jh13u1FrcQVdF2NBYvc=
X-Google-Smtp-Source: APXvYqxLNKAG6RqVpPTeg0j+HZ085bKJhw+oyRM28WR1cJdEFrgv0yPpyco10Vcj+R2OeORW42iZJA==
X-Received: by 2002:a17:906:f90e:: with SMTP id
 lc14mr110744586ejb.217.1578404290631; 
 Tue, 07 Jan 2020 05:38:10 -0800 (PST)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id nq3sm8135328ejb.73.2020.01.07.05.38.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 05:38:10 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id m24so18978084wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 05:38:09 -0800 (PST)
X-Received: by 2002:a1c:a50e:: with SMTP id o14mr39148147wme.2.1578404289688; 
 Tue, 07 Jan 2020 05:38:09 -0800 (PST)
MIME-Version: 1.0
References: <20191219092000.949052-1-maxime@cerno.tech>
In-Reply-To: <20191219092000.949052-1-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 7 Jan 2020 21:37:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v67VxM=zmLCA1yS2vvwhwHRy7zHnjb69y3psVtBsUj3wWg@mail.gmail.com>
Message-ID: <CAGb2v67VxM=zmLCA1yS2vvwhwHRy7zHnjb69y3psVtBsUj3wWg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/sun4i: backend: Make sure we enforce the clock
 rate
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_053813_362286_51F255A5 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:20 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The backend needs to run at 300MHz to be functional. This was done so far
> using assigned-clocks in the device tree, but that is easy to forget, and
> dosen't provide any other guarantee than the rate is going to be roughly
> the one requested at probe time.
>
> Therefore it's pretty fragile, so let's just use the exclusive clock API to
> enforce it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
