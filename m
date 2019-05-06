Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80633152BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AiaHgkT8xo/NksB6Y+ABz0xFfp39PvHo0flplbkOZw=; b=a/yI6atR8bx3z+
	Nz3765D4eO3q95GsyfEll+1GZ6Id8rWEg7k7GM6/aMBjiEHsVS3iArwphggj1aS7BpE+i4JZR9c2b
	zluyYTczHWZsC4n5w9cf+HKy2yxyIFJ0z3wvdXgYN2RTmh1A3bDMrsO4GllMRIhBWMb/Onjb73vDz
	AIiZfljBz6fPmiNn5s/vYXRMgjFUadG5XgWZH3vbSCowq3hSclT9Eif09Gqn+qyxPiiF0LOs80arE
	eaQYcFALNq295qf11YNteCk27uxhdEAo1b+RlH1rwOI3uUYCWpkAGzRAVPOLpnpShOtvksIjh3nVL
	SsnSzc3KVLSJI5sA9paw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhP9-0008Nc-OW; Mon, 06 May 2019 17:27:55 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhP3-0008NE-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:27:50 +0000
Received: by mail-it1-x143.google.com with SMTP id l10so21637991iti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hrn4nDHLtIMhzMGRLfGe5OwhTlrLcnKtSdjsnoP6xiM=;
 b=DkeyWD7RBFpR9tT6CP4d99Vm+FIBqsrtXbFyfCEIPIzWYYg9bbTURlXAU8G/p6U9w2
 GziT77do1ZGEqVTuzqStaSYxaynb3jE/5CRgWR+6HsUnK9wpDg9WoUmqleUe+7x9SmZ9
 KMN3fF4itf4zL0p6O8w5nwPtvotWnbJiPWTlES8b9AJiNShEel/YDJ+E3smvvFHgH2hD
 NYDI5nFzZArpKH0MyxzorQff6KMSg8JYschfAlDcc8RdBrh+12kZWEz9+Lcw8w2VqcMO
 /AYw0i9RgHqNlneApOcM/7Vs3X8OBziWx+ka5+cBzM/B79yWieEyYBuYoXqCqPo2tkLA
 QtkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hrn4nDHLtIMhzMGRLfGe5OwhTlrLcnKtSdjsnoP6xiM=;
 b=fCtSyI0pai0vbX3Te2D8Zm1OemIV+ilY7ETNoKK8GoElpheDQ++XjCjDtXH3qkKOzW
 TLbp22+Upn35XgNtGw51TDl1aZPYKmPNL8eoCGQ4K/rmqDi/KeNe3Fp+cPJLC6zrl6ko
 zFvQ0DUx75WB9K+S7tXDMkVaih14o8wT5MbTG4QMjQTQQxY9Qa5HlFY/wQbx2PcG9foo
 AQOSHjcwao9oBnLVs4dmPWAnZkRSZ5iLZ4DMWRBXtp1AzZSwL1jakBCY5tbYl5CLtjgU
 uGeeYgm3zSoKEGI1E++j3us9ZHKdTS9po+beIdp4sgEynJJt2Gt490w3igzCAyx4GH5S
 DPSQ==
X-Gm-Message-State: APjAAAVIykc6wRy6MqaFprSIxLArgvBqzUwBGD+L5KdicJC+06Rwcpjz
 sLtdUSlcacBSpirfQZrc4CeX1nfDrK2Jw/3ZZfNtjsOY
X-Google-Smtp-Source: APXvYqypzmeE+Qzmq7cAlI69wXa0fQ7lASmzZADHAmtTVDFoQy6R0N49XZu+0BmBEs+grTENfcg1LgcH5YN+XV/QXYg=
X-Received: by 2002:a24:6c54:: with SMTP id w81mr18770409itb.78.1557163668187; 
 Mon, 06 May 2019 10:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190410174139.20012-1-tiny.windzz@gmail.com>
 <20190410174139.20012-3-tiny.windzz@gmail.com>
 <20190426211540.GA890@bogus>
 <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
 <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
 <20190430044245.s4viduudej6q2eq6@vireshk-i7>
 <CAEExFWsAQ3b42YqfW-b8vuq_NZgfDe+0D5TzP09ber0Ljvv43g@mail.gmail.com>
In-Reply-To: <CAEExFWsAQ3b42YqfW-b8vuq_NZgfDe+0D5TzP09ber0Ljvv43g@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 7 May 2019 01:27:36 +0800
Message-ID: <CAEExFWsVgAV=br1kAfgMTLnS6ELfMjFegiusUYPK6A3k7Nq9Mg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: cpufreq: Document allwinner,
 cpu-operating-points-v2
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_102749_191797_CEF4A1A0 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Viresh Kumar <vireshk@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, David Miller <davem@davemloft.net>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

PING...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
