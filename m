Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB1582196
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgzMVYavPzsQiQ3W2PhjNkwgOfIvw0pUFj4aXoTzad0=; b=LBlC6f9iVSu5cV
	4dlt/+3KgWAeP7RGB0xV6U72hK1ayJNNjpHFInD2b1EKOjpG5sX078l5N0bdIef8tUEGd+/8G6aAS
	3/Q/7k0WjgAAUkl9RGL6ybDa3xmai8Jy9jZjp8kglzt5EvS3if87EHZ0mrL0FszzFsXdRb0+SeRPk
	UgSKrkAfM/GLrRel/Ht2HSCbFeK4T2nDcEAR+ClTYsP2jhAUKfGkEOc2xJ0ZQmequk5GALo+RqfW1
	z3Ml6Wn/4EEANdsqIPGF01OWzioiUX0Vj3QRgz3EGm+sm+xOjljHNmivNGUMgvcyvUFU8nTvsdsWh
	arWv7jXWUh0yzwXztiJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufkS-0005lG-4p; Mon, 05 Aug 2019 16:22:12 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufkF-0005kx-Fk
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:22:00 +0000
Received: by mail-wr1-f68.google.com with SMTP id c2so81794140wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 09:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jal0TcotIi9KxsqXfi98IU+PYGjY1Ea3c2mtMMhhCOg=;
 b=TAeXD5A3Sb/nfHiD8A8zBHoAXRzH46uuhtNq3i3MNIMJZIXzVGe2FfFvKgjG9csdZr
 7ZEiE4CU6qhv65/1VZD2S1QCLip8VgPC1n0/hdos3moEcjE/TH9zfe7VMhCZXtLoQ9z1
 Wlj7fp860vGm2rgIEliSyDtf5i2+sSxwb8MgBEn+HPQXh9HHzOGVlIrf4InRejUvNmy8
 YOSPa63Pwzg3/j9CGUPXQI0i+usGZ5Os4Zg0uPnGgJ8CtgQ3kqa5s2UMuFcx4VoD9/3K
 MjQ8/WfqK5Y1pSJsGkIh05OkzmZmiR7u4scavUv0YFtqVZ6edkUmxwhSD1DYKWWdM9/C
 DJRw==
X-Gm-Message-State: APjAAAWaIoWU9Tffzm/cWty1VnhSM00e0SUbOggOLUnngKrCYyFhw71j
 PleGlUv3fR7+/zwmvVqFS14=
X-Google-Smtp-Source: APXvYqzqjlVLiKS5Ec3RFHkLS+GK0gh7fzmAOkFLgVA3+iIqRJre8uMWYuogV4JcxYwj/gUHU8fNrQ==
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr81969945wru.43.1565022117327; 
 Mon, 05 Aug 2019 09:21:57 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id
 f192sm86229595wmg.30.2019.08.05.09.21.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 09:21:56 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:21:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: exynos: Add of_node_put() before return
Message-ID: <20190805162154.GA24769@kozik-lap>
References: <20190804160200.5139-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190804160200.5139-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092159_529831_A992091B 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 tomasz.figa@gmail.com, linux-gpio@vger.kernel.org, kgene@kernel.org,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 04, 2019 at 09:32:00PM +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/pinctrl/samsung/pinctrl-exynos.c | 4 +++-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
